object frmPagIncPagar: TfrmPagIncPagar
  Left = 0
  Top = 0
  Anchors = [akTop, akRight]
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Baixa de Documentos - Contas a Pagar'
  ClientHeight = 584
  ClientWidth = 729
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  DesignSize = (
    729
    584)
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel3: TRzPanel
    Left = 0
    Top = 92
    Width = 730
    Height = 495
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    DesignSize = (
      730
      495)
    object RzBackground1: TRzBackground
      Left = 0
      Top = 423
      Width = 730
      Height = 70
      Active = True
      Align = alCustom
      Anchors = [akLeft, akRight, akBottom]
      FrameStyle = fsFlatBold
      GradientColorStart = 4271645
      GradientColorStop = -1
      GradientDirection = gdDiagonalDown
      ImageStyle = isCenter
      ShowGradient = True
      ShowImage = False
      ShowTexture = False
      ExplicitTop = 442
    end
    object lblTipo: TRzLabel
      Left = 9
      Top = 12
      Width = 55
      Height = 13
      Caption = 'Fornecedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object RzLabel14: TRzLabel
      Left = 9
      Top = 58
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
      Transparent = True
    end
    object lblCodigo: TRzLabel
      Left = 397
      Top = 12
      Width = 72
      Height = 13
      Caption = 'Dt. Pagamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object RzLabel13: TRzLabel
      Left = 9
      Top = 104
      Width = 78
      Height = 13
      Caption = 'Palnos de Conta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object btnReceber: TRzBitBtn
      Left = 625
      Top = 440
      Width = 95
      Height = 37
      Anchors = [akRight, akBottom]
      Caption = '&Receber'
      TabOrder = 2
      OnClick = btnReceberClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000630B0000630B00000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
        6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8180C
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E2DFE8E8E8E8E8E8E8E8E8E8E8E8E8181212
        0CE8E8E8E8E8E8E8E8E8E8E8E8E28181DFE8E8E8E8E8E8E8E8E8E8E818121212
        120CE8E8E8E8E8E8E8E8E8E8E281818181DFE8E8E8E8E8E8E8E8E81812121212
        12120CE8E8E8E8E8E8E8E8E2818181818181DFE8E8E8E8E8E8E8E81812120C18
        1212120CE8E8E8E8E8E8E8E28181DFE2818181DFE8E8E8E8E8E8E818120CE8E8
        181212120CE8E8E8E8E8E8E281DFE8E8E2818181DFE8E8E8E8E8E8180CE8E8E8
        E8181212120CE8E8E8E8E8E2DFE8E8E8E8E2818181DFE8E8E8E8E8E8E8E8E8E8
        E8E8181212120CE8E8E8E8E8E8E8E8E8E8E8E2818181DFE8E8E8E8E8E8E8E8E8
        E8E8E8181212120CE8E8E8E8E8E8E8E8E8E8E8E2818181DFE8E8E8E8E8E8E8E8
        E8E8E8E81812120CE8E8E8E8E8E8E8E8E8E8E8E8E28181DFE8E8E8E8E8E8E8E8
        E8E8E8E8E818120CE8E8E8E8E8E8E8E8E8E8E8E8E8E281DFE8E8E8E8E8E8E8E8
        E8E8E8E8E8E8180CE8E8E8E8E8E8E8E8E8E8E8E8E8E8E2DFE8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
    object btnProrrogar: TRzBitBtn
      Left = 8
      Top = 440
      Width = 95
      Height = 37
      Anchors = [akLeft, akBottom]
      Caption = 'Prorrogar'
      TabOrder = 3
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000520B0000520B00000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
        6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000E8E8E8E8E8AA
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E881E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8AA
        A2E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        AAA2E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        AAD5A2E8E8E8E8E8E8E8E8E8E8E8E8E881E381E8E8E8E8E8E8E8E8E8E8E8AAA2
        A2A2D4A2E8E8E8E8E8E8E8E8E8E881818181AC81E8E8E8E8E8E8E8E8E8E8AAD5
        D4D4D4D4A2E8E8E8E8E8E8E8E8E881E3ACACACAC81E8E8E8E8E8E8E8E8E8E8AA
        D5D4A2AAAAAAE8E8E8E8E8E8E8E8E881E3AC81818181E8E8E8E8E8E8E8E8E8AA
        D5D4D4A2E8E8E8E8E8E8E8E8E8E8E881E3ACAC81E8E8E8E8E8E8E8E8AAA2A2A2
        A2D5D4D4A2E8E8E8E8E8E8E88181818181E3ACAC81E8E8E8E8E8E8E8AAD5D5D4
        D4D4D4D4D4A2E8E8E8E8E8E881E3E3ACACACACACAC81E8E8E8E8E8E8E8AAD5D5
        D4D4A2AAAAAAE8E8E8E8E8E8E881E3E3ACAC81818181E8E8E8E8E8E8E8AAD5D5
        D5D4D4A2E8E8E8E8E8E8E8E8E881E3E3E3ACAC81E8E8E8E8E8E8E8E8E8E8AAD5
        D5D5D4D4A2E8E8E8E8E8E8E8E8E881E3E3E3ACAC81E8E8E8E8E8E8E8E8E8AAD5
        D5D5D4D4D4A2E8E8E8E8E8E8E8E881E3E3E3ACACAC81E8E8E8E8E8E8E8E8E8AA
        D5D5D5D4D4D4A2E8E8E8E8E8E8E8E881E3E3E3ACACAC81E8E8E8E8E8E8E8E8AA
        AAAAAAAAAAAAAAAAE8E8E8E8E8E8E8818181818181818181E8E8}
      NumGlyphs = 2
    end
    object btnCancelar: TRzBitBtn
      Left = 524
      Top = 440
      Width = 95
      Height = 37
      Anchors = [akRight, akBottom]
      Caption = '&Cancelar'
      TabOrder = 4
      OnClick = btnCancelarClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000630B0000630B00000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
        6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8B46C6C6CE8
        E8E8E8E8B46C6C6CE8E8E8E2DFDFDFE8E8E8E8E8E2DFDFDFE8E8E8B49090906C
        E8E8E8B49090906CE8E8E8E2818181DFE8E8E8E2818181DFE8E8E8E8B4909090
        6CE8B49090906CE8E8E8E8E8E2818181DFE8E2818181DFE8E8E8E8E8E8B49090
        906C9090906CE8E8E8E8E8E8E8E2818181DF818181DFE8E8E8E8E8E8E8E8B490
        909090906CE8E8E8E8E8E8E8E8E8E28181818181DFE8E8E8E8E8E8E8E8E8E8B4
        9090906CE8E8E8E8E8E8E8E8E8E8E8E2818181DFE8E8E8E8E8E8E8E8E8E8B490
        909090906CE8E8E8E8E8E8E8E8E8E28181818181DFE8E8E8E8E8E8E8E8B49090
        906C9090906CE8E8E8E8E8E8E8E2818181DF818181DFE8E8E8E8E8E8B4909090
        6CE8B49090906CE8E8E8E8E8E2818181DFE8E2818181DFE8E8E8E8B49090906C
        E8E8E8B49090906CE8E8E8E2818181DFE8E8E8E2818181DFE8E8E8B4B4B4B4E8
        E8E8E8E8B4B4B4B4E8E8E8E2E2E2E2E8E8E8E8E8E2E2E2E2E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
    object pgcParcelas: TRzPageControl
      Left = 8
      Top = 152
      Width = 515
      Height = 134
      Hint = ''
      ActivePage = tbsNota
      Anchors = [akLeft, akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabIndex = 0
      TabOrder = 5
      TabStop = False
      FixedDimension = 19
      object tbsNota: TRzTabSheet
        Caption = 'Parcelas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object gdrNota: TRzDBGrid
          Left = 0
          Top = 0
          Width = 511
          Height = 111
          Align = alClient
          DataSource = dsCntPagarItem
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'PREFIXO'
              Title.Caption = 'Prefixo'
              Width = 81
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PARCELA'
              Title.Caption = 'Parcela'
              Width = 83
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR'
              Title.Caption = 'Valor'
              Width = 125
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DT_VENC'
              Title.Caption = 'Vencimento'
              Width = 129
              Visible = True
            end>
        end
      end
    end
    object RzPanel2: TRzPanel
      Left = 529
      Top = 10
      Width = 195
      Height = 411
      Anchors = [akTop, akRight, akBottom]
      BorderInner = fsFlatRounded
      BorderOuter = fsFlatRounded
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object RzLabel6: TRzLabel
        Left = 18
        Top = 63
        Width = 39
        Height = 13
        Caption = 'Dinheiro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object RzLabel7: TRzLabel
        Left = 18
        Top = 119
        Width = 37
        Height = 13
        Caption = 'Cheque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object RzLabel9: TRzLabel
        Left = 18
        Top = 175
        Width = 33
        Height = 13
        Caption = 'Cart'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object RzLabel10: TRzLabel
        Left = 135
        Top = 119
        Width = 40
        Height = 13
        Caption = 'Parcelas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object RzLabel2: TRzLabel
        Left = 122
        Top = 139
        Width = 9
        Height = 25
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object RzLabel4: TRzLabel
        Left = 122
        Top = 195
        Width = 9
        Height = 25
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object RzLabel5: TRzLabel
        Left = 135
        Top = 175
        Width = 40
        Height = 13
        Caption = 'Parcelas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object RzLabel3: TRzLabel
        Left = 18
        Top = 287
        Width = 35
        Height = 13
        Caption = 'Cr'#233'dito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object RzLabel1: TRzLabel
        Left = 122
        Top = 251
        Width = 9
        Height = 25
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object RzLabel11: TRzLabel
        Left = 135
        Top = 231
        Width = 40
        Height = 13
        Caption = 'Parcelas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object RzLabel12: TRzLabel
        Left = 18
        Top = 231
        Width = 23
        Height = 13
        Caption = 'Nota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object RzLabel8: TRzLabel
        Left = 18
        Top = 11
        Width = 103
        Height = 13
        Caption = 'Desconto / Acr'#233'scimo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object edtDinheiro: TRzEdit
        Left = 16
        Top = 82
        Width = 105
        Height = 31
        Text = 'R$ 0,00'
        Alignment = taRightJustify
        Color = clMoneyGreen
        DisabledColor = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnEnter = edtDinheiroEnter
        OnExit = edtDinheiroExit
      end
      object edtCheque: TRzEdit
        Left = 16
        Top = 138
        Width = 105
        Height = 31
        Text = 'R$ 0,00'
        Alignment = taRightJustify
        Color = clMoneyGreen
        DisabledColor = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnEnter = edtChequeEnter
        OnExit = edtChequeExit
      end
      object edtCartao: TRzEdit
        Left = 16
        Top = 194
        Width = 105
        Height = 31
        Text = 'R$ 0,00'
        Alignment = taRightJustify
        Color = clMoneyGreen
        DisabledColor = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnEnter = edtCartaoEnter
        OnExit = edtCartaoExit
      end
      object edtParcelasCH: TRzEdit
        Left = 134
        Top = 138
        Width = 55
        Height = 31
        Text = '1'
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object btnGerarParcelas: TRzBitBtn
        Left = 82
        Top = 358
        Width = 105
        Height = 42
        Caption = 'Gerar Parcelas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnClick = btnGerarParcelasClick
        Glyph.Data = {
          36060000424D3606000000000000360400002800000020000000100000000100
          08000000000000020000520B0000520B00000001000000000000000000003300
          00006600000099000000CC000000FF0000000033000033330000663300009933
          0000CC330000FF33000000660000336600006666000099660000CC660000FF66
          000000990000339900006699000099990000CC990000FF99000000CC000033CC
          000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
          0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
          330000333300333333006633330099333300CC333300FF333300006633003366
          33006666330099663300CC663300FF6633000099330033993300669933009999
          3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
          330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
          66006600660099006600CC006600FF0066000033660033336600663366009933
          6600CC336600FF33660000666600336666006666660099666600CC666600FF66
          660000996600339966006699660099996600CC996600FF99660000CC660033CC
          660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
          6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
          990000339900333399006633990099339900CC339900FF339900006699003366
          99006666990099669900CC669900FF6699000099990033999900669999009999
          9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
          990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
          CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
          CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
          CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
          CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
          CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
          FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
          FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
          FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
          FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
          000000808000800000008000800080800000C0C0C00080808000191919004C4C
          4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
          6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000E8E8E8E8E8AA
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E881E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8AA
          A2E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          AAA2E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          AAD5A2E8E8E8E8E8E8E8E8E8E8E8E8E881E381E8E8E8E8E8E8E8E8E8E8E8AAA2
          A2A2D4A2E8E8E8E8E8E8E8E8E8E881818181AC81E8E8E8E8E8E8E8E8E8E8AAD5
          D4D4D4D4A2E8E8E8E8E8E8E8E8E881E3ACACACAC81E8E8E8E8E8E8E8E8E8E8AA
          D5D4A2AAAAAAE8E8E8E8E8E8E8E8E881E3AC81818181E8E8E8E8E8E8E8E8E8AA
          D5D4D4A2E8E8E8E8E8E8E8E8E8E8E881E3ACAC81E8E8E8E8E8E8E8E8AAA2A2A2
          A2D5D4D4A2E8E8E8E8E8E8E88181818181E3ACAC81E8E8E8E8E8E8E8AAD5D5D4
          D4D4D4D4D4A2E8E8E8E8E8E881E3E3ACACACACACAC81E8E8E8E8E8E8E8AAD5D5
          D4D4A2AAAAAAE8E8E8E8E8E8E881E3E3ACAC81818181E8E8E8E8E8E8E8AAD5D5
          D5D4D4A2E8E8E8E8E8E8E8E8E881E3E3E3ACAC81E8E8E8E8E8E8E8E8E8E8AAD5
          D5D5D4D4A2E8E8E8E8E8E8E8E8E881E3E3E3ACAC81E8E8E8E8E8E8E8E8E8AAD5
          D5D5D4D4D4A2E8E8E8E8E8E8E8E881E3E3E3ACACAC81E8E8E8E8E8E8E8E8E8AA
          D5D5D5D4D4D4A2E8E8E8E8E8E8E8E881E3E3E3ACACAC81E8E8E8E8E8E8E8E8AA
          AAAAAAAAAAAAAAAAE8E8E8E8E8E8E8818181818181818181E8E8}
        NumGlyphs = 2
      end
      object edtParcelasCT: TRzEdit
        Left = 134
        Top = 194
        Width = 55
        Height = 31
        Text = '1'
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object edtCredito: TRzEdit
        Left = 16
        Top = 306
        Width = 105
        Height = 31
        Text = 'R$ 0,00'
        Alignment = taRightJustify
        Color = clMoneyGreen
        DisabledColor = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        Visible = False
        OnEnter = edtCreditoEnter
        OnExit = edtCreditoExit
      end
      object edtNota: TRzEdit
        Left = 16
        Top = 250
        Width = 105
        Height = 31
        TabStop = False
        Text = 'R$ 0,00'
        Alignment = taRightJustify
        Color = clInfoBk
        DisabledColor = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        FocusColor = clMoneyGreen
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
        OnEnter = edtNotaEnter
        OnExit = edtNotaExit
      end
      object edtParcelasNT: TRzEdit
        Left = 132
        Top = 250
        Width = 55
        Height = 31
        Text = '1'
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object edtDesconto: TRzEdit
        Left = 127
        Top = 30
        Width = 58
        Height = 27
        Text = '0'
        Alignment = taRightJustify
        Color = clMoneyGreen
        DisabledColor = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnEnter = edtDescontoEnter
        OnExit = edtDescontoExit
      end
      object cbxTipoDesconto: TRzComboBox
        Left = 79
        Top = 30
        Width = 42
        Height = 27
        AllowEdit = False
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        TabStop = False
        Text = '%'
        OnChange = cbxTipoDescontoChange
        Items.Strings = (
          '%'
          'R$')
        ItemIndex = 0
        Values.Strings = (
          'P'
          'V')
      end
      object cbxDescAcre: TRzComboBox
        Left = 15
        Top = 30
        Width = 58
        Height = 27
        AllowEdit = False
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        TabStop = False
        Text = 'Desc'
        OnChange = cbxDescAcreChange
        Items.Strings = (
          'Desc'
          'Acre')
        ItemIndex = 0
        Values.Strings = (
          'D'
          'A')
      end
    end
    object RzPageControl1: TRzPageControl
      Left = 8
      Top = 288
      Width = 515
      Height = 129
      Hint = ''
      ActivePage = RzTabSheet2
      Anchors = [akLeft, akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabIndex = 0
      TabOrder = 6
      TabStop = False
      FixedDimension = 19
      object RzTabSheet2: TRzTabSheet
        Caption = 'Cheques'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object RzDBGrid2: TRzDBGrid
          Left = 0
          Top = 0
          Width = 511
          Height = 106
          Align = alClient
          DataSource = dsChequeCntPagar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnKeyDown = RzDBGrid2KeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'NUM_CHEQUE'
              Title.Caption = 'N'#186' Cheque'
              Width = 71
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUM_BANCO'
              Title.Caption = 'N'#186' Banco'
              Width = 61
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AGENCIA'
              Title.Caption = 'N'#186' Ag'#234'ncia'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CONTA'
              Title.Caption = 'N'#186' Conta'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR'
              Title.Caption = 'Valor'
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DT_VENCIMENTO'
              Title.Caption = 'Vencimento'
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMITENTE'
              Title.Caption = 'Emitente'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DOCUMENTO'
              Title.Caption = 'Documento'
              Visible = True
            end>
        end
      end
    end
    object edtCliente: TRzEdit
      Tag = 15
      Left = 9
      Top = 31
      Width = 345
      Height = 21
      TabStop = False
      Text = ''
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      FocusColor = clMoneyGreen
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object btnPesqFornec: TRzBitBtn
      Left = 360
      Top = 29
      Width = 31
      Enabled = False
      TabOrder = 0
      TabStop = False
      OnClick = btnPesqFornecClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000330B0000330B00000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
        6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000E8ACDEE3E8E8
        E8E8E8E8E8E8E8E8E8E8E8ACDEE3E8E8E8E8E8E8E8E8E8E8E8E8AC807A81E3E8
        E8E8E8E8E8E8E8E8E8E8ACE28181E3E8E8E8E8E8E8E8E8E8E8E8E8CEA37A81E3
        E8E8E8E8E8E8E8E8E8E8E8ACE28181E3E8E8E8E8E8E8E8E8E8E8E8D0CEA37A81
        E3E8E8E8E8E8E8E8E8E8E8E3ACE28181E3E8E8E8E8E8E8E8E8E8E8E8D0CEA37A
        81E3E8E8E8E8E8E8E8E8E8E8E3ACE28181E3E8E8E8E8E8E8E8E8E8E8E8D0CEA3
        7AACAD82828288E3E8E8E8E8E8E3ACE281ACE3818181E2E3E8E8E8E8E8E8D0CE
        E28288E6B3E6E682EBE8E8E8E8E8E3ACE281E2ACACACAC81E3E8E8E8E8E8E8E3
        8289B3B3B3D7D7D782E3E8E8E8E8E8E381E3ACACACE3E3E381E3E8E8E8E8E8AD
        88B3E6B3B3D7D7D7E688E8E8E8E8E8E3E2ACACACACE3E3E3ACE2E8E8E8E8E888
        89E6E6B3B3B3D7D7E682E8E8E8E8E8E2E3ACACACACACE3E3AC81E8E8E8E8E882
        E6E6E6E6B3B3B3B3B382E8E8E8E8E881ACACACACACACACACAC81E8E8E8E8E888
        E6B3E6E6E6B3B3B3E682E8E8E8E8E8E2ACACACACACACACACAC81E8E8E8E8E8AD
        88D7D7E6E6E6E6B38888E8E8E8E8E8E3E2E3E3ACACACACACE2E2E8E8E8E8E8E3
        82EBD7B3E6E6E68982E3E8E8E8E8E8E381E3E3ACACACACE381E3E8E8E8E8E8E8
        AD82ADE6E6E68882ADE8E8E8E8E8E8E8E381E3ACACACE281E3E8E8E8E8E8E8E8
        E8E38882828282E3E8E8E8E8E8E8E8E8E8E3E281818181E3E8E8}
      NumGlyphs = 2
    end
    object edtDescricao: TRzEdit
      Tag = 15
      Left = 9
      Top = 77
      Width = 511
      Height = 21
      TabStop = False
      Text = ''
      CharCase = ecUpperCase
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnExit = edtDescricaoExit
    end
    object dtpPagamento: TJvDatePickerEdit
      Left = 397
      Top = 31
      Width = 126
      Height = 21
      TabStop = False
      AllowNoDate = True
      Checked = True
      TabOrder = 10
    end
    object cbxPlanoConta: TRzComboBox
      Left = 9
      Top = 123
      Width = 511
      Height = 21
      AllowEdit = False
      Color = clMoneyGreen
      TabOrder = 9
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = -1
    Width = 730
    Height = 92
    Anchors = [akLeft, akTop, akRight]
    Color = clWhite
    TabOrder = 0
    DesignSize = (
      730
      92)
    object JvImage1: TJvImage
      Left = 8
      Top = 11
      Width = 64
      Height = 64
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000400000
        00400806000000AA6971DE0000000473424954080808087C0864880000000970
        48597300000B1200000B1201D2DD7EFC0000001C74455874536F667477617265
        0041646F62652046697265776F726B7320435336E8BCB28C00001E4349444154
        78DAD57B07981455BAF65BA1ABBBAB734F4FCE0106869C14010554144197C535
        AC79D76B58BDBA8B82BAABB2A66B5C45C5B8EAAE2EA2A2173180828A02AB0892
        D300CE30C30C93734FE75455FF77AA671405FC67303C77EBA1E654A7AAF3BE5F
        7ABF5305A7691A7E89EDD366AFD11F57526309C51353D5B484A2654554353DAE
        A8E911454D89296A5A5C555D714593139AEAA15189AB1A47EFA9F49D5645438B
        60100FA88ABAF9E529658B7FAA79713F968086982A0663313B8172D3A43368F4
        289A964993CF4CA89AA707188D9A9D8E6D746C4F6890145595E8CA063A85C8D1
        3CC0D1BFE494F4BF2AED0955059D07A1B882EE4814CD5EBFA698E550B8A171A7
        F7F3754F7CFADCBDFFFBB313E0074C3425277D2B8700651080621A7368620534
        C16C1AD3E8752A1DDB98C508248804106024E8DC2A01206CE0E98FC87330F03C
        EDEC9887C033DC49C06C1A49D01A8840FDB7742A7DD4DFA3CFAAAB0F61DD9E4A
        18060E42F0CBF550CA778CFFF88D67BEFAB909789B8633685256725BC4B5A455
        F46302CA261757BF3D264C90045E076AA4918116E898BDAF32905AF2FBDFFE8E
        9D93814DBED70B38D1FB5E2F01341A8C26AC59FE112AAD6EF089046C6BDEA9BA
        6AC7B323CEDCA6057F4E025EA4495F15EF05DC0380E2F230202A220905296609
        053633D819951E6BC67A49528E0DEE086B7F6FEC7D9F972454EFDE8B35E55510
        070D81F9A3A59858FDDE63B7AED83DEF672320025C1454D4D763BD80990728DF
        02EFB5649808C8B49A904F7BE47BD6FC06C8D1DEEB01FFED6B3AE60524040354
        1AE31A8704595B252F625B4B65053E5EBB01183D0E892D9B71D2A67F6A65A17D
        D32E5DDDF9E9CF42C096751FCECC1E3F6D45828E93564C1270387896ACC20915
        393613ED66F206F5A8D63EDCCDE914DFC4B6C28B504523140A9358308660732B
        12CD1588355722D6D60884FCF0694446E10878269F83CF962D4773662EB96718
        199FBC8C933ABE6871BB9CC32F5B5ADEFA9311F0F8F481E94A3CF6B8D9E99E35
        FDF955B2E84C453416FD6ECC2BC9F88D8347883720DF2C22C7C483CADA51ADAD
        83E678A8645D4D649605C2DE287CF50DF055ED43F0E07624BC5B29BECBD1B9A7
        13B29F72874025431450DB1544BB3F82B18F2F459DA5001BB6EF045F540A61FD
        A718B3F925E45AB0E68655D5A7FE240410F82C1ADEE3A18D8D442298BA602952
        479E8870304C80C91338B206018E530657A251A8DD6D48D4EC467E4E3E528A06
        234A654B07CF929E20EA6055B26E94E2C9DFE247776D0DBC55BB116CDC0C35BC
        1346D37E38339B903200482905523380EDFF3660FB1D85C87053421579EC6F0F
        A1A9B90D437F7D1194EB1762FD922568272FE02271A4AF7E05C39ABF84C76E7E
        F4FA1515B7FC14047C4865EBACAE701CFB6B1B70F6BDCF61D26557C247164B44
        62487434416DA88472700F34B6D75723567B0039739F84EBF4D960E1C2F65000
        F036B4A3B37A3FBC87B623DCBE99FC7D27645735DC8501A494507DCD032C3289
        0124CB200B0981F6BA8302D65E5B08AB41D4C3AEA63B026F3886A12ECA0DB7BF
        863AD581AD5BB602E9999076EFC0C0AD8B906F08C169315D76EDFBFBFB2C948E
        4AC0C2B34ADB29ABA7EC6D0F2241284E9E7D21A6FCE602F8776D42BC663FE28D
        3550BC9D2089068D3C018211F1400C19373E0AAD78285AF66D4377E32644835B
        E9A33DB065D41160C05D00D8D30163CF75941ED0EA61D7D67A08686BE5F0FEE5
        79B0294688748943444077348132AB06AD641402B72EC69ECFD6A09EB44156C3
        0EE456AC22592521DB6E8CDB8CC2946BDEDBFFE57113F0ECD983DE6EF447CF65
        EC9F98E50447195E0985A1B142CE4BD03823C5AF88488C549A9240D41881E20A
        C33CDC0439AB990077C29D4FD6A53C65312501F55A57E901C92ECBC6A436809E
        1F7A77CA77F0FB80B557E6C2E297219066ACF146F4BC3336D38ECEB6564466CF
        41FB8C1BB0EFF55791B3E669D8625D1496461829DCB2ECC676D9C04F24122A8E
        8B80E7CE1E745D4B30B64082683A25DB836044216BF27AAD0FF371288E3084AC
        006C03BC700E8CC252A0C295A7C2624C6A5BF48400DB75403D2A4F07A87E17EC
        11AFD977295F44E8C7DB6FC882DC608351D6D01888A22D18C719C56E04280CBB
        7C01F8AE7D1C2D43A6C1FBF49D48DFF12E782A958C608B2420C326D54B3C3FF3
        0FCBF7EF3A1E024E24775B4117F494B96CE04C0A2C23BB601BDC0E4789022B59
        5672D124390F142225DBD0852803AC1C09E60781B2AA709807E88491F51543D2
        0BEAE766C255E18220ABA8F745D1446136D02D23DF6942872F88005DAFFDBAA7
        B0A35945DEAB37C3A204482F887AD5B14922D2AC8626B3812F234FF0F68B8017
        7F35D8ED8B25D6D77A2383D2391913EE6C42D14C3FBCEA00C422147FC171E80E
        8D44676C341ABA5EC1B4B2B9A04A452EFAC3C0BFEFEABA5AE4938099D5F930C9
        E6264A72E502A2DB45C42B3C88844552930AC82375CB8ECEB0E9F9A038454673
        A70F3141C2BE82D3A0EE5D0F6BB88D729298CC2F74318F6C80C76A9877FDF2AF
        1FEB17016C7BF2ACD23535DEF09414D58C0977D7C0776236F2D57D301A8D6827
        73B753F969A3B276B0ED238CCA3B074E2B8998EF7980AA1E696D0638C12CCC5A
        C018E58756115C058FF82E1ED1FD26C43A49E73B0680CF2A40D7BECF614C0488
        5C11CD44808B74C6C54333B0B9D187F6501CC52E331ABD01C4E309843809AD14
        26EC5AACEF60B0A4643E7863CE871517F79B80A76794FE834ACF95A99A19A597
        7420F8DB003223E590E57C3404023AF8B6888908A84159FA89C84EEB0671F25D
        2BF75898F225B9264D8C8813DB04F00748179413E84A33546F1A786B094CC5C3
        E11A330EEEE1341697C046283EF9EB8DE8F8F03518ED2EB4120194D870C9B00C
        BD83DCD6441E49172C6424F8223DEA1368F2C77465CABE23D13932EDD2FD37AD
        ACBCB3DF043C3B73D0FC7A7FF45E35C4A1F09418B85B1BC077BE8B74C72CCAC8
        4D680DD7A23B568968620BF23C2FC2660D23AA7E0B98595820C08676EA08ABA8
        ED25C04AB50CC59701C1560AE3C0D1B08D180D170176E4E753E7985C09D09367
        8F15B73EFB189A9EBF070E4F2A3A086C573881A169324E2F74EB096F73834F2F
        8D03282FB406A374ACE8DD2655305DA59A88304A86F38980FFE9370194082F69
        0EC41607822A0A060A50EFAB46A77F1409963CC4B85DE0847A080612C154E662
        42D2E28630B95D1B0FA98A00ECA7DF545BA18433A15849B2968C8669F489B096
        0D852597C48B315906E3E435F158D25BE2623209AAC48214EE46F0E527605AFE
        3C52D33CE4F67E727BCA03F4798ECCE38C4159E088842D44423B09B6816E3302
        14836D141A2C093650D264AD78A64D7AE4E65595B71D0F01133A2389F5ADBE18
        0A534DF0CDAF412C2B4E8D104D9CD53AB2B618E4606CA2BE9F2C2C7E4D80EBAC
        8886B2107594215E3206DA905190060D83312B9D3239FD8EE5080A9D44BC27EB
        13E0B8907C5F2237B634ED83A3661B9C559B61AB2BA7A4D64532D9A85B737555
        BB1EE3B3FFFE160E6DDD88C0A28771D6C812F2344E2787854809798242EECFF2
        4590C8E82462326DC667E67D547943FF43E0EC413974928387BC11B148A68C3B
        AF8E404561ADE261260B8B9504B8C14E62280F01E710448AC6223E682429C1C1
        10D23D10C83334B2A44A61A0C67BF201AB14ACABA5174672597B5B253C75DB90
        5AB705EEA6BDB07AEB618847C8BB8819A3991A27811A2B0DAC15DF5CD7053F09
        B0CB3FAF84992CFFC5C2FB117DF3094C1B56405D248FAD941859A5287611D348
        7A00F3064A9C8B6EFDF8C015FD26E08573061B8371A5BABA2B9C55EC90A1E586
        294347100817A0DB3D029DF963E02F1E8D784E310C0E0749261106726B359274
        61DDA505D6FD25019B8321B83B2A90DEBC13998DDB90D6B6170E5F3D8C718A1B
        81C83498A8F6936BB16E514B769B8168B2AB644B67DB1ABB9188C530E3E9D721
        9F782A188F9B9F7B1489C50FE1F461853A095B8884D60055070A0756067752E3
        E5321B96FEF99303E7F79B00B62D9C51BAF16057F84413AF11EB66EC9CF504DA
        CB261250191E8B864C29843C5314450ECAD8BB5BB08E1BA6932090C5AD212F52
        BB2A90D3BA1DB9AD3B90D9F9355CC1461895B06E61453451BC535BDCBB14CAD6
        0212496BF7AE1EE9EFD3CED6103711B840284215C78EDC87DE003762ACAE3A77
        3FF3184C6F3C88D388842865DE2D7AAE88A388C452452729561E2BEF585D35E3
        B808786666E9E2DAEEE8255A2C0C29BD10EF5DB511B6402D668E96E0484BA3B8
        16F4A4452D3B2A3EDB8AF29DED288D56A0A87D3BB27D1570455A615259B1A78E
        8E2D78F0DF023E7C63199FC56C30A6EA8991E3F0CDB7B89E9ACE80C5C8AA5906
        52A20E3B4C0F2E45B86C88DE45D63FF51872DF7908A794151009C9EA10882510
        24652670F8FC8E4FAB4E392E02A814DED31488FED51789C26396F0E2255B1192
        CD98941D879C0821A56937D2993B37EF86A7B30A0E526294B2A0923A53A8434C
        902A3B1AE06F2ECE252B41B8073CF7BDAFB29721AAEFCC9D5967CAA69A653321
        1EF4C1969609EF5DCBE0CF2F848111F8E2020C5CF120260FCE478448D8468451
        F8C26E1236DFBEBAEA84E325E0322A318B9A29FB165878EC9D741D6C886348C3
        57488BB4C016ED84C8B17220E931CCD6F0FA739B818997483C19E747031FA670
        08D3E71299912D88B0D0A07657AF2020122CB9C5A8BD75197CA919BA1457963C
        8F11CBEFC2A9657924D2347C50D10E6A8D77DFF969D5F0E3256002A9ADF56D54
        4E4E2F4A812DE12377A704D5E3CE2A65E9E3B9ADC2C086A99EFA222AD85AE7D1
        7C849DD74F22878DAC9E33025839CC62041061CCB304CA33C6A211D879C35204
        6C4EB01C2A2D7B01133E9A8F217919F8A4D60F83C01D987F5AFE20DCFE99723C
        04E450253850E78B18A797A4E8EBFCCA4F702B8D11E02555C72CCA1D05BDEEFA
        64F92893B43D047C4D0430E01956E33773602418429D40E9447CF1BB25085172
        E625C0F9E14B18B3F256F8380BF52E52FDB412D780F17FDF12E93701FF985526
        FAA289AA035DE1BC53F29D48A5EE8AB9EB7181C6B7098D48D50172C7F81E5B61
        66E1D14BCEB108E825C114EA4078C8995875DE2244D90A1555A2ECCFFE899295
        7F81CB22B78FC8B117CD5CB4D3DF6F02D8F6D48CD2CF2B3B439386A75B75A5C5
        CA547FADCD3636F928818A26B4A3C67CEF771970460E7FD8E7BD04B0A9A659A4
        23BC90BD92C31DE818761EDE9EFE0295506AB6CCC098B7E660CCD7AF8625B7D3
        35677955F4B808A052F80A65D32BB2ED268CC9B421DA07027AADCD9215BB83C4
        80B37B85CC790E2F7147DBC8E3F4D5A3C3BFC3082023E86B0B292683BE14CF3E
        67F71B7B8962286C910ED40CFF1D169FF23862E40863D73E8E33B7DDA38D1D50
        FCC494D2F4DBF1970F8F08836312F0DEC635B3320AB20B233B369C7668FFFEB3
        5996655D5742E9715D8A4FB646C87EAFE9C7C9D72ABB5F4080E36C1D515F00E4
        F4EFC4A8E389D0AE30149AAAAB3DF6BE24192019C8AA07CB11EC6CFB8EEBF76E
        4C081D2051C3C82F755BA8CBE374425928B12AC1EE53703DA439639D283FF146
        BC74CEBD98FCCE0398F4C50318505880A9F9CE1BB21EFBE2993E1160BF71EA5C
        AB6CB9DD62B5D86CB2CCD98CB2289B64D84C2638A839B11A8DD49B8B30918435
        D2AEDF006577B8F573B145409E545D1C1D7E2F9A7DED68EEF6A22B10803F4224
        C41839499B311244FA3DEBDDCD011FAE6E6C83F92839C644C997E9807472FF61
        148A5EBF427D06FD9688904C9C1E32AC13F4D31E2201E4204F58FB9B0568EBF4
        62D667FF83B4ACCCB881E3EEBBE07FF7DCD72702B86B4E789DF05C643698E192
        6D709A6D70C856A45864965460379BA8BE4A9025094649A43A2D42369A74972C
        FF6A17BC163F9AB456347775909E8F211A67374719299CBE921C2671A837FDF4
        BB4CBB87F47B17F50F31DCDF1A84AB27C47ADD9BE50B06AC9D1A9D530B5DE822
        F06903A9CD25357A607B184DBB35A4DB0D4424C7549F2EA1353A8781E47B9BE4
        82C1DF0E7F5C53C95B1E9FB3B2725E9F0810AF9F70A7D528FF35C5EA34B8653B
        9C04DE2D5B9062B5D0B1993CC1080BF302725FBBD9A25BB1CE5F8D9D87B6E1C6
        91F3F0DCA6A7F065D397B0CB29884599056DE80E47E10D45F5D55E464028AC20
        DB99495E1124151886893CE6FE9600A8EDD241338B06281F449337629542A7C9
        3B32DD96521F08E1DC473C100B28CB1DF2E1DD673BD1B29387CD921461E42C44
        04859D4A1E41170A916FF2C99CF4D4F52BBEFE639F0848997BE6957693E5E954
        9BD3EC22025C4480C7462458CC7098659D00363AC8331ABA6BB0A16E1DB66DFF
        0A9E6826DEBC6339DE58FD2A967DF126C28E08C4741344CD4AAEA9A08D3AC270
        579C141E87004DCB4C759A11D811F0C21209E3967A2F82049A3545E4819A91E7
        375A256185CB6478A7D0651A2EF1C2922E358CB3EF72827350C18FC4D1FE5507
        16BF447DBF4C4AF43059C6F248A82747F4E4949789802BFB4440F1FCF3A63BCC
        96251E8BC3E1B2D8C9F56DC8777BC8FA26180C3CD26C2E4A7631ACAB5A8D5D2D
        5F21D2E6C3C5457FC0A5D3AF46187EB2820807EFC68BEB9FC46B95FF84CD904E
        958047454B032678C6A3B1CB8BF5F57BC11BED907823D2E97CE1C63A5C59DD11
        97047E838D40A75BA50F2E5B56BEB7774E2FFC6A907D68AA757F38A2660E9E1E
        47D6C91622803C654B075E799343AA4404703F48C03B44C0B97D2260D4FD978F
        A4D85FE9B63832580EC8737928CE1C14EF3C8D6ED47B6BF1FEEEA5E88A344236
        A93823EDD7983BEB1EBCB57B21D6542EA3D895509A3A062DFE0E6CABDF4E6499
        D0E10DC3D99D8A591367234CC970ED8E4DD814AA87C5E4200FE882140C563CED
        0DCFB8F8ED3D5538C6F6E1A523C7DB0D8665A298C81C382E06D912C3A60D717C
        5D6BA19CC47D47961F85808F8880E97D22E0A487AFCE4EB3BBD6A558ECC56EF2
        8074BB1D3944428AD58EAF6ABEC28A3DCBC813E21412263A831F7F99B20083EC
        6331E7DD2970E488E05409DE4098B23D29C7041D1360472213D387CCC68707D7
        C2C7D6F8451756EDD94C9580EA3A5B23E3B8A5DAF31B8FB970D1BBBD7CEEA0D4
        6CD97213D5E36B794175FBE3049C4BDEB267954547A3E9EB2A3A78D673F4207C
        9308F86D9F081879DF65E621D9451B29010E67A099F5D31D4EEC6FDE8F37B72D
        214F48505EA02AC0F0F37EFC6ED41CFCAAECF778E1ED87B1A6EA5FB0E6F0B0A4
        38118CF0088455B2701823B24E46B16908EE7BF751842C22891923B4981121B6
        949C34D18B44C035FF3F027AB73B4E2E1AE6B118BEB04ABC9D3D93C4F7B4D6BD
        7A80D512D64CB167158C02B790AACA5C2220D12702D876CDE2873E27F79FE4B1
        3A9047F1BFBFA502EFED5E4113F751F21360A5FACB1CC02C29F058ADB876EC03
        189C390EFBF6EDC5071B16614BD36A48056411D1421A204E17B2E257832F44A0
        398C955BD66273571522944CA3D1A4EB9E55685DF3FE6D8F9E2F6264475F49B8
        7B4AD13481E73E623818014C4FF4647CBD2230AF60C22ADD66B8E58F1F543C7A
        B4731C93803FBDB960B953B69D9DE74AC7FED64ABCB1E51DDDEDED049EC59BA5
        8700AB89272517A5CA206242EE4C4CCCBB1059AE629D88052B6F43574A3379AB
        095DE4F689841143B3C6621CED7BCAF7E3EF3B5622929C32FE9611C08DE3331B
        8529A75C269AE67FD657121E3CBDE42AE63DBDAF0F47C3A0B11BBA1EABE1C13F
        7D50717BBF08B8F5EDA75FA56C7F692411C573FF7E83646727E500A30EDAC208
        A08E4B6624D0B12C711416A47BB920091009A3D267E08AB177614FE52ECC5F7B
        2DE2BC403559259DAFA083B480CCB931EFE43F60E1DAA5D8D350A52FA83C3330
        81ABBC07219E31B18D9FB4B0082808F48384FB6938022083C61EDE4A910D4FCE
        595931A75F04DCBDE2A58524866E7C7DD32A6CAFDD098F43EE01FC2D0166069E
        46A34185D924E8F7E258F4B5075B70C5A07B3173C845B87AD96FA891A98539E4
        468C9CFBA0BF151E633A7E7FD6E57864ED12D4B634823D01F156891FE7279A81
        09E3154CB87C00C40B0FF695801E125EA7E1A2EFBFCF2A815B36BC78D3CA8AA3
        E697633F24F5E992BB76351CB8FB952FDE478ACD464116A51050A80F601627EB
        D36826F0D41E806FE6100EF8C1BB6210489FFB5BA2B86FF6F33861D8445CF6C6
        2C124BEDC8B70FC6495913110D24209094FEB87A2B56976FA51F279F28583F3E
        860956EAB8323281F1278C8578E7D67E12C0D647D7D13EE1FB04B8CCE26B37AF
        AABCB45F04CC7FFF851B976CFE64614D47A32E547CD14E98249580F33A7033B9
        BD5962CF04F871C749F7A0D451868FB77E8076B2F0A923CFC4E40953F1F4BA05
        58B4F55F244DAD247913B42BB874CC85F8B2BA1C6BF76E26CD6A4B4E82F63DE3
        E328E3A91CE6666BDAD0A1D3B8D4BFF5FBB93F22C143C326DA0BBF47C03222E0
        37FD2260F403575C4AF1F9AAA2244801DA49DDA95452FC9403781D3CB5E5FA2E
        08098CCD1D8559C36693F82945614A217635EEC2E22DAFE0B3036B29C59948DA
        523222FDCFB4BD5D4A41673082563F5BE0482A14CAABA83845454E340A8D7204
        CE9DF62497F6D45163B60F2494D1B081763BD74380C32CAE9ABBAAF2AC7E11C0
        5D33EE6CF0FC72766FDE2D3BA8A60649B44428F6794A78D07B72235B7DA231A1
        46A83F0F9162CCC107BF5F81FF5A7A15369060729852F5D697F5EED1B82EDD49
        1724F4515105F42E213B0C1A0E8D6E839DB1949D0FE4179C8F11AF2D3D1E027A
        489846C347EC01744680DD247E3E6F55E551EF0D1C9B80ABC61193DC763A9478
        2AB26CA183155B13BB6DC7B23E8D128137100EB658C2712AE50719579D703996
        EE7E1F359D75244E0C3A01EC866A2CDE4B82A67BC4B717E230DA49269B4AE751
        8DF4528236A8E03CBEE8A5B78F97801E12AEA153FF9DA9419B51D8F4DB116927
        E53CB2FE88E5AC631370FE702B0D7329C8DD848083A2B17E93DDEAE0A91FE244
        125F22AF7167E69B27A73B8462CE917467316EA1AF871052A80DF5F9602006D8
        FF04089AEC5EBE3B641053650B47161745265A74F582914E1E1778884C7F3879
        9FE19CA94F5008DC7494698991A65BA66A2DF523399FCF03490AAA7647355736
        6E9319FF7DC413610F9C56BC2018576F729AC5836372AC434FFDC7F650DF09F8
        C309EC6EC3445134442804386FC847738D276B3E8B7F92FCCC0B1E2896FEE276
        A827A9A11024871D134BC6636BF35EB434B5C0CA96BEA863D348EDB5BB5236AE
        FAB2F6ADD9C352EEE6D28C762D16272A05C4E87399CE3D9DF781674B6829E980
        CD3D0593DF5D77F87C14E591516AED8E4568393494678B2C9C0CAAA1FA33870A
        8C0A0A723FC52953EF9070F396C37F77EFA9454F910728D90EE32D172CD913EF
        330125F3CFF3D4763495A9AA9270520E30086C0DAE3B99048D3D4990C878B640
        5CE8B28B63AC29364A8E66B824075ABB3BD1E56D469CFA7F04D9FA9F80606EFE
        DE7A83B429A7ADF15CCA7DF60411C00522943F483FB82D38A1D8096345E3E738
        D4F638E655BFF3DD59925CF65FB701ADBBC6733E3AA7CD83B6A81396CE562814
        66861D07886815868145617EFA99A709863F6FE86BA81C9380B94B175A976EFB
        CCD3E46D533D56277CB14EBDECC9879540363E85AE8B868C2D79C8649328B613
        50C88CBC2693AFC6E0F77520D2D1AD3F51A18E1B042550032B95C388EC444B87
        021B7BDA3448BAA0B90BE9D43C19C60D7B5E1AF9DA7547CE9213B17B5603F2C3
        6968E8A4AC99899A1A01EE14016122180D6D902B0FC1C616662FFDF5BFB8F4A7
        7EF7A30958B4F143F1BD9DFF96DEDDB616D9291E6A2C489972114A7402798146
        D6E7291C342A1451BCDDD07A813429E776D5230DA074496E4D3D02595D24B051
        1F2B77720B26E738B9D821A3D0411E919A83831561B873AC08D779C11149CE7D
        D5B0E66741BBE4FC8B78E1F625474CE8C1E25B715AD1C32820D11591103C40A0
        F333D1BAAF1399010A053F5DD44322AAB8642E862F5EF0A309E8F7C6912FBE5A
        3215D99E932109B9FA73F19D9136D478D7E3BD031BF1E7A9DB31D692865817D5
        660F3ACA5BE11A9A8FF6BDAD7077B5C0D6D0022EAF00386DE215487962D151AF
        71ABE7624C19709B96290FE748960703A432827E0831C210609D8FF61AE66CBE
        1AAD5AF89727E087B695176721C3578F86460EB91EC4A80A489450BB4232CCCD
        8D2495684BB0E76C2DD0CA4A2EE30A5EF8E1A7BD5F2D3C09999EB194989C8851
        256909B4626BED063CEEDBD5A7F9FCE204E471163C37692B46DA4AD1D18158B7
        A82F63B3FF2542E50502ED68EA02B2328033275F0EFBDF5EFDF927F54B12C0B6
        495C11FE6BF80B189B7E5A4C64A227065FC000B9B31D927E0F8DE96A79133E3D
        743A9E3CD87B23538CB6DC36596DAE1FC5757B5D3019C3AAC375902B3D61A319
        D756FDA8F9FCE204F46E0BB2A76278CEAF49530FA7FA68410C1A3A22F5A8EB5A
        8D9BABFE491953BF89A9441F1EA9D6ED5C84B643C338AAFB0941865AD3A293A5
        F2A6849697FB3137E5F4F912FEB4ED3F8B803ECDAAA7EE3753DD0F5015B15003
        458254A6BA1F8B0B30955791B8D2200C288AF067CD385510E6F5B9EEFFA710C0
        A37C760372831968E8A0BA9F855A56F73D24A8FC54F7EBDB60A9AE838D748776
        E9AC455CC633571CF7A5FE4F12C0B6874BE6636AE1BD7ADD8F52DDAF68855C90
        A5D7FD8C40334CFE68B2EE1715CDC588D7FB5CF7FF730860DB6DA91760CAC03F
        6A19A65154F7E5A0BFA7EEB35B67417421AC2DC51F37FD096D7DAFFBFF5904E8
        33E404AAFB9720C3330B063E177156F78307B0ADF60D3CD6BDFCC79EFEFF01E5
        77557193A89F750000000049454E44AE426082}
    end
    object lblTitulo: TRzLabel
      Left = 78
      Top = 19
      Width = 256
      Height = 18
      Caption = 'Inclus'#227'o de Nota de Fornecedor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object lblTituloTotal: TRzLabel
      Left = 539
      Top = 11
      Width = 44
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Valor:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object edtValorDoc: TRzEdit
      Left = 539
      Top = 34
      Width = 181
      Height = 41
      TabStop = False
      Text = 'R$ 0,00'
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Color = clMoneyGreen
      DisabledColor = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ReadOnlyColor = clMoneyGreen
      TabOrder = 0
      OnEnter = edtValorDocEnter
      OnExit = edtValorDocExit
    end
  end
  object qryRetornaIDCntPagar_Item: TpFIBQuery
    Transaction = DM.transPricipal
    Database = DM.Conexao
    SQL.Strings = (
      'SELECT '
      '     ID '
      'FROM '
      '     CNT_PAGAR_ITEM'
      'WHERE'
      '     VALOR = :VALOR'
      'AND'
      '     DT_VENC = :DT_VENC'
      'AND'
      '     IDPAGAR = :IDPAGAR'
      'AND'
      '     IDFILIAL = :IDFILIAL')
    Left = 96
    Top = 8
  end
  object qryConsulta: TpFIBQuery
    Transaction = DM.transPricipal
    Database = DM.Conexao
    Left = 88
    Top = 63
  end
  object qryInsertCntPagar_Item: TpFIBQuery
    Transaction = DM.transPricipal
    Database = DM.Conexao
    SQL.Strings = (
      'INSERT INTO CNT_PAGAR_ITEM ('
      'IDPAGAR,'
      'IDFILIAL, '
      'POSICAO, '
      'PREFIXO,'
      'DT_VENC, '
      'VALOR, '
      'PARCELA'
      ') VALUES ('
      ':IDPAGAR,'
      ':IDFILIAL,'
      ':POSICAO, '
      ':PREFIXO,'
      ':DT_VENC, '
      ':VALOR, '
      ':PARCELA'
      ')')
    Left = 176
    Top = 8
  end
  object qryEditCntPagar_Item: TpFIBQuery
    Transaction = DM.transPricipal
    Database = DM.Conexao
    SQL.Strings = (
      'UPDATE CNT_PAGAR_ITEM SET'
      'POSICAO = :POSICAO,'
      'DT_PAG = :DT_PAG, '
      'VALOR_PAGO = :VALOR_PAGO,'
      'PAGAMENTO_MOEDA = :PAGAMENTO_MOEDA,'
      'DESCONTO = DESCONTO + :DESCONTO,'
      'REC_DINHEIRO = :REC_DINHEIRO'
      '  WHERE'
      '        ID = :ID'
      '  AND'
      '        IDFILIAL = :IDFILIAL ')
    Left = 176
    Top = 56
  end
  object fdsCntPagar: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE CNT_PAGAR'
      'SET '
      '    DT_INC = :DT_INC,'
      '    POSICAO = :POSICAO,'
      '    PREFIXO = :PREFIXO,'
      '    REFERENCIA = :REFERENCIA,'
      '    IDFORNECEDOR = :IDFORNECEDOR,'
      '    ACRESCIMO = :ACRESCIMO,'
      '    DESCONTO = :DESCONTO,'
      '    VALOR = :VALOR,'
      '    VALOR_PAGO = :VALOR_PAGO,'
      '    IDPORTADOR = :IDPORTADOR,'
      '    HISTORICO = :HISTORICO,'
      '    IDFORMA_PAG = :IDFORMA_PAG,'
      '    IDCOMPRA = :IDCOMPRA,'
      '    TOT_PARCELA = :TOT_PARCELA,'
      '    PARCELAS_PG = :PARCELAS_PG,'
      '    DINHEIRO = :DINHEIRO,'
      '    ENVIADO_WEB = :ENVIADO_WEB,'
      '    DT_ALT = :DT_ALT,'
      '    DESCRICAO = :DESCRICAO,'
      '    IDPLANO_CONTA = :IDPLANO_CONTA'
      'WHERE'
      '    ID = :OLD_ID'
      '    and IDFILIAL = :OLD_IDFILIAL'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    CNT_PAGAR'
      'WHERE'
      '        ID = :OLD_ID'
      '    and IDFILIAL = :OLD_IDFILIAL'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO CNT_PAGAR('
      '    ID,'
      '    IDFILIAL,'
      '    DT_INC,'
      '    POSICAO,'
      '    PREFIXO,'
      '    REFERENCIA,'
      '    IDFORNECEDOR,'
      '    ACRESCIMO,'
      '    DESCONTO,'
      '    VALOR,'
      '    VALOR_PAGO,'
      '    IDPORTADOR,'
      '    HISTORICO,'
      '    IDFORMA_PAG,'
      '    IDCOMPRA,'
      '    TOT_PARCELA,'
      '    PARCELAS_PG,'
      '    DINHEIRO,'
      '    ENVIADO_WEB,'
      '    DT_ALT,'
      '    DESCRICAO,'
      '    IDPLANO_CONTA'
      ')'
      'VALUES('
      '    :ID,'
      '    :IDFILIAL,'
      '    :DT_INC,'
      '    :POSICAO,'
      '    :PREFIXO,'
      '    :REFERENCIA,'
      '    :IDFORNECEDOR,'
      '    :ACRESCIMO,'
      '    :DESCONTO,'
      '    :VALOR,'
      '    :VALOR_PAGO,'
      '    :IDPORTADOR,'
      '    :HISTORICO,'
      '    :IDFORMA_PAG,'
      '    :IDCOMPRA,'
      '    :TOT_PARCELA,'
      '    :PARCELAS_PG,'
      '    :DINHEIRO,'
      '    :ENVIADO_WEB,'
      '    :DT_ALT,'
      '    :DESCRICAO,'
      '    :IDPLANO_CONTA'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    *'
      'FROM'
      '    CNT_PAGAR'
      ''
      ' WHERE '
      '        CNT_PAGAR.ID = :OLD_ID'
      '    and CNT_PAGAR.IDFILIAL = :OLD_IDFILIAL'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    *'
      'FROM'
      '    CNT_PAGAR'
      'WHERE'
      '    ID =:ID')
    AutoUpdateOptions.UpdateTableName = 'CNT_RECEBER'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'GEN_ID_CNT_RECEBER'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = DM.transPricipal
    Database = DM.Conexao
    DefaultFormats.DateTimeDisplayFormat = 'dd/mm/yyyy hh:mm:ss'
    DefaultFormats.DisplayFormatDate = 'dd/mm/yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm:ss'
    Left = 402
    oFetchAll = True
    object fdsCntPagarID: TFIBBCDField
      FieldName = 'ID'
      Size = 0
    end
    object fdsCntPagarIDFILIAL: TFIBBCDField
      FieldName = 'IDFILIAL'
      Size = 0
    end
    object fdsCntPagarDT_INC: TFIBDateField
      DefaultExpression = 'CURRENT_DATE'
      FieldName = 'DT_INC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object fdsCntPagarPOSICAO: TFIBStringField
      FieldName = 'POSICAO'
      Size = 2
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsCntPagarPREFIXO: TFIBStringField
      FieldName = 'PREFIXO'
      Size = 2
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsCntPagarREFERENCIA: TFIBStringField
      FieldName = 'REFERENCIA'
      Size = 12
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsCntPagarIDFORNECEDOR: TFIBBCDField
      FieldName = 'IDFORNECEDOR'
      Size = 0
    end
    object fdsCntPagarACRESCIMO: TFIBBCDField
      DefaultExpression = '0,00'
      FieldName = 'ACRESCIMO'
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
      Size = 8
    end
    object fdsCntPagarDESCONTO: TFIBBCDField
      DefaultExpression = '0,00'
      FieldName = 'DESCONTO'
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
      Size = 8
    end
    object fdsCntPagarVALOR: TFIBBCDField
      DefaultExpression = '0,00'
      FieldName = 'VALOR'
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
      Size = 8
    end
    object fdsCntPagarVALOR_PAGO: TFIBBCDField
      DefaultExpression = '0,00'
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
      Size = 8
    end
    object fdsCntPagarIDPORTADOR: TFIBBCDField
      FieldName = 'IDPORTADOR'
      Size = 0
    end
    object fdsCntPagarHISTORICO: TFIBStringField
      FieldName = 'HISTORICO'
      Size = 200
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsCntPagarIDFORMA_PAG: TFIBBCDField
      FieldName = 'IDFORMA_PAG'
      Size = 0
    end
    object fdsCntPagarIDCOMPRA: TFIBBCDField
      FieldName = 'IDCOMPRA'
      Size = 0
    end
    object fdsCntPagarTOT_PARCELA: TFIBStringField
      FieldName = 'TOT_PARCELA'
      Size = 3
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsCntPagarPARCELAS_PG: TFIBIntegerField
      DefaultExpression = '0'
      FieldName = 'PARCELAS_PG'
    end
    object fdsCntPagarDINHEIRO: TFIBBCDField
      DefaultExpression = '0,00'
      FieldName = 'DINHEIRO'
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
      Size = 8
    end
    object fdsCntPagarENVIADO_WEB: TFIBStringField
      DefaultExpression = #39'N'#39
      FieldName = 'ENVIADO_WEB'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsCntPagarDT_ALT: TFIBDateField
      FieldName = 'DT_ALT'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object fdsCntPagarDESCRICAO: TFIBStringField
      FieldName = 'DESCRICAO'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsCntPagarIDPLANO_CONTA: TFIBBCDField
      DefaultExpression = '1'
      FieldName = 'IDPLANO_CONTA'
      Size = 0
    end
  end
  object fdsPagar_Pagamento: TpFIBDataSet
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    CNT_PAGAR_PAGAMENTO'
      'WHERE'
      '        IDCONTA = :OLD_IDCONTA'
      '    and IDPAGAMENTO = :OLD_IDPAGAMENTO'
      '    and IDFILIAL = :OLD_IDFILIAL'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO CNT_PAGAR_PAGAMENTO('
      '    IDCONTA,'
      '    IDPAGAMENTO,'
      '    IDFILIAL'
      ')'
      'VALUES('
      '    :IDCONTA,'
      '    :IDPAGAMENTO,'
      '    :IDFILIAL'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    *'
      'FROM'
      '    CNT_PAGAR_PAGAMENTO '
      ''
      ' WHERE '
      '        CNT_PAGAR_PAGAMENTO.IDCONTA = :OLD_IDCONTA'
      '    and CNT_PAGAR_PAGAMENTO.IDPAGAMENTO = :OLD_IDPAGAMENTO'
      '    and CNT_PAGAR_PAGAMENTO.IDFILIAL = :OLD_IDFILIAL'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    *'
      'FROM'
      '    CNT_PAGAR_PAGAMENTO ')
    Transaction = DM.transPricipal
    Database = DM.Conexao
    Left = 400
    Top = 56
    object fdsPagar_PagamentoIDCONTA: TFIBBCDField
      FieldName = 'IDCONTA'
      Size = 0
    end
    object fdsPagar_PagamentoIDPAGAMENTO: TFIBBCDField
      FieldName = 'IDPAGAMENTO'
      Size = 0
    end
    object fdsPagar_PagamentoIDFILIAL: TFIBBCDField
      FieldName = 'IDFILIAL'
      Size = 0
    end
  end
  object qryEditChequeCntPagar_Item: TpFIBQuery
    Transaction = DM.transPricipal
    Database = DM.Conexao
    SQL.Strings = (
      'UPDATE CNT_PAGAR_CHEQUE SET'
      'IDBANCO = :IDBANCO,'
      'AGENCIA = :AGENCIA,'
      'CONTA = :CONTA,'
      'NUM_CHEQUE = :NUM_CHEQUE,'
      'DT_EMISSAO = :DT_EMISSAO,'
      'EMITENTE = :EMITENTE,'
      'VALOR = :VALOR,'
      'DT_VENCIMENTO = :DT_VENCIMENTO'
      '   WHERE'
      '        ID = :ID'
      '   AND'
      '        IDFILIAL = :IDFILIAL')
    Left = 280
    Top = 8
  end
  object qryInsertChequeCntPagar: TpFIBQuery
    Transaction = DM.transPricipal
    Database = DM.Conexao
    SQL.Strings = (
      'INSERT INTO CNT_PAGAR_CHEQUE ('
      'IDPAGAR_ITEM,'
      'IDFILIAL,'
      'IDBANCO,'
      'AGENCIA,'
      'CONTA,'
      'NUM_CHEQUE,'
      'DT_EMISSAO,'
      'EMITENTE,'
      'VALOR,'
      'DT_VENCIMENTO'
      ') VALUES ('
      ':IDPAGAR_ITEM,'
      ':IDFILIAL,'
      ':IDBANCO,'
      ':AGENCIA,'
      ':CONTA,'
      ':NUM_CHEQUE,'
      ':DT_EMISSAO,'
      ':EMITENTE,'
      ':VALOR,'
      ':DT_VENCIMENTO'
      ')')
    Left = 280
    Top = 64
  end
  object cdsDocumentos: TpFIBClientDataSet
    Aggregates = <>
    Params = <>
    Left = 488
    Top = 65535
    object cdsDocumentosIdDoc: TIntegerField
      FieldName = 'IdDoc'
    end
    object cdsDocumentosIdFilial: TIntegerField
      FieldName = 'IdFilial'
    end
    object cdsDocumentosVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
    end
    object cdsDocumentosREC_DINHEIRO: TFloatField
      FieldName = 'REC_DINHEIRO'
    end
    object cdsDocumentosVALOR_DOC: TFloatField
      FieldName = 'VALOR_DOC'
    end
    object cdsDocumentosPOSICAO: TStringField
      FieldName = 'POSICAO'
      Size = 2
    end
    object cdsDocumentosPAGAMENTO_MOEDA: TStringField
      FieldName = 'PAGAMENTO_MOEDA'
      Size = 2
    end
    object cdsDocumentosPARCELA: TStringField
      FieldName = 'PARCELA'
    end
    object cdsDocumentosID_REC_ITEM: TIntegerField
      FieldName = 'ID_REC_ITEM'
    end
    object cdsDocumentosIDRECEBER: TIntegerField
      FieldName = 'IDPAGAR'
    end
    object cdsDocumentosDT_VENCIMENTO: TDateField
      FieldName = 'DT_VENCIMENTO'
    end
    object cdsDocumentosVALOR_JUROS: TCurrencyField
      FieldName = 'VALOR_JUROS'
    end
    object cdsDocumentosREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsDocumentosIdVenda: TIntegerField
      FieldName = 'IDCOMPRA'
    end
  end
  object cdsPagar_Pag: TpFIBClientDataSet
    Aggregates = <>
    Params = <>
    Left = 496
    Top = 55
    object cdsPagar_PagIDFILIAL: TIntegerField
      FieldName = 'IDFILIAL'
    end
    object cdsPagar_PagIDCONTA: TIntegerField
      FieldName = 'IDCONTA'
    end
    object cdsPagar_PagIDPAGAMENTO: TIntegerField
      FieldName = 'IDPAGAMENTO'
    end
    object cdsPagar_PagPREFIXO_PAGAMENTO: TStringField
      FieldName = 'PREFIXO_PAGAMENTO'
    end
  end
  object cdsCntPagar_Item: TpFIBClientDataSet
    Aggregates = <>
    Params = <>
    Left = 576
    object cdsCntPagar_ItemID: TpFIBClientBCDField
      FieldName = 'ID'
      Precision = 32
      Size = 0
    end
    object cdsCntPagar_ItemPOSICAO: TStringField
      FieldName = 'POSICAO'
      Size = 2
    end
    object cdsCntPagar_ItemPREFIXO: TStringField
      FieldName = 'PREFIXO'
      Size = 2
    end
    object cdsCntPagar_ItemREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 12
    end
    object cdsCntPagar_ItemDT_VENC: TDateField
      FieldName = 'DT_VENC'
    end
    object cdsCntPagar_ItemDT_PAG: TDateField
      FieldName = 'DT_PAG'
    end
    object cdsCntPagar_ItemACRESCIMO: TpFIBClientBCDField
      DefaultExpression = '0,00'
      FieldName = 'ACRESCIMO'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 32
    end
    object cdsCntPagar_ItemDESCONTO: TpFIBClientBCDField
      DefaultExpression = '0,00'
      FieldName = 'DESCONTO'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 32
    end
    object cdsCntPagar_ItemVALOR: TpFIBClientBCDField
      DefaultExpression = '0,00'
      FieldName = 'VALOR'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 32
    end
    object cdsCntPagar_ItemVALOR_PAGO: TpFIBClientBCDField
      DefaultExpression = '0,00'
      FieldName = 'VALOR_PAGO'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 32
    end
    object cdsCntPagar_ItemHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 200
    end
    object cdsCntPagar_ItemPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 6
    end
    object cdsCntPagar_ItemIDFILIAL: TIntegerField
      FieldName = 'IDFILIAL'
    end
  end
  object cdsChequeCntPagar: TpFIBClientDataSet
    Aggregates = <>
    Params = <>
    Left = 672
    object cdsChequeCntPagarIDBANCO: TpFIBClientBCDField
      FieldName = 'IDBANCO'
      Precision = 32
      Size = 0
    end
    object cdsChequeCntPagarAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 10
    end
    object cdsChequeCntPagarCONTA: TStringField
      FieldName = 'CONTA'
      Size = 10
    end
    object cdsChequeCntPagarNUM_CHEQUE: TStringField
      FieldName = 'NUM_CHEQUE'
      Size = 10
    end
    object cdsChequeCntPagarEMITENTE: TStringField
      FieldName = 'EMITENTE'
      Size = 150
    end
    object cdsChequeCntPagarVALOR: TpFIBClientBCDField
      DefaultExpression = '0,00'
      FieldName = 'VALOR'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 32
    end
    object cdsChequeCntPagarDT_VENCIMENTO: TDateField
      FieldName = 'DT_VENCIMENTO'
    end
    object cdsChequeCntPagarPREFIXO: TStringField
      FieldName = 'PREFIXO'
      Size = 2
    end
    object cdsChequeCntPagarNUM_BANCO: TIntegerField
      FieldName = 'NUM_BANCO'
    end
    object cdsChequeCntPagarPARCELA: TStringField
      FieldName = 'PARCELA'
    end
    object cdsChequeCntPagarIDFILIAL: TIntegerField
      FieldName = 'IDFILIAL'
    end
    object cdsChequeCntPagarIDPAGAR_ITEM: TIntegerField
      FieldName = 'IDPAGAR_ITEM'
    end
  end
  object dsChequeCntPagar: TDataSource
    DataSet = cdsChequeCntPagar
    Left = 680
    Top = 56
  end
  object dsCntPagarItem: TDataSource
    DataSet = cdsCntPagar_Item
    Left = 576
    Top = 56
  end
  object fdsPlanoConta: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE PLANO_CONTA'
      'SET '
      '    DT_INC = :DT_INC,'
      '    DT_ALT = :DT_ALT,'
      '    STATUS = :STATUS,'
      '    NOME = :NOME'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    PLANO_CONTA'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO PLANO_CONTA('
      '    ID,'
      '    DT_INC,'
      '    DT_ALT,'
      '    STATUS,'
      '    NOME'
      ')'
      'VALUES('
      '    :ID,'
      '    :DT_INC,'
      '    :DT_ALT,'
      '    :STATUS,'
      '    :NOME'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    *'
      'FROM'
      '    PLANO_CONTA '
      ''
      ' WHERE '
      '        PLANO_CONTA.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    *'
      'FROM'
      '    PLANO_CONTA ')
    AfterOpen = fdsPlanoContaAfterOpen
    Transaction = DM.transPricipal
    Database = DM.Conexao
    DefaultFormats.DateTimeDisplayFormat = 'dd/mm/yyyy hh:mm:ss'
    DefaultFormats.DisplayFormatDate = 'dd/mm/yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm:ss'
    Left = 338
    Top = 8
    oFetchAll = True
    object fdsPlanoContaID: TFIBBCDField
      FieldName = 'ID'
      Size = 0
    end
    object fdsPlanoContaDT_INC: TFIBDateField
      DefaultExpression = 'CURRENT_DATE'
      FieldName = 'DT_INC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object fdsPlanoContaDT_ALT: TFIBDateField
      FieldName = 'DT_ALT'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object fdsPlanoContaSTATUS: TFIBStringField
      DefaultExpression = #39'A'#39
      FieldName = 'STATUS'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsPlanoContaNOME: TFIBStringField
      FieldName = 'NOME'
      Size = 200
      Transliterate = False
      EmptyStrToNull = True
    end
  end
end
