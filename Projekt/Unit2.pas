unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ExtCtrls, DBCtrls, ADODB, Grids, DBGrids, Mask,
  jpeg;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit4: TEdit;
    Button5: TButton;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    ADOTable1: TADOTable;
    ComboBox1: TComboBox;
    Button6: TButton;
    Button4: TButton;
    Bevel1: TBevel;
    ComboBox2: TComboBox;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox2: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    MaskEdit5: TMaskEdit;
    MaskEdit6: TMaskEdit;
    MaskEdit7: TMaskEdit;
    MaskEdit8: TMaskEdit;
    MaskEdit9: TMaskEdit;
    MaskEdit10: TMaskEdit;
    MaskEdit11: TMaskEdit;
    MaskEdit12: TMaskEdit;
    MaskEdit13: TMaskEdit;
    MaskEdit14: TMaskEdit;
    MaskEdit15: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    MaskEdit16: TMaskEdit;
    MaskEdit17: TMaskEdit;
    MaskEdit18: TMaskEdit;
    MaskEdit19: TMaskEdit;
    MaskEdit20: TMaskEdit;
    MaskEdit21: TMaskEdit;
    MaskEdit22: TMaskEdit;
    MaskEdit23: TMaskEdit;
    MaskEdit24: TMaskEdit;
    MaskEdit25: TMaskEdit;
    MaskEdit26: TMaskEdit;
    MaskEdit27: TMaskEdit;
    MaskEdit28: TMaskEdit;
    MaskEdit29: TMaskEdit;
    MaskEdit30: TMaskEdit;
    MaskEdit31: TMaskEdit;
    MaskEdit32: TMaskEdit;
    MaskEdit33: TMaskEdit;
    MaskEdit34: TMaskEdit;
    MaskEdit35: TMaskEdit;
    MaskEdit36: TMaskEdit;
    MaskEdit37: TMaskEdit;
    MaskEdit38: TMaskEdit;
    MaskEdit39: TMaskEdit;
    MaskEdit40: TMaskEdit;
    MaskEdit41: TMaskEdit;
    MaskEdit42: TMaskEdit;
    MaskEdit43: TMaskEdit;
    MaskEdit44: TMaskEdit;
    MaskEdit45: TMaskEdit;
    MaskEdit46: TMaskEdit;
    MaskEdit47: TMaskEdit;
    MaskEdit48: TMaskEdit;
    MaskEdit49: TMaskEdit;
    MaskEdit50: TMaskEdit;
    MaskEdit51: TMaskEdit;
    MaskEdit52: TMaskEdit;
    MaskEdit53: TMaskEdit;
    MaskEdit54: TMaskEdit;
    MaskEdit55: TMaskEdit;
    MaskEdit56: TMaskEdit;
    MaskEdit57: TMaskEdit;
    MaskEdit58: TMaskEdit;
    MaskEdit59: TMaskEdit;
    StringGrid1: TStringGrid;
    Image1: TImage;
    Bevel2: TBevel;
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit3, Unit1;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var i,j:integer;
     
begin





