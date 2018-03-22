object Form5: TForm5
  Left = 259
  Top = 225
  Width = 886
  Height = 313
  Caption = 'Pracownik'
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
    Left = 160
    Top = 216
    Width = 64
    Height = 13
    Caption = 'Nazwa tabeli:'
  end
  object Button1: TButton
    Left = 304
    Top = 224
    Width = 97
    Height = 33
    Caption = 'ZALADUJ'
    TabOrder = 0
    OnClick = Button1Click
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 8
    Width = 857
    Height = 201
    ColCount = 10
    RowCount = 100
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 160
    Top = 232
    Width = 137
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = 'Adres'
    Items.Strings = (
      'Adres'
      'Klient'
      'Marka'
      'Model'
      'Pojazd'
      'Transakcja'
      'Model_1'
      'Pojazd_1'
      'Transakcja_1'
      'Klient_1'
      'Pracownik_1')
  end
  object ADOTable1: TADOTable
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Samochody.mdb;Persi' +
      'st Security Info=False'
    CursorType = ctStatic
    TableName = 'Uprawnienia'
    Left = 56
    Top = 224
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Samochody.mdb;Persi' +
      'st Security Info=False'
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 16
    Top = 224
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 96
    Top = 224
  end
  object ADOQuery1: TADOQuery
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=Samochody.mdb;Pers' +
      'ist Security Info=False'
    Parameters = <>
    Left = 416
    Top = 224
  end
end
