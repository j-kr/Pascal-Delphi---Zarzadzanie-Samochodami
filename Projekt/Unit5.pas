unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, DB, Grids, StdCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    StringGrid1: TStringGrid;
    ADOTable1: TADOTable;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit4;

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
var i,j:integer;

begin

if (ComboBox1.Text='Klient')or(ComboBox1.Text='Model')or(ComboBox1.Text='Marka')or(ComboBox1.Text='Transakcja') then
begin
Form4.ADOTAble1.Active:=false;
  Form4.ADOTAble1.TableName:=(ComboBox1.text);
  Form4.ADOTAble1.Active:=true;
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

end
else
 begin

//_______________________________________________________KLIENT________________________________________________________




if(ComboBox1.Text='Klient_1') then
begin
Form4.ADOTAble1.Active:=false;
  Form4.ADOTAble1.TableName:=('Klient');
  Form4.ADOTAble1.Active:=true;
  with ADOQuery1 do
  begin

    SQL.Clear;
    SQL.Add('SELECT Klient.id,imie,nazwisko,pesel,nr_dowodu,telefon,email,miasto,ulica,nr_domu,kod_pocztowy,kraj,wojewodztwo,uprawnienie,haslo,login,sprzedaz,kupno FROM Klient,Adres,Uprawnienia where Klient.id_adres=Adres.id and Klient.id_uprawnien=Uprawnienia.id;');
   Open;
   StringGrid1.RowCount := ADOQuery1.RecordCount+1;
StringGrid1.ColCount := ADOQuery1.FieldCount;
for j := 1 to ADOQuery1.FieldCount do StringGrid1.Cells[j-1,0] := ADOQuery1.Fields[j-1].FieldName;
for i := 1 to ADOQuery1.RecordCount do begin
for j := 1 to ADOQuery1.FieldCount do StringGrid1.Cells[j-1,i] := ADOQuery1.Fields[j-1].AsString;
ADOQuery1.Next;
end;
  end;
end;



//_______________________________________________________Pracownik________________________________________________________




if(ComboBox1.Text='Pracownik_1') then
begin
Form4.ADOTAble1.Active:=false;
  Form4.ADOTAble1.TableName:=('Pracownik');
  Form4.ADOTAble1.Active:=true;
  with ADOQuery1 do
  begin
    SQL.Clear;
    SQL.Add('SELECT Pracownik.id,imie,nazwisko,pesel,nr_dowodu,telefon,email,miasto,ulica,nr_domu,kod_pocztowy,kraj,wojewodztwo,uprawnienie,haslo,login FROM Pracownik,Adres,Uprawnienia where Pracownik.id_adres=Adres.id and Klient.id_uprawnien=Uprawnienia.id;');
   Open;
   StringGrid1.RowCount := ADOQuery1.RecordCount+1;
StringGrid1.ColCount := ADOQuery1.FieldCount;
for j := 1 to ADOQuery1.FieldCount do StringGrid1.Cells[j-1,0] := ADOQuery1.Fields[j-1].FieldName;
for i := 1 to ADOQuery1.RecordCount do begin
for j := 1 to ADOQuery1.FieldCount do StringGrid1.Cells[j-1,i] := ADOQuery1.Fields[j-1].AsString;
ADOQuery1.Next;
end;
  end;
end;


//_______________________________________________________Transakcja________________________________________________________



if(ComboBox1.Text='Transakcja_1') then
begin
Form4.ADOTAble1.Active:=false;
  Form4.ADOTAble1.TableName:=('Transakcja');
  Form4.ADOTAble1.Active:=true;
  with ADOQuery1 do
  begin
    SQL.Clear;
    SQL.Add('SELECT Transakcja.id,data_zakupu,data_sprzedazy,cena,Pracownik.imie,Pracownik.nazwisko,Pracownik.pesel,Pracownik.nr_dowodu,Pracownik.telefon,Pracownik.email,Klient.imie,Klient.nazwisko,Klient.pesel,Klient.nr_dowodu,Klient.telefon,Klient.email');
    SQL.Add('FROM Transakcja,Pracownik,Klient where Transakcja.id_klient=Klient.id and Transakcja.id_pracownik=Pracownik.id;');
   Open;
   StringGrid1.RowCount := ADOQuery1.RecordCount+1;                   