Label2.Hide;
ComboBox2.Hide;
MaskEdit1.Hide;
MaskEdit2.Hide;
MaskEdit3.Hide;
MaskEdit4.Hide;
MaskEdit5.Hide;
MaskEdit6.Hide;
MaskEdit7.Hide;
MaskEdit8.Hide;
MaskEdit9.Hide;
MaskEdit10.Hide;
MaskEdit11.Hide;
MaskEdit12.Hide;
MaskEdit13.Hide;
MaskEdit14.Hide;
MaskEdit15.Hide;
MaskEdit16.Hide;
MaskEdit17.Hide;
MaskEdit18.Hide;
MaskEdit19.Hide;
MaskEdit20.Hide;
MaskEdit21.Hide;
MaskEdit22.Hide;
MaskEdit23.Hide;
MaskEdit24.Hide;
MaskEdit25.Hide;
MaskEdit26.Hide;
MaskEdit27.Hide;
MaskEdit28.Hide;
MaskEdit29.Hide;
MaskEdit30.Hide;
MaskEdit31.Hide;
MaskEdit32.Hide;
MaskEdit33.Hide;
MaskEdit34.Hide;
MaskEdit35.Hide;
MaskEdit36.Hide;
MaskEdit37.Hide;
MaskEdit38.Hide;
MaskEdit39.Hide;
MaskEdit40.Hide;
MaskEdit41.Hide;
MaskEdit42.Hide;
MaskEdit43.Hide;
MaskEdit44.Hide;
MaskEdit45.Hide;
MaskEdit46.Hide;
MaskEdit47.Hide;
MaskEdit48.Hide;
MaskEdit49.Hide;
MaskEdit50.Hide;
MaskEdit51.Hide;
MaskEdit52.Hide;
MaskEdit53.Hide;
MaskEdit54.Hide;
MaskEdit55.Hide;
MaskEdit56.Hide;
MaskEdit57.Hide;
MaskEdit58.Hide;
MaskEdit59.Hide;

GroupBox1.Hide;
GroupBox2.Hide;
Label2.Hide;
Label3.Hide;
label4.hide;
label5.hide;
Label6.Hide;
label7.hide;
label8.hide;
Label9.Hide;
label10.hide;
label11.hide;
Label12.Hide;
label13.hide;
label14.hide;
label15.hide;

if ComboBox1.Text='Uprawnienia' then
begin

ComboBox2.Show;
MaskEdit2.Show;
MaskEdit3.Show;

Label2.Show;
Label3.Show;
Label4.Show;

Label2.Caption:='uprawnienie';
Label3.Caption:='login';
Label4.Caption:='haslo';
end;

if ComboBox1.Text='Adres' then
begin
MaskEdit16.Show;
MaskEdit17.Show;
MaskEdit18.Show;
MaskEdit19.Show;
MaskEdit20.Show;
MaskEdit21.Show;

Label2.Show;
Label3.Show;
Label4.Show;
Label5.Show;
Label6.Show;
Label7.Show;

Label2.Caption:='miasto';
Label3.Caption:='ulica';
Label4.Caption:='nr_domu';
Label5.Caption:='kod_pocztowy';
Label6.Caption:='kraj';
Label7.Caption:='wojewodztwo';

end;

if ComboBox1.Text='Klient' then
begin
MaskEdit22.Show;
MaskEdit23.Show;
MaskEdit24.Show;
MaskEdit25.Show;
MaskEdit26.Show;
MaskEdit27.Show;
MaskEdit28.Show;
GroupBox1.Show;
MaskEdit29.Show;


label2.Show;
label3.Show;
label4.Show;
label5.Show;
label6.Show;
label7.Show;
label8.Show;
label11.Show;

Label2.Caption:='imie';
Label3.Caption:='nazwisko';
Label4.Caption:='pesel';
Label5.Caption:='nr_dowodu';
Label6.Caption:='tel';
Label7.Caption:='email';
Label8.Caption:='id_adres';
Label11.Caption:='id_uprawnienie';

end;

if ComboBox1.Text='Marka' then
begin
MaskEdit30.Show;
Label2.Show;
Label2.Caption:='nazwa';
end;

if ComboBox1.Text='Model' then
begin
MaskEdit31.Show;
MaskEdit32.Show;
MaskEdit33.Show;
MaskEdit34.Show;
MaskEdit35.Show;
MaskEdit36.Show;
MaskEdit37.Show;
MaskEdit38.Show;
MaskEdit39.Show;
MaskEdit40.Show;
MaskEdit41.Show;
GroupBox2.Show;

label2.Show;
label3.Show;
label4.Show;
label5.Show;
label6.Show;
label7.Show;
label8.Show;
label9.Show;
label10.Show;
label11.Show;
label12.Show;

