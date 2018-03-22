unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, DB, ADODB, Grids, DBGrids, Mask;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    MaskEdit1: TMaskEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2,Unit3, Unit5, Unit4;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

Form2.ADOTable1.Open;
Form2.ADOTable1.First;
  while not Form2.ADOTable1.Eof do
  begin
    if (Form2.ADOTable1['login'] = Edit1.Text) and
    (Form2.ADOTable1['haslo'] = MaskEdit1.Text) and
    (Form2.ADOTable1['uprawnienie'] = 'Administrator')then
    begin
      ShowMessage('Zalogowany jako administrator');
      Form1.Hide;
      Form2.Show;
      Form3.Hide;
      Exit;
    end
    else
    if (Form2.ADOTable1['login'] = Edit1.Text) and
    (Form2.ADOTable1['haslo'] = MaskEdit1.Text) and
    (Form2.ADOTable1['uprawnienie'] = 'Pracownik')then
    begin
      ShowMessage('Zalogowany jako pracownik');
      Form1.Hide;
      Form2.Hide;
      Form3.Hide;
      Form5.Show;
      Exit;
    end
    else
    if (Form2.ADOTable1['login'] = Edit1.Text) and
    (Form2.ADOTable1['haslo'] = MaskEdit1.Text) and
    (Form2.ADOTable1['uprawnienie'] = 'Klient')then
    begin
      ShowMessage('Zalogowany jako klient');
      Form1.Hide;
      Form4.Show;
      Form3.Hide;
      Exit;
    end
    else
    Form2.ADOTable1.Next;
  end;
  ShowMessage('Bledne dane!');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Application.Terminate;
end;



end.
