object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 261
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
  object ListBox1: TListBox
    Left = 0
    Top = 58
    Width = 635
    Height = 203
    Align = alBottom
    ItemHeight = 13
    TabOrder = 0
    ExplicitTop = 96
  end
  object EdtArquivoOriginal: TEdit
    Left = 8
    Top = 8
    Width = 409
    Height = 21
    TabOrder = 1
  end
  object btnLerArquivo: TBitBtn
    Left = 458
    Top = 7
    Width = 71
    Height = 22
    Caption = 'Ler Arquivo'
    TabOrder = 2
    OnClick = btnLerArquivoClick
  end
  object OpenDialog1: TOpenDialog
    Left = 584
    Top = 8
  end
end