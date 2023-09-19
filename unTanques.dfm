object frmTanques: TfrmTanques
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Tanques'
  ClientHeight = 437
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 628
    Height = 400
    Align = alTop
    DataSource = dtsTanques
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object btnFechar: TBitBtn
    Left = 528
    Top = 406
    Width = 100
    Height = 25
    Caption = 'Fechar'
    TabOrder = 1
    OnClick = btnFecharClick
  end
  object dtsTanques: TDataSource
    DataSet = dmGeral.qryTanqueBomba
    Left = 272
    Top = 200
  end
end