Label2.Caption:='nazwa';
Label3.Caption:='wersja';
Label4.Caption:='typ_nadwozia';
Label5.Caption:='poj';
Label6.Caption:='id_marka';
Label7.Caption:='ilosc_drzwi';
Label8.Caption:='moc';
Label9.Caption:='przebieg';
Label10.Caption:='stan';
Label11.Caption:='ilosc_miejsc';
Label12.Caption:='skrzynia';

end;

if ComboBox1.Text='Pojazd' then
begin
MaskEdit42.Show;
MaskEdit43.Show;
MaskEdit44.Show;
MaskEdit45.Show;
MaskEdit46.Show;

label2.Show;
label3.Show;
label4.Show;
label5.Show;
label6.Show;

Label2.Caption:='vin';
Label3.Caption:='id_modelu';
Label4.Caption:='id_transakcji';
Label5.Caption:='kolor';
Label6.Caption:='rok_produkcji';
end;

if ComboBox1.Text='Pracownik' then
begin
MaskEdit47.Show;
MaskEdit48.Show;
MaskEdit49.Show;
MaskEdit50.Show;
MaskEdit51.Show;
MaskEdit52.Show;
MaskEdit53.Show;
MaskEdit54.Show;

label2.Show;
label3.Show;
label4.Show;
label5.Show;
label6.Show;
label7.Show;
label8.Show;
label9.Show;

Label2.Caption:='imie';
Label3.Caption:='nazwisko';
Label4.Caption:='pesel';
Label5.Caption:='nr_dowodu';
Label6.Caption:='tel';
Label7.Caption:='email';
Label8.Caption:='id_adres';
Label9.Caption:='id_uprawnienie';
end;

if ComboBox1.Text='Transakcja' then
begin
MaskEdit55.Show;
MaskEdit56.Show;
MaskEdit57.Show;
MaskEdit58.Show;
MaskEdit59.Show;

label2.Show;
label3.Show;
label4.Show;
label5.Show;
label6.Show;

Label2.Caption:='data_zakupu';
Label3.Caption:='data_sprzedazy';
Label4.Caption:='cena';
Label5.Caption:='id_klienta';
Label6.Caption:='id_pracownika';
end;


Form2.ADOTAble1.Active:=false;
  Form2.ADOTAble1.TableName:=(ComboBox1.Text);
  Form2.ADOTAble1.Active:=true;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from [' + ComboBox1.Text + ']');
ADOQuery1.Open;
StringGrid1.RowCount := ADOQuery1.RecordCount+1;
StringGrid1.ColCount := ADOQuery1.FieldCount;
for j := 1 to ADOQuery1.FieldCount do StringGrid1.Cells[j-1,0] := ADOQuery1.Fields[j-1].FieldName;
for i := 1 to ADOQuery1.RecordCount do begin
for j := 1 to ADOQuery1.FieldCount do StringGrid1.Cells[j-1,i] := ADOQuery1.Fields[j-1].AsString;
ADOQuery1.Next;
end;
end;


