unit ufrmMain;

interface

uses
  {$IFDEF FPC}
  LCLIntf, LCLType, LMessages,
  {$ENDIF}
  Messages, SysUtils, Classes, Graphics, Controls, Forms,
  StdCtrls, Buttons, ExtCtrls, ComCtrls, MaskEdit, CheckLst, EditBtn,
  //ToolEdit,
  uktossys, uktfilesbyname,
  uktossearchfiles, uktstrings,
  uktmsgdlgtypes, uktmsgdlgs,
  ResStrs, ufrmAbout,
  dummy;

type

  { TfrmMain }

  TfrmMain = class(TForm)
    sbStatusBar: TStatusBar;
    pnTop: TPanel;
    btnExit: TBitBtn;
    chbConfirmRemove: TCheckBox;
    btnAbout: TBitBtn;
    btnOptions: TBitBtn;
    pnCtrls: TPanel;
    deedFilePath: TDirectoryEdit;
    btnFileSearch: TBitBtn;
    btnFileRemove: TBitBtn;
    chlbDestination: TCheckListBox;
    lblFilePath: TLabel;
    btnSelectNone: TBitBtn;
    btnSelectALL: TBitBtn;
    lblFileName: TLabel;
    lblFileExt: TLabel;
    medFileExt: TMaskEdit;
    medFileName: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnFileSearchClick(Sender: TObject);
    procedure btnFileRemoveClick(Sender: TObject);
    procedure deedFilePathChange(Sender: TObject);
    procedure btnAboutClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnOptionsClick(Sender: TObject);
    procedure btnSelectALLClick(Sender: TObject);
    procedure btnSelectNoneClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    FilePath: string;
    FileName: string;
    FileExt:  string;

    Wildcard: string;

    procedure LoadValues();
    procedure LoadStrings();

    procedure FileSearch();
    procedure FileRemove();
  end;

var
  frmMain: TfrmMain;

implementation

{$IFDEF DELPHI}
{$R *.DFM}
{$ENDIF}

{$IFDEF FPC}
{$R *.LFM}
{$ENDIF}

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  LoadValues;
  LoadStrings;
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
//
end;

procedure TfrmMain.LoadValues();
var AppPath, ConfigFilename: string; F: TextFile;
begin
  AppPath := ParamStr(0);
  ConfigFilename := ExtractFileDir(AppPath) + DirectorySeparator + 'ExtReplacer.txt';
  if (uktossys.FileFound(ConfigFilename)) then
  begin
    System.Assign(F, ConfigFilename);
    System.Reset(F);

//    if not System.EoF(F)
//      then System.ReadLn(F, WindowsFolder);

    System.Close(F);
  end else
  begin
//    WindowsFolder := 'C:\WINDOWS\SYSTEM';
  end
end;

procedure TfrmMain.LoadStrings();
begin
  Self.Caption := resTfrMain_Caption;
  Application.Title := resTfrMain_Caption;
  
  chbConfirmRemove.Caption := reschbConfirmRemove_Caption;

  btnFileRemove.Caption := resbtnFileRemove_Caption;
  btnFileSearch.Caption  := resbtnFileSearch_Caption;

  btnExit.Caption    := resbtnExit_Caption;
  btnAbout.Caption   := resbtnAbout_Caption;
  btnOptions.Caption := resbtnOptions_Caption;
  btnSelectALL.Caption  := resbtnSelectALL_Caption;
  btnSelectNone.Caption := resbtnSelectNone_Caption;

  lblFilePath.Caption := reslblFilePath_Caption;
  lblFileName.Caption := reslblFileName_Caption;
  lblFileExt.Caption  := reslblFileExt_Caption;

  deedFilePath.Text := '';
end;

procedure TfrmMain.FileSearch();
var SearchRecord: TSearchFilesRecord;
    FileRecord: TFileRecord; ACount: Integer; Path: string;
begin
  with chlbDestination.Items do
  begin
    Clear();

    FileName := medFileName.Text;
    FileExt  := medFileExt.Text;

    Wildcard := FileName + ExtensionSeparator + FileExt;

    Path := FilePath + DirectorySeparator + Wildcard;
    FileSearchInit(SearchRecord, Path, faArchive);

    ACount := 0;
    while (FileSearchNext(SearchRecord, FileRecord)) do
    begin
      if (
        (not FileRecord.IsOwnFolder) and
        (not FileRecord.IsParentFolder)) then
      begin
        Add(FileRecord.FileName + FileRecord.FileExt);
        Inc(ACount);
      end; 
    end;

    FileSearchDone(SearchRecord);
  end;
  if (ACount = 0)
    then ShowMessage(resNotFound);
end;

procedure TfrmMain.FileRemove();
var I: Integer; Msg, Filename: string;
begin
  with chlbDestination, Items do
  begin
    for I := 0 to Pred(Count) do
    begin
      if (Checked[i]) then
      begin
        Filename := FilePath + DirectorySeparator + Items[i];
        // obtain filename
        // obtener nombrearchivo

        if (uktfilesbyname.FileNameFound(Filename)) then
        begin
          Msg := Format(resConfirmRemove, [Filename]);
          if (MessageDlg(Msg, mtConfirmation, [mbYes, mbNo]) = mbYes) then
          begin
            uktfilesbyname.FileNameRemove(Filename);
            // delete filename from filesystem
            // eliminar nombrearchivo de sistemaarchivos

            if (chbConfirmRemove.Checked) then
            begin
              ShowMessage(#39 + Filename + #39 + resRemoved);
            end;
          end;
        end else ErrorDlg(resFileNotFound);
        // perform filename replacement
        // realizar reemplazo de nombrearchivo
      end;
    end;
  end;
end;

procedure TfrmMain.btnFileSearchClick(Sender: TObject);
begin
  FileSearch();
end;

procedure TfrmMain.btnFileRemoveClick(Sender: TObject);
begin
  FileRemove();
  FileSearch();
end;

procedure TfrmMain.deedFilePathChange(Sender: TObject);
begin
  FilePath := deedFilePath.Text;
end;

procedure TfrmMain.btnAboutClick(Sender: TObject);
begin
  ufrmAbout.Ejecutar();
end;

procedure TfrmMain.btnExitClick(Sender: TObject);
begin
  Self.Close();
end;

procedure TfrmMain.btnOptionsClick(Sender: TObject);
begin
//
end;

procedure TfrmMain.btnSelectALLClick(Sender: TObject);
var I: Integer;
begin
  with chlbDestination, Items do
  begin
    for I := 0 to Pred(Count) do
    begin
      Checked[i] := TRUE;
    end;
  end;
end;

procedure TfrmMain.btnSelectNoneClick(Sender: TObject);
var I: Integer;
begin
  with chlbDestination, Items do
  begin
    for I := 0 to Pred(Count) do
    begin
      Checked[i] := FALSE;
    end;
  end;
end;

end.
