object dmConnection: TdmConnection
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 280
  Width = 399
  object SQLConnectionGVGESTOR: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    Params.Strings = (
      'DriverName=Firebird'
      'Database=database.fdb'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=False')
    Left = 104
    Top = 64
  end
  object odSelecionaBanco: TOpenDialog
    Filter = 'Firebird|*.fdb'
    Left = 272
    Top = 160
  end
end