procedure TForm2.Button4Click(Sender: TObject);
begin

  if Form2.ADOTAble1.TableName='Uprawnienia' then
  begin
  Form2.ADOTable1.Append;
  Form2.ADOTable1['uprawnienie'] := ComboBox2.Text ;
  Form2.ADOTable1['login'] := MaskEdit2.Text ;
  Form2.ADOTable1['haslo'] := MaskEdit3.Text ;
  Form2.ADOTable1.Post;
  end;

  if Form2.ADOTAble1.TableName='Transakcja' then
  begin
  Form2.ADOTable1.Append;
  Form2.ADOTable1['data_zakupu'] := MaskEdit55.Text ;
  Form2.ADOTable1['data_sprzedazy'] := MaskEdit56.Text ;
  Form2.ADOTable1['cena'] := MaskEdit57.Text ;
  Form2.ADOTable1['id_klient'] := MaskEdit58.Text ;
  Form2.ADOTable1['id_pracownik'] := MaskEdit59.Text ;
  Form2.ADOTable1.Post;
  end;

  if Form2.ADOTAble1.TableName='Pracownik' then
  begin
  Form2.ADOTable1.Append;
  Form2.ADOTable1['imie'] := MaskEdit47.Text ;
  Form2.ADOTable1['nazwisko'] := MaskEdit48.Text ;
  Form2.ADOTable1['pesel'] := MaskEdit49.Text ;
  Form2.ADOTable1['nr_dowodu'] := MaskEdit50.Text ;
  Form2.ADOTable1['telefon'] := MaskEdit51.Text ;
  Form2.ADOTable1['email'] := MaskEdit52.Text ;
  Form2.ADOTable1['id_adres'] := MaskEdit53.Text ;
  Form2.ADOTable1['id_uprawnien'] := MaskEdit54.Text ;
  Form2.ADOTable1.Post;
  end;

  if Form2.ADOTAble1.TableName='Pojazd' then
  begin
  Form2.ADOTable1.Append;
  Form2.ADOTable1['vin'] := MaskEdit42.Text ;
  Form2.ADOTable1['id_modelu'] := MaskEdit43.Text ;
  Form2.ADOTable1['id_transakcji'] := MaskEdit44.Text ;
  Form2.ADOTable1['kolor'] := MaskEdit45.Text ;
  Form2.ADOTable1['rok_produkcji'] := MaskEdit46.Text ;
  Form2.ADOTable1.Post;
  end;

  if Form2.ADOTAble1.TableName='Model' then
  begin
  Form2.ADOTable1.Append;
  Form2.ADOTable1['nazwa'] := MaskEdit31.Text ;
  Form2.ADOTable1['wersja'] := MaskEdit32.Text ;
  Form2.ADOTable1['typ_nadwozia'] := MaskEdit33.Text ;
  Form2.ADOTable1['pojemnosc'] := MaskEdit34.Text ;
  Form2.ADOTable1['id_marka'] := MaskEdit35.Text ;
  Form2.ADOTable1['ilosc_drzwi'] := MaskEdit36.Text ;
  Form2.ADOTable1['moc'] := MaskEdit37.Text ;
  Form2.ADOTable1['przebieg'] := MaskEdit38.Text ;
  Form2.ADOTable1['stan'] := MaskEdit39.Text ;
  Form2.ADOTable1['ilosc_miejsc'] := MaskEdit40.Text ;
  Form2.ADOTable1['skrzynia_biegow'] := MaskEdit41.Text ;
  Form2.ADOTable1['abs'] := CheckBox1.Checked;
  Form2.ADOTable1['poduszki'] := CheckBox2.Checked;
  Form2.ADOTable1['centralny_zamek'] := CheckBox3.Checked;
  Form2.ADOTable1.Post;
  end;

  if Form2.ADOTAble1.TableName='Marka' then
  begin
  Form2.ADOTable1.Append;
  Form2.ADOTable1['nazwa'] := MaskEdit30.Text ;
  Form2.ADOTable1.Post;
  end;

  if Form2.ADOTAble1.TableName='Klient' then
  begin
  Form2.ADOTable1.Append;
  Form2.ADOTable1['imie'] := MaskEdit22.Text ;
  Form2.ADOTable1['nazwisko'] := MaskEdit23.Text ;
  Form2.ADOTable1['pesel'] := MaskEdit24.Text ;
  Form2.ADOTable1['nr_dowodu'] := MaskEdit25.Text ;
  Form2.ADOTable1['telefon'] := MaskEdit26.Text ;
  Form2.ADOTable1['email'] := MaskEdit27.Text ;
  Form2.ADOTable1['id_adres'] := MaskEdit28.Text ;
  Form2.ADOTable1['sprzedaz'] := RadioButton1.Checked;
  Form2.ADOTable1['kupno'] := RadioButton2.Checked;
  Form2.ADOTable1['id_uprawnien'] := MaskEdit29.Text ;
  Form2.ADOTable1.Post;
  end;

  if Form2.ADOTAble1.TableName='Adres' then
  begin
  Form2.ADOTable1.Append;
  Form2.ADOTable1['miasto'] := MaskEdit16.Text ;
  Form2.ADOTable1['ulica'] := MaskEdit17.Text ;
  Form2.ADOTable1['nr_domu'] := MaskEdit18.Text ;
  Form2.ADOTable1['kod_pocztowy'] := MaskEdit19.Text ;
  Form2.ADOTable1['kraj'] := MaskEdit20.Text ;
  Form2.ADOTable1['wojewodztwo'] := MaskEdit21.Text ;
  Form2.ADOTable1.Post;
  end;


