unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Unit2;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  ArrayAdd( StrToInt( Edit1.Text ) );
  ArrayPrint;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i:integer;
begin
     for i:=0 to ListBox1.Count-1 do
     	 if ListBox1.Selected[i] then
            ArrayDelete(i);
     ArrayPrint;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ArrayInit;
end;

end.

