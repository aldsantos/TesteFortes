unit unAbastecimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.Client;

type
  TfrmAbastecimento = class(TForm)
    btnRegistrar: TBitBtn;
    btnFechar: TBitBtn;
    GroupBox1: TGroupBox;
    edtLitros: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    cbxBomba: TComboBox;
    edtImposto: TEdit;
    edtValor: TEdit;
    edtDescrição: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dtsAbastecimento: TDataSource;
    DBGrid1: TDBGrid;
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtLitrosExit(Sender: TObject);
    procedure btnRegistrarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure PreencherTanques;
    procedure CalcularTotal;
    procedure ConsistirDados;
    procedure LimparCampos;
  public
    { Public declarations }
  end;

var
  frmAbastecimento: TfrmAbastecimento;

implementation

{$R *.dfm}

uses unDataGeral;

procedure TfrmAbastecimento.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAbastecimento.btnRegistrarClick(Sender: TObject);
var
 Cmd : TFDCommand;
begin
  ConsistirDados;

  try
    Cmd:= TFDCommand.Create(nil);
    cmd.Connection := dmGeral.FDConnection1;
    Cmd.CommandText.Add('INSERT INTO Abastecimentos (IdBomba, QtdeLitros, DsImposto, VlAbastecimento, DsAbastecimento, DtAbastecimento) VALUES (' + copy(cbxBomba.Text,1,pos('-',cbxBomba.Text)-1) + ', '
                        + edtLitros.Text + ', '
                        + edtImposto.Text + ', '
                        + QuotedStr(edtvalor.text) + ', '
                        + QuotedStr(edtDescrição.text)
                        + ', Date())');
    cmd.Execute();
  finally
    FreeAndNil(Cmd);
  end;

  LimparCampos;

  dmGeral.qryAbastecimento.Close;
  dmGeral.qryAbastecimento.Open;
end;

procedure TfrmAbastecimento.CalcularTotal;
var
  Qry: TFDQuery;
  Valor, ValorTotal : Double;
begin
  try
    if (Trim(cbxbomba.Text) <> '') and (Trim(edtLitros.Text) <> '') then
    begin 
      Qry:=TFDQuery.Create(nil);
      Qry.Connection := dmGeral.FDConnection1;

      Qry.Close;
      Qry.SQL.Clear;
      Qry.SQL.Add('SELECT');
      Qry.SQL.Add('  b.VlLitro');
      Qry.SQL.Add('FROM');
      Qry.SQL.Add('  Bombas a');
      Qry.SQL.Add('  INNER JOIN Tanques b on a.IdTanque = b.IdTanque');
      Qry.SQL.Add('WHERE');
      Qry.SQL.Add('  IdBomba = :pIdBomba');
      Qry.Params.ParamByName('pIdBomba').Value := copy(cbxBomba.Text,1,pos('-',cbxBomba.Text)-1);
      Qry.Open;

      if not qry.IsEmpty then
      begin
        Valor := Qry.FieldByName('VlLitro').AsFloat * StrToFloat(edtLitros.Text);
        ValorTotal := Valor + (Valor * StrToFloat(edtImposto.Text) / 100) ;
        edtValor.Text := FormatFloat('##,###0.000',ValorTotal);
      end;
    end;
  finally
    FreeAndNil(Qry);
  end;
end;

procedure TfrmAbastecimento.ConsistirDados;
begin
  if Trim(cbxBomba.Text) = '' then
  begin
    application.MessageBox('Campo "Bomba" é obrigatório','Atenção',MB_ICONEXCLAMATION);
    cbxBomba.SetFocus;
    abort;
  end;

  if Trim(edtLitros.Text) = '' then
  begin
    application.MessageBox('Campo "Litros" é obrigatório','Atenção',MB_ICONEXCLAMATION);
    edtLitros.SetFocus;
    abort;
  end;
end;


procedure TfrmAbastecimento.edtLitrosExit(Sender: TObject);
begin
  CalcularTotal;
end;

procedure TfrmAbastecimento.FormCreate(Sender: TObject);
begin
  PreencherTanques;
  dmGeral.qryAbastecimento.Close;
  dmGeral.qryAbastecimento.Open;
end;

procedure TfrmAbastecimento.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If key = #13 then
  Begin
    Key:= #0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TfrmAbastecimento.LimparCampos;
begin
  cbxBomba.ItemIndex := -1;
  edtLitros.Text := '';
  edtValor.Text := '';
  edtDescrição.Text := '';
  cbxBomba.SetFocus;
end;

procedure TfrmAbastecimento.PreencherTanques;
var
  qry : TFDQuery;
begin
  try
    Qry:=TFDQuery.Create(nil);
    Qry.Connection := dmGeral.FDConnection1;
    Qry.Close;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT');
    Qry.SQL.Add('  a.IdBomba, b.DsTanque, a.DsBomba');
    Qry.SQL.Add('FROM');
    Qry.SQL.Add('  Bombas a');
    Qry.SQL.Add('  INNER JOIN tanques b on a.IdTanque = b.IdTanque');
    Qry.Open;

    cbxBomba.Items.Clear;
    Qry.First;
    while not Qry.eof do
    begin
      cbxBomba.Items.Add(Qry.FieldByName('idBomba').AsString + ' - '
                       + Qry.FieldByName('DsBomba').AsString + ' - ('
                       + Qry.FieldByName('DsTanque').AsString + ')' );

      Qry.Next;
    end;
  finally
    FreeAndNil(Qry);
  end;
end;

end.
