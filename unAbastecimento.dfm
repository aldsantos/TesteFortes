object frmAbastecimento: TfrmAbastecimento
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Abastecimento'
  ClientHeight = 556
  ClientWidth = 927
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  TextHeight = 15
  object Label6: TLabel
    Left = 0
    Top = 98
    Width = 48
    Height = 15
    Caption = 'Registros'
  end
  object btnRegistrar: TBitBtn
    Left = 721
    Top = 523
    Width = 100
    Height = 25
    Caption = 'Registrar'
    TabOrder = 2
    OnClick = btnRegistrarClick
  end
  object btnFechar: TBitBtn
    Left = 827
    Top = 524
    Width = 100
    Height = 25
    Caption = 'Fechar'
    TabOrder = 3
    OnClick = btnFecharClick
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 927
    Height = 89
    Align = alTop
    Caption = ' Dados '
    TabOrder = 0
    ExplicitLeft = 32
    ExplicitTop = 19
    object Label1: TLabel
      Left = 216
      Top = 26
      Width = 37
      Height = 15
      Caption = 'Litros *'
    end
    object Label2: TLabel
      Left = 15
      Top = 26
      Width = 46
      Height = 15
      Caption = 'Bomba *'
    end
    object Label3: TLabel
      Left = 320
      Top = 26
      Width = 65
      Height = 15
      Caption = 'Imposto (%)'
    end
    object Label4: TLabel
      Left = 408
      Top = 26
      Width = 26
      Height = 15
      Caption = 'Valor'
    end
    object Label5: TLabel
      Left = 542
      Top = 26
      Width = 51
      Height = 15
      Caption = 'Descri'#231#227'o'
    end
    object edtLitros: TEdit
      Left = 216
      Top = 47
      Width = 81
      Height = 23
      NumbersOnly = True
      TabOrder = 1
      OnExit = edtLitrosExit
    end
    object cbxBomba: TComboBox
      Left = 15
      Top = 47
      Width = 178
      Height = 22
      Style = csOwnerDrawFixed
      Sorted = True
      TabOrder = 0
    end
    object edtImposto: TEdit
      Left = 320
      Top = 47
      Width = 41
      Height = 23
      TabStop = False
      Enabled = False
      TabOrder = 3
      Text = '13'
    end
    object edtValor: TEdit
      Left = 408
      Top = 47
      Width = 121
      Height = 23
      TabStop = False
      Enabled = False
      TabOrder = 4
    end
    object edtDescrição: TEdit
      Left = 542
      Top = 47
      Width = 366
      Height = 23
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 119
    Width = 927
    Height = 394
    TabStop = False
    DataSource = dtsAbastecimento
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'IdAbastecimento'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DsBomba'
        Title.Caption = 'Bomba'
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QtdeLitros'
        Title.Caption = 'Qtde Litros'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DsImposto'
        Title.Caption = 'Imposto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlAbastecimento'
        Title.Caption = 'Valor Total'
        Width = 133
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DsAbastecimento'
        Title.Caption = 'Descri'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DtAbastecimento'
        Title.Caption = 'Data'
        Visible = True
      end>
  end
  object dtsAbastecimento: TDataSource
    DataSet = dmGeral.qryAbastecimento
    Left = 456
    Top = 296
  end
end
