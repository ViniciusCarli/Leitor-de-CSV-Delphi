object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 260
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 423
    Top = 7
    Width = 29
    Height = 22
    Caption = '...'
    OnClick = SpeedButton1Click
  end
  object EdtArquivoOriginal: TEdit
    Left = 8
    Top = 8
    Width = 409
    Height = 21
    TabOrder = 0
  end
  object btnLerArquivo: TBitBtn
    Left = 458
    Top = 7
    Width = 71
    Height = 22
    Caption = 'Ler Arquivo'
    TabOrder = 1
    OnClick = btnLerArquivoClick
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 39
    Width = 635
    Height = 221
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 17
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'first_name'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'last_name'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Width = 129
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gender'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ip_address'
        Width = 114
        Visible = True
      end>
  end
  object OpenDialog1: TOpenDialog
    Left = 592
    Top = 39
  end
  object ClientDataSet1: TClientDataSet
    PersistDataPacket.Data = {
      C20000009619E0BD010000001800000006000000000003000000C20002696401
      00490000000100055749445448020002000A000A66697273745F6E616D650100
      490000000100055749445448020002002D00096C6173745F6E616D6501004900
      00000100055749445448020002002D0005656D61696C01004900000001000557
      49445448020002002D000667656E646572010049000000010005574944544802
      0002000C000A69705F6164647265737301004900000001000557494454480200
      02002D000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 536
    Top = 39
    object ClientDataSet1id: TStringField
      FieldName = 'id'
      Size = 10
    end
    object ClientDataSet1first_name: TStringField
      FieldName = 'first_name'
      Size = 45
    end
    object ClientDataSet1last_name: TStringField
      FieldName = 'last_name'
      Size = 45
    end
    object ClientDataSet1email: TStringField
      FieldName = 'email'
      Size = 45
    end
    object ClientDataSet1gender: TStringField
      FieldName = 'gender'
      Size = 12
    end
    object ClientDataSet1ip_address: TStringField
      FieldName = 'ip_address'
      Size = 45
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 480
    Top = 39
  end
end