end;


procedure TForm2.Button2Click(Sender: TObject);
begin


Form2.ADOTable1.First;
  while not Form2.ADOTable1.Eof do
  begin
    if (Form2.ADOTable1['id'] = Edit4.Text)  then
    begin
      Form2.ADOTable1.Delete;
      Exit;
    end
    else
      Form2.ADOTable1.Next;
  end;
end;



procedure TForm2.Button3Click(Sender: TObject);
begin
if ComboBox1.Text='Uprawnienia' then
begin
  ADOTable1.First;
  while not ADOTable1.Eof do
  begin
    if ADOTable1['id'] = Edit4.Text then
    begin
      ADOTable1.Edit;
          Form2.ADOTable1['uprawnienie'] := ComboBox2.Text ;
          Form2.ADOTable1['login'] := MaskEdit2.Text ;
          Form2.ADOTable1['haslo'] := MaskEdit3.Text ;
    end;
    ADOTable1.Next;
  end;
end;

if ComboBox1.Text='Marka' then
begin
  ADOTable1.First;
  while not ADOTable1.Eof do
  begin
    if ADOTable1['id'] = Edit4.Text then
    begin
      ADOTable1.Edit;
          Form2.ADOTable1['nazwa'] := MaskEdit30.Text ;

    end;
    ADOTable1.Next;
  end;
end;

if ComboBox1.Text='Adres' then
begin
  ADOTable1.First;
  while not ADOTable1.Eof do
  begin
    if ADOTable1['id'] = Edit4.Text then
    begin
      ADOTable1.Edit;
          Form2.ADOTable1['miasto'] := MaskEdit16.Text ;
          Form2.ADOTable1['ulica'] := MaskEdit17.Text ;
          Form2.ADOTable1['nr_domu'] := MaskEdit18.Text ;
          Form2.ADOTable1['kod_pocztowy'] := MaskEdit19.Text ;
          Form2.ADOTable1['kraj'] := MaskEdit20.Text ;
          Form2.ADOTable1['wojewodztwo'] := MaskEdit21.Text ;

    end;
    ADOTable1.Next;
  end;
end;

if ComboBox1.Text='Klient' then
begin
  ADOTable1.First;
  while not ADOTable1.Eof do
  begin
    if ADOTable1['id'] = Edit4.Text then
    begin
      ADOTable1.Edit;
          Form2.ADOTable1['imie'] := MaskEdit22.Text ;
          Form2.ADOTable1['nazwisko'] := MaskEdit23.Text ;
          Form2.ADOTable1['pesel'] := MaskEdit24.Text ;
          Form2.ADOTable1['nr_dowodu'] := MaskEdit25.Text ;
          Form2.ADOTable1['telefon'] := MaskEdit26.Text ;
          Form2.ADOTable1['email'] := MaskEdit27.Text ;
          Form2.ADOTable1['id_adres'] := MaskEdit28.Text ;
          Form2.ADOTable1['id_uprawnien'] := MaskEdit29.Text ;
    end;
    ADOTable1.Next;
  end;
