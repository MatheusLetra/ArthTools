unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Memo2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Memo1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    function FormatText(OriginalText: String):String;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  FormatedText: String;
begin
  Memo2.Lines.Clear;
  FormatedText := FormatText(Memo1.Lines.Text);
  Memo2.Lines.Add(FormatedText);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Memo1.Lines.Clear;
  Memo2.Lines.Clear;
end;

function TForm1.FormatText(OriginalText: String): String;
begin
  Result := '';
  Result := OriginalText.Replace('union all', SLineBreak + 'union all' + SLineBreak)
    .Replace('left', SLineBreak + 'left').Replace('inner', SLineBreak + 'inner')
    .Replace('right', SLineBreak + 'right').Replace('where', SLineBreak + 'where')
    .Replace('group by', SLineBreak + 'group by').Replace('and', SLineBreak + 'and')
    .Replace('order by', SLineBreak + 'order by').Replace('iif(', SLineBreak + 'iif(')
    .Replace('cast', SLineBreak + 'cast').Replace('sum', SLineBreak + 'sum')
    .Replace('from', SLineBreak + 'from').Replace('''''','''');

  if Copy(Result,1,1) = '''' then
  begin
    Result := Copy(Result,2,Result.Length);
  end;

  if Copy(Result,length(Result),1) = '''' then
  begin
    Result := copy(Result,0,length(Result)-1);;
  end;
end;

procedure TForm1.Memo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Ord('A')) and (ssCtrl in Shift) then
  begin
    TMemo(Sender).SelectAll;
    Key := 0;
  end;
end;

procedure TForm1.Memo2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Ord('A')) and (ssCtrl in Shift) then
  begin
    TMemo(Sender).SelectAll;
    Key := 0;
  end;
end;

end.
