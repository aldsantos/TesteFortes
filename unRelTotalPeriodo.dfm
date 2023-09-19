object frmRelAbastecimento: TfrmRelAbastecimento
  Left = 0
  Top = 0
  Caption = 'frmRelAbastecimento'
  ClientHeight = 817
  ClientWidth = 948
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object RelAbastecimento: TRLReport
    Left = 48
    Top = 32
    Width = 794
    Height = 1123
    DataSource = dtsAbastecimento
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 67
      BandType = btColumnHeader
      object RLLabel1: TRLLabel
        Left = 213
        Top = 24
        Width = 249
        Height = 23
        Caption = 'Relat'#243'rio de Abastecimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 498
        Top = 3
        Width = 217
        Height = 16
        Info = itFullDate
        Text = ''
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 105
      Width = 718
      Height = 83
      DataFields = 'IdBomba'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 61
        BandType = btHeader
        object RLLabel2: TRLLabel
          Left = 16
          Top = 14
          Width = 50
          Height = 16
          Caption = 'Tanque:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 288
          Top = 14
          Width = 49
          Height = 16
          Caption = 'Bomba:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText1: TRLDBText
          Left = 68
          Top = 14
          Width = 62
          Height = 16
          DataField = 'DsTanque'
          DataSource = dtsAbastecimento
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 339
          Top = 14
          Width = 61
          Height = 16
          DataField = 'DsBomba'
          DataSource = dtsAbastecimento
          Text = ''
        end
        object RLLabel4: TRLLabel
          Left = 16
          Top = 40
          Width = 72
          Height = 16
          Caption = 'Qtde Litros '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 120
          Top = 40
          Width = 88
          Height = 16
          Caption = 'Desc. Imposto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 248
          Top = 40
          Width = 34
          Height = 16
          Caption = 'Valor'
        end
        object RLLabel7: TRLLabel
          Left = 376
          Top = 40
          Width = 62
          Height = 16
          Caption = 'Descri'#231#227'o'
        end
        object RLLabel8: TRLLabel
          Left = 608
          Top = 40
          Width = 31
          Height = 16
          Caption = 'Data'
        end
        object RLDraw1: TRLDraw
          Left = 3
          Top = 54
          Width = 710
          Height = 12
          DrawKind = dkLine
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 61
        Width = 718
        Height = 19
        object RLDBText3: TRLDBText
          Left = 16
          Top = 1
          Width = 64
          Height = 16
          DataField = 'QtdeLitros'
          DataSource = dtsAbastecimento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 120
          Top = 1
          Width = 66
          Height = 16
          DataField = 'DsImposto'
          DataSource = dtsAbastecimento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 248
          Top = 1
          Width = 103
          Height = 16
          DataField = 'VlAbastecimento'
          DataSource = dtsAbastecimento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
          BeforePrint = RLDBText5BeforePrint
        end
        object RLDBText6: TRLDBText
          Left = 376
          Top = 3
          Width = 107
          Height = 16
          DataField = 'DsAbastecimento'
          DataSource = dtsAbastecimento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 608
          Top = 1
          Width = 104
          Height = 16
          DataField = 'DtAbastecimento'
          DataSource = dtsAbastecimento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 188
      Width = 718
      Height = 53
      BandType = btColumnFooter
      object RLDBResult1: TRLDBResult
        Left = 436
        Top = 27
        Width = 49
        Height = 16
        DataField = 'IdAbastecimento'
        DataSource = dtsAbastecimento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riCount
        ParentFont = False
        Text = ''
      end
      object RLLabel9: TRLLabel
        Left = 360
        Top = 27
        Width = 74
        Height = 16
        Caption = 'Quantidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 512
        Top = 27
        Width = 70
        Height = 16
        Caption = 'Valor Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblValorTotal: TRLLabel
        Left = 584
        Top = 27
        Width = 86
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object dtsAbastecimento: TDataSource
    DataSet = qryRelAbastecimento
    Left = 704
    Top = 432
  end
  object qryRelAbastecimento: TFDQuery
    Active = True
    Connection = dmGeral.FDConnection1
    SQL.Strings = (
      'SELECT'
      
        '  a.IdAbastecimento, c.dstanque, b.idbomba,  b.DsBomba, a.QtdeLi' +
        'tros,'
      '  a.DsImposto, '
      '  cast(a.VlAbastecimento as varchar(10)) as VlAbastecimento ,'
      '  a.DsAbastecimento, a.DtAbastecimento'
      'FROM '
      '  Abastecimentos a '
      '  INNER JOIN Bombas b on a.IdBomba = b.IdBomba'
      '  inner join Tanques c on b.idtanque = c.IdTanque'
      'ORDER BY '
      '  b.IdBomba')
    Left = 704
    Top = 360
  end
end
