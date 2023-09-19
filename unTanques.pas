unit unTanques;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmTanques = class(TForm)
    DBGrid1: TDBGrid;
    btnFechar: TBitBtn;
    dtsTanques: TDataSource;
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTanques: TfrmTanques;

implementation

{$R *.dfm}

uses unDataGeral;

procedure TfrmTanques.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTanques.FormCreate(Sender: TObject);
begin
  dmGeral.qryTanqueBomba.Close;
  dmGeral.qryTanqueBomba.SQL.Clear;
  dmGeral.qryTanqueBomba.SQL.Add('SELECT');
  dmGeral.qryTanqueBomba.SQL.Add('  IdTanque as Código, DsTanque as Descrição, VlLitro as [Valor (litro)]');
  dmGeral.qryTanqueBomba.SQL.Add('FROM');
  dmGeral.qryTanqueBomba.SQL.Add('  Tanques');
  dmGeral.qryTanqueBomba.Open;
end;

end.
