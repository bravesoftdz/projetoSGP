object frmTransportadoraDados: TfrmTransportadoraDados
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Informe os dados de transporte'
  ClientHeight = 274
  ClientWidth = 675
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  DesignSize = (
    675
    274)
  PixelsPerInch = 96
  TextHeight = 13
  object RzBackground1: TRzBackground
    Left = 0
    Top = 0
    Width = 675
    Height = 274
    Active = True
    Align = alClient
    GradientColorStart = -1
    GradientColorStop = 2497553
    GradientDirection = gdDiagonalDown
    ImageStyle = isCenter
    ShowGradient = True
    ShowImage = False
    ShowTexture = False
    ExplicitTop = -213
    ExplicitWidth = 433
    ExplicitHeight = 454
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 675
    Height = 209
    Anchors = [akLeft, akTop, akRight]
    BorderOuter = fsNone
    Color = clWhite
    TabOrder = 1
    object lblTituloCliente: TRzLabel
      Left = 10
      Top = 12
      Width = 250
      Height = 18
      Caption = 'Informe os dados de transporte'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object RzLabel5: TRzLabel
      Left = 171
      Top = 154
      Width = 64
      Height = 13
      Caption = 'Qtd. Volumes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object RzLabel1: TRzLabel
      Left = 246
      Top = 154
      Width = 36
      Height = 13
      Caption = 'Esp'#233'cie'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object RzLabel2: TRzLabel
      Left = 334
      Top = 154
      Width = 29
      Height = 13
      Caption = 'Marca'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object RzLabel3: TRzLabel
      Left = 422
      Top = 154
      Width = 54
      Height = 13
      Caption = 'Numera'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object RzLabel4: TRzLabel
      Left = 496
      Top = 154
      Width = 52
      Height = 13
      Caption = 'Peso Bruto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object RzLabel6: TRzLabel
      Left = 584
      Top = 154
      Width = 59
      Height = 13
      Caption = 'Peso L'#237'quido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object RzLabel7: TRzLabel
      Left = 10
      Top = 55
      Width = 69
      Height = 13
      Caption = 'Transportador'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object RzLabel8: TRzLabel
      Left = 400
      Top = 55
      Width = 48
      Height = 13
      Caption = 'CNPJ/CPF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object RzLabel9: TRzLabel
      Left = 10
      Top = 101
      Width = 45
      Height = 13
      Caption = 'Endere'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object RzLabel10: TRzLabel
      Left = 400
      Top = 101
      Width = 33
      Height = 13
      Caption = 'Cidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object RzLabel11: TRzLabel
      Left = 619
      Top = 101
      Width = 13
      Height = 13
      Caption = 'UF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object RzLabel12: TRzLabel
      Left = 538
      Top = 55
      Width = 10
      Height = 13
      Caption = 'IE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object RzLabel13: TRzLabel
      Left = 10
      Top = 154
      Width = 61
      Height = 13
      Caption = 'Placa Ve'#237'culo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object RzLabel14: TRzLabel
      Left = 117
      Top = 154
      Width = 13
      Height = 13
      Caption = 'UF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object edtFrete: TRzDBEdit
      Left = 171
      Top = 173
      Width = 69
      Height = 21
      DataSource = frmNfe.dsNFe
      DataField = 'TRANSP_QTN_VOLUME'
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object RzDBEdit1: TRzDBEdit
      Left = 246
      Top = 173
      Width = 82
      Height = 21
      DataSource = frmNfe.dsNFe
      DataField = 'TRANSP_ESPECIE'
      CharCase = ecUpperCase
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object RzDBEdit2: TRzDBEdit
      Left = 334
      Top = 173
      Width = 82
      Height = 21
      DataSource = frmNfe.dsNFe
      DataField = 'TRANSP_MARCA'
      CharCase = ecUpperCase
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object RzDBEdit3: TRzDBEdit
      Left = 422
      Top = 173
      Width = 69
      Height = 21
      DataSource = frmNfe.dsNFe
      DataField = 'TRANSP_NUMERACAO'
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object RzDBEdit4: TRzDBEdit
      Left = 496
      Top = 173
      Width = 82
      Height = 21
      DataSource = frmNfe.dsNFe
      DataField = 'PESO'
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object RzDBEdit5: TRzDBEdit
      Left = 584
      Top = 173
      Width = 82
      Height = 21
      DataSource = frmNfe.dsNFe
      DataField = 'PESO'
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
    object edtTraspNome: TRzDBEdit
      Left = 10
      Top = 74
      Width = 384
      Height = 21
      DataSource = frmNfe.dsNFe
      DataField = 'TRANSP_NOME'
      CharCase = ecUpperCase
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object RzDBEdit7: TRzDBEdit
      Left = 400
      Top = 74
      Width = 132
      Height = 21
      DataSource = frmNfe.dsNFe
      DataField = 'TRANSP_CNPJ_CPF'
      CharCase = ecUpperCase
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object RzDBEdit8: TRzDBEdit
      Left = 10
      Top = 120
      Width = 384
      Height = 21
      DataSource = frmNfe.dsNFe
      DataField = 'TRANSP_ENDERECO'
      CharCase = ecUpperCase
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object RzDBEdit9: TRzDBEdit
      Left = 400
      Top = 120
      Width = 213
      Height = 21
      DataSource = frmNfe.dsNFe
      DataField = 'TRANSP_CIDADE'
      CharCase = ecUpperCase
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object RzDBEdit10: TRzDBEdit
      Left = 619
      Top = 120
      Width = 48
      Height = 21
      DataSource = frmNfe.dsNFe
      DataField = 'TRANSP_UF'
      CharCase = ecUpperCase
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object RzDBEdit11: TRzDBEdit
      Left = 538
      Top = 74
      Width = 129
      Height = 21
      DataSource = frmNfe.dsNFe
      DataField = 'TRANSP_IE'
      CharCase = ecUpperCase
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object RzDBEdit12: TRzDBEdit
      Left = 10
      Top = 173
      Width = 101
      Height = 21
      DataSource = frmNfe.dsNFe
      DataField = 'VEIC_PLACA'
      CharCase = ecUpperCase
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object RzDBEdit13: TRzDBEdit
      Left = 117
      Top = 173
      Width = 48
      Height = 21
      DataSource = frmNfe.dsNFe
      DataField = 'VEIC_UF'
      CharCase = ecUpperCase
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
  end
  object btnGravar: TRzBitBtn
    Left = 584
    Top = 224
    Width = 83
    Height = 42
    FrameColor = 7617536
    Anchors = [akRight, akBottom]
    Caption = '&Confirmar'
    Color = 15791348
    HotTrack = True
    TabOrder = 0
    OnClick = btnGravarClick
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
  object btnPesqTransportadora: TRzBitBtn
    Left = 10
    Top = 224
    Width = 120
    Height = 42
    FrameColor = 7617536
    Anchors = [akRight, akBottom]
    Caption = '&Transportadora'
    Color = 15791348
    HotTrack = True
    TabOrder = 2
    TabStop = False
    OnClick = btnPesqTransportadoraClick
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
  object btnPesqVeiculo: TRzBitBtn
    Left = 136
    Top = 224
    Width = 104
    Height = 42
    FrameColor = 7617536
    Anchors = [akRight, akBottom]
    Caption = '&Ve'#237'culo'
    Color = 15791348
    HotTrack = True
    TabOrder = 3
    TabStop = False
    OnClick = btnPesqVeiculoClick
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
  object fdsTranportadora: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    TR.ID,'
      '    TR.RAZAO_SOCIAL,'
      '    TR.CNPJ_CPF,'
      '    TR.IE,'
      '    TR.ENDERECO,'
      '    TR.NUMERO,'
      '    TR.BAIRRO,'
      '    TR.IDCIDADE,'
      '    CI.NOME AS CIDADE,'
      '    CI.UF AS CIDADE_UF'
      'FROM'
      '    TRANSPORTADORA TR, CIDADE_IBGE CI '
      'WHERE '
      '    TR.ID = :IDTRANSPORTADORA'
      'AND'
      '    CI.ID = TR.IDCIDADE')
    Transaction = DM.transPricipal
    Database = DM.Conexao
    Left = 481
    Top = 8
    object fdsTranportadoraID: TFIBBCDField
      FieldName = 'ID'
      Size = 0
    end
    object fdsTranportadoraRAZAO_SOCIAL: TFIBStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 250
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsTranportadoraCNPJ_CPF: TFIBStringField
      FieldName = 'CNPJ_CPF'
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsTranportadoraIE: TFIBStringField
      FieldName = 'IE'
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsTranportadoraENDERECO: TFIBStringField
      FieldName = 'ENDERECO'
      Size = 250
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsTranportadoraNUMERO: TFIBStringField
      FieldName = 'NUMERO'
      Size = 6
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsTranportadoraBAIRRO: TFIBStringField
      FieldName = 'BAIRRO'
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsTranportadoraIDCIDADE: TFIBBCDField
      FieldName = 'IDCIDADE'
      Size = 0
    end
    object fdsTranportadoraCIDADE: TFIBStringField
      FieldName = 'CIDADE'
      Size = 250
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsTranportadoraCIDADE_UF: TFIBStringField
      FieldName = 'CIDADE_UF'
      Size = 2
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object fdsVeiculo: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    *'
      'FROM'
      '    VEICULO'
      'WHERE'
      '    IDTRANSPORTADORA = :IDTRANSPORTADORA')
    Transaction = DM.transPricipal
    Database = DM.Conexao
    Left = 577
    Top = 8
    object fdsVeiculoID: TFIBBCDField
      FieldName = 'ID'
      Size = 0
    end
    object fdsVeiculoDT_INC: TFIBDateField
      FieldName = 'DT_INC'
    end
    object fdsVeiculoDT_ALT: TFIBDateField
      FieldName = 'DT_ALT'
    end
    object fdsVeiculoSTATUS: TFIBStringField
      FieldName = 'STATUS'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsVeiculoNOME: TFIBStringField
      FieldName = 'NOME'
      Size = 250
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsVeiculoMODELO: TFIBStringField
      FieldName = 'MODELO'
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsVeiculoPLACA: TFIBStringField
      FieldName = 'PLACA'
      Size = 7
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsVeiculoCARGA_MAX: TFIBBCDField
      FieldName = 'CARGA_MAX'
      Size = 8
    end
    object fdsVeiculoENVIADO_WEB: TFIBStringField
      FieldName = 'ENVIADO_WEB'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsVeiculoIDTRANSPORTADORA: TFIBBCDField
      FieldName = 'IDTRANSPORTADORA'
      Size = 0
    end
    object fdsVeiculoUF: TFIBStringField
      FieldName = 'UF'
      Size = 2
      Transliterate = False
      EmptyStrToNull = True
    end
  end
end