object dm: Tdm
  OldCreateOrder = False
  Height = 338
  Width = 470
  object FDConnection: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\LEONARDO\Documents\DelphiLast-master\DelphiLas' +
        't-master\BD\bd.db'
      'LockingMode=Normal'
      'OpenMode=ReadWrite'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    AfterConnect = FDConnectionAfterConnect
    BeforeConnect = FDConnectionBeforeConnect
    Left = 48
    Top = 40
  end
  object FDQLogin: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from login'
      'where email =:pEmail')
    Left = 48
    Top = 104
    ParamData = <
      item
        Name = 'PEMAIL'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object FDQLoginidlogin: TFDAutoIncField
      FieldName = 'idlogin'
      Origin = 'idlogin'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQLoginemail: TStringField
      FieldName = 'email'
      Origin = 'email'
      Required = True
      Size = 50
    end
    object FDQLoginsenha: TStringField
      FieldName = 'senha'
      Origin = 'senha'
      Required = True
      Size = 200
    end
    object FDQLoginnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 10
    end
  end
  object FDQCarro: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from carro'
      '')
    Left = 48
    Top = 176
    object FDQCarroidcarro: TFDAutoIncField
      FieldName = 'idcarro'
      Origin = 'idcarro'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQCarroplaca: TStringField
      FieldName = 'placa'
      Origin = 'placa'
      Size = 7
    end
    object FDQCarromodelo: TStringField
      FieldName = 'modelo'
      Origin = 'modelo'
      Size = 50
    end
    object FDQCarroqtdtanque: TIntegerField
      FieldName = 'qtdtanque'
      Origin = 'qtdtanque'
    end
    object FDQCarronome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object FDQCarrodescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 50
    end
  end
  object FDQLogado: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from login where idlogin =:pidlogin')
    Left = 280
    Top = 96
    ParamData = <
      item
        Name = 'PIDLOGIN'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQLogadoidlogin: TFDAutoIncField
      FieldName = 'idlogin'
      Origin = 'idlogin'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQLogadonome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 10
    end
    object FDQLogadoemail: TStringField
      FieldName = 'email'
      Origin = 'email'
      Required = True
      Size = 50
    end
    object FDQLogadosenha: TStringField
      FieldName = 'senha'
      Origin = 'senha'
      Required = True
      Size = 200
    end
  end
end
