unit unBombas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmBombas = class(TForm)
    DBGrid1: TDBGrid;
    btnFechar: TBitBtn;
    dtsBombas: TDataSource;
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBombas: TfrmBombas;

implementation

{$R *.dfm}

uses unDataGeral;

procedure TfrmBombas.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmBombas.FormCreate(Sender: TObject);
begin
  dmGeral.qryTanqueBomba.Close;
  dmGeral.qryTanqueBomba.SQL.Clear;
  dmGeral.qryTanqueBomba.SQL.Add('SELECT');
  dmGeral.qryTanqueBomba.SQL.Add('  a.IdBomba as Código, b.DsTanque as Tanque, a.DsBomba as Descrição');
  dmGeral.qryTanqueBomba.SQL.Add('FROM');
  dmGeral.qryTanqueBomba.SQL.Add('  Bombas a');
  dmGeral.qryTanqueBomba.SQL.Add('  INNER JOIN Tanques b on a.IdTanque = b.IdTanque');
  dmGeral.qryTanqueBomba.Open
end;

end.
