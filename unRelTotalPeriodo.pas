unit unRelTotalPeriodo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmRelAbastecimento = class(TForm)
    RelAbastecimento: TRLReport;
    dtsAbastecimento: TDataSource;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDraw1: TRLDraw;
    RLBand6: TRLBand;
    RLDBResult1: TRLDBResult;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    qryRelAbastecimento: TFDQuery;
    RLSystemInfo1: TRLSystemInfo;
    lblValorTotal: TRLLabel;
    procedure RLDBText5BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelAbastecimento: TfrmRelAbastecimento;
  TotalGeral : double;

implementation

{$R *.dfm}

uses unDataGeral;



procedure TfrmRelAbastecimento.RLDBText5BeforePrint(Sender: TObject;
  var AText: string; var PrintIt: Boolean);
begin
  TotalGeral := TotalGeral + qryRelAbastecimento.FieldByName('VlAbastecimento').AsFloat;
  lblValorTotal.Caption := FormatFloat('##,###0.000',TotalGeral);
end;

end.
