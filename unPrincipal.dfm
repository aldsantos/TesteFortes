object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Principal'
  ClientHeight = 572
  ClientWidth = 444
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 24
    Top = 542
    Width = 177
    Height = 15
    Caption = 'Candidato: Andr'#233' Luiz dos Santos'
  end
  object Label2: TLabel
    Left = 24
    Top = 66
    Width = 401
    Height = 31
    Alignment = taCenter
    AutoSize = False
    Caption = 'Posto ABC'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 24
    Width = 401
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = 'Gerenciador de Abastedimento '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 152
    Width = 401
    Height = 145
    Caption = ' Cadastros '
    TabOrder = 0
    object BitBtn4: TBitBtn
      Left = 32
      Top = 32
      Width = 340
      Height = 25
      Caption = 'Tanques'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn4Click
    end
    object BitBtn2: TBitBtn
      Left = 32
      Top = 95
      Width = 340
      Height = 25
      Caption = 'Bombas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 24
    Top = 336
    Width = 401
    Height = 73
    Caption = ' Registros '
    TabOrder = 1
    object BitBtn3: TBitBtn
      Left = 32
      Top = 32
      Width = 340
      Height = 25
      Caption = 'Abastecimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn3Click
    end
  end
  object btnSair: TBitBtn
    Left = 350
    Top = 532
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 3
    OnClick = btnSairClick
  end
  object GroupBox3: TGroupBox
    Left = 24
    Top = 435
    Width = 401
    Height = 70
    Caption = ' Rela'#243'rios '
    TabOrder = 2
    object btnRelTotalPeriodo: TBitBtn
      Left = 32
      Top = 32
      Width = 340
      Height = 25
      Caption = 'Total do Per'#237'odo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnRelTotalPeriodoClick
    end
  end
end
