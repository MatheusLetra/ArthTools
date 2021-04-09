unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Data.DB,
  Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Menus;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabNewSQL: TTabSheet;
    TabHistory: TTabSheet;
    History: TClientDataSet;
    dsHistory: TDataSource;
    HistoryID: TIntegerField;
    HistoryINPUT: TMemoField;
    HistoryOUTPUT: TMemoField;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    btnClearHistory: TButton;
    PopupMenu1: TPopupMenu;
    Delete1: TMenuItem;
    Copy1: TMenuItem;
    versionDetails: TLabel;
    Panel3: TPanel;
    Memo1: TMemo;
    Panel4: TPanel;
    Panel5: TPanel;
    Memo2: TMemo;
    Panel6: TPanel;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Memo2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Memo1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnClearHistoryClick(Sender: TObject);
    procedure HistoryOUTPUTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure HistoryINPUTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure Delete1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
  private
    { Private declarations }
    PathExe: String;
    function FormatText(OriginalText: String): String;
    procedure closeData();
    procedure initData();
    procedure getPathName();
    procedure getExeVersion();
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UVersionControl;

procedure TForm1.btnClearHistoryClick(Sender: TObject);
begin
  History.EmptyDataSet;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  FormatedText: String;
begin
  if Memo1.Lines.Text <> EmptyStr then
  begin
    Memo2.Lines.Clear;
    FormatedText := FormatText(Memo1.Lines.Text);
    Memo2.Lines.Add(FormatedText);
    History.Append;
    HistoryINPUT.Assign(Memo1.Lines);
    HistoryOUTPUT.Assign(Memo2.Lines);
    History.Post;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Memo1.Lines.Clear;
  Memo2.Lines.Clear;
end;

procedure TForm1.Copy1Click(Sender: TObject);
begin
  Memo1.Lines.Text := HistoryINPUT.Text;
  Memo2.Lines.Text := HistoryOUTPUT.Text;
  PageControl1.ActivePage := TabNewSQL;
end;

procedure TForm1.Delete1Click(Sender: TObject);
begin
  History.Delete;
end;

function TForm1.FormatText(OriginalText: String): String;
begin
  Result := '';
  Result := OriginalText.Replace('union all', SLineBreak + 'union all' +
    SLineBreak).Replace('left', SLineBreak + 'left')
    .Replace('inner', SLineBreak + 'inner')
    .Replace('right', SLineBreak + 'right')
    .Replace('where', SLineBreak + 'where').Replace('group by',
    SLineBreak + 'group by').Replace('and', SLineBreak + 'and')
    .Replace('order by', SLineBreak + 'order by')
    .Replace('iif(', SLineBreak + 'iif(').Replace('cast', SLineBreak + 'cast')
    .Replace('sum', SLineBreak + 'sum').Replace('from', SLineBreak + 'from')
    .Replace('''''', '''');

  if Copy(Result, 1, 1) = '''' then
  begin
    Result := Copy(Result, 2, Result.Length);
  end;

  if Copy(Result, Length(Result), 1) = '''' then
  begin
    Result := Copy(Result, 0, Length(Result) - 1);;
  end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  closeData();
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  getExeVersion();
  getPathName();
  initData();
end;

procedure TForm1.getExeVersion;
begin
  versionDetails.Caption := 'Developed by ' + AUTHOR + ' - v' +
    MAJOR_VERSION.ToString() + '.' + MINOR_VERSION.ToString() + '.' +
    REVISION.ToString();
end;

procedure TForm1.getPathName;
begin
  PathExe := ExtractFilePath(Application.ExeName);
end;

procedure TForm1.HistoryINPUTGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := Copy(HistoryINPUT.AsString, 1, 600000);
end;

procedure TForm1.HistoryOUTPUTGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := Copy(HistoryOUTPUT.AsString, 1, 600000);
end;

procedure TForm1.initData;
begin
  History.CreateDataSet;
  History.Open;
  if (FileExists(PathExe + 'OldHistory.xml')) then
    History.LoadFromFile(PathExe + 'OldHistory.xml');
  History.Last;
end;

procedure TForm1.closeData;
begin
  if not(History.IsEmpty) then
    History.SaveToFile(PathExe + 'OldHistory.xml')
  else
  begin
    if FileExists(PathExe + 'OldHistory.xml') then
      DeleteFile(PathExe + 'OldHistory.xml')
  end;
  History.Close;
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
