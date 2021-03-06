unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.DB, Datasnap.DBClient, Datasnap.Provider, System.StrUtils;

type
  TForm1 = class(TForm)
    SpeedButton1: TSpeedButton;
    EdtArquivoOriginal: TEdit;
    btnLerArquivo: TBitBtn;
    DBGrid1: TDBGrid;
    OpenDialog1: TOpenDialog;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1id: TStringField;
    ClientDataSet1first_name: TStringField;
    ClientDataSet1last_name: TStringField;
    ClientDataSet1email: TStringField;
    ClientDataSet1gender: TStringField;
    ClientDataSet1ip_address: TStringField;
    DataSource1: TDataSource;
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

  ListaItens.LoadFromFile(EdtArquivoOriginal.Text);
  QntLinhasTotal := ListaItens.Count - 1;
    for y := 1 to QntLinhasTotal do
    begin
      ClientDataSet1.Open;
      ClientDataSet1.Insert;
      stringLinha := ListaItens[y];
      Split(stringLinha, ',', ListaDados);

      id := ListaDados[0];
      first_name := ListaDados[1];
      last_name := ListaDados[2];
      email := ListaDados[3];
      gender := ListaDados[4];
      ip_address := ListaDados[5];

      ClientDataSet1id.AsString := id;
      ClientDataSet1first_name.AsString := first_name;
      ClientDataSet1last_name.AsString := last_name;
      ClientDataSet1email.AsString := email;
      ClientDataSet1gender.AsString := gender;
      ClientDataSet1ip_address.AsString := ip_address;

      ClientDataSet1.Post;
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
