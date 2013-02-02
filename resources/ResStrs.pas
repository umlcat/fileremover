unit ResStrs;

interface

{$INCLUDE 'language.inc'}

{$IFDEF LanguageEnglish}
const
  resProductName      = 'File Remover';
resourcestring
  resTfrMain_Caption  = resProductName;
  resTfrmAbout_Caption  = 'About '+ resProductName;

  resbtnOK_Caption      = 'OK';
  resbtnCancel_Caption  = 'Cancel';
  resbtnExit_Caption    = 'E&xit';
  resbtnAbout_Caption   = '&About';
  resbtnOptions_Caption = '&Options';
  resbtnHelp_Caption    = 'Help';
  resbtnSelectALL_Caption  = 'Select &All;
  resbtnSelectNone_Caption = 'Select &None;

  resbtnFileRemove_Caption  = 'Remove';
  resbtnFileSearch_Caption  = 'Search';

  reschbConfirmRemove_Caption = 'Confirm Files Replaced';

  reslblFilePath_Caption    = 'File Path:';
  reslblFileName_Caption    = 'FileName:';
  reslblFileExt_Caption     = 'File Extension:';

  reslblProductName_Caption = resProductName;
  reslblVersion_Caption     = '2.0 Version';
  reslblCopyright_Caption   = 'star-dev (c)';
  reslblComments_Caption    = 'star-dev.com';

  resConfirmRemove = 'Are you sure you want to remove "%s" ?';
  resRemoved           = ' replaced.';
  resNotFound           = 'Files not Found.';
  resUnderConstruction  = 'Under Construction';
  resFileAlreadyExists  = 'Error: Destination filename already exists.';
  resFileNotFound       = 'Error: Filename not found.';
{$ENDIF}

{$IFDEF LanguageSpanish}
const
  resProductName      = 'Removedor de Ficheros';
resourcestring
  resTfrMain_Caption  = resProductName;
  resTfrmAbout_Caption  = 'Acerca de ' + resProductName;

  resbtnOK_Caption      = 'Aceptar';
  resbtnCancel_Caption  = 'Cancelar';
  resbtnExit_Caption    = 'Salir';
  resbtnAbout_Caption   = '&Acerca';
  resbtnOptions_Caption = '&Opciones';
  resbtnHelp_Caption    = 'Ayuda';
  resbtnSelectALL_Caption  = 'Seleccionar To&dos';
  resbtnSelectNone_Caption = 'Seleccionar &Ninguno';

  resbtnFileRemove_Caption  = 'Remover';
  resbtnFileSearch_Caption  = 'Buscar';

  reschbConfirmRemove_Caption = 'Confirmar Ficheros Removidos';

  reslblFilePath_Caption    = 'Ruta de Acceso:';
  reslblFileName_Caption    = 'Fichero Fuente:';
  reslblFileExt_Caption     = 'Extension Fichero:';

  reslblProductName_Caption = resProductName;
  reslblVersion_Caption     = 'Version 2.0';
  reslblCopyright_Caption   = 'star-dev (c)';
  reslblComments_Caption    = 'star-dev.com';

  resConfirmRemove = 'Esta seguro que quiere remover "%s" ?';
  resRemoved           = ' reemplazado.';
  resNotFound           = 'No se encontraron Ficheros.';
  resUnderConstruction  = 'Bajo Construccion';
  resFileAlreadyExists  = 'Error: Fichero destino ya existe.';
  resFileNotFound       = 'Error: No existe el fichero.';
{$ENDIF}

{$IFDEF LanguageLatam}
const
  resProductName      = 'Removedor de Archivos';
