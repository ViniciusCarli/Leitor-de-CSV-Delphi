unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    EdtArquivoOriginal: TEdit;
    btnLerArquivo: TBitBtn;
    SpeedButton1: TSpeedButton;
    OpenDialog1: TOpenDialog;
    procedure btnLerArquivoClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Split (DelimiterText : string; Delimiter : Char; ListOfStrings : TStrings);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnLerArquivoClick(Sender: TObject);
var
  ListaItens, ListaDados : TStringList;
  QntLinhasTotal, y : Integer;
  stringLinha, id, first_name, last_name, email, gender, ip_address : string;
begin
  ListaItens := TStringList.Create;
  ListaDados := TStringList.Create;

  ListBox1.Clear;

  ListaItens.LoadFromFile(EdtArquivoOriginal.Text);
  QntLinhasTotal := ListaItens.Count - 1;
    for y := 1 to QntLinhasTotal do
    begin
      stringLinha := ListaItens[y];
      Split(stringLinha, ',', ListaDados);

      id := ListaDados[0];
      first_name := ListaDados[1];
      last_name := ListaDados[2];
      email := ListaDados[3];
      gender := ListaDados[4];
      ip_address := ListaDados[5];

      ListBox1.Items.Add(ListaDados[1]);
      ListBox1.Items.Add(ListaDados[2]);
      ListBox1.Items.Add(ListaDados[3]);
      ListBox1.Items.Add(ListaDados[4]);
      ListBox1.Items.Add(ListaDados[5]);
      ListBox1.Items.Add(' ');
    end;
  ListaItens.Free;
  ListaDados.Free;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
 if OpenDialog1.Execute then
   EdtArquivoOriginal.Text := OpenDialog1.FileName;
end;

procedure TForm1.Split(DelimiterText: string; Delimiter: Char;
  ListOfStrings: TStrings);
begin
  ListOfStrings.DelimitedText := DelimiterText;
end;

end.