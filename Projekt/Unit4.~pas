unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, DB, Grids, StdCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    StringGrid1: TStringGrid;
    ADOTable1: TADOTable;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
var i,j:integer;
begin
if (ComboBox1.Text='Adres')or (ComboBox1.Text='Klient')  or (ComboBox1.Text='Transakcja') or (ComboBox1.Text='Uprawnienia')or (ComboBox1.Text='Pracownik')  then else
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
end;
end;

end.