end;

if ComboBox1.Text='Model' then
begin
  ADOTable1.First;
  while not ADOTable1.Eof do
  begin
    if ADOTable1['id'] = Edit4.Text then
    begin
      ADOTable1.Edit;
          Form2.ADOTable1['nazwa'] := MaskEdit31.Text ;
          Form2.ADOTable1['wersja'] := MaskEdit32.Text ;
          Form2.ADOTable1['typ_nadwozia'] := MaskEdit33.Text ;
          Form2.ADOTable1['pojemnosc'] := MaskEdit34.Text ;
          Form2.ADOTable1['id_marka'] := MaskEdit35.Text ;
          Form2.ADOTable1['ilosc_drzwi'] := MaskEdit36.Text ;
          Form2.ADOTable1['moc'] := MaskEdit37.Text ;
          Form2.ADOTable1['przebieg'] := MaskEdit38.Text ;
          Form2.ADOTable1['stan'] := MaskEdit39.Text ;
          Form2.ADOTable1['ilosc_miejsc'] := MaskEdit40.Text ;
          Form2.ADOTable1['skrzynia_biegow'] := MaskEdit41.Text ;
    end;
    ADOTable1.Next;
  end;
end;

if ComboBox1.Text='Pojazd' then
begin
  ADOTable1.First;
  while not ADOTable1.Eof do
  begin
    if ADOTable1['id'] = Edit4.Text then
    begin
      ADOTable1.Edit;
          Form2.ADOTable1['vin'] := MaskEdit42.Text ;
          Form2.ADOTable1['id_modelu'] := MaskEdit43.Text ;
          Form2.ADOTable1['id_transakcji'] := MaskEdit44.Text ;
          Form2.ADOTable1['kolor'] := MaskEdit45.Text ;
          Form2.ADOTable1['rok_produkcji'] := MaskEdit46.Text ;

    end;
    ADOTable1.Next;
  end;
end;

if ComboBox1.Text='Pracownik' then
begin
  ADOTable1.First;
  while not ADOTable1.Eof do
  begin
    if ADOTable1['id'] = Edit4.Text then
    begin
      ADOTable1.Edit;
          Form2.ADOTable1['imie'] := MaskEdit47.Text ;
          Form2.ADOTable1['nazwisko'] := MaskEdit48.Text ;
          Form2.ADOTable1['pesel'] := MaskEdit49.Text ;
          Form2.ADOTable1['nr_dowodu'] := MaskEdit50.Text ;
          Form2.ADOTable1['telefon'] := MaskEdit51.Text ;
          Form2.ADOTable1['email'] := MaskEdit52.Text ;
          Form2.ADOTable1['id_adres'] := MaskEdit53.Text ;
          Form2.ADOTable1['id_uprawnien'] := MaskEdit54.Text ;
    end;
    ADOTable1.Next;
  end;
end;

if ComboBox1.Text='Transakcja' then
begin
  ADOTable1.First;
  while not ADOTable1.Eof do
  begin
    if ADOTable1['id'] = Edit4.Text then
    begin
      ADOTable1.Edit;
          Form2.ADOTable1['data_zakupu'] := MaskEdit55.Text ;
          Form2.ADOTable1['data_sprzedazy'] := MaskEdit56.Text ;
          Form2.ADOTable1['cena'] := MaskEdit57.Text ;
          Form2.ADOTable1['id_klient'] := MaskEdit58.Text ;
          Form2.ADOTable1['id_pracownik'] := MaskEdit59.Text ;
    end;
    ADOTable1.Next;
  end;
end;

end;


