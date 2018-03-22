unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
  Form2.ADOTAble1.Active:=false;
  Form2.ADOTAble1.TableName:=('Uprawnienia');
  Form2.ADOTAble1.Active:=true;
  Form2.ADOTable1.Append;
  Form2.ADOTable1['uprawnienie'] := Edit3.Text ;
  Form2.ADOTable1['login'] := Edit1.Text ;
  Form2.ADOTable1['haslo'] := Edit2.Text ;
  Form2.ADOTable1.Post;
  Edit1.Clear;
  Edit2.Clear;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  Form2.ADOTAble1.Active:=false;
  Form2.ADOTAble1.TableName:=('Uprawnienia');
  Form2.ADOTAble1.Active:=true;

Form2.ADOTable1.First;
  while not Form2.ADOTable1.Eof do
  begin
    if (Form2.ADOTable1['login'] = Edit1.Text) and
    (Form2.ADOTable1['haslo'] = Edit2.Text) then
    begin
      Form2.ADOTable1.Delete;
      Exit;
    end
    else
      Form2.ADOTable1.Next;
  end;
end;

end.