StringGrid1.ColCount := ADOQuery1.FieldCount;
for j := 1 to ADOQuery1.FieldCount do StringGrid1.Cells[j-1,0] := ADOQuery1.Fields[j-1].FieldName;
for i := 1 to ADOQuery1.RecordCount do begin
for j := 1 to ADOQuery1.FieldCount do StringGrid1.Cells[j-1,i] := ADOQuery1.Fields[j-1].AsString;
ADOQuery1.Next;
end;
  end;
end;



//_______________________________________________________Pojazd________________________________________________________




if(ComboBox1.Text='Pojazd_1') then
begin
Form4.ADOTAble1.Active:=false;
  Form4.ADOTAble1.TableName:=('Pojazd');
  Form4.ADOTAble1.Active:=true;
  with ADOQuery1 do
  begin
    SQL.Clear;
    SQL.Add('SELECT Pojazd.id,vin,nazwa,wersja,typ_nadwozia,pojemnosc,ilosc_drzwi,moc,przebieg,');
    SQL.Add('stan,ilosc_miejsc,skrzynia_biegow,abs,poduszki,centralny_zamek,kolor,rok_produkcji,data_zakupu,data_sprzedazy,cena,');
    SQL.Add('FROM Pojazd,Model,Transakcja where Pojazd.id_modelu=Model.id and Pojazd.id_transakcji=Transakcja.id;');
   Open;
   StringGrid1.RowCount := ADOQuery1.RecordCount+1;                   
StringGrid1.ColCount := ADOQuery1.FieldCount;
for j := 1 to ADOQuery1.FieldCount do StringGrid1.Cells[j-1,0] := ADOQuery1.Fields[j-1].FieldName;
for i := 1 to ADOQuery1.RecordCount do begin
for j := 1 to ADOQuery1.FieldCount do StringGrid1.Cells[j-1,i] := ADOQuery1.Fields[j-1].AsString;
ADOQuery1.Next;
end;
  end;
end;




//_______________________________________________________Model________________________________________________________




if(ComboBox1.Text='Model_1') then
begin
Form4.ADOTAble1.Active:=false;
  Form4.ADOTAble1.TableName:=('Model');
  Form4.ADOTAble1.Active:=true;
  with ADOQuery1 do
  begin
    SQL.Clear;
    SQL.Add('SELECT Model.id,Marka.nazwa,Model.nazwa,wersja,typ_nadwozia,pojemnosc,ilosc_drzwi,moc,przebieg,stan,ilosc_miejsc,skrzynia_biegow,abs,poduszki,centralny_zamek FROM Marka,Model where Model.id_marki=Marka.id;');
   Open;
   StringGrid1.RowCount := ADOQuery1.RecordCount+1;
StringGrid1.ColCount := ADOQuery1.FieldCount;
for j := 1 to ADOQuery1.FieldCount do StringGrid1.Cells[j-1,0] := ADOQuery1.Fields[j-1].FieldName;
for i := 1 to ADOQuery1.RecordCount do begin
for j := 1 to ADOQuery1.FieldCount do StringGrid1.Cells[j-1,i] := ADOQuery1.Fields[j-1].AsString;
ADOQuery1.Next;
end;
  end;
end;
 end;
end;
    //SQL.Add('SELECT Ksiazka.id_ksiazki,isbn,tytul,nr_wydania,rok_wydania,miejsce,stan,cena,data_zakupu,Kategoria.kategoria,imie,nazwisko FROM Ksiazka,Egzemplarz,Autor,Kategoria where Ksiazka.id_ksiazki=Egzemplarz.id_ksiazki and Autor.id_autora=Ksiazka.id_autora;');

end.