procedure TForm2.Button5Click(Sender: TObject);             //wyszukiwanie
var i:integer;
begin
for i:=0 to stringgrid1.RowCount do
begin
  stringgrid1.Cells[0,i+1]:='';
    stringgrid1.Cells[1,i+1]:='';
    stringgrid1.Cells[2,i+1]:='';
    stringgrid1.Cells[3,i+1]:='';
    stringgrid1.Cells[4,i+1]:='';
    stringgrid1.Cells[5,i+1]:='';
    stringgrid1.Cells[6,i+1]:='';
    stringgrid1.Cells[7,i+1]:='';
    stringgrid1.Cells[8,i+1]:='';
    stringgrid1.Cells[9,i+1]:='';
    stringgrid1.Cells[10,i+1]:='';
    stringgrid1.Cells[11,i+1]:='';
    stringgrid1.Cells[12,i+1]:='';
    stringgrid1.Cells[13,i+1]:='';
    stringgrid1.Cells[14,i+1]:='';
    stringgrid1.Cells[15,i+1]:='';
end;

ADOTable1.First;

  while not ADOTable1.Eof do
  begin

    if ADOTable1['id'] = Edit4.Text then
    begin

      ShowMessage('Znaleziono!');
      // stringgrid1.Cells[0,1]:=ADOTable1['id'];
    //stringgrid1.Cells[1,1]:=ADOTable1['uprawnienie'];
    //stringgrid1.Cells[2,1]:=ADOTable1['login'];
   // stringgrid1.Cells[3,1]:=ADOTable1['haslo'];
    for i:=1 to ADOQuery1.FieldCount do stringgrid1.Cells[i-1,1]:=ADOTable1.fields[i-1].AsString;
      Exit;
    end
    else
    ADOTable1.Next;
  end;
end;



procedure TForm2.Button6Click(Sender: TObject);
begin
Form1.Show;
Form2.Hide;
end;


procedure TForm2.FormCreate(Sender: TObject);
begin
MaskEdit1.Text:='';
MaskEdit2.Text:='';
MaskEdit3.Text:='';
MaskEdit4.Text:='';
MaskEdit5.Text:='';
MaskEdit6.Text:='';
MaskEdit7.Text:='';
MaskEdit8.Text:='';
MaskEdit9.Text:='';
MaskEdit10.Text:='';
MaskEdit11.Text:='';
MaskEdit12.Text:='';
MaskEdit13.Text:='';
MaskEdit14.Text:='';
MaskEdit15.Text:='';
MaskEdit16.Text:='';
MaskEdit17.Text:='';
MaskEdit18.Text:='';
MaskEdit19.Text:='';
MaskEdit20.Text:='';
MaskEdit21.Text:='';
MaskEdit22.Text:='';
MaskEdit23.Text:='';
MaskEdit24.Text:='';
MaskEdit25.Text:='';
MaskEdit26.Text:='';
MaskEdit27.Text:='';
MaskEdit28.Text:='';
MaskEdit29.Text:='';
MaskEdit30.Text:='';
MaskEdit31.Text:='';
MaskEdit32.Text:='';
MaskEdit33.Text:='';
MaskEdit34.Text:='';
MaskEdit35.Text:='';
MaskEdit36.Text:='';
MaskEdit37.Text:='';
MaskEdit38.Text:='';
MaskEdit39.Text:='';
MaskEdit40.Text:='';
MaskEdit41.Text:='';
MaskEdit42.Text:='';
MaskEdit43.Text:='';
MaskEdit44.Text:='';
MaskEdit45.Text:='';
MaskEdit46.Text:='';
MaskEdit47.Text:='';
MaskEdit48.Text:='';
MaskEdit49.Text:='';
MaskEdit50.Text:='';
MaskEdit51.Text:='';
MaskEdit52.Text:='';
MaskEdit53.Text:='';
MaskEdit54.Text:='';
MaskEdit55.Text:='';
MaskEdit56.Text:='';
MaskEdit57.Text:='';
MaskEdit58.Text:='';
MaskEdit59.Text:='';

end;

end.