resourcestring
  resTfrMain_Caption  = resProductName;
  resTfrmAbout_Caption  = 'Acerca de ' + resProductName;

  resbtnOK_Caption      = 'Aceptar';
  resbtnCancel_Caption  = 'Cancelar';
  resbtnExit_Caption    = 'Salir';
  resbtnAbout_Caption   = '&Acerca';
  resbtnOptions_Caption = '&Opciones';
  resbtnHelp_Caption    = 'Ayuda';
  resbtnSelectALL_Caption  = 'Seleccionar To&dos';
  resbtnSelectNone_Caption = 'Seleccionar &Ninguno';

  resbtnFileRemove_Caption  = 'Remover';
  resbtnFileSearch_Caption  = 'Buscar';

  reschbConfirmRemove_Caption = 'Confirmar Archivos Eliminados';

  reslblFilePath_Caption    = 'Ruta de Acceso:';
  reslblFileName_Caption    = 'Archivo Fuente:';
  reslblFileExt_Caption     = 'Extension Archivo:';

  reslblProductName_Caption = resProductName;
  reslblVersion_Caption     = 'Version 2.0';
  reslblCopyright_Caption   = 'star-dev (c)';
  reslblComments_Caption    = 'star-dev.com';

  resConfirmRemove = 'Esta seguro que quiere remover "%s" ?';
  resRemoved           = ' reemplazado.';
  resNotFound           = 'No se encontraron archivos.';
  resUnderConstruction  = 'Bajo Construccion';
  resFileAlreadyExists  = 'Error: Archivo destino ya existe.';
  resFileNotFound       = 'Error: No existe el archivo.';
{$ENDIF}

{$IFDEF LanguageFrench}
const
  resProductName      = 'Removeteur du Archives';
resourcestring
  resTfrMain_Caption  = resProductName;
  resTfrmAbout_Caption  = 'Sur ' + resProductName;

  resbtnOK_Caption      = 'OK';
  resbtnCancel_Caption  = 'Annuler';
  resbtnExit_Caption    = 'Sortir';
  resbtnAbout_Caption   = '&Sur...';
  resbtnOptions_Caption = '&Options';
  resbtnHelp_Caption    = 'Aide';
  resbtnSelectALL_Caption  = 'Choisir To&us;
  resbtnSelectNone_Caption = 'Choisir &Aucun';

  resbtnFileRemove_Caption  = 'Remover';
  resbtnFileSearch_Caption  = 'Chercher';

  reschbConfirmRemove_Caption = 'Confirmer des Archives Remplacés';

  reslblFilePath_Caption    = 'Acces Chemin:';
  reslblFileName_Caption    = 'Nom Archive:';
  reslblFileExt_Caption     = 'Extension Archive:';

  reslblProductName_Caption = resProductName;
  reslblVersion_Caption     = 'Version 2.0';
  reslblCopyright_Caption   = 'star-dev (c)';
  reslblComments_Caption    = 'star-dev.com';

  resConfirmRemove = 'Il est sûr qu*il veut remover "%s" ?';
  resRemoved           = ' remplacé.';
  resNotFound           = 'On n*a pas trouvé d*archives.';
  resUnderConstruction  = 'Sous Construction';
  resFileAlreadyExists  = 'Error: Il*ya le archive du destination.';
  resFileNotFound       = 'Error: Il*nes pas ...';
{$ENDIF}

{$IFDEF LanguageGerman}
const
  resProductName      = 'Removeteur du Archives';
resourcestring
  resTfrMain_Caption  = resProductName;
  resTfrmAbout_Caption  = 'Sur ' + resProductName;

  resbtnOK_Caption      = 'OK';
  resbtnCancel_Caption  = 'Annuler';
  resbtnExit_Caption    = 'Sortir';
  resbtnAbout_Caption   = '&Sur...';
  resbtnOptions_Caption = '&Options';
  resbtnHelp_Caption    = 'Aide';
  resbtnSelectALL_Caption  = 'Choisir To&us;
  resbtnSelectNone_Caption = 'Choisir &Aucun';

  resbtnFileRemove_Caption  = 'Remover';
  resbtnFileSearch_Caption  = 'Chercher';

  reschbConfirmRemove_Caption = 'Confirmer des Archives Remplacés';

  reslblFilePath_Caption    = 'Acces Chemin:';
  reslblFileName_Caption    = 'Nom Archive:';
  reslblFileExt_Caption     = 'Extension Archive:';  

  reslblProductName_Caption = resProductName;
  reslblVersion_Caption     = 'Version 2.0';
  reslblCopyright_Caption   = 'star-dev (c)';
  reslblComments_Caption    = 'star-dev.com';

  resConfirmRemove = 'Il est sûr qu*il veut remover "%s" ?';
  resRemoved           = ' remplacé.';
  resNotFound           = 'On n*a pas trouvé d*archives.';
  resUnderConstruction  = 'Sous Construction';
  resFileAlreadyExists  = 'Error: Il*ya le archive du destination.';
  resFileNotFound       = 'Error: Il*nes pas ...';  
{$ENDIF}

implementation

end.
