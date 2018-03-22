object Form4: TForm4
  Left = 539
  Top = 562
  Width = 883
  Height = 362
  Caption = 'Klient'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 168
    Top = 216
    Width = 64
    Height = 13
    Caption = 'Nazwa tabeli:'
  end
  object Button1: TButton
    Left = 312
    Top = 224
    Width = 97
    Height = 33
    Caption = 'ZALADUJ'
    TabOrder = 0
    OnClick = Button1Click
  end
  object StringGrid1: TStringGrid
    Left = 3
    Top = 8
    Width = 857
    Height = 201
    ColCount = 10
    RowCount = 100
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 168
    Top = 232
    Width = 137
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = 'Model'
    Items.Strings = (
      'Marka'
      'Model'
      'Pojazd')
  end
  object ADOTable1: TADOTable
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Samochody.mdb;Persi' +
      'st Security Info=False'
    CursorType = ctStatic
    TableName = 'Uprawnienia'
    Left = 64
    Top = 224
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Samochody.mdb;Persi' +
      'st Security Info=False'
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 24
    Top = 224
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 104
    Top = 224
  end
  object ADOQuery1: TADOQuery
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Samochody.mdb;Persi' +
      'st Security Info=False'
    Parameters = <>
    Left = 424
    Top = 224
  end
  object ADOQuery2: TADOQuery
    Parameters = <>
    Left = 992
    Top = 216
  end
end
