unit unPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons ;

type
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    BitBtn3: TBitBtn;
    btnSair: TBitBtn;
    GroupBox3: TGroupBox;
    btnRelTotalPeriodo: TBitBtn;
    procedure btnSairClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnRelTotalPeriodoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses unDataGeral, unTanques, unBombas, unAbastecimento, unRelTotalPeriodo;

procedure TfrmPrincipal.BitBtn2Click(Sender: TObject);
begin
  FrmBombas:=tFrmBombas.create(self);
  FrmBombas.ShowModal;
  FrmBombas.Free;
end;

procedure TfrmPrincipal.BitBtn3Click(Sender: TObject);
begin
  FrmAbastecimento:=tFrmAbastecimento.create(self);
  FrmAbastecimento.ShowModal;
  FrmAbastecimento.Free;
end;

procedure TfrmPrincipal.BitBtn4Click(Sender: TObject);
begin
  FrmTanques:=tFrmTanques.create(self);
  FrmTanques.ShowModal;
  FrmTanques.Free;
end;

procedure TfrmPrincipal.btnRelTotalPeriodoClick(Sender: TObject);
begin
  FrmRelAbastecimento:=tFrmRelAbastecimento.create(self);
  FrmRelAbastecimento.RelAbastecimento.Preview;
  FrmRelAbastecimento.Free;
end;

procedure TfrmPrincipal.btnSairClick(Sender: TObject);
begin
  Close;
  Application.Terminate;
end;

end.
