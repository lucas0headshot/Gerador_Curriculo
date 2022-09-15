object Dm: TDm
  OldCreateOrder = False
  Height = 150
  Width = 215
  object Driver: TFDPhysMySQLDriverLink
    VendorLib = 'C:\3-52\Marcos e Lucas Ronchi\Gerador_Curriculo\LIB\libmySQL.dll'
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=Gerador_Curriculo'
      'DriverID=MySQL'
      'User_Name=root')
    Connected = True
    Left = 32
    Top = 48
  end
  object DS_Curriculo: TDataSource
    DataSet = tb_curriculo
    Left = 120
    Top = 64
  end
  object tb_curriculo: TFDTable
    IndexFieldNames = 'ID_Curriculo'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'Gerador_Curriculo.curriculo'
    TableName = 'Gerador_Curriculo.curriculo'
    Left = 88
    Top = 8
    object tb_curriculoID_Curriculo: TFDAutoIncField
      FieldName = 'ID_Curriculo'
      Origin = 'ID_Curriculo'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object tb_curriculoNome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nome'
      Origin = 'Nome'
      Size = 50
    end
    object tb_curriculoFuncao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Funcao'
      Origin = 'Funcao'
      Size = 50
    end
    object tb_curriculoInformacoes_Pessoais: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Informacoes_Pessoais'
      Origin = 'Informacoes_Pessoais'
      Size = 250
    end
    object tb_curriculoInteresses_Pessoais: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Interesses_Pessoais'
      Origin = 'Interesses_Pessoais'
      Size = 250
    end
    object tb_curriculoEndereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Endereco'
      Origin = 'Endereco'
      Size = 50
    end
    object tb_curriculoCelular: TStringField
      FieldName = 'Celular'
      Origin = 'Celular'
      Required = True
      Size = 14
    end
    object tb_curriculoEmail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'E-mail'
      Origin = '`E-mail`'
      Size = 100
    end
    object tb_curriculoLink_Portifolio: TStringField
      FieldName = 'Link_Portifolio'
      Origin = 'Link_Portifolio'
      Required = True
      Size = 100
    end
    object tb_curriculoLink_LinkedIn: TStringField
      FieldName = 'Link_LinkedIn'
      Origin = 'Link_LinkedIn'
      Required = True
      Size = 100
    end
    object tb_curriculoLink_Instagram: TStringField
      FieldName = 'Link_Instagram'
      Origin = 'Link_Instagram'
      Required = True
      Size = 100
    end
    object tb_curriculoNome_Escola: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nome_Escola'
      Origin = 'Nome_Escola'
      Size = 100
    end
    object tb_curriculoFormacao: TStringField
      FieldName = 'Formacao'
      Origin = 'Formacao'
      Required = True
      Size = 100
    end
    object tb_curriculoInformacoes_Formacao: TStringField
      FieldName = 'Informacoes_Formacao'
      Origin = 'Informacoes_Formacao'
      Required = True
      Size = 250
    end
  end
end
