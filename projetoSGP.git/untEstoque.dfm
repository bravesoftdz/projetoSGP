object frmEstoque: TfrmEstoque
  Left = 30
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Administra'#231#227'o de Estoque'
  ClientHeight = 642
  ClientWidth = 1094
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzBackground1: TRzBackground
    Left = 0
    Top = 85
    Width = 1094
    Height = 557
    Active = True
    Align = alClient
    GradientColorStart = -1
    GradientColorStop = 2497553
    GradientDirection = gdDiagonalDown
    ImageStyle = isCenter
    ShowGradient = True
    ShowImage = False
    ShowTexture = False
    ExplicitLeft = 117
    ExplicitTop = 635
    ExplicitHeight = 58
  end
  object RzPanel2: TRzPanel
    Left = 1
    Top = 588
    Width = 1094
    Height = 54
    Align = alCustom
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 0
    Transparent = True
    DesignSize = (
      1094
      54)
    object btnSair: TRzBitBtn
      Left = 1008
      Top = 10
      FrameColor = 7617536
      Anchors = [akRight, akBottom]
      Caption = '&Sair'
      Color = 15791348
      HotTrack = True
      TabOrder = 0
      OnClick = btnSairClick
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
  end
  object d: TRzSplitter
    Left = 0
    Top = 85
    Width = 1096
    Height = 504
    LockBar = True
    Orientation = orVertical
    Position = 0
    Percent = 0
    HotSpotVisible = True
    SplitterWidth = 14
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    Transparent = True
    BarSize = (
      0
      0
      1096
      14)
    HotSpotClosed = True
    HotSpotClosedToMin = True
    HotSpotClosedToMax = False
    HotSpotPosition = 67
    UpperLeftControls = (
      RzPanel4)
    LowerRightControls = (
      pgcControl)
    object RzPanel4: TRzPanel
      Left = 0
      Top = 0
      Width = 1096
      Height = 0
      Align = alClient
      BorderOuter = fsNone
      Color = clWhite
      TabOrder = 0
      object pnlFilial: TRzGroupBox
        Left = 5
        Top = 3
        Width = 140
        Height = 57
        Caption = 'Filial'
        GroupStyle = gsBanner
        TabOrder = 0
        Transparent = True
        object cbxFilial: TRzComboBox
          Left = 1
          Top = 28
          Width = 139
          Height = 21
          AllowEdit = False
          TabOrder = 0
        end
      end
      object chkFilial: TJvCheckBox
        Left = 45
        Top = 6
        Width = 13
        Height = 17
        Checked = True
        State = cbChecked
        TabOrder = 1
        OnClick = chkFilialClick
        LinkedControls = <>
      end
      object pnlNome: TRzGroupBox
        Left = 440
        Top = 3
        Width = 225
        Height = 57
        Caption = 'Nome'
        Enabled = False
        GroupStyle = gsBanner
        TabOrder = 3
        Transparent = True
        DesignSize = (
          225
          57)
        object edtPesqItem: TRzEdit
          Left = 0
          Top = 28
          Width = 192
          Height = 21
          Text = 'TODOS'
          Alignment = taCenter
          CharCase = ecUpperCase
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnEnter = edtPesqItemEnter
          OnExit = edtPesqItemExit
        end
        object btnPesqProduto: TRzBitBtn
          Tag = 1
          Left = 196
          Top = 26
          Width = 28
          FrameColor = 7617536
          Anchors = [akLeft, akBottom]
          Caption = 'View Details'
          Color = 15791348
          Enabled = False
          HotTrack = True
          TabOrder = 1
          OnClick = btnPesqProdutoClick
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
      end
      object pnlEan: TRzGroupBox
        Left = 319
        Top = 3
        Width = 117
        Height = 57
        Caption = 'EAN/Ref.'
        Enabled = False
        GroupStyle = gsBanner
        TabOrder = 5
        Transparent = True
        object edtPesqEAN: TRzEdit
          Left = 0
          Top = 28
          Width = 115
          Height = 21
          Text = 'TODOS'
          Alignment = taCenter
          CharCase = ecUpperCase
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 13
          ParentFont = False
          TabOrder = 0
          OnEnter = edtPesqEANEnter
          OnExit = edtPesqEANExit
        end
      end
      object btnPesquisar: TJvImgBtn
        Left = 1047
        Top = 6
        Width = 46
        Height = 55
        ImageIndex = 0
        Images = PngImageList1
        TabOrder = 6
        OnClick = btnPesquisarClick
        Margin = 0
      end
      object chkEAN: TJvCheckBox
        Left = 404
        Top = 6
        Width = 13
        Height = 17
        Color = clBtnFace
        ParentColor = False
        TabOrder = 4
        OnClick = chkEANClick
        LinkedControls = <>
      end
      object chkNomeItem: TJvCheckBox
        Left = 543
        Top = 6
        Width = 13
        Height = 17
        Color = clBtnFace
        ParentColor = False
        TabOrder = 2
        OnClick = chkNomeItemClick
        LinkedControls = <>
      end
      object pnlTipo: TRzGroupBox
        Left = 922
        Top = 3
        Width = 120
        Height = 57
        Caption = 'Tipo'
        Enabled = False
        GroupStyle = gsBanner
        TabOrder = 7
        Transparent = True
        object cbxTipo: TRzComboBox
          Left = 5
          Top = 28
          Width = 114
          Height = 21
          AllowEdit = False
          Enabled = False
          TabOrder = 0
          Items.Strings = (
            'TODOS'
            'REVENDA'
            'CONSUMO'
            'MAT'#201'RIA PRIMA'
            'FABRICA'#199#195'O PR'#211'PIA')
          Values.Strings = (
            'TD'
            'RV'
            'CO'
            'MP'
            'FP')
        end
      end
      object chkTipo: TJvCheckBox
        Left = 948
        Top = 6
        Width = 13
        Height = 17
        Color = clBtnFace
        ParentColor = False
        TabOrder = 8
        OnClick = chkTipoClick
        LinkedControls = <>
      end
      object pnlGrupo: TRzGroupBox
        Left = 149
        Top = 3
        Width = 165
        Height = 57
        Caption = 'Grupo'
        Enabled = False
        GroupStyle = gsBanner
        TabOrder = 9
        Transparent = True
        object cbxGrupo: TRzComboBox
          Left = 0
          Top = 28
          Width = 165
          Height = 21
          AllowEdit = False
          Enabled = False
          TabOrder = 0
        end
      end
      object chkGrupo: TJvCheckBox
        Left = 205
        Top = 6
        Width = 13
        Height = 17
        Color = clBtnFace
        ParentColor = False
        TabOrder = 10
        OnClick = chkGrupoClick
        LinkedControls = <>
      end
      object pnlFornecedor: TRzGroupBox
        Left = 670
        Top = 3
        Width = 251
        Height = 57
        Caption = 'Fornecedor'
        Enabled = False
        GroupStyle = gsBanner
        TabOrder = 11
        Transparent = True
        DesignSize = (
          251
          57)
        object edtPesqFornecedor: TRzEdit
          Left = 48
          Top = 28
          Width = 169
          Height = 21
          Text = 'TODOS'
          Alignment = taCenter
          CharCase = ecUpperCase
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnEnter = edtPesqFornecedorEnter
          OnExit = edtPesqFornecedorExit
        end
        object btnpesqFornecedor: TRzBitBtn
          Tag = 1
          Left = 218
          Top = 26
          Width = 28
          FrameColor = 7617536
          Anchors = [akLeft, akBottom]
          Color = 15791348
          Enabled = False
          HotTrack = True
          TabOrder = 1
          OnClick = btnpesqFornecedorClick
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
        object edtIdFornecedor: TRzEdit
          Left = 4
          Top = 28
          Width = 41
          Height = 21
          Text = ''
          Color = clInfoBk
          ReadOnly = True
          TabOrder = 2
        end
      end
      object chkFornecedor: TJvCheckBox
        Left = 762
        Top = 6
        Width = 13
        Height = 17
        Color = clBtnFace
        ParentColor = False
        TabOrder = 12
        OnClick = chkFornecedorClick
        LinkedControls = <>
      end
    end
    object pgcControl: TRzPageControl
      Left = 0
      Top = 0
      Width = 1096
      Height = 490
      Hint = ''
      ActivePage = tbsTabela
      Align = alClient
      UseColoredTabs = True
      TabIndex = 0
      TabOrder = 0
      Transparent = True
      FixedDimension = 19
      object tbsTabela: TRzTabSheet
        OnShow = tbsTabelaShow
        Caption = 'Tabela'
        object gdrProdutoItem: TJvDBGrid
          Left = 0
          Top = 0
          Width = 1092
          Height = 467
          Align = alClient
          DataSource = dsItens
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = gdrProdutoItemDrawColumnCell
          OnDblClick = gdrProdutoItemDblClick
          OnTitleClick = gdrProdutoItemTitleClick
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Caption = 'Nome'
              Width = 364
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ESTOQUE'
              Title.Caption = 'Estoque'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ESTOQUE_GREN'
              Title.Caption = 'Est. Gerencial'
              Width = 84
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ESTOQUE_MINIMO'
              Title.Caption = 'Est. M'#237'nimo'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PREC_VENDA'
              Title.Caption = 'Pre'#231'o de Venda'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VENDA_TOTAL'
              Title.Caption = 'Total Venda'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PREC_CUSTO'
              Title.Caption = 'Valor de Custo'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CUSTO_TOTAL'
              Title.Caption = 'Total de Custo'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FILIAL'
              Title.Caption = 'Fililal'
              Width = 147
              Visible = True
            end>
        end
      end
      object tbsHistorico: TRzTabSheet
        Color = clWhite
        OnShow = tbsHistoricoShow
        Caption = 'Hist'#243'rico'
        object JvDBGrid1: TJvDBGrid
          Left = 0
          Top = 78
          Width = 1092
          Height = 389
          Align = alClient
          DataSource = dsMovItens
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = JvDBGrid1DrawColumnCell
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'TP'
              Title.Caption = 'Tipo'
              Width = 83
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DT_INC'
              Title.Caption = 'Data do Movimento'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MV'
              Title.Caption = 'Movimento'
              Width = 330
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IDMOVIMENTO'
              Title.Caption = 'C'#243'digo'
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTN'
              Title.Caption = 'Quantidade'
              Width = 82
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SALDO'
              Title.Caption = 'Saldo'
              Visible = True
            end>
        end
        object RzPanel3: TRzPanel
          Left = 0
          Top = 0
          Width = 1092
          Height = 78
          Align = alTop
          BorderInner = fsFlatRounded
          BorderOuter = fsFlatRounded
          Color = clWhite
          TabOrder = 1
          object lblNome: TRzLabel
            Left = 8
            Top = 5
            Width = 38
            Height = 13
            Caption = 'Produto'
            Transparent = True
            BlinkIntervalOff = 0
            BlinkIntervalOn = 0
          end
          object RzLabel1: TRzLabel
            Left = 322
            Top = 5
            Width = 20
            Height = 13
            Caption = 'Filial'
            Transparent = True
            BlinkIntervalOff = 0
            BlinkIntervalOn = 0
          end
          object RzLabel2: TRzLabel
            Left = 443
            Top = 5
            Width = 20
            Height = 13
            Caption = 'EAN'
            Transparent = True
            BlinkIntervalOff = 0
            BlinkIntervalOn = 0
          end
          object RzLabel3: TRzLabel
            Left = 824
            Top = 5
            Width = 54
            Height = 13
            Caption = 'Est. M'#237'nimo'
            Transparent = True
            BlinkIntervalOff = 0
            BlinkIntervalOn = 0
          end
          object RzLabel4: TRzLabel
            Left = 682
            Top = 5
            Width = 26
            Height = 13
            Caption = 'Saldo'
            Transparent = True
            BlinkIntervalOff = 0
            BlinkIntervalOn = 0
          end
          object RzLabel6: TRzLabel
            Left = 991
            Top = 5
            Width = 75
            Height = 13
            Caption = 'Pre'#231'o de Venda'
            Transparent = True
            BlinkIntervalOff = 0
            BlinkIntervalOn = 0
          end
          object RzLabel8: TRzLabel
            Left = 895
            Top = 5
            Width = 73
            Height = 13
            Caption = 'Pre'#231'o de Custo'
            Transparent = True
            BlinkIntervalOff = 0
            BlinkIntervalOn = 0
          end
          object RzLabel5: TRzLabel
            Left = 753
            Top = 5
            Width = 44
            Height = 13
            Caption = 'Gerencial'
            Transparent = True
            BlinkIntervalOff = 0
            BlinkIntervalOn = 0
          end
          object edtClienteNome: TRzDBEdit
            Tag = 15
            Left = 8
            Top = 24
            Width = 308
            Height = 21
            DataSource = dsItens
            DataField = 'NOME'
            CharCase = ecUpperCase
            Color = clMoneyGreen
            TabOrder = 0
          end
          object RzDBEdit1: TRzDBEdit
            Tag = 15
            Left = 322
            Top = 24
            Width = 115
            Height = 21
            DataSource = dsItens
            DataField = 'FILIAL'
            CharCase = ecUpperCase
            Color = clMoneyGreen
            TabOrder = 1
          end
          object RzDBEdit2: TRzDBEdit
            Tag = 15
            Left = 443
            Top = 24
            Width = 112
            Height = 21
            DataSource = dsItens
            DataField = 'COD_FABRICA'
            CharCase = ecUpperCase
            Color = clMoneyGreen
            TabOrder = 2
          end
          object RzDBEdit3: TRzDBEdit
            Tag = 15
            Left = 824
            Top = 24
            Width = 65
            Height = 21
            DataSource = dsItens
            DataField = 'ESTOQUE_MINIMO'
            CharCase = ecUpperCase
            Color = clMoneyGreen
            TabOrder = 3
          end
          object RzDBEdit4: TRzDBEdit
            Tag = 15
            Left = 682
            Top = 24
            Width = 65
            Height = 21
            DataSource = dsItens
            DataField = 'ESTOQUE'
            CharCase = ecUpperCase
            Color = clMoneyGreen
            TabOrder = 4
          end
          object RzDBEdit6: TRzDBEdit
            Tag = 15
            Left = 991
            Top = 24
            Width = 90
            Height = 21
            DataSource = dsItens
            DataField = 'PREC_VENDA'
            CharCase = ecUpperCase
            Color = clMoneyGreen
            TabOrder = 5
          end
          object RzDBEdit7: TRzDBEdit
            Tag = 15
            Left = 895
            Top = 24
            Width = 90
            Height = 21
            DataSource = dsItens
            DataField = 'PREC_CUSTO'
            CharCase = ecUpperCase
            Color = clMoneyGreen
            TabOrder = 6
          end
          object RzDBEdit5: TRzDBEdit
            Tag = 15
            Left = 753
            Top = 24
            Width = 65
            Height = 21
            DataSource = dsItens
            DataField = 'ESTOQUE_GREN'
            CharCase = ecUpperCase
            Color = clMoneyGreen
            TabOrder = 7
          end
        end
      end
      object tbsRazao: TRzTabSheet
        OnShow = tbsRazaoShow
        Caption = 'Raz'#227'o do Produto'
        object RzPanel5: TRzPanel
          Left = 0
          Top = 0
          Width = 1092
          Height = 75
          Align = alTop
          BorderInner = fsFlatRounded
          BorderOuter = fsFlatRounded
          Color = clWhite
          TabOrder = 0
          object lblNomeProduto: TRzLabel
            Left = 500
            Top = 27
            Width = 66
            Height = 18
            Caption = 'Estoque'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial Rounded MT Bold'
            Font.Style = [fsUnderline]
            ParentFont = False
            BlinkIntervalOff = 0
            BlinkIntervalOn = 0
          end
          object pnlData: TRzGroupBox
            Left = 10
            Top = 12
            Width = 250
            Height = 57
            Caption = 'Data'
            GroupStyle = gsBanner
            TabOrder = 0
            Transparent = True
            object RzLabel10: TRzLabel
              Left = 8
              Top = 32
              Width = 18
              Height = 13
              Caption = 'D'#234':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              BlinkIntervalOff = 0
              BlinkIntervalOn = 0
            end
            object RzLabel12: TRzLabel
              Left = 129
              Top = 32
              Width = 23
              Height = 13
              Caption = 'At'#233':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              BlinkIntervalOff = 0
              BlinkIntervalOn = 0
            end
            object dtpInicio: TJvDatePickerEdit
              Left = 32
              Top = 29
              Width = 91
              Height = 21
              AllowNoDate = True
              Checked = True
              TabOrder = 0
            end
            object dtpFim: TJvDatePickerEdit
              Left = 158
              Top = 29
              Width = 92
              Height = 21
              AllowNoDate = True
              Checked = True
              TabOrder = 1
            end
          end
          object rgbPeriodo: TRzRadioGroup
            Left = 266
            Top = 12
            Width = 143
            Height = 55
            Caption = 'Per'#237'odo'
            Columns = 3
            GroupStyle = gsBanner
            ItemFrameColor = 8409372
            ItemHighlightColor = 2203937
            ItemIndex = 0
            Items.Strings = (
              'Di'#225'rio'
              'Mensal')
            TabOrder = 1
            Transparent = True
            OnChanging = rgbPeriodoChanging
          end
          object btnPesqRazaoProd: TJvImgBtn
            Left = 415
            Top = 12
            Width = 55
            Height = 55
            ImageIndex = 0
            Images = PngImageList1
            TabOrder = 2
            OnClick = btnPesqRazaoProdClick
            Margin = 0
          end
        end
        object gdrRazaoProduto: TJvDBGrid
          Left = 0
          Top = 75
          Width = 1092
          Height = 392
          Align = alClient
          DataSource = dsRazaoProduto
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = gdrRazaoProdutoDrawColumnCell
          ScrollBars = ssVertical
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'DT_INC'
              Title.Caption = 'Data do Movimento'
              Width = 136
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MES_MOV'
              Title.Caption = 'M'#234's do Movimento'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'TOTAL_ENTRADA'
              Title.Caption = 'Entradas Totais'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL_SAIDA'
              Title.Caption = 'Sa'#237'das Totais'
              Width = 100
              Visible = True
            end>
        end
      end
      object tbsFaltas: TRzTabSheet
        OnShow = tbsFaltasShow
        Caption = 'Relat'#243'rio de Faltas'
        object gdrFaltas: TJvDBGrid
          Left = 0
          Top = 0
          Width = 1092
          Height = 467
          Align = alClient
          DataSource = dsFaltas
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = gdrFaltasCellClick
          OnDrawColumnCell = gdrFaltasDrawColumnCell
          ScrollBars = ssVertical
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'COD_FABRICA'
              Title.Caption = 'EAN'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Caption = 'Produto'
              Width = 500
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DT_INC'
              Title.Caption = 'Dt. Inclus'#227'o'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              Width = 32
              Visible = True
            end>
        end
      end
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 1094
    Height = 85
    Align = alTop
    BorderOuter = fsNone
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Locked = True
    ParentFont = False
    TabOrder = 2
    DesignSize = (
      1094
      85)
    object JvImage1: TJvImage
      Left = 9
      Top = 10
      Width = 64
      Height = 64
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000400000
        00400806000000AA6971DE0000000473424954080808087C0864880000000970
        48597300000B1200000B1201D2DD7EFC0000001C74455874536F667477617265
        0041646F62652046697265776F726B7320435336E8BCB28C000022E849444154
        78DAD57B09945CE575E6FDDF7BB5752D5DD5FBDEAD96D4425BB740424260C02C
        F640581287608FF1B1CDC0C94998D8897D727C6C2731B627193303C64E42EC78
        0206E310E14598D580C003166247129B3668A917F5BED4D25D7BBD6DBEFBBFBF
        4A0DC667EC73C88CD3F05455AFDEFB97EFBFF7BBDFBDFF2BE1BA2EBD1F7F4208
        DF9FF5243ED91FF65D3653B28E4E96EDC3F5BA183E922BCFED4B1793B8A4E8BE
        5F9DBD8F7FE2FD18D3675725766E8C86FE626BCCFF87319FE62B590E951D7297
        4C3BBD58B1A7962C673A24682C6B3B63F31567DC749CB1173285C5BDE9721AB7
        A73106FB3F2400DB62E1F3FEB423F6A75D01EDEACE9061E46D872A38EFF76BE4
        D735F209229FEC440242157455765C2AE1BAB2EDCEE66D77CA249AD1C89D9A2C
        5BA347F3E6C9B1823D7560293FB364B9D3185BFE77128076BF7FF06B6BE29FDB
        140B5E15D5F498E538B454B648B685893AB2499774C3201D60E8864E1ABED071
        D6C0794323D234FC83EB05FE2B3270B8890F9C5BB6482C156D373D5D3247A7CB
        D6F8C65868B365BBF3C385D2B1A339735223315A2067F2C1D9DC0CFA5CFE7F06
        80105ACB2DEB9ABE7C6E43F053F586DE80B99289DB2D972727C8C58ADB9884E3
        0880E0E03DC380C9FA7D24B1B1F93BC76B8CBFD400922608FF932E04F9340FB8
        321A5AAED8E88FA839E80358688FDBC57768C76523CA5A76365DB617E0563345
        9B46262BD689C99235D2E613E353256761D7EC728A3CDE31DF1700AE68AC5BFF
        479DF5DF69AFF35D20278D51E8186000A6EE57D78471228851F3E2F2CABA00C1
        C2646C09864B5859F2A6A8916DD9004948AB31018C0FED0898C642C5A2228E46
        584D1CD683CB002CFA82F9183827245824AD89F1E2576E956769A28F1CCC3163
        3AB3E09E199C1B07C6E30B963D56B69DE1C9A23DF383E92C78C749A2DFDC6F04
        404FD4B7FEAFFB1AAE5B5317F854934F6FC9DB3695B078CC5A15AC661193ABD8
        02EF490E5260F5D9C4799011BC09636221AC6008E70240C6467F6CE9B65C6917
        9F8942B866012E345EB0288C6B57857CD2557200421A8CB2241756E3B2C518CA
        ADF0AA4940195257728E1FDF73DF0690620763422EA19FA2C73BB9BCE3CC62AC
        D34D3E31FD74B2F8E8AF05A0C5E7EBFD5C77E2B3DBE2FEFFDC10343A033AFB2A
        9AE40ED8877985313A474D822754C01B26BB32CEC34429EFB07B909CA82327AA
        5304EDD463E071D87B0480705BC3B98AB4A8B5753E6A0C68D2054C00ED08CF42
        B83747DA3EFA43BF3677C83686B1089F8F2CF4255C76139B3CFAE1AB1CC9339A
        F0ACCB109EC518B827806FC74B26DD3F9BBBE75700382B1EEABDA2257C1D5EAF
        8FEB7A67D9B4A80CC84C2029D480354C8257C08789C8417087A26ADCD2B024FA
        D2F4F1A98C7B190C8E1269D3A6343E3358607A6AF3EB700F87FC68AF0EA3AC63
        807403D623600DB01EDD5B4D9E19F745CA8998132C06C5F5C090FC29AF13701B
        5B5A0E5FC3DF0BE9371A05D18781119D285688CDE0E072F91B35007051F757FB
        1B3F3918F5DF3010F177C1AA65D8E2EF356F7640DA952BE3E2D5111A93A22438
        3645D73431409221404E9F11D73CD48567C535D667934CC2BC79211B7D3A35FA
        0D5A0630CB58C91C4E662D760F3917B80DDCC7E0902A000A40C2671F56954109
        78F62FAD83C9B4EA5EAEBA973B96E48B0F015C5FC66ABC9E2E525EB32908407E
        B958FC9204E096A1AE0F6C8BF9EEE837F475022BB05061BF068AB6C7C48C201F
        BAF02C80DF33153B6EF5109EAF0A5E09F839EE6392E305E3EFA5DB3048F89CC1
        F91226093E01C31B7290EC9F06799140A3AA450AE94A79D3912B5DC2E912F7C9
        E360AB23CF320C651541BC560F498CD22D6181E8D487395510558EE6CBE01A90
        B5DF8B5C8F2F14FF440270E760FB7557AD6EFD7E1013CCE5F3A4592659868F2A
        42A78A0556C6842A1834FBA9697B61CC55A8D7785D7813947F8EB7E2EC02164C
        896F296240CB6823A439F073580D2EAE98ECB38E9CB80456AB4610AF4D06DA38
        15B0E47976291E3C47221E1303C2E28ADF4BC41944E12D7D3C60502B5C6C3E57
        A2B70B1532D502E9080D654CE48964F1E31280FFDE13B9ECDA8BCFFA697D4F57
        A832BF40BEC606B28F9F20B1384F5AA88E43851C1C9B5809609499EC381A801F
        4A962BCFBBCAFC943BE1F0CC1D8E214D9B816BD03D3346A090604ACD602BE1C4
        6071248178D29495C97E7521898C2F623D202D5299BE77A390FA805C053A2F12
        8F472E92A0ACC396E3C0C578241A16825D076E065F7E643EFF071280BF8868E7
        7EEEF2B31F6E3B6B5B7D7E66968CC646B28E1D2573FF7ED2130DF0714332AA11
        F04BD3E2D5D29592B3784570E4E1D30C4E91C38EC52B84B0C39CC1E3C4E4A3BA
        B7BAA62BE4900DE60FA1D65548D520199E99DE2379CD0B6E9AE77E26C2A40320
        5DF421B945786E65A05DC76B429A3E5B885FF283A0D7974A340577EE86ABF198
        2C4DC8F118002963DAE6FD0BC58B25009F1662CB173FB27DCFDA4B2F6EC960E5
        F5484432BE333D03BBCD909BC980CA2B24B259C43204916048861D1EA25E0B31
        DE0479242C482C9C1B2D9A94C5B1351E648122E37A9139C0F17203AAB2B8F0C0
        D4650CF7CC57063C19CBBD95649C3077103100E2C35616E7385E2462D307AF44
        03884E58E1D7B3659A44A83330A84EB81C8FC9441B6C89AC1792657BE9E185FC
        391280AB8458FBE50F6D7A6AF3B93BBA9631181F5899A5AC6FCD00895C8E047C
        D5C96525BECEA123648D8E028480222CE169025E2F9E84F2C120063386553B96
        29D2A668800A1868137400F39E8157567B79299B49BA9314556C398EE3D1A0D4
        009E5BF31BAD3A49214EB1BB742347853C819587B9C3C78F15CB30F98A9C3C03
        DD0150988C598FB0EBB1209B2D5B93CFA6CB674B00B60BD179EB451B9E3DF7FA
        6BFA727511AAEC7B96CA2FBE485A6B2B8970042E0137884429B06D2B99870F53
        E9F1C7C888C6A48F92626D4D0D5A53945507CB38090086B112CD20A2B7F21519
        BE7C1CDB7134635003513F4CDAA33C8D89C9F2FC978981F54701832F0014176D
        998EE72272E6E2547866AE61770CE1FD2288EE50D102982C763CC55AC47D7D50
        96DC6E0E84CEF770A63A5530DFDE972C9C2F01180C0513FF63B075DFF6CEA68D
        85683D852C24B57373728585C33E6D4B96D7B0722210903E4C55FFF5AC5086A3
        5AD843272C81A76039C7E087AB43064D17CA1481293A9A4E4B150E7B0E6D89F9
        6BE6ADB49D647D2D1C445F3ED24B25904B0122CC04381064184301A32AF10840
        A69C3DB23B44D1F13456FD384CDEE225B0D9AB3CF9CB8BD205B33BB45CA21838
        A3DEC72E22E844C17AFD8793D98B2400A7373544FFA62FFA58D431CF29974DAA
        839F1BC120242B56D267E055AFDA9C24290DE7A4D871AB69AD1778359511729B
        6110E71C807B235DA021B8C07232497AB948010827BD2E4CB168946CE165796C
        DE9E99A3AD4A85B4BE1ED2BABA4903F7F86331D201800630ECC545B2324BE400
        14E1C26DA0182B885207A653340275C7E2A658F114A861000099430899812E03
        C0BE905F864F165687B3E5676F1949FD9E042020B4D043DB7B7ED65EE7BF641C
        66CB44C3828285078B912DB12025809CAB4293646DE1890DA9F8AA5255B80A0C
        21CD7C1E9D1E9C4DD3393DED14F9EC5760CF39325F7D89CA6F1F2267615A12AD
        2B7469695A555328BFD731B9058CA3188F93AF3E46D18E568017A000B8C7CF80
        809BB4E52532C1473F1B4FC2AA4C70802E79C41B9427B038EAD4C11AD8B23873
        6585C911E9E0B2F9D8DF8F25AF124A2BFB1FDAD6F3A3F39BC31F5984EFC9C442
        0A17879660C62C349AE0B3BDB00C26A9AA3A942BEEBAB5D5932EA308B10E28CF
        E3DE03530B74FEFA01CADEF2AF94F3F929CE6A0D6E167CFA61CA7EE32F498335
        089CF7E4B607A08C26AA76E02882E4D0C82E500984285C1F26BBB905A40A7F3E
        314C0F4F2F51060B67608296D2234CA5AC226DDCD301CD3C03F7E0D1F13C9817
        5E4C97EEDB35BD7C4D1500EDDED33BEFBCB825FA694E56389D0468524232933A
        4A6454F598502A4D9319995B2D0179C50F9537705293C26ABC04002EDCB48132
        5FFC261D9D3849064CF7FC2B3F4674E0395AFCB3ABC8080300ACACCC13449553
        5538149E3518C2B30EF93DFB3D40C995CAE4872B0642417AE864120467CB7B2C
        35560EA339CB33D11658EF0C006A4006CA0B7512EE723867DEF3C06CF6BFD492
        A13BB774DEF67B2D91CFB05C156A455D35519F5C5DAFC02107C784E77A3E20BC
        348D5CB70A812BAB439CE36700C02B53B374D1F6ED74F886AFD1FEFDAF501B08
        6EC3073E483D13C729FFE5EBC9850F6B3E9FCADA9438723D41E3153ED4093917
        ADC6FA9A4C8AE0F370B38727D348A22CB88026D9DE511123677B059926BF9096
        E1D73C1760C17668D9FCE65D93E92FD400F8DE50E74D97B784BF549029A4C7E8
        24BCE282A6D24C4FDE920A3FDE2B5FEB16B214E4C4C9EFF76431989E57067293
        F6CFA5E9DCB57D94BCE633F46ADEA454A948E5FA46FAB06151E73FDD4879EE4B
        46166FD538E1AAAEB6908CEAE5F5AE92E362050FF184D83D1E994C49AE927509
        29833D2B6409CE596B932164480CB24573F105A1F217C9DC8F9F49953E5503E0
        EF37B6DF78595BE4EB962A33398AE179929A0A6DCA2A15FB7B2BE216F3E4BFE8
        724A479B48BCF112C5CD12E9D90C094C348FAB0F641006830009DCD2D9BF9AAC
        B66E32376E0581A5C9BDEF6E729174B1823B45A4CACD44D5E538BA68DE677552
        728DF014282FD853B319C4F50AA5E0F3DD21C3CB4E71CD322C90AD3501065CC0
        D237C0FF171182271092D1C2FF7E25E75E5903E07F0DB67FFEB4FABA6F4D43BA
        6E8640F1A9F4B79A9549F41D4F84D422007481915EA4E05FFE1DDDD33948632F
        3C43FD3DDDB4B3294EA77DF7464ACECCD0213740AD20A1347CB0C935693E9B27
        0789C940A29E620D719927984A05E8353D4035494C2BC0F0228547143AAC8C01
        6082FEF1F802BD0DC1B50A792EEB0F8E047C2D9338E71C1C05B80093C7310CA0
        CE4BD4D1F17C65F7CDA3A94FD400F8C74DEDD75ED418B92B03530AAE2826B0FF
        7339CC58E10E8AF82156B81209C9D9D042A5CD6752BAAE9E96F13EDABF8E06EE
        F83B4A83A15FA510F57032827663D013D3C8CB19569FEBD5EFB812DC02A5C880
        BB6C712EAD08B5AA18A3EA0FB5E8A34891EFE5DAC2DD630B48871D081E9FB408
        CE08B90C3607D0D9029A11919200E5C87285B6C602D414D4E9C9C5E20F7F3099
        B9AE06C07FDBD0F60767C6FCF74758ED919052D6512BC1191777C08DC92284CB
        1DE85E9A8A418B429E42B6493E8827934D3A8430552E41E33B74004AB00B5294
        DBE26A0E173FBBEAFC1240666E5673AD304D06830D4C57C517A126E925595E99
        5D7ED6AA85500FBC3C007D104288375BB8BACCD72690CB70D89B47BE711A48B7
        007E3A922BD3505D08C28E5359879E4B956EBB6B22F3E73500EE3DB3FBCAA144
        DD83210C6ABE54A122064A20B580ACE93B526B7B55212F3F37945D1AD50A0DDA
        E19478012146B816F5C46398944E2F2F15A81D1364B2E4D0C8036B90850AA838
        57451157A8F65C15FAB453BA40885AE95B265E4255813969C30736EB3D53498C
        D9942037A35D56986F807B4206578874F9DDF64480B82298E7FAA3EED2FEA5CA
        DFFECB78EAC61A00DF6CD13F7CF51517EEE981FF1652198972697E01F1B68870
        42505A96949186D208EC0E5CE5F56BFC2A24634F944C39D01C3AE98039D6E3FB
        17004033488E0BA29DB08424BB0006C8A0A8B0EEED18695582537CA3C2AA5025
        22AD4A908A8084C33AC5A025A8C287A004794B8EABCD7C1B57AF0B58C84910DE
        0CA4FD552D11D966B2E2D5325C245B270A95BFFAD668FAA61A009FF789B36FF8
        F8054FF70E6DF4E732CBE46F6D21EBF9E789468E93BFB15176CCAA8ACD964986
        6526E7F85C8CE0B8CB8229AE8B5A56C8E6CEA37E31558489F3401D08115D5685
        39C6F35E410FB4B9CE9371BD6A86704F89AC6A342015765D557136342FDFE4A4
        8BABBC8B00F4D193C811F07D4C569B3CAE9A41A87B6519660F9FDF16F521FD45
        98E4BD042C4E0573389AAB7CEEBB2733FF5003E0A3420C7DE523DBF7AEBFE8DC
        FACC18141B00B02727C9999882A3E54937CBB8D9DB0DD2E0EB1C5F595C709ACA
        ABCBE453E03D3EDB232BB60C06E11006B1BACE2737494856665D792D03294990
        F306341A87AAE35A1FAFB8412AEB15744A1C912B633E9B3E8B2C4982B0B0142C
        F3B18945D9664095DC664B48C30BA62CB9B3959E56870550055CB62CAE0EBD96
        AD5C7FE764E6CE1A00670931F09D4B069F19BCE09CD62C77C47B52F17A32DADA
        49A4D2E420B6DBD3B3E4A6F11EE14DD00AE5A6C2A2E57AF5C16548D0BC2C9DBB
        F4C0CC327562204DB0061719621CEF99A4789292F838FCA9DC81C1B3552DD175
        BDB25BB51F9EDC0910D9F15C49669A3D611FC8352073FC5F4CA565399DC7C1F5
        039EFC39899024410B263A88B0BE042294DB794A211E58AE5C7DCF5466770D00
        BF10ABF75E7AFAD33BAFFD6877D11FA2FCCF1F43D6F616F9BBBBC8686F232D1A
        23ADBD837C831BA970FBEDE470E92C1C9104E9196EB5EE4F9214F904A7D2F74E
        24E983ED0D32AF9848A6E526C92272F7725D04C4EAF9365B07E7EA6C31BC8286
        2A9A723D90932FDE5364979902C11E839AE47E38B31B8A87104E5D7A0852D88F
        9BD21042C3D90AED6C0849AB3A92ABC8763744025287709D92AD86DDF09574F1
        B29FCC661F5DB931D2B96747EF931B5AE3EBDD96360A61C56966564E8DE32A17
        B079C2464B33B970095ACEC2067D8AC81C8FC965B8F2888BDB8DC0E7EF1D5DA0
        F30607A8736035513229559F95CB537E6494D2F06ACE36792324655A544D2710
        24259BB35BF00E11C774FECB62B5974CEFF902DE8BEC8515B0DCDE3BBF2CDD6F
        3807115717A0685093E5AFE300AB1364DCE283F5E42BD40A3D1290FB900EED4B
        173FF8C8DCF2DE9500241E3EB3FBB1A059D9C19B22AE3F483134960082BC9F17
        E1C961006E05540A0ED079F2D592184FD8716BE530D5204530897F3B314BE79C
        D64F5DE77F80F2E01323E82723162573F77DE40B874847A895E573B4C13B46CB
        30DB1C26B788154B629601CDB3A82806CE82A9BAF9E14A21242480FF36BE88F0
        6AD3B678500AF992634B0E3A060B680601735ACDD6550F40998A664BB6F9F862
        7EE7D3C9FC81950084F7EEEC7BA431607C70AA64CBE482E376C6F4CA5FDBEA43
        B2E2221D8D1314C5D4A7F47B75C7C8CB183D0074DA75629ECEEA69A3DE4B3F04
        0026488F84799F9BECD13122F0096510723991322DAFDC1EAE937B03DC30EFEA
        B0985AC0F729ACDA820AC57E55566F471419C997E84184C18B5AC2D2F2926516
        485E4A7F18EED0042412103F75C22B89B3C03B5E3453BB66721F38912D1D5D09
        80FF99B3FB1E5A1F09FE27596B135E66553551161C7D50708D68CC52F99650F5
        014F98A818AD2A3A1CDF2310513F1A9BA733BB9AA9E7DCB3E55EA3702CB98F6E
        6C1E824BA464D2E42CCEE348616966C801E10A5D693DD7135E9CC571299B431C
        03B088312D20FCE5313E4C82AC62499A36EB1513C247C002747CF706005813F1
        511D79F734057C327CC3324E824B2ED89BCC8DAC04801EDDDE7DDFA658E80F19
        004D6D27FB752F292A39A7361FAA1367D3745595966A2478AA385A1FF0D38F47
        E7686B5F27ADBFF6E350613A9987DEA0C2934F92AFBB1B6970888CFE5ED2EA63
        A477816C71AE70FB1D649FF0089627E2A93F21238AEE7866EF935BF4D237682E
        5FA647A693DE6E2826CF7A904B7A1C5E5F43D4581F0E488BE59662B83E89854C
        96CC899732A5F37E992A8CBD637BFC67DB7AEEDA120B5ECB4545199E34AF00C1
        C1C8AFB67A1DE5EBDA8AA484FFE1D21509EDD4662ADA8DC1057E3AB5446B4144
        897898C22D2D14E03DFC29680B98BCDCEC6097010FE875756474F590BB38470E
        5C4393DC40EAE18895FB90A7B6DD38C69F446ABB67262D65B72DDDC6917B04BC
        0888F5341036645409C9228A2E813C9E337FB27BBEF089916CC17A0700F79CDE
        79DB8E44F8333C898A2A73F1CE8FF7288ADAB89426EE2ABDAE3630A0198CA594
        CC1B2CDDD3E24CA2F520BC8766B3D48A112C144A1491D98C2EABCE8D00272CC9
        5593A194B9836B065C54D155D599AA2573B5E1426A93C4CB08492AC15158C053
        3319298E4CB5BFE8280D7910EEB1391244A8F5768F1218DF58B172E0AF8F2D5E
        8986A6E5E8570270C760FBCDAB63A12F706C6EF269B2C2527DCA4257098AACE0
        2AAB600B716D0BCC1E223AFF122A8E8F507C71960208A139648831B0FDFD88D1
        FD20AB201749796BCCE62AB47C7A494AE9D36321E40D86C70F6A63C5B32AB796
        0D56AB62354F53693997B78731C9E7E696A55B700528883199AAA873305BA66D
        90C22C7C7C9E7C7EE98BC716FF08D166127D8538DD790700DFDBD476636BC8FF
        757E8283078D4592BEE4970F3E81B8742F09A90D94DD10696F1CB9C2F8CDF7D2
        EE97F6537C7E92D67577D299AF3D4389BD0FD3EE820133F4D19A68503EF9552D
        AEF2A03831624BE3890CB0AF56B7479489D708B6568673BD3A840285A31293E0
        F38B599A289A92E19B020A4CDC7770897301BFAC301BD01FB74EE56F1D4E65BF
        C7DDE358222E34AF04E06311FFA777B4447EC0FE1E45437588E3BC8D54C79A5A
        3DA5C1BBAE8632314D91A2EE22C35BBF85923D6B2915AE276BF399B4E9F0CBD4
        FC835BE9013B483DD0131C41B828E25383D755C589F57D45D50A4E253F54AB07
        B8AA5A5CDB7F54A937FF45E02A6F678BB46B2C2995662FB8C65404CD7D1D441E
        B233E677A370955DAE21C63523DF970899E9E5E2B79F3D38769334A62A00979D
        DB577FE9454377DB05EBF78F1D18A3DCE42285A1BB1B857A8C05A92C0312C611
        F06932EC8484E706B226905F92E186E00EBC8F88C84E71BB4C8F2FE4A90D6056
        01D06BAB79EAF9409E94EB502D13D439AB545527FEDE96E538FEECA5D242B90B
        EB8CD733057A10729B8B2C52859257311E2954280D21757922E0DC6B6BF62188
        AE8D4D515FB954A1675E1DFFDB54A6F0CF184AA606C0C53BBAFBBFF0C7177CBB
        ADA76D7DB160AE995ECC89A999259A1899A7F9E15932E7D21443BC6DC2B5FC4C
        4F23FC36812C2F84D81AE6B8AE790F4C25C1CA56A58C1068D0BA78941E9B0309
        02C07511BFDC0DAE0A26761F43ED2D68EAF980DA064BB510AB9E4170F3597241
        AE725B9E1FD45264C856731816B00F1C6092172D5A40A2BC21C3D1C1C0AB158F
        BA3FCE56EC55B190130A18CEDB630BF7CDA7F377E3F2711C53B58D11D72BFAF3
        FBAE27EEB8EE5B1FBA70F0EA11282CDBA7CBD47772214BA3C767E9ED4313B488
        D8EECC2F51285FA066F208B30D9CC17EE6CA529A2625E7109290E7B0422C63DB
        0098AEEA005CB1353021A9351CAFD8A98BEA56BB2A8B69EAA1094E7CEA131444
        3A4ECB69889E22C40EEE8DC564683BB25CA07D189B17E77559BE9B473A1CC47C
        F647C3CE11DDAFF7C5EB4418D6F28B17867F3E97CA7D9B571E073FC13E5B0580
        C7E6C7FB22DE07BEFBD58FECBEE1DA0B2F7FE0A1FDF4CC81115AD7DFE23636C5
        A8ADA341B4B4C6B0C2364DA50A34323C4DA3C333941C5F808520142DE5A90966
        CA2E93C084FB10828E2041E1CECBCC2B98E4EAB0CF53789AA83DB7C72155D4B6
        BBBDAA937411D3A4503040A56F7C9FF6BE7984E2C36F501F54724B6A96B4A3AF
        C930780824F83492A138DEB36863D78BC0D28E60F2F7268B15067CA0BB21383A
        997AFDB563D3DF4497C35C34C2318F2355B3008E125FFDAF176E7EFA8513B75D
        7DC9E0F9375C731E3DF1FC317AF8A9C3343CB6601F383259694A84B54D6BDAB4
        A10DDDDAE6F59DDAC09A561106BB9B086F1360E251B8CBD889395AC0519A4D53
        3C5FA4D9A522F506745A8F70A761900D2143A6A43CD1B0A1CBB0A5AB49FB344F
        0257432187DC208B9B3FF9123D5D31686A7E9EFCFD0374F6AA6E1ABCE9CFA932
        39466F8A20BD0400B89EC0602630A191BA10ED0665FBA1DA3A1275E2CDE19963
        C3E3C96FA0C963E46D3A7104E06789B32BA570F4CBD79FFB627B5B6243022B77
        F9051BE8F957C7E92BFFB887C6A7979C442CE8C0C46DC84CDB427E0CD615AD4D
        516D6D4FA3B6715D87B17E758BD6BFAA052BE6A30A263206DF7FF3F5493A393E
        070E99221B2E132996A901DD3563B60D5C3304B146F8B923CD93B8FC941A3F44
        C185123FB38321A52205CA70A3CE6EA28E6ECA377710353453E0899F916F294D
        6F2284BC9ECA53996B82CC02B1B0FDCF05D7324030837D4DFE99B96CE1A9978F
        FF4F8CF9514F57CA1098554771A50584CE3BA3F7EAD696D8A5E1A07FB0BD39B2
        A6BBBDD1585C2A4999BB90C9D3CCEC3265B205AE18DB36346CB962D9F95245BE
        224288CEB6B8BEBA2B61F47537183BB7F68973B6AEA61C583785D476E464928E
        1D9BA25164878B485F2DAC5A0816D208EA69E454178084E1364184360EB91C6E
        03724F4227CDAA90BF5CA48A5991591683A645E308D53E7A239DA3FD185B801F
        C18395ED1201777461D9EE6F8A50265F4A1E1D59F8578CEF01163D38F20A80BC
        7283721500F96006DE57F09EA359278E8DABBA1AB70CAD6BDFB1B6AF79436F67
        437B2C12F2F1B37DC94C8EA6E796683E99A3CC72D1CD174A4EBE5871B2F9B255
        AA584E3293773E7CF65AED47DFFA6408C6A2DDFBF357A9AD29EAF6AF6D15FC54
        A96D9934992CD2D8688A46461890792A43CFFB52594A006C4E61191096D25196
        CC7E76195D2A3DDBB1653EB21A56DA8468F44A3A4F6F25B3D4110DD93F098569
        D2D5B4BE5840F840CC3FDF7BF4F6A55CF9EE774DBEA83EB3FC30575A405569AA
        F446FA0A9F47024F1DF0D94DFD5D8DDBB76DEEDE31745AD79A86FA609BAEF323
        8702697D8E661696680AA0243345776462D11DE86BB277DD7C8D1EF01BDA6DBB
        5E008FCC3BC74ECC716196766EEBD3779CBE4A5B3BD04971844A7E36680A1C32
        36BA40C741AC336F4D53766A51926A02A4DACEDC81B01AE04765F1EA330CEA45
        DC4F805B0EE3BE1C4CFF0123643E319331D724C2467747DC38787872CF8989D4
        6D8AEC78C2FCC38A829AB89C3C473E517B98F8D4C4ABAFD5C35DF99B1E2E9CE0
        65158ED3770EF59E75C6E6EE33DA9B22AB1B62A1E60056CC321D3A7C02BA01AF
        9FFFC40E99F8FCCBEE57B01A479CF1E98C19F0EBB663396E2060686DCD3171DA
        AA667D7053973EB8AE4BEBEE6F0787F8A5949D4DE5E8D8D1097AEBC814CD0094
        0AA24CBC50848538D40CD65C05E93C805C9F97F587BE103D922C509BA1B96D0D
        11F18B17DF7EA250B6FE81C31C798F3166AA264FDE4F0B18005BCEFD5D00D04A
        69ACCEAF04C57DF72FBF704D035EFADB1A2343DB877A77B43545B6B436C6D635
        364463FD1D31EA69AFA7BB1E3848FBF68FC2BF357E4E8F158F83FF6C0CD22E14
        4DC7342B4E3C12D2BA3A1AF48155ADC6DA356D786D116D6D716A4C44A8802CF1
        ED115807B863FAE402C2EE3C2D4FA7E80AC8DC31DBA9DC5DB0B5C1E67AA3B339
        2A0E8FCC8EEC7D79F4EBA0C3D7547251F5F9AAD9DB6AF29EEEF94D7F3122D4B3
        FB62055AEF0106275D2D50856BD7F4350DC14376AE5BD53274DAAAC6DE9ED628
        D2779DB290A8CC1F0BE902A540B0F942D9050E4EA964DB786F964CCB65BF8BD7
        87B49686B0D69488181FBDEC0CED8A4BB6884CA620403394E747E8107A1FDDF3
        86FB9D5DCF980877766B431402434CBEF4C6C9EFE2F667D48473EA28ABC35200
        38D5C5FEAD7F34F56E6B518068EFBA8C1B6571C584CAEA79A021163C7D68A0ED
        AC6D9B7B36B436D575C422E110FFE680F72017D3459A806E5804A92EE5CB9254
        4B45D32E9A968573CE1F7FEC2CEDE6BFBA32949C5B12B7FFF465EAE96870A3F1
        B0F8F65DBFA4C5850CADEF6B66C6CF3CF1FC899BD4E4CB2ACCAD5C795301F00E
        2B7E5F7E37A88059E92ADA0A50EC2A87B0CA242FC26CEA694F6CFBC0193DDBFB
        7B9B07DA9A13AB22C8180DB8480E09D8F8549A4E405DCE30314EA5DC6B7F7FAB
        F3B51B2ED4E700D48F1E7F9D9EDC77D4DCFBCA98B5695D9BB6614D6BA08450FB
        D4CB23DF475462C667B22BD229C637574CDEAE2EDCBF0700BF724A1DEEBBC058
        790F17257A189073B7F66FEDE9489CD9D956BF11AFEDF1689D7CC6FFB5A353D4
        DB1EA38F7D7803348549B7DEB58FF6BC70C24170B1A29C7FF8B5D2E4ECF2A333
        0BCB77D029C67FAFC93B6ABEEF74DBF7F3D7AC551056165ADFEB32F5FA2BBFA4
        C5F571BCF475B4C436B73444769CD6DFBA6D756FF3DAD6C668BCB5A14E831AA5
        DD4F1CA239B80A6F9634C6EB68CF73C79E1C9B4ADF82FB26E954BC7F07E1912C
        06B9351EFB7703E0B704E6DDBA435E42D5878FBD1F9D36E2588363707557E359
        5B36740D6E59DFD9DDD11269E0C4E9EE070E1CFDE5CBC7FF06DF1FA07786B99A
        BFAFECF73DC7F6FFE3F7CCFF17CB90DB8B2B00B1D52B6FFB30A1F63727C2A70F
        F436AD79F9CD89FB11565FA0EAA381EA6714F41EE1FA770A805F07C40A0B5929
        C4AAA4CA666CFD9A36AABF21717F9DA9FF4E02F09B02F32E30E85DCA947EDB49
        AFFCFB3F6247A3820CCB30910000000049454E44AE426082}
      Stretch = True
    end
    object lblTituloCliente: TRzLabel
      Left = 79
      Top = 10
      Width = 66
      Height = 18
      Caption = 'Estoque'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = [fsUnderline]
      ParentFont = False
      BlinkIntervalOff = 0
      BlinkIntervalOn = 0
    end
    object lblTotalItens: TRzLabel
      Left = 997
      Top = 30
      Width = 8
      Height = 15
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = '--'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = [fsUnderline]
      ParentFont = False
      BlinkIntervalOff = 0
      BlinkIntervalOn = 0
    end
    object lblTituloTotal: TRzLabel
      Left = 964
      Top = 7
      Width = 46
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Saldo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = [fsUnderline]
      ParentFont = False
      BlinkIntervalOff = 0
      BlinkIntervalOn = 0
    end
    object RzLabel7: TRzLabel
      Left = 708
      Top = 7
      Width = 87
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Custo Total:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = [fsUnderline]
      ParentFont = False
      BlinkIntervalOff = 0
      BlinkIntervalOn = 0
    end
    object lblTotalCusto: TRzLabel
      Left = 777
      Top = 30
      Width = 8
      Height = 15
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = '--'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = [fsUnderline]
      ParentFont = False
      BlinkIntervalOff = 0
      BlinkIntervalOn = 0
    end
    object RzLabel9: TRzLabel
      Left = 833
      Top = 7
      Width = 91
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Venda Total:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = [fsUnderline]
      ParentFont = False
      BlinkIntervalOff = 0
      BlinkIntervalOn = 0
    end
    object lblTotalVenda: TRzLabel
      Left = 903
      Top = 30
      Width = 8
      Height = 15
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = '--'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4227072
      Font.Height = -13
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = [fsUnderline]
      ParentFont = False
      BlinkIntervalOff = 0
      BlinkIntervalOn = 0
    end
    object lblSaldoGerencial: TRzLabel
      Left = 1018
      Top = 7
      Width = 77
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Gerencial:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = [fsUnderline]
      ParentFont = False
      BlinkIntervalOff = 0
      BlinkIntervalOn = 0
    end
    object lblTotalGerencial: TRzLabel
      Left = 1076
      Top = 30
      Width = 8
      Height = 15
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = '--'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = [fsUnderline]
      ParentFont = False
      BlinkIntervalOff = 0
      BlinkIntervalOn = 0
    end
    object imgDeletar: TImage
      Left = 258
      Top = 1
      Width = 16
      Height = 17
      Picture.Data = {
        07544269746D617036050000424D360500000000000036040000280000001000
        000010000000010008000000000000010000120B0000120B000000010000C300
        00002323B200D4D8D900D98B6100AF9F9B009D898200E7C7B4006867C000F8FB
        FB003331E200BABABA008B8BE000F6B29A005B5C5D00E9EAEB00F9C6BE005B59
        B500ADADFC007172F500BCA9A600FDD6D000DCA598003A3AB200E0BAB400A195
        9200AEB0D7009999D100D4D2D3005051EA00D1998300C3C8C600FDEAE700F1A0
        8100EF9B7900D0BAA200E1D8D700F8BEAE009C9CB40092779600FEDFDA00D8CC
        CB006B498E00DCB2A8005555D0004749E200F3F3E700BDA19D007979DD007973
        B4009A9EA0006261E100ADB1B200F0D3D100FCD2CC00E5C9C700F9DAD100F4BC
        B3001515CE00B6A39E00DA917400C6B7B700C7C7DE00F4BAA5004145F600C7B4
        B400A8A8CF00CCA79D006261EF00F9EAE60087898B00F2E7E500D9C6C200E6CE
        CE008589EE00AD97B5008A8A99007272F100FCE7E200D1C8C900F5F5F500EC8D
        6D009090E500DDDDDA00726CC800D2D5D900DBC4C400FFEFEC008D839A00F9CD
        C6001414B500D0C0C000BBBBDB00E2B09D00AB9E9F00FCC3BA00FFE8DA00D09D
        9300BAAFAC005758E500F2F0EF00C4C0BD004B4DF000ECCBC900EEF3F400CFAC
        A400D4D4E600D1D1D100FED1D100FFFFFF00E2E1E1008079BC006E6FFF00FADB
        D4008B719D00EFC3BB00F39D7F00B89F9900DAA99E00F9CAC100FCF0EF00F1A7
        8900C9CCCD00F3B2A200BEA699007271DF00C4AEAE00BCC0C30096878700DAB8
        A700CBCCCF00EECBB700DFE1E300EB997E00B7A19D005156F000EFD1D1006C6C
        C100FFEAE500D9D9D400CEB7B700FFD5CC00F8F8F800F3B79F00FCE3E0006E6A
        CF00FAEEE900C8C7C8008787F400FCCFC900F9CBC400E9E9F000DEC8C900C1B7
        B400E7CDC800FFDFD400BEA5A000D9957800FEF4F300FFFFFF00FDC6C200C1AD
        A600DDCBCD00FBD9D300FDEDE900D2D5D600DEB4AD00B0B3B400F9D5CD00706F
        F600D9A59A00EF9D7D009E9FA200F7EBEA00FFEDDC00F9D1C900E1BAB800FCCB
        C400FFF0ED00D4D6DB008D8CE100FEEDE700FFC3BD00FFD3D300FBD9D500FFED
        E900F1A3810089898B00FFE6E200F5F5F700FFEFED00FDDBD50097878700FFED
        E500F5B79F00FBD4CD0000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00006B6B6B6B4E6C699189516B6B6B6B6B6B6B6B8C09A501661D0C0F242C6B87
        196B6B6B32446046987A156E7B4A065800406B07035F14A8745B702BA7310838
        87956B6229419A1284392156614B422A076B6B6B37679F3A9B7F022F1B11922E
        686B6B9C5D9E794F831C283E6452B210505A6BB00E347223BA866D858F054948
        0A5A6BA275A11F3D1E55812547995E183C6B6BA2576F4C778D360BACB394BD6B
        6B6B6BA2ADA18E8DA9B8209043A6936B6B6B6BA2C18BB56AAFB48BBF8826A16B
        6B6B6BB071A4AE6533352D047316136B6B6B6B63173B224576AB275C7E7E976B
        6B6B6BA31AA0A096548A7C3F594D806B6B6B6B6B4E82B1537D3044AA780D076B
        6B6B}
      Visible = False
    end
    object imgDeletar2: TImage
      Left = 280
      Top = 1
      Width = 16
      Height = 17
      Picture.Data = {
        07544269746D617036050000424D360500000000000036040000280000001000
        000010000000010008000000000000010000120B0000120B000000010000C900
        00001313B300C0D5C200DF855700A37C84007F7069001F1EE100DDB69E008179
        C10071648C00DCCAAF00A4AEA400C89E98004F52B100605EDB009EA59F00E1CF
        C000A6A6F700494A7B00C6B9B300ADA39F00D3E0CB00DF9C76008483EE005357
        DD00ABB8A600E1E5E8006C6FB900898B83004A48DA00EADFD300C8ADA300D1C4
        B400D0D8D100A29A99008E8EEB00A1B2BB004648F200D4DDC600C0A49B00D9BF
        AC00E1CBB7004C51AF006F6FEE00E28F6700EBB4A400D19E8C009FA0F500E8C2
        B300BEAAA6008B99B200D0CECB00BDAB9500BA958C006562BE00797D7D00BAC0
        BF00DBB49B008E97BD00B6A7B700B6928700E5D7CF00E4C6B8005B5CF300E9C5
        A80095686F00A8968A00C6C1BD002223BB00A5B39A00D8B2A700D5D1B800797F
        9900E2A784009A8D8700EBCEC000B0A2AE005E5EF000EACABD00DEA89B00CDE3
        CE00E2AF9300B49F9A00B3C5B300CCE2CD00DAA49800A2ADA200E0B69B00C9DD
        C900E39675007A7BBC00D9A499004A4DEC00C7CBC700E8EAD600C5B3A500B6C0
        B200D2E8D200887B7400888DCA009B8B8300D7C3BA00E7D8BE00D7A69D00DF8C
        61007879BA00E3C7AE00D5ABA100DDC0A200DECDBD00AC9F9800D1DFD8007E85
        C9005A52B900C4D3C400DAC8B000D7A18600E1C8C300A9B5A900625FCA00BCA6
        A0007474F6004D4CE000ECDECE00C0AAA300D8CBB700E4E1D300CCDECE00CCBB
        B600B4A8A200E2D4C400DCC6AA00F3CFC200EFD1BF00C4B5AE00DDADA1009FAC
        A500EABDAB00E1B7A300BAC8BE00DAB9A700DAD7B9007F80F500A1A09C009F91
        8C00D8C8B900BCCFC400DD815C00CCC3C000DDCAB4006364F100E0BBA000D9B1
        A000D1E7D100DEA07B00CEDAD600A2B0C000E0916D00E4CFB900DFCBB600CCBB
        B200A1ABA700F1DED200C4D9C400B1A69F00E4E9E800E6CFBC00CBDCCC00D9B6
        A100E8C8BA00D9D2BA00C8BCB900CFE4CF00D3E5CD004848DF00B7C3BF00A893
        8C004F51E100DDCDB700CEDED200E6D4C600D8C7AC00DDCBB3008B99B600A49D
        9B002525BC00E3CBB9007171EF00E7D7D000CFE3D000B5C5B500E0997400C2AD
        A300F3D1C500DBB9A100E19D7600CBADA300D5DFC700EBBDAB00DFCBB500FFFF
        FF00000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00006060606052750A0A4457606060AB60606060520E37A4A41B111A18602329
        9160980136B77F743D085B78684743000C57605F34545466860B703E2A7905B8
        9B98601F6A26307751BF333595BAADB6606060B54E7B2D9297BE03174C8D166F
        AB6060942C89589C73401C240D072E10625760942F502BB1B16D76B03AC15922
        3953609EA8961509468C3B4B6584A231606060284DA96B0282993F5DB388AC60
        606060284A7272C24867697D1D881460606060A583568BA738389D7AA1C02560
        60606027C3C364BBBB856104AF45256060604F8EA39F900F816C5E4163217160
        6060AB203293AA12808F4913425CA66060606060BCB26E9AAEA0A08A7E606060
        6060}
      Visible = False
    end
    object lblTotCustoGerencial: TRzLabel
      Left = 663
      Top = 30
      Width = 8
      Height = 15
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = '--'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = [fsUnderline]
      ParentFont = False
      BlinkIntervalOff = 0
      BlinkIntervalOn = 0
    end
    object lblCustoGerencial: TRzLabel
      Left = 562
      Top = 7
      Width = 123
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Custo Gerencial:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = [fsUnderline]
      ParentFont = False
      BlinkIntervalOff = 0
      BlinkIntervalOn = 0
    end
    object btnPrior: TRzBitBtn
      Tag = 1
      Left = 79
      Top = 49
      Width = 28
      FrameColor = 7617536
      Anchors = [akLeft, akBottom]
      Color = 15791348
      HotTrack = True
      TabOrder = 0
      OnClick = btnPriorClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000620B0000620B00000001000000000000000000003300
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
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809
        090909E8E8E809090909E8E8E8E8E881818181E8E8E881818181E8E8E8E80910
        101009E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8091010
        1009E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E809101010
        09E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E80910101009
        E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E80910101009E8
        E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E80910101009E8
        E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E8E80910101009
        E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E8E809101010
        09E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E8E8091010
        1009E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E8E80910
        101009E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E8E809
        090909E8E8E809090909E8E8E8E8E881818181E8E8E881818181E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
    object btnFirst: TRzBitBtn
      Tag = 1
      Left = 106
      Top = 49
      Width = 28
      FrameColor = 7617536
      Anchors = [akLeft, akBottom]
      Color = 15791348
      HotTrack = True
      TabOrder = 1
      OnClick = btnFirstClick
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
        0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E80909090909E8E8E8E8E8E8E8E8E8E8E88181818181E8E8E8E8E8E8E8E8E8E8
        091010101009E8E8E8E8E8E8E8E8E8E881ACACACAC81E8E8E8E8E8E8E8E8E809
        1010101009E8E8E8E8E8E8E8E8E8E881ACACACAC81E8E8E8E8E8E8E8E8E80910
        10101009E8E8E8E8E8E8E8E8E8E881ACACACAC81E8E8E8E8E8E8E8E8E8091010
        101009E8E8E8E8E8E8E8E8E8E881ACACACAC81E8E8E8E8E8E8E8E8E809101010
        1009E8E8E8E8E8E8E8E8E8E881ACACACAC81E8E8E8E8E8E8E8E8E8E809101010
        1009E8E8E8E8E8E8E8E8E8E881ACACACAC81E8E8E8E8E8E8E8E8E8E8E8091010
        101009E8E8E8E8E8E8E8E8E8E881ACACACAC81E8E8E8E8E8E8E8E8E8E8E80910
        10101009E8E8E8E8E8E8E8E8E8E881ACACACAC81E8E8E8E8E8E8E8E8E8E8E809
        1010101009E8E8E8E8E8E8E8E8E8E881ACACACAC81E8E8E8E8E8E8E8E8E8E8E8
        091010101009E8E8E8E8E8E8E8E8E8E881ACACACAC81E8E8E8E8E8E8E8E8E8E8
        E80909090909E8E8E8E8E8E8E8E8E8E8E88181818181E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
    object btnNext: TRzBitBtn
      Tag = 1
      Left = 133
      Top = 49
      Width = 28
      FrameColor = 7617536
      Anchors = [akLeft, akBottom]
      Color = 15791348
      HotTrack = True
      TabOrder = 2
      OnClick = btnNextClick
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
        0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E80909
        090909E8E8E8E8E8E8E8E8E8E8E88181818181E8E8E8E8E8E8E8E8E8E8E80910
        10101009E8E8E8E8E8E8E8E8E8E881ACACACAC81E8E8E8E8E8E8E8E8E8E8E809
        1010101009E8E8E8E8E8E8E8E8E8E881ACACACAC81E8E8E8E8E8E8E8E8E8E8E8
        091010101009E8E8E8E8E8E8E8E8E8E881ACACACAC81E8E8E8E8E8E8E8E8E8E8
        E8091010101009E8E8E8E8E8E8E8E8E8E881ACACACAC81E8E8E8E8E8E8E8E8E8
        E8E8091010101009E8E8E8E8E8E8E8E8E8E881ACACACAC81E8E8E8E8E8E8E8E8
        E8E8091010101009E8E8E8E8E8E8E8E8E8E881ACACACAC81E8E8E8E8E8E8E8E8
        E8091010101009E8E8E8E8E8E8E8E8E8E881ACACACAC81E8E8E8E8E8E8E8E8E8
        091010101009E8E8E8E8E8E8E8E8E8E881ACACACAC81E8E8E8E8E8E8E8E8E809
        1010101009E8E8E8E8E8E8E8E8E8E881ACACACAC81E8E8E8E8E8E8E8E8E80910
        10101009E8E8E8E8E8E8E8E8E8E881ACACACAC81E8E8E8E8E8E8E8E8E8E80909
        090909E8E8E8E8E8E8E8E8E8E8E88181818181E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
    object btnLast: TRzBitBtn
      Tag = 1
      Left = 160
      Top = 49
      Width = 28
      FrameColor = 7617536
      Anchors = [akLeft, akBottom]
      Color = 15791348
      HotTrack = True
      TabOrder = 3
      OnClick = btnLastClick
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
        0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809090909E8E8
        E809090909E8E8E8E8E881818181E8E8E881818181E8E8E8E8E80910101009E8
        E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E8E80910101009
        E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E8E809101010
        09E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E8E8091010
        1009E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E8E80910
        101009E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E80910
        101009E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8091010
        1009E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E809101010
        09E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E80910101009
        E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E80910101009E8
        E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E809090909E8E8
        E809090909E8E8E8E8E881818181E8E8E881818181E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
    object btnTodos: TRzBitBtn
      Tag = 1
      Left = 187
      Top = 49
      Width = 28
      FrameColor = 7617536
      Anchors = [akLeft, akBottom]
      Caption = 'View Details'
      Color = 15791348
      HotTrack = True
      TabOrder = 4
      OnClick = btnTodosClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000430B0000430B00000001000000000000000000003300
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
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E80B0B0B0B0B
        0B0B0B0B0B0B0B0B0BE8E88181818181818181818181818181E8E80BD7D7D7D7
        D7D7D7D7D7D7D7D70BE8E881E8E8E8E8E8E8E8E8E8E8E8E881E8E80BD781D781
        81D78181D78181D70BE8E881E881E88181E88181E88181E881E8E80BD7D7D7D7
        D7D7D7D7D7D7D7D70BE8E881E8E8E8E8E8E8E8E8E8E8E8E881E8E80BD781D781
        81D78181D78181D70BE8E881E881E88181E88181E88181E881E8E80BD7D7D7D7
        D7D7D7D7D7D7D7D70BE8E881E8E8E8E8E8E8E8E8E8E8E8E881E8E80BD75E5E5E
        5E5E5E5E5E5E5ED70BE8E881E881818181818181818181E881E8E80BD7D7D7D7
        D7D7D7D7D7D7D7D70BE8E881E8E8E8E8E8E8E8E8E8E8E8E881E8E80BD7D7D781
        81D78181D78181D70BE8E881E8E8E88181E88181E88181E881E8E80BD7D7D7D7
        D7D7D7D7D7D7D7D70BE8E881E8E8E8E8E8E8E8E8E8E8E8E881E8E80BD7D7D7D7
        D7D7D7D7D7D7D7D70BE8E881E8E8E8E8E8E8E8E8E8E8E8E881E8E80B0B0B0B0B
        0B0B0B0B0B0B0B0B0BE8E88181818181818181818181818181E8E80B0B0B0B0B
        0B0B0B0B0B0B0B0B0BE8E88181818181818181818181818181E8E8890B0B0B0B
        0B0B0B0B0B0B0B0B89E8E8AC818181818181818181818181ACE8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
    object btnInprimir: TRzBitBtn
      Tag = 1
      Left = 214
      Top = 49
      Width = 28
      FrameColor = 7617536
      Anchors = [akLeft, akBottom]
      Color = 15791348
      HotTrack = True
      PopupMenu = ppmImprimir
      TabOrder = 5
      OnClick = btnInprimirClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000730E0000730E00000001000000000000000000003300
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
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809090909
        09090909090909E8E8E8E8E88181818181818181818181E8E8E8E85E89898989
        89898989895E5E09E8E8E8E2ACACACACACACACACACE2E281E8E85E5E5E5E5E5E
        5E5E5E5E5E5E095E09E8E2E2E2E2E2E2E2E2E2E2E2E281E281E85ED789898989
        8989898989895E0909E8E2E8ACACACACACACACACACACE28181E85ED789898989
        181289B490895E5E09E8E2E8ACACACACE281ACE281ACE2E281E85ED7D7D7D7D7
        D7D7D7D7D7D75E5E5E09E2E8E8E8E8E8E8E8E8E8E8E8E2E2E2815ED789898989
        8989898989895E5E5E09E2E8ACACACACACACACACACACE2E2E281E85E5E5E5E5E
        5E5E5E5E5E89895E5E09E8E2E2E2E2E2E2E2E2E2E2ACACE2E281E8E85ED7D7D7
        D7D7D7D7D75E89895E09E8E8E2E8E8E8E8E8E8E8E8E2ACACE281E8E8E85ED7E3
        E3E3E3E3D75E5E5E09E8E8E8E8E2E8ACACACACACE8E2E2E281E8E8E8E85ED7D7
        D7D7D7D7D7D75EE8E8E8E8E8E8E2E8E8E8E8E8E8E8E8E2E8E8E8E8E8E8E85ED7
        E3E3E3E3E3D75EE8E8E8E8E8E8E8E2E8ACACACACACE8E2E8E8E8E8E8E8E85ED7
        D7D7D7D7D7D7D75EE8E8E8E8E8E8E2E8E8E8E8E8E8E8E8E2E8E8E8E8E8E8E85E
        5E5E5E5E5E5E5E5EE8E8E8E8E8E8E8E2E2E2E2E2E2E2E2E2E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
    object rgbSaldo: TRzRadioGroup
      Left = 248
      Top = 24
      Width = 308
      Height = 55
      Caption = 'Saldo'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = []
      Columns = 5
      GroupStyle = gsBanner
      ItemFrameColor = 8409372
      ItemHighlightColor = 2203937
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'Positivo'
        'Negativo'
        'Minino'
        'Zerado')
      TabOrder = 6
      Transparent = True
      OnChanging = rgbSaldoChanging
    end
  end
  object fdsCor_Grupo: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    C.ID,'
      '    C.NOME,'
      '    C.REFERENCIA'
      'FROM'
      '    COR C, COR_GRUPO CG'
      'WHERE'
      '   CG.STATUS <> '#39'I'#39
      'AND'
      '   C.STATUS <> '#39'I'#39
      'AND'
      '   CG.IDGRUPO = :IDGRUPO '
      'AND '
      '   C.ID = CG.IDCOR')
    AutoUpdateOptions.UpdateTableName = 'ALUNO'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'GEN_ID_ALUNO'
    Transaction = DM.transPricipal
    Database = DM.Conexao
    DefaultFormats.DateTimeDisplayFormat = 'dd/mm/yyyy hh:mm:ss'
    DefaultFormats.DisplayFormatDate = 'dd/mm/yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm:ss'
    Left = 616
    Top = 152
    oFetchAll = True
    object fdsCor_GrupoID: TFIBBCDField
      FieldName = 'ID'
      Size = 0
    end
    object fdsCor_GrupoNOME: TFIBStringField
      FieldName = 'NOME'
      Size = 250
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsCor_GrupoREFERENCIA: TFIBStringField
      FieldName = 'REFERENCIA'
      Size = 4
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object fdsGrupo: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE GRUPO'
      'SET '
      '    NOME = :NOME,'
      '    REFERENCIA = :REFERENCIA'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    GRUPO'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO GRUPO('
      '    ID,'
      '    NOME,'
      '    REFERENCIA'
      ')'
      'VALUES('
      '    :ID,'
      '    :NOME,'
      '    :REFERENCIA'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    NOME,'
      '    REFERENCIA'
      'FROM'
      '    GRUPO '
      'WHERE( '
      '    STATUS <> '#39'I'#39
      '     ) and (     GRUPO.ID = :OLD_ID'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    NOME,'
      '    REFERENCIA'
      'FROM'
      '    GRUPO '
      'WHERE'
      '    STATUS <> '#39'I'#39)
    AutoUpdateOptions.UpdateTableName = 'ALUNO'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'GEN_ID_ALUNO'
    AfterOpen = fdsGrupoAfterOpen
    Transaction = DM.transPricipal
    Database = DM.Conexao
    DefaultFormats.DateTimeDisplayFormat = 'dd/mm/yyyy hh:mm:ss'
    DefaultFormats.DisplayFormatDate = 'dd/mm/yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm:ss'
    Left = 576
    Top = 152
    oFetchAll = True
    object fdsGrupoID: TFIBBCDField
      FieldName = 'ID'
      Size = 0
    end
    object fdsGrupoNOME: TFIBStringField
      FieldName = 'NOME'
      Size = 250
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsGrupoREFERENCIA: TFIBStringField
      FieldName = 'REFERENCIA'
      Size = 4
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object dsGrupo: TDataSource
    AutoEdit = False
    DataSet = fdsGrupo
    Left = 576
    Top = 184
  end
  object dsCor: TDataSource
    AutoEdit = False
    DataSet = fdsCor_Grupo
    Left = 616
    Top = 184
  end
  object fdsTamanho_Grupo: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE TAMANHO'
      'SET '
      '    NOME = :NOME,'
      '    REFERENCIA = :REFERENCIA'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    TAMANHO'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO TAMANHO('
      '    ID,'
      '    NOME,'
      '    REFERENCIA'
      ')'
      'VALUES('
      '    :ID,'
      '    :NOME,'
      '    :REFERENCIA'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    T.ID,'
      '    T.NOME,'
      '    T.REFERENCIA'
      'FROM'
      '    TAMANHO T, TAMANHO_GRUPO TG'
      'WHERE( '
      '   TG.STATUS <> '#39'I'#39
      'AND'
      '   T.STATUS <> '#39'I'#39
      'AND'
      '   TG.IDGRUPO = :IDGRUPO '
      'AND '
      '   T.ID = TG.IDTAMANHO'
      '     ) and (     T.ID = :OLD_ID'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    T.ID,'
      '    T.NOME,'
      '    T.REFERENCIA'
      'FROM'
      '    TAMANHO T, TAMANHO_GRUPO TG'
      'WHERE'
      '   TG.STATUS <> '#39'I'#39
      'AND'
      '   T.STATUS <> '#39'I'#39
      'AND'
      '   TG.IDGRUPO = :IDGRUPO '
      'AND '
      '   T.ID = TG.IDTAMANHO')
    AutoUpdateOptions.UpdateTableName = 'ALUNO'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'GEN_ID_ALUNO'
    Transaction = DM.transPricipal
    Database = DM.Conexao
    DefaultFormats.DateTimeDisplayFormat = 'dd/mm/yyyy hh:mm:ss'
    DefaultFormats.DisplayFormatDate = 'dd/mm/yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm:ss'
    Left = 656
    Top = 152
    oFetchAll = True
    object fdsTamanho_GrupoID: TFIBBCDField
      FieldName = 'ID'
      Size = 0
    end
    object fdsTamanho_GrupoNOME: TFIBStringField
      FieldName = 'NOME'
      Size = 250
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsTamanho_GrupoREFERENCIA: TFIBStringField
      FieldName = 'REFERENCIA'
      Size = 4
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object dsTamanho_Grupo: TDataSource
    AutoEdit = False
    DataSet = fdsTamanho_Grupo
    Left = 640
    Top = 184
  end
  object fdsItens: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE PRODUTO_ITEM'
      'SET '
      '    DT_INC = :DT_INC,'
      '    DT_ALT = :DT_ALT,'
      '    IDPRODUTO = :IDPRODUTO,'
      '    STATUS = :STATUS,'
      '    NOME = :NOME,'
      '    REFERENCIA = :REFERENCIA,'
      '    IDTAMANHO = :IDTAMANHO,'
      '    IDCOR = :IDCOR,'
      '    PESO = :PESO,'
      '    PREC_CUSTO = :PREC_CUSTO,'
      '    COD_FABRICA = :COD_FABRICA,'
      '    PREC_ULTIMO_CUSTO = :PREC_ULTIMO_CUSTO,'
      '    DT_VALIDADE = :DT_VALIDADE,'
      '    DESC_MAX1 = :DESC_MAX1,'
      '    DESC_MAX2 = :DESC_MAX2,'
      '    COD_FABRICANTE = :COD_FABRICANTE,'
      '    COMISSAO_DN = :COMISSAO_DN,'
      '    COMISSAO_CH = :COMISSAO_CH,'
      '    COMISSAO_CT = :COMISSAO_CT,'
      '    UNIDADE = :UNIDADE,'
      '    ENVIADO_WEB = :ENVIADO_WEB'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    PRODUTO_ITEM'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO PRODUTO_ITEM('
      '    ID,'
      '    DT_INC,'
      '    DT_ALT,'
      '    IDPRODUTO,'
      '    STATUS,'
      '    NOME,'
      '    REFERENCIA,'
      '    IDTAMANHO,'
      '    IDCOR,'
      '    PESO,'
      '    PREC_CUSTO,'
      '    COD_FABRICA,'
      '    PREC_ULTIMO_CUSTO,'
      '    DT_VALIDADE,'
      '    DESC_MAX1,'
      '    DESC_MAX2,'
      '    COD_FABRICANTE,'
      '    COMISSAO_DN,'
      '    COMISSAO_CH,'
      '    COMISSAO_CT,'
      '    UNIDADE,'
      '    ENVIADO_WEB'
      ')'
      'VALUES('
      '    :ID,'
      '    :DT_INC,'
      '    :DT_ALT,'
      '    :IDPRODUTO,'
      '    :STATUS,'
      '    :NOME,'
      '    :REFERENCIA,'
      '    :IDTAMANHO,'
      '    :IDCOR,'
      '    :PESO,'
      '    :PREC_CUSTO,'
      '    :COD_FABRICA,'
      '    :PREC_ULTIMO_CUSTO,'
      '    :DT_VALIDADE,'
      '    :DESC_MAX1,'
      '    :DESC_MAX2,'
      '    :COD_FABRICANTE,'
      '    :COMISSAO_DN,'
      '    :COMISSAO_CH,'
      '    :COMISSAO_CT,'
      '    :UNIDADE,'
      '    :ENVIADO_WEB'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    PI.*,'
      '    (PI.prec_custo * pie.saldo) CUSTO_TOTAL,'
      '    (PI.prec_custo * pie.saldo_gerencial) CUSTO_TOT_GEREN,'
      '    (PIE.prec_venda * pie.saldo) VENDA_TOTAL,'
      '    T.NOME TAMANHO,'
      '    T.ALTURA_I,'
      '    T.LARGURA_I,'
      '    T.PROFUNDIDADE_I,'
      '    T.ALTURA_E,'
      '    T.LARGURA_E,'
      '    T.PROFUNDIDADE_E,'
      '    C.NOME COR,'
      '    PIE.*,'
      '    F.NOME FILIAL,'
      '    P.TIPO'
      'FROM'
      
        '    PRODUTO_ITEM PI, PRODUTO P, TAMANHO T, COR C, PRODUTO_ITEM_E' +
        'STOQUE PIE, FILIAL F, FORNECEDOR FR'
      'WHERE( '
      '    T.ID = PI.IDTAMANHO'
      'AND'
      '    C.ID = PI.IDCOR'
      'AND'
      '   PIE.IDITEM = PI.ID'
      'AND'
      '   F.ID = PIE.IDFILIAL'
      'AND'
      '   P.ID = PI.IDPRODUTO'
      'AND'
      '   P.IDFORNECEDOR = FR.ID'
      'AND'
      '   PI.STATUS = '#39'A'#39
      '     ) and (     PI.ID = :OLD_ID'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    PI.*,'
      '    (PI.prec_custo * pie.saldo) CUSTO_TOTAL,'
      '    (PI.prec_custo * pie.saldo_gerencial) CUSTO_TOT_GEREN,'
      '    (PIE.prec_venda * pie.saldo) VENDA_TOTAL,'
      '    T.NOME TAMANHO,'
      '    T.ALTURA_I,'
      '    T.LARGURA_I,'
      '    T.PROFUNDIDADE_I,'
      '    T.ALTURA_E,'
      '    T.LARGURA_E,'
      '    T.PROFUNDIDADE_E,'
      '    C.NOME COR,'
      '    PIE.*,'
      '    PIE.SALDO AS ESTOQUE,'
      '    PIE.SALDO_MINIMO AS ESTOQUE_MINIMO,'
      '    PIE.SALDO_GERENCIAL AS ESTOQUE_GREN,'
      '    F.NOME FILIAL,'
      '    P.TIPO'
      'FROM'
      
        '    PRODUTO_ITEM PI, PRODUTO P, TAMANHO T, COR C, PRODUTO_ITEM_E' +
        'STOQUE PIE, FILIAL F, FORNECEDOR FR'
      'WHERE'
      '    T.ID = PI.IDTAMANHO'
      'AND'
      '    C.ID = PI.IDCOR'
      'AND'
      '   PIE.IDITEM = PI.ID'
      'AND'
      '   F.ID = PIE.IDFILIAL'
      'AND'
      '   P.ID = PI.IDPRODUTO'
      'AND'
      '   P.IDFORNECEDOR = FR.ID'
      'AND'
      '   PI.STATUS = '#39'A'#39
      'ORDER BY '
      '   PI.NOME'
      '')
    AutoUpdateOptions.UpdateTableName = 'ALUNO'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'GEN_ID_ALUNO'
    AfterOpen = fdsItensAfterOpen
    AfterScroll = fdsItensAfterScroll
    Transaction = DM.transPricipal
    Database = DM.Conexao
    DefaultFormats.DateTimeDisplayFormat = 'dd/mm/yyyy hh:mm:ss'
    DefaultFormats.DisplayFormatDate = 'dd/mm/yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm:ss'
    Left = 544
    Top = 152
    oFetchAll = True
    object fdsItensID: TFIBBCDField
      FieldName = 'ID'
      Size = 0
    end
    object fdsItensDT_INC: TFIBDateField
      DefaultExpression = 'CURRENT_DATE'
      FieldName = 'DT_INC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object fdsItensDT_ALT: TFIBDateField
      FieldName = 'DT_ALT'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object fdsItensIDPRODUTO: TFIBBCDField
      FieldName = 'IDPRODUTO'
      Size = 0
    end
    object fdsItensSTATUS: TFIBStringField
      FieldName = 'STATUS'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsItensNOME: TFIBStringField
      FieldName = 'NOME'
      Size = 250
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsItensREFERENCIA: TFIBStringField
      Alignment = taRightJustify
      FieldName = 'REFERENCIA'
      Size = 13
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsItensIDTAMANHO: TFIBBCDField
      FieldName = 'IDTAMANHO'
      Size = 0
    end
    object fdsItensIDCOR: TFIBBCDField
      FieldName = 'IDCOR'
      Size = 0
    end
    object fdsItensPESO: TFIBBCDField
      DefaultExpression = '0,00'
      FieldName = 'PESO'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.0000'
      Size = 8
    end
    object fdsItensPREC_CUSTO: TFIBBCDField
      DefaultExpression = '0,00'
      FieldName = 'PREC_CUSTO'
      DisplayFormat = 'R$ #,##0.00'
      EditFormat = '0.0000'
      Size = 8
    end
    object fdsItensPREC_VENDA: TFIBBCDField
      DefaultExpression = '0,00'
      FieldName = 'PREC_VENDA'
      DisplayFormat = 'R$ #,##0.00'
      EditFormat = '0.0000'
      Size = 8
    end
    object fdsItensENVIADO_WEB: TFIBStringField
      DefaultExpression = #39'N'#39
      FieldName = 'ENVIADO_WEB'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsItensPREC_TAB1: TFIBBCDField
      DefaultExpression = '0,00'
      FieldName = 'PREC_TAB1'
      DisplayFormat = 'R$ #,##0.00'
      EditFormat = '0.0000'
      Size = 8
    end
    object fdsItensPREC_TAB2: TFIBBCDField
      DefaultExpression = '0,00'
      FieldName = 'PREC_TAB2'
      DisplayFormat = 'R$ #,##0.00'
      EditFormat = '0.0000'
      Size = 8
    end
    object fdsItensPREC_TAB3: TFIBBCDField
      DefaultExpression = '0,00'
      FieldName = 'PREC_TAB3'
      DisplayFormat = 'R$ #,##0.00'
      EditFormat = '0.0000'
      Size = 8
    end
    object fdsItensPREC_TAB4: TFIBBCDField
      DefaultExpression = '0,00'
      FieldName = 'PREC_TAB4'
      DisplayFormat = 'R$ #,##0.00'
      EditFormat = '0.0000'
      Size = 8
    end
    object fdsItensPREC_TAB5: TFIBBCDField
      DefaultExpression = '0,00'
      FieldName = 'PREC_TAB5'
      DisplayFormat = 'R$ #,##0.00'
      EditFormat = '0.0000'
      Size = 8
    end
    object fdsItensPREC_TAB6: TFIBBCDField
      DefaultExpression = '0,00'
      FieldName = 'PREC_TAB6'
      DisplayFormat = 'R$ #,##0.00'
      EditFormat = '0.0000'
      Size = 8
    end
    object fdsItensCOD_FABRICA: TFIBStringField
      FieldName = 'COD_FABRICA'
      Size = 13
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsItensCUSTO_TOTAL: TFIBFloatField
      DefaultExpression = '0,00'
      FieldName = 'CUSTO_TOTAL'
      DisplayFormat = 'R$ #,##0.00'
      EditFormat = '0.0000000'
    end
    object fdsItensVENDA_TOTAL: TFIBFloatField
      DefaultExpression = '0,00'
      FieldName = 'VENDA_TOTAL'
      DisplayFormat = 'R$ #,##0.00'
      EditFormat = '0.0000000'
    end
    object fdsItensTAMANHO: TFIBStringField
      FieldName = 'TAMANHO'
      Size = 250
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsItensALTURA_I: TFIBBCDField
      DefaultExpression = '0,00'
      FieldName = 'ALTURA_I'
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
      Size = 8
    end
    object fdsItensLARGURA_I: TFIBBCDField
      DefaultExpression = '0,00'
      FieldName = 'LARGURA_I'
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
      Size = 8
    end
    object fdsItensPROFUNDIDADE_I: TFIBBCDField
      DefaultExpression = '0,00'
      FieldName = 'PROFUNDIDADE_I'
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
      Size = 8
    end
    object fdsItensALTURA_E: TFIBBCDField
      DefaultExpression = '0,00'
      FieldName = 'ALTURA_E'
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
      Size = 8
    end
    object fdsItensLARGURA_E: TFIBBCDField
      DefaultExpression = '0,00'
      FieldName = 'LARGURA_E'
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
      Size = 8
    end
    object fdsItensPROFUNDIDADE_E: TFIBBCDField
      DefaultExpression = '0,00'
      FieldName = 'PROFUNDIDADE_E'
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
      Size = 8
    end
    object fdsItensCOR: TFIBStringField
      FieldName = 'COR'
      Size = 250
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsItensESTOQUE: TFIBBCDField
      DefaultExpression = '0'
      FieldName = 'ESTOQUE'
      DisplayFormat = '#,##0.000'
      EditFormat = '0.000'
      Size = 3
    end
    object fdsItensESTOQUE_MINIMO: TFIBBCDField
      DefaultExpression = '0'
      FieldName = 'ESTOQUE_MINIMO'
      DisplayFormat = '#,##0.000'
      EditFormat = '0.000'
      Size = 3
    end
    object fdsItensIDFILIAL: TFIBBCDField
      FieldName = 'IDFILIAL'
      Size = 0
    end
    object fdsItensFILIAL: TFIBStringField
      FieldName = 'FILIAL'
      Size = 250
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsItensPREC_ULTIMO_CUSTO: TFIBBCDField
      DefaultExpression = '0,00'
      FieldName = 'PREC_ULTIMO_CUSTO'
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
      Size = 8
    end
    object fdsItensDT_VALIDADE: TFIBDateField
      FieldName = 'DT_VALIDADE'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object fdsItensMARGEM_LUCRO: TFIBBCDField
      DefaultExpression = '0,00'
      FieldName = 'MARGEM_LUCRO'
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
      Size = 8
    end
    object fdsItensTIPO: TFIBStringField
      FieldName = 'TIPO'
      Size = 2
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsItensDESC_MAX1: TFIBBCDField
      DefaultExpression = '0,00'
      FieldName = 'DESC_MAX1'
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
      Size = 8
    end
    object fdsItensDESC_MAX2: TFIBBCDField
      DefaultExpression = '0,00'
      FieldName = 'DESC_MAX2'
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
      Size = 8
    end
    object fdsItensCOD_FABRICANTE: TFIBStringField
      FieldName = 'COD_FABRICANTE'
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsItensCOMISSAO_DN: TFIBBCDField
      DefaultExpression = '0,00'
      FieldName = 'COMISSAO_DN'
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
      Size = 8
    end
    object fdsItensCOMISSAO_CH: TFIBBCDField
      DefaultExpression = '0,00'
      FieldName = 'COMISSAO_CH'
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
      Size = 8
    end
    object fdsItensCOMISSAO_CT: TFIBBCDField
      DefaultExpression = '0,00'
      FieldName = 'COMISSAO_CT'
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
      Size = 8
    end
    object fdsItensUNIDADE: TFIBStringField
      FieldName = 'UNIDADE'
      Size = 2
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsItensESTOQUE_GREN: TFIBBCDField
      DefaultExpression = '0'
      FieldName = 'ESTOQUE_GREN'
      DisplayFormat = '#,##0.000'
      EditFormat = '0.000'
      Size = 3
    end
    object fdsItensCUSTO_TOT_GEREN: TFIBFloatField
      FieldName = 'CUSTO_TOT_GEREN'
      DisplayFormat = '#,##0.0000000'
      EditFormat = '0.0000000'
    end
    object fdsItensIDITEM: TFIBBCDField
      FieldName = 'IDITEM'
      Size = 0
    end
    object fdsItensSALDO: TFIBBCDField
      DefaultExpression = '0'
      FieldName = 'SALDO'
      DisplayFormat = '#,##0.000'
      EditFormat = '0.000'
      Size = 3
    end
    object fdsItensSALDO_GERENCIAL: TFIBBCDField
      DefaultExpression = '0'
      FieldName = 'SALDO_GERENCIAL'
      DisplayFormat = '#,##0.000'
      EditFormat = '0.000'
      Size = 3
    end
    object fdsItensSALDO_MINIMO: TFIBBCDField
      DefaultExpression = '0'
      FieldName = 'SALDO_MINIMO'
      DisplayFormat = '#,##0.000'
      EditFormat = '0.000'
      Size = 3
    end
  end
  object dsItens: TDataSource
    AutoEdit = False
    DataSet = fdsItens
    Left = 544
    Top = 184
  end
  object fdsFilial: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE FILIAL'
      'SET '
      '    STATUS = :STATUS,'
      '    NOME = :NOME'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    FILIAL'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO FILIAL('
      '    ID,'
      '    STATUS,'
      '    NOME'
      ')'
      'VALUES('
      '    :ID,'
      '    :STATUS,'
      '    :NOME'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    STATUS,'
      '    NOME'
      'FROM'
      '    FILIAL '
      ''
      ' WHERE '
      '        FILIAL.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    STATUS,'
      '    NOME'
      'FROM'
      '    FILIAL ')
    AfterOpen = fdsFilialAfterOpen
    Transaction = DM.transPricipal
    Database = DM.Conexao
    DefaultFormats.DateTimeDisplayFormat = 'dd/mm/yyyy hh:mm:ss'
    DefaultFormats.DisplayFormatDate = 'dd/mm/yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm:ss'
    Left = 512
    Top = 153
    oFetchAll = True
    object fdsFilialID: TFIBBCDField
      FieldName = 'ID'
      Size = 0
    end
    object fdsFilialSTATUS: TFIBStringField
      FieldName = 'STATUS'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsFilialNOME: TFIBStringField
      FieldName = 'NOME'
      Size = 250
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object dsFilial: TDataSource
    AutoEdit = False
    DataSet = fdsFilial
    Left = 512
    Top = 184
  end
  object fdsMovItens: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE MOVIMENTACAO_ITEM'
      'SET '
      '    DT_INC = :DT_INC,'
      '    IDITEM = :IDITEM,'
      '    MOVIMENTO = :MOVIMENTO,'
      '    IDMOVIMENTO = :IDMOVIMENTO,'
      '    TIPO = :TIPO,'
      '    QTN = :QTN,'
      '    SALDO = :SALDO,'
      '    IDFILIAL_DESTINO = :IDFILIAL_DESTINO,'
      '    ENVIADO_WEB = :ENVIADO_WEB,'
      '    ORDEM = :ORDEM'
      'WHERE'
      '    ID = :OLD_ID'
      '    and IDFILIAL = :OLD_IDFILIAL'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    MOVIMENTACAO_ITEM'
      'WHERE'
      '        ID = :OLD_ID'
      '    and IDFILIAL = :OLD_IDFILIAL'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO MOVIMENTACAO_ITEM('
      '    ID,'
      '    DT_INC,'
      '    IDITEM,'
      '    IDFILIAL,'
      '    MOVIMENTO,'
      '    IDMOVIMENTO,'
      '    TIPO,'
      '    QTN,'
      '    SALDO,'
      '    IDFILIAL_DESTINO,'
      '    ENVIADO_WEB,'
      '    ORDEM'
      ')'
      'VALUES('
      '    :ID,'
      '    :DT_INC,'
      '    :IDITEM,'
      '    :IDFILIAL,'
      '    :MOVIMENTO,'
      '    :IDMOVIMENTO,'
      '    :TIPO,'
      '    :QTN,'
      '    :SALDO,'
      '    :IDFILIAL_DESTINO,'
      '    :ENVIADO_WEB,'
      '    :ORDEM'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    MI.*,'
      
        '    CASE WHEN (MI.MOVIMENTO = '#39'TRANSFER'#202'NCIA'#39') THEN MI.MOVIMENTO' +
        ' || '#39' - '#39' || F.NOME '
      '         ELSE MI.MOVIMENTO END AS MV, '
      '    CASE WHEN (MI.TIPO = '#39'S'#39') THEN '#39'SA'#205'DA'#39' '
      '         WHEN (MI.TIPO = '#39'E'#39') THEN '#39'ENTRADA'#39' '
      '         WHEN (MI.TIPO = '#39'B'#39') THEN '#39'BALAN'#199'O'#39' END AS TP, '
      '    PI.NOME'
      'FROM'
      '    MOVIMENTACAO_ITEM MI, PRODUTO_ITEM PI, FILIAL F'
      'WHERE( '
      '   PI.ID = MI.IDITEM'
      'AND'
      '   F.ID = MI.IDFILIAL_DESTINO'
      'AND'
      '   MI.IDITEM = :IDITEM'
      'AND'
      '   MI.IDFILIAL = :IDFILIAL'
      '     ) and (     MI.ID = :OLD_ID'
      '    and MI.IDFILIAL = :OLD_IDFILIAL'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    MI.*,'
      
        '    CASE WHEN (MI.MOVIMENTO = '#39'TRANSFER'#202'NCIA'#39') THEN MI.MOVIMENTO' +
        ' || '#39' - '#39' || F.NOME '
      '         ELSE MI.MOVIMENTO END AS MV, '
      '    CASE WHEN (MI.TIPO = '#39'S'#39') THEN '#39'SA'#205'DA'#39' '
      '         WHEN (MI.TIPO = '#39'E'#39') THEN '#39'ENTRADA'#39' '
      '         WHEN (MI.TIPO = '#39'B'#39') THEN '#39'BALAN'#199'O'#39
      
        '         WHEN (MI.TIPO ='#39'I'#39') THEN '#39'TRANSFER'#202'NCIA INTERNA'#39' END AS' +
        ' TP, '
      '    PI.NOME'
      'FROM'
      '    MOVIMENTACAO_ITEM MI, PRODUTO_ITEM PI, FILIAL F'
      'WHERE'
      '   PI.ID = MI.IDITEM'
      'AND'
      '   F.ID = MI.IDFILIAL_DESTINO'
      'ORDER BY'
      '   MI.ORDEM'
      ''
      '')
    Transaction = DM.transPricipal
    Database = DM.Conexao
    DefaultFormats.DateTimeDisplayFormat = 'dd/mm/yyyy hh:mm:ss'
    DefaultFormats.DisplayFormatDate = 'dd/mm/yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm:ss'
    Left = 696
    Top = 152
    oFetchAll = True
    object fdsMovItensID: TFIBBCDField
      FieldName = 'ID'
      Size = 0
    end
    object fdsMovItensDT_INC: TFIBDateField
      DefaultExpression = 'CURRENT_DATE'
      FieldName = 'DT_INC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object fdsMovItensIDITEM: TFIBBCDField
      FieldName = 'IDITEM'
      Size = 0
    end
    object fdsMovItensIDFILIAL: TFIBBCDField
      FieldName = 'IDFILIAL'
      Size = 0
    end
    object fdsMovItensMOVIMENTO: TFIBStringField
      FieldName = 'MOVIMENTO'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsMovItensIDMOVIMENTO: TFIBBCDField
      FieldName = 'IDMOVIMENTO'
      Size = 0
    end
    object fdsMovItensTIPO: TFIBStringField
      FieldName = 'TIPO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsMovItensQTN: TFIBBCDField
      DefaultExpression = '0'
      FieldName = 'QTN'
      DisplayFormat = '#,##0.000'
      EditFormat = '0.000'
      Size = 3
    end
    object fdsMovItensSALDO: TFIBBCDField
      DefaultExpression = '0'
      FieldName = 'SALDO'
      DisplayFormat = '#,##0.000'
      EditFormat = '0.000'
      Size = 3
    end
    object fdsMovItensNOME: TFIBStringField
      FieldName = 'NOME'
      Size = 250
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsMovItensTP: TFIBStringField
      FieldName = 'TP'
      Size = 21
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsMovItensIDFILIAL_DESTINO: TFIBBCDField
      FieldName = 'IDFILIAL_DESTINO'
      Size = 0
    end
    object fdsMovItensMV: TFIBStringField
      FieldName = 'MV'
      Size = 303
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsMovItensENVIADO_WEB: TFIBStringField
      DefaultExpression = #39'N'#39
      FieldName = 'ENVIADO_WEB'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsMovItensORDEM: TFIBIntegerField
      FieldName = 'ORDEM'
    end
    object fdsMovItensTIPO_ESTOQUE: TFIBStringField
      DefaultExpression = #39'N'#39
      FieldName = 'TIPO_ESTOQUE'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object dsMovItens: TDataSource
    AutoEdit = False
    DataSet = fdsMovItens
    Left = 720
    Top = 176
  end
  object PngImageList1: TPngImageList
    Height = 32
    Width = 32
    PngImages = <
      item
        Background = clNone
        Name = 'Pesq_32x32'
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000473424954080808087C086488000000097048597300000B1200000B
          1201D2DD7EFC0000001C74455874536F6674776172650041646F626520466972
          65776F726B7320435336E8BCB28C0000085A4944415478DAC597095054F71DC7
          BF6F77DFEE722C8B508E706854704590D5090A2222108408E150331EE015E3B4
          36D63AA283369369A1636A665A4709A39984A94DBD5AD1C928B649757412CF82
          DCC22E5045041750EEE5DA7B5F7FEF111D84452733EDE437F36779BBFFF7FF7E
          7EC7FBFDFF8FE1380E3FA53153019496952F08F09D96C6B2A208CECEB9330CD3
          6BB373E53D03A325E1F3E76BFE2F0024F2E6B60FB627FCFAC3ED89768E89AF6B
          D2F93636777106A39561250C373BD09D0953F9B54B59F1F593672F5CFD99A7A7
          C96C368BED361B7FF3D8225338249648C4F5F5F543972E5DBA469A068700870E
          1D3A9C181F9373BBEA094E5DD6A2CFC87273E6CE80C1CE30AE2CC3356A1EC355
          6260D26303901413046FDF40F80704C26EB73B161E07C54A24A8ACACAC5A1E17
          B78C344727017CFEF9F1F74354B34F9CB8D880DB5A0382C3821011AD4250B00F
          DA078CF057CAF0A8A50BF5152DA8AD68C45C6F133EC80C46F0DC500407AB60B1
          98C18C171D67BC869393136A6B6AFEBD68D1A204BA36BE04B06FDFFE90A551EA
          EA92DBDDB2EB1A8B3D7D7594687AE87404CFF0844404B40C5B10E4C6C268E5F0
          B87D002DF75B70F96215C2BC86B1F11D3F2C8E8E83BF9F1FCC16CBD8A213A2C0
          6BC86532545757DF8D8C8C4C9C9482C2823F9E35C163C3A7C51DC6355971D2C5
          D12A11276731C7D3091670B83F6846B8520A2A46B4EB2D602D5694DE69C2D7E7
          EE222B5A8CD845D3F1F68A5412B2E3454AC745420090CB515559391960D5AAD5
          0B5726C55DBB586673D30ECBBB7273337DC472B198954B2073966290D26B249F
          580251503438A30D56831966931D17CEDC82ADE331D6C588B1323503FE818194
          0A0751209351042A2A2A2603ECF8F9FBF961E18B7FFBD93F477A94EA996D596B
          A2D5AC9358ECEE2A83CC89C528019839022071571A16B315038326988D1C9A1B
          74F8EEC22DAC596840624214A297C6C2643462A2D1D305A9548AF2F2F2C900FB
          72769EF709087FAFE09AA979764248DB9AC4F0388542CA38C924709190B0580C
          D2173CB2530A466C7618CD1C8686CCE8EB1EC1A5BF5C43AC7F0FE2970423352D
          1326934908FFC408F000F7EEDD7300B0E7C3129FE90BD30A6FD8EB8312551D6B
          134293DC1452388B44908A19C8C86B312D68A725CD0440DAFC6389A16113FA7B
          4DB87CFA7B2C56EA101311888C556B417D41F078A2B12CEB1860DB96ECA2B722
          13B617DEE01A7D96CE6ADD98AC4E72779532CE242E277156C48C01D09A564A07
          A51EA31412FDB019DD5DA3F8D7E91B88F37F8A08F54CAC4C4987D56A7D5188E3
          4124D4071C022C8B89D9BC6553D69F2F6BDCFADB3CDC353BB3A2630940A41003
          CE6211E4621E000280891A9E81C4876D1CF423563CF84F37EABE29C58AD9DD88
          58B4189151510280239B128086F2D33FE4DD90792E541FAF186AC8C94909F274
          93B24A96811BD580330D097962A3A906021822F141D2D08FDA70E5520D822D3A
          04BA3E45C6EAF5F0F6F616001CA5404CB5E410800F576666E62FB7646F387EED
          A18B819D37878D78CB4FE221134349E2EE34F8281829F483B6B1A1A742A8AEED
          446F6523E202BAE0A274434646A6D09227EC2D2FAE5F094013A5B9FB72BE494E
          7EF7EDAB8F649C2DC097090BF5868F8215206454077CF1F13DA1973CAFD77463
          50DB8AD43966180D7D888B4F148ACCC5C5656C5F7060222AEA29017EA0F5FDE8
          37B9DFAE487C47DD32E2C93CE69C21F352C07D9A0CB4FBC1CAE77DC084C14E3D
          DEB08E20D47D001A6D15E21257C2CFD707F57575F0F1F1814AA512BC9EB8CDBF
          1680B79898982D5BB76EFDCADB430977AF3731C428310829792F8298DAAC0B67
          821BA7C7485F1B860D46CC0D9987C6C6466A5872AC484A466B73B3D02BC2D5E1
          2F85FF793ACACACAEE4645454D0D909F9FBF76E7AF769EABBB5F8F274F5A858D
          48C6CA84FCD9ED3658AC16A11F4C9F3113111111427BDDB56B171E3E7C880DD9
          D9C8C85C85BE9E2EEA0F7D089B3F5F683EE3EDB5007BF6ECD970F0E0C1B37C2E
          474646D0DDDD0DBD5E2F5436BFD8B469D3E0EBEB2B3C52BCF1F7525871E4C811
          58690F88895D8675591B41BD134F5A5B113C470537378550177C0A08E00E01AC
          9812202727272B2F3FFF8C8CC4F890F18535F1917A5EE9CFBFE7176E6868C0E1
          C387A93D0F4145A2D99B37C3EF0D5F3C686A820F01F3B5C147B1ACBCBC744964
          64C22B01280D679E878E17793EC67736479F2D2D2D387AF428FAFBFBE1E1E181
          F59492F0F070346934B011B46A6E08BEBF7DE74EFACA641EC0FC4A003EB7FCF7
          BC7753094EFC8E379D4E8763C78E61707050B84E79370DF109F1784CC55953A7
          E9FCACB0F0BDD2DB37EF8E8FE89400530939FAE4D7E037211E58ABD1E2E4A993
          C2FF068301514B96203D3D03BAB6D69EF3E78BD7FE2E2FFFBBFF39005FA4463A
          07F452F5B73DA147746418CF3A9FA2B393BA656F2F66CE9A85D5ABD7C06EB59A
          AE5CBDB263DBB66D5FBD1A808E4FF8A1D05E177EFE7EFE14C417A04ED781FB75
          F7A156AB313F2C14050505C2EFFA8101B8B82A9096910EA542819B376F7EBC6E
          DDBA4F7E34C054E1E7BDEFEBEB4773F3232AC647484D4D417BBBCE7EAEF8EFEB
          1F3435BBA4A4A69CE8EBEB63F879C9C9C9F0F7F7475555D5B1E2E2E28F5E02D8
          BB77EF86BCBCBCB33F06C0462F25FC29A8BBBB075AAD56D80F9C5DE4C3455F7E
          99FDC5174525FC3CEAAEAB929292CE506F717AF6EC19962F5FCE1F529BF6EFDF
          9FF012406E6EEED8634835C04C107D95F105D8450BEB3A9EA27FA0B7E3CCA9BF
          AE3F7DFA6FB7C6CFD9B469536C5A5ADAD7D4473C6B6B6B9FF5F4F42414151569
          5F02D8B163C7FA03070E14D24B84C32DCD110C7FB7D56AA313D2A8A8BEA1B1F1
          4F877EFF8B7BA5655A47F7EFDEBD7B8152A9FCA4A4A4E4E39A9A9AEA4935E0E5
          E5356FC1820521141E0B1FDA893B9AA31759DA7B68D01F895472FDDB7FD4D29C
          E6D7866CBC533FF5EBF97F0103FE78080A284C480000000049454E44AE426082}
      end>
    Left = 432
    Top = 8
    Bitmap = {}
  end
  object qrySomaTotal: TpFIBQuery
    Transaction = DM.transPricipal
    Database = DM.Conexao
    SQL.Strings = (
      '')
    Left = 496
    Top = 8
  end
  object ActionList1: TActionList
    Left = 312
    Top = 8
    object impInventarioGeral: TAction
      Category = 'Imprimir'
      Caption = 'Invent'#225'rio de Estoque'
      Hint = 'Imprimir invent'#225'rio geral do estoque'
      ImageIndex = 20
      OnExecute = impInventarioGeralExecute
    end
    object impEtiqPrateleira: TAction
      Category = 'Imprimir'
      Caption = 'Etiqueta de Prateleira'
      Hint = 'Imprimir etiquetas de prateleira para itens'
      OnExecute = impEtiqPrateleiraExecute
    end
    object impEtiq3Colunas: TAction
      Category = 'Imprimir'
      Caption = 'Etiqueta comum'
      Hint = 'Imprimir etiquetas normal, 3 colunas'
      OnExecute = impEtiq3ColunasExecute
    end
    object impTabPrecos: TAction
      Category = 'Imprimir'
      Caption = 'Tabela de Pre'#231'os'
      Hint = 'Imprimir Tabela de Pre'#231'os por item'
      OnExecute = impTabPrecosExecute
    end
    object impRazaoProduto: TAction
      Category = 'Imprimir'
      Caption = 'Raz'#227'o do Produto'
      Hint = 'Imprime raz'#227'o do produto'
      OnExecute = impRazaoProdutoExecute
    end
    object impRelFaltas: TAction
      Category = 'Imprimir'
      Caption = 'Relat'#243'rio de Faltas'
      Hint = 'Imprimir relat'#243'rio de faltas do estoque'
      OnExecute = impRelFaltasExecute
    end
    object impFaturamentoCliente: TAction
      Category = 'Imprimir'
      Caption = 'Faturamento por Clente'
      OnExecute = impFaturamentoClienteExecute
    end
  end
  object ppmImprimir: TPopupMenu
    Images = PngImageList2
    Left = 360
    Top = 8
    object ImprimirInventarioGeral: TMenuItem
      Action = impInventarioGeral
      ImageIndex = 0
    end
    object EtiquetadePrateleira1: TMenuItem
      Action = impEtiqPrateleira
      ImageIndex = 0
    end
    object Etiquetacomum1: TMenuItem
      Action = impEtiq3Colunas
      ImageIndex = 0
    end
    object abeladePreos1: TMenuItem
      Action = impTabPrecos
      ImageIndex = 0
    end
    object RazodoProduto1: TMenuItem
      Action = impRazaoProduto
      ImageIndex = 0
    end
    object RelatriodeFaltas1: TMenuItem
      Action = impRelFaltas
      ImageIndex = 0
    end
    object FaturamentoporCliente1: TMenuItem
      Action = impFaturamentoCliente
      ImageIndex = 0
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object RelatrioSinttico1: TMenuItem
      Caption = 'Relat'#243'rio Sint'#233'tico'
      object AgruparporMovimentao1: TMenuItem
        Caption = 'Agrupar por Movimenta'#231#227'o'
        OnClick = AgruparporMovimentao1Click
      end
      object OrdenadoporFornecedor1: TMenuItem
        Caption = 'Agrupar por Fornecedor'
        OnClick = OrdenadoporFornecedor1Click
      end
      object OrdenadoPorPerodo1: TMenuItem
        Caption = 'Agrupar por Data'
        OnClick = OrdenadoPorPerodo1Click
      end
      object NoAgrupar1: TMenuItem
        Caption = 'N'#227'o Agrupar'
        OnClick = NoAgrupar1Click
      end
    end
    object RelatrioAnaltico1: TMenuItem
      Caption = 'Relat'#243'rio Anal'#237'tico'
      object AgruparporMovimentao2: TMenuItem
        Caption = 'Agrupar por Movimenta'#231#227'o'
        OnClick = AgruparporMovimentao2Click
      end
      object AgruparporFornecedor1: TMenuItem
        Caption = 'Agrupar por Fornecedor'
        OnClick = AgruparporFornecedor1Click
      end
      object AgruparporData1: TMenuItem
        Caption = 'Agrupar por Data'
        OnClick = AgruparporData1Click
      end
      object NoAgrupar2: TMenuItem
        Caption = 'N'#227'o Agrupar'
        OnClick = NoAgrupar2Click
      end
    end
    object EntradadeItensnoPrerodo1: TMenuItem
      Caption = 'Entradas de Itens no Periodo'
      object PorFornecedor1: TMenuItem
        Caption = 'Por Fornecedor'
        OnClick = PorFornecedor1Click
      end
      object PorMovimentao1: TMenuItem
        Caption = 'Por Movimenta'#231#227'o'
        object MovimentaoInterna1: TMenuItem
          Caption = 'Movimenta'#231#227'o Interna'
          OnClick = MovimentaoInterna1Click
        end
        object Compras1: TMenuItem
          Caption = 'Compras'
          OnClick = Compras1Click
        end
      end
      object odos1: TMenuItem
        Caption = 'Todos'
        OnClick = odos1Click
      end
    end
    object ExtratodasMovimentaes1: TMenuItem
      Caption = 'Movimenta'#231#245'es de Estoques'
      object PorPerodo1: TMenuItem
        Caption = 'Por Per'#237'odo'
        object Sinttico1: TMenuItem
          Caption = 'Sint'#233'tico'
          OnClick = Sinttico1Click
        end
        object Analtico1: TMenuItem
          Caption = 'Anal'#237'tico'
          OnClick = Analtico1Click
        end
      end
      object ItensnoPerodo1: TMenuItem
        Caption = 'Itens no Per'#237'odo'
        OnClick = ItensnoPerodo1Click
      end
    end
  end
  object frxItens: TfrxDBDataset
    UserName = 'frxItens'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'DT_INC=DT_INC'
      'DT_ALT=DT_ALT'
      'IDPRODUTO=IDPRODUTO'
      'STATUS=STATUS'
      'NOME=NOME'
      'REFERENCIA=REFERENCIA'
      'IDTAMANHO=IDTAMANHO'
      'IDCOR=IDCOR'
      'PESO=PESO'
      'PREC_CUSTO=PREC_CUSTO'
      'PREC_VENDA=PREC_VENDA'
      'ENVIADO_WEB=ENVIADO_WEB'
      'PREC_TAB1=PREC_TAB1'
      'PREC_TAB2=PREC_TAB2'
      'PREC_TAB3=PREC_TAB3'
      'PREC_TAB4=PREC_TAB4'
      'PREC_TAB5=PREC_TAB5'
      'PREC_TAB6=PREC_TAB6'
      'COD_FABRICA=COD_FABRICA'
      'CUSTO_TOTAL=CUSTO_TOTAL'
      'VENDA_TOTAL=VENDA_TOTAL'
      'TAMANHO=TAMANHO'
      'ALTURA_I=ALTURA_I'
      'LARGURA_I=LARGURA_I'
      'PROFUNDIDADE_I=PROFUNDIDADE_I'
      'ALTURA_E=ALTURA_E'
      'LARGURA_E=LARGURA_E'
      'PROFUNDIDADE_E=PROFUNDIDADE_E'
      'COR=COR'
      'ESTOQUE=ESTOQUE'
      'ESTOQUE_MINIMO=ESTOQUE_MINIMO'
      'IDFILIAL=IDFILIAL'
      'FILIAL=FILIAL')
    DataSource = dsItens
    BCDToCurrency = False
    Left = 856
    Top = 64
  end
  object ACBrETQ: TACBrETQ
    Porta = 'LPT1'
    Ativo = False
    Left = 200
  end
  object fdsTabPreco: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    *'
      'FROM'
      '    TABELA_PRECO ')
    Transaction = DM.transPricipal
    Database = DM.Conexao
    Left = 744
    Top = 192
    object fdsTabPrecoID: TFIBBCDField
      FieldName = 'ID'
      Size = 0
    end
    object fdsTabPrecoDESCRICAO1: TFIBStringField
      FieldName = 'DESCRICAO1'
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsTabPrecoDESCRICAO2: TFIBStringField
      FieldName = 'DESCRICAO2'
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsTabPrecoDESCRICAO3: TFIBStringField
      FieldName = 'DESCRICAO3'
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsTabPrecoDESCRICAO4: TFIBStringField
      FieldName = 'DESCRICAO4'
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsTabPrecoDESCRICAO5: TFIBStringField
      FieldName = 'DESCRICAO5'
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsTabPrecoDESCRICAO6: TFIBStringField
      FieldName = 'DESCRICAO6'
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsTabPrecoPDV_DES1: TFIBStringField
      FieldName = 'PDV_DES1'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsTabPrecoPDV_DES2: TFIBStringField
      FieldName = 'PDV_DES2'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsTabPrecoPDV_DES3: TFIBStringField
      FieldName = 'PDV_DES3'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsTabPrecoPDV_DES4: TFIBStringField
      FieldName = 'PDV_DES4'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsTabPrecoPDV_DES5: TFIBStringField
      FieldName = 'PDV_DES5'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsTabPrecoPDV_DES6: TFIBStringField
      FieldName = 'PDV_DES6'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsTabPrecoPORCENTAGEM_AJUSTE2: TFIBBCDField
      FieldName = 'PORCENTAGEM_AJUSTE2'
      Size = 8
    end
    object fdsTabPrecoPORCENTAGEM_AJUSTE3: TFIBBCDField
      FieldName = 'PORCENTAGEM_AJUSTE3'
      Size = 8
    end
    object fdsTabPrecoPORCENTAGEM_AJUSTE4: TFIBBCDField
      FieldName = 'PORCENTAGEM_AJUSTE4'
      Size = 8
    end
    object fdsTabPrecoPORCENTAGEM_AJUSTE5: TFIBBCDField
      FieldName = 'PORCENTAGEM_AJUSTE5'
      Size = 8
    end
    object fdsTabPrecoPORCENTAGEM_AJUSTE6: TFIBBCDField
      FieldName = 'PORCENTAGEM_AJUSTE6'
      Size = 8
    end
  end
  object frxTabPreco: TfrxDBDataset
    UserName = 'frxTabPreco'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TAB1=TAB1'
      'TAB2=TAB2'
      'TAB3=TAB3'
      'TAB4=TAB4'
      'TAB5=TAB5'
      'TAB6=TAB6')
    DataSet = cdsTabPreco
    BCDToCurrency = False
    Left = 920
    Top = 40
  end
  object cdsTabPreco: TpFIBClientDataSet
    Aggregates = <>
    Params = <>
    Left = 888
    Top = 48
    object cdsTabPrecoTAB1: TStringField
      FieldName = 'TAB1'
    end
    object cdsTabPrecoTAB2: TStringField
      FieldName = 'TAB2'
    end
    object cdsTabPrecoTAB3: TStringField
      FieldName = 'TAB3'
    end
    object cdsTabPrecoTAB4: TStringField
      FieldName = 'TAB4'
    end
    object cdsTabPrecoTAB5: TStringField
      FieldName = 'TAB5'
    end
    object cdsTabPrecoTAB6: TStringField
      FieldName = 'TAB6'
    end
  end
  object fdsRazaoProdDia: TpFIBDataSet
    SelectSQL.Strings = (
      
        'select mi.dt_inc, sum(qtn) as qtn, mi.tipo from movimentacao_ite' +
        'm mi'
      'group by dt_inc, mi.tipo'
      'order by dt_inc')
    Transaction = DM.transPricipal
    Database = DM.Conexao
    DefaultFormats.DateTimeDisplayFormat = 'dd/mm/yyyy hh:mm:ss'
    DefaultFormats.DisplayFormatDate = 'dd/mm/yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm:ss'
    Left = 80
    Top = 8
    oFetchAll = True
    object fdsRazaoProdDiaDT_INC: TFIBDateField
      DefaultExpression = 'CURRENT_DATE'
      FieldName = 'DT_INC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object fdsRazaoProdDiaQTN: TFIBBCDField
      DefaultExpression = '0'
      FieldName = 'QTN'
      DisplayFormat = '#,##0.000'
      EditFormat = '0.000'
      Size = 3
    end
    object fdsRazaoProdDiaTIPO: TFIBStringField
      FieldName = 'TIPO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object fdsRazaoProdMes: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT '
      
        '     CAST(EXTRACT (MONTH FROM mi.dt_inc) || '#39'/'#39' || '#39'01'#39' || '#39'/'#39' |' +
        '| EXTRACT (YEAR FROM mi.dt_inc) as date) AS DT, '
      '     sum(mi.qtn) QTN, '
      '     mi.tipo'
      'FROM '
      '     movimentacao_item mi '
      'group by dt, mi.tipo'
      'order by dt')
    Transaction = DM.transPricipal
    Database = DM.Conexao
    DefaultFormats.DateTimeDisplayFormat = 'dd/mm/yyyy hh:mm:ss'
    DefaultFormats.DisplayFormatDate = 'dd/mm/yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm:ss'
    Left = 176
    Top = 8
    oFetchAll = True
    object fdsRazaoProdMesDT: TFIBDateField
      FieldName = 'DT'
    end
    object fdsRazaoProdMesTIPO: TFIBStringField
      FieldName = 'TIPO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsRazaoProdMesQTN: TFIBBCDField
      DefaultExpression = '0'
      FieldName = 'QTN'
      DisplayFormat = '#,##0.000'
      EditFormat = '0.000'
      Size = 3
    end
  end
  object cdsRazaoProduto: TpFIBClientDataSet
    Aggregates = <>
    Params = <>
    Left = 80
    Top = 56
    object cdsRazaoProdutoDT_INC: TDateField
      FieldName = 'DT_INC'
    end
    object cdsRazaoProdutoTOTAL_ENTRADA: TFloatField
      DefaultExpression = '0,000'
      FieldName = 'TOTAL_ENTRADA'
      DisplayFormat = '#,##0.000'
      EditFormat = '0,000'
    end
    object cdsRazaoProdutoTOTAL_SAIDA: TFloatField
      DefaultExpression = '0,00'
      FieldName = 'TOTAL_SAIDA'
      DisplayFormat = '#,##0.000'
      EditFormat = '0,000'
    end
    object cdsRazaoProdutoMES_MOV: TStringField
      FieldName = 'MES_MOV'
    end
  end
  object dsRazaoProduto: TDataSource
    AutoEdit = False
    DataSet = cdsRazaoProduto
    Left = 168
    Top = 56
  end
  object frxRazaoProduto: TfrxDBDataset
    UserName = 'frxRazaoProduto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'DT_INC=DT_INC'
      'TOTAL_ENTRADA=TOTAL_ENTRADA'
      'TOTAL_SAIDA=TOTAL_SAIDA'
      'MES_MOV=MES_MOV')
    DataSource = dsRazaoProduto
    BCDToCurrency = False
    Left = 992
    Top = 64
  end
  object fdsFaltas: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE PRODUTO_ITEM_FALTA'
      'SET '
      '    DT_INC = :DT_INC,'
      '    ENVIADO_WEB = :ENVIADO_WEB'
      'WHERE'
      '    IDITEM = :OLD_IDITEM'
      '    and IDFILIAL = :OLD_IDFILIAL'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    PRODUTO_ITEM_FALTA'
      'WHERE'
      '        IDITEM = :OLD_IDITEM'
      '    and IDFILIAL = :OLD_IDFILIAL'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO PRODUTO_ITEM_FALTA('
      '    IDITEM,'
      '    IDFILIAL,'
      '    DT_INC,'
      '    ENVIADO_WEB'
      ')'
      'VALUES('
      '    :IDITEM,'
      '    :IDFILIAL,'
      '    :DT_INC,'
      '    :ENVIADO_WEB'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    PIF.*,'
      '    PI.NOME'
      'FROM'
      '    PRODUTO_ITEM_FALTA PIF, PRODUTO_ITEM PI'
      'WHERE( '
      '    PI.ID = PIF.IDITEM'
      '     ) and (     PIF.IDITEM = :OLD_IDITEM'
      '    and PIF.IDFILIAL = :OLD_IDFILIAL'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    PIF.*,'
      '    PI.COD_FABRICA,'
      '    PI.NOME'
      'FROM'
      '    PRODUTO_ITEM_FALTA PIF, PRODUTO_ITEM PI'
      'WHERE'
      '    PI.ID = PIF.IDITEM')
    Transaction = DM.transPricipal
    Database = DM.Conexao
    Left = 784
    Top = 168
    object fdsFaltasIDITEM: TFIBBCDField
      FieldName = 'IDITEM'
      Size = 0
    end
    object fdsFaltasIDFILIAL: TFIBBCDField
      FieldName = 'IDFILIAL'
      Size = 0
    end
    object fdsFaltasDT_INC: TFIBDateField
      FieldName = 'DT_INC'
    end
    object fdsFaltasENVIADO_WEB: TFIBStringField
      FieldName = 'ENVIADO_WEB'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsFaltasNOME: TFIBStringField
      FieldName = 'NOME'
      Size = 250
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsFaltasCOD_FABRICA: TFIBStringField
      FieldName = 'COD_FABRICA'
      Size = 13
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object dsFaltas: TDataSource
    DataSet = fdsFaltas
    Left = 785
    Top = 223
  end
  object PngImageList2: TPngImageList
    Height = 20
    Width = 20
    PngImages = <
      item
        Background = clWindow
        Name = 'Imp_Pedido_20x20'
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000014000000140803000000BA57ED
          3F0000000373424954080808DBE14FE000000258504C5445534D4BDFE1E3ABCC
          DF6BAFD48481814A88AEF9F5F3086BA5B7B6B6D3D2D1E2E0DF1B6186CCCCCCA6
          A5A42188C198C5DDE4ECF0726F6E94B3C47BA2B959869EC2CCD366ACD3C5C4C4
          DAD9D92B5D764F74871882BDADAEAF5C93B1CFDCE27D96A343A3D792B6CBF0E9
          E6E2E3E4D2D9DDBAD9EA8EB2C7BBC0C3EEF3F5CDD3D77698AC636467FBFBFBC0
          C8CD369BD3B1D3E62277A4959392647781E6E1DFE5D9D38BB5CDE0D3CD5596BB
          F1EBE9E0DFDFD3D8DBD1D1D1137BB6A4C6D8D7E5EDFDF7F3E9E3DFAFB9BF96BD
          D385AAC0E9E9E98F8C8BC4C2C1CBD8DED2DEE5B6CAD6F8F2EFC5D1D75A9ABEC8
          C7C7E0DBD9E4E7E9D8D7D6ACA9A7F0E5DE0E73AEEDEDEDEFEFEF5291B62486BC
          D9DCDECDD9E0B8D7E7FFFFFFDBDBDB97BACFD5D5D5809199EBDFD8D0C5BFFCF9
          F8EBEAE9BFB8B5F6F6F6DBE6EC91B9D0E3E3E4CAD4DAA9CBDEADA29CF7EFEBD3
          D9DBCFCFCFF2F2F28FB7CEE6E5E4EDE7E5567284C0D9E7D4D3D39EC8DFA9CEE2
          D7D6D6D1D4D5B9C3C9F5F1EEBBBABA1D86C1589ABEE1E1E19DBED1D7DBDD81A4
          B9CAD1D5DDDDDD4F8DB1FFFEFAF5E9E3C7C7C8D8D3D1F7F8F9DDD7D5E5E5E5FF
          F7F5E1E5E7E3DEDCD5E5EEFFF9F6EBE9E9E3E3E3ACB0B2C5CACDE9E4E2B2B8BC
          F3EFECB8D8E9FFFFFFCFD5D7D7D5D5D1DEE587ACC2E3DDDBDDE8EE93BBD3D5D7
          D9ADCDDFDDDCDB9BC6DCC5CCD18FB4C9CDD5D9B3D5E7F3EDE9FFF7F1C7C3C35C
          9BBDFDF9F9AACEE1BBC3C7F9F8F7FDFDFCF9F7F6D1CFCFD7D5D7E5E7E9DBD9D9
          D3D3D342A3D992B7CDEFF3F5369DD3E1DFDFD9E5EC8F8D8BADA9A7B9D7E7EBEB
          EBABCBDFD9DBDDE1E5E9B9D9E9ADCDE10610B457000000097048597300000B12
          00000B1201D2DD7EFC00000016744558744372656174696F6E2054696D650030
          342F31382F3137953966CE0000001C74455874536F6674776172650041646F62
          652046697265776F726B7320435336E8BCB28C000001424944415478DA63AC67
          985274F1A13B03C3FCEF6CAEB7DC184080B19EA18DC9E7E5FD24865B376FF325
          CC4F870A9E8A023166394FE2158E38A50D15943CCC60C6707B9BC1235DAE9F6F
          BF5CCA000B1E7DC1206C2A55AC2A6BBFC273C755C13CA8E013F98FFA4A27DFE7
          4CCA9DFBE0733544302F507B42D56BB747A7528FDFD67CE307152CCBD8F56B6F
          4C2CC3DBEF3F77ED29826A6F6558FC4157EC34DF15A6B2981266A8A025D7D30F
          7B1D195419CE554F63B0441254D9D3725BB93DBAC5D1085970D1AC353B991992
          E615230B5E5496390CF4CD458420CF49951BF16FFE315DBE0B1704F988E1C54C
          86050C550F98618225FD401F3D07EAF562B83C1D22F8E4E42B098B4B060F18AE
          316846336415C37C24C623199CCF60CAC0F020E99220547B3BC32286F77A2A73
          63F69F4AF8061164E56760F8C8C0302581E12FD0D89F404100639699010C9CA9
          B80000000049454E44AE426082}
      end>
    Left = 913
    Top = 186
    Bitmap = {}
  end
  object frxFaltas: TfrxDBDataset
    UserName = 'frxFaltas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IDITEM=IDITEM'
      'IDFILIAL=IDFILIAL'
      'DT_INC=DT_INC'
      'ENVIADO_WEB=ENVIADO_WEB'
      'NOME=NOME'
      'COD_FABRICA=COD_FABRICA')
    DataSource = dsFaltas
    BCDToCurrency = False
    Left = 849
    Top = 167
  end
  object fdsFaturamentoCliente: TpFIBDataSet
    UpdateSQL.Strings = (
      ''
      '    ')
    DeleteSQL.Strings = (
      '  ')
    RefreshSQL.Strings = (
      '')
    SelectSQL.Strings = (
      'SELECT'
      ' V.id,'
      ' V.idcliente,'
      ' V.dt_inc,'
      ' vi.idprod_item,'
      ' Sum(vi.qtn)as QTN_TOT,'
      ' c.nome,'
      ' c.id as CODIGO_CLIENTE'
      'FROM '
      ' venda V, venda_item vi,cliente c'
      'WHERE'
      ' vi.idprod_item = :IDITEM'
      'AND'
      'C.ID = V.idcliente'
      'AND'
      ' v.id = vi.idvenda'
      'AND'
      ' (v.dt_inc BETWEEN :DT_INI AND :DT_FIM)'
      ' GROUP BY c.nome,c.id,v.id,v.dt_inc,v.idcliente,vi.idprod_item')
    Transaction = DM.transPricipal
    Database = DM.Conexao
    Left = 448
    Top = 216
    object fdsFaturamentoClienteIDCLIENTE: TFIBBCDField
      FieldName = 'IDCLIENTE'
      Size = 0
    end
    object fdsFaturamentoClienteDT_INC: TFIBDateField
      FieldName = 'DT_INC'
    end
    object fdsFaturamentoClienteIDPROD_ITEM: TFIBBCDField
      FieldName = 'IDPROD_ITEM'
      Size = 0
    end
    object fdsFaturamentoClienteQTN_TOT: TFIBBCDField
      DefaultExpression = '0,###'
      FieldName = 'QTN_TOT'
      DisplayFormat = '#,###0.###'
      EditFormat = '0.###'
      Size = 8
    end
    object fdsFaturamentoClienteNOME: TFIBStringField
      FieldName = 'NOME'
      Size = 250
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsFaturamentoClienteCODIGO_CLIENTE: TFIBBCDField
      FieldName = 'CODIGO_CLIENTE'
      Size = 0
    end
    object fdsFaturamentoClienteID: TFIBBCDField
      FieldName = 'ID'
      Size = 0
    end
  end
  object frxFaturamentoCliente: TfrxDBDataset
    UserName = 'frxfdsFaturamentoCliente'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IDCLIENTE=IDCLIENTE'
      'DT_INC=DT_INC'
      'IDPROD_ITEM=IDPROD_ITEM'
      'QTN_TOT=QTN_TOT'
      'NOME=NOME'
      'CODIGO_CLIENTE=CODIGO_CLIENTE'
      'ID=ID')
    DataSet = fdsFaturamentoCliente
    BCDToCurrency = False
    Left = 537
    Top = 234
  end
  object fdsRelSintetico: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT RS.*,'
      
        '       CASE TIPO_MOV WHEN '#39'C'#39' THEN '#39'COMPRAS'#39' WHEN '#39'MI'#39' THEN '#39'MOV' +
        'IMENTA'#199#195'O INTERNA'#39' END TP_MOV,'
      '       F.NOME '
      'FROM V_REL_ESTOQUE_SINTETICO RS, FORNECEDOR F '
      'WHERE '
      '  F.ID = RS.IDFORNECEDOR '
      'AND '
      '  RS.DT_INC BETWEEN :DT_INI AND :DT_FIM'
      'order by RS.TIPO_MOV,RS.DT_INC'
      '')
    AfterScroll = fdsRelSinteticoAfterScroll
    Transaction = DM.transPricipal
    Database = DM.Conexao
    Left = 112
    Top = 208
    object fdsRelSinteticoID: TFIBBCDField
      FieldName = 'ID'
      Size = 0
    end
    object fdsRelSinteticoDT_INC: TFIBDateField
      FieldName = 'DT_INC'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object fdsRelSinteticoTIPO: TFIBStringField
      FieldName = 'TIPO'
      Size = 2
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsRelSinteticoPREFIXO: TFIBStringField
      FieldName = 'PREFIXO'
      Size = 3
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsRelSinteticoMOVIMENTO: TFIBStringField
      FieldName = 'MOVIMENTO'
      Size = 55
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsRelSinteticoTIPO_MOV: TFIBStringField
      FieldName = 'TIPO_MOV'
      Size = 2
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsRelSinteticoNOTA_NUM: TFIBStringField
      FieldName = 'NOTA_NUM'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsRelSinteticoCHAVE_NOTA: TFIBStringField
      FieldName = 'CHAVE_NOTA'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsRelSinteticoVLR_TOTAL: TFIBBCDField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
    end
    object fdsRelSinteticoIDFORNECEDOR: TFIBBCDField
      FieldName = 'IDFORNECEDOR'
      Size = 0
    end
    object fdsRelSinteticoNOME: TFIBStringField
      FieldName = 'NOME'
      Size = 250
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsRelSinteticoTP_MOV: TFIBStringField
      FieldName = 'TP_MOV'
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object fdsRelAnalitico: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT * '
      'FROM '
      '  V_REL_ESTOQUE_SINTETICO_ITENS '
      'WHERE '
      '  IDMOV = :IDMOV '
      'AND '
      '  TIPO_MOV = :TIPO_MOV')
    Transaction = DM.transPricipal
    Database = DM.Conexao
    Left = 192
    Top = 384
    object fdsRelAnaliticoIDMOV: TFIBBCDField
      FieldName = 'IDMOV'
      Size = 0
    end
    object fdsRelAnaliticoQTN: TFIBBCDField
      FieldName = 'QTN'
      Size = 3
    end
    object fdsRelAnaliticoPREC_CUSTO: TFIBBCDField
      FieldName = 'PREC_CUSTO'
      Size = 8
    end
    object fdsRelAnaliticoPREC_VENDA: TFIBBCDField
      FieldName = 'PREC_VENDA'
      Size = 8
    end
    object fdsRelAnaliticoNOME: TFIBStringField
      FieldName = 'NOME'
      Size = 250
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsRelAnaliticoTIPO_MOV: TFIBStringField
      FieldName = 'TIPO_MOV'
      Size = 2
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsRelAnaliticoIDPROD_ITEM: TFIBBCDField
      FieldName = 'IDPROD_ITEM'
      Size = 0
    end
    object fdsRelAnaliticoCOD_FABRICA: TFIBStringField
      FieldName = 'COD_FABRICA'
      Size = 13
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object frxRelSintetico: TfrxDBDataset
    UserName = 'frxRelSintetico'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'DT_INC=DT_INC'
      'TIPO=TIPO'
      'PREFIXO=PREFIXO'
      'MOVIMENTO=MOVIMENTO'
      'TIPO_MOV=TIPO_MOV'
      'NOTA_NUM=NOTA_NUM'
      'CHAVE_NOTA=CHAVE_NOTA'
      'VLR_TOTAL=VLR_TOTAL'
      'IDFORNECEDOR=IDFORNECEDOR'
      'NOME=NOME'
      'TP_MOV=TP_MOV')
    DataSet = fdsRelSintetico
    BCDToCurrency = False
    Left = 115
    Top = 168
  end
  object frxRelAnalitico: TfrxDBDataset
    UserName = 'frxRelAnalitico'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IDMOV=IDMOV'
      'QTN=QTN'
      'PREC_CUSTO=PREC_CUSTO'
      'PREC_VENDA=PREC_VENDA'
      'NOME=NOME'
      'TIPO_MOV=TIPO_MOV'
      'IDPROD_ITEM=IDPROD_ITEM'
      'COD_FABRICA=COD_FABRICA')
    DataSet = fdsRelAnalitico
    BCDToCurrency = False
    Left = 187
    Top = 424
  end
  object fdsEntradaItenPeriodo: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    EI.IDPROD_ITEM,'
      '    EI.NOME,'
      '    EI.COD_FABRICA,'
      '    SUM(EI.QTN)QUANTIDADE,'
      '    SUM(EI.PREC_VENDA)PRECO_VENDA,'
      '    SUM(EI.PREC_CUSTO)PRECO_CUSTO,'
      '   (SUM(EI.QTN)* SUM(EI.PREC_CUSTO)) CUSTO_TOTAL,'
      '    Max(F.NOME) FORNECEDOR'
      'FROM '
      '  V_REL_ESTOQUE_SINTETICO_ITENS EI,FORNECEDOR F '
      'WHERE '
      '   EI.TIPO = '#39'E'#39
      'AND'
      ' F.ID= EI.IDFORNECEDOR'
      'AND'
      '   EI.DT_INC BETWEEN :DT_INI AND :DT_FIM'
      ''
      'GROUP BY EI.IDPROD_ITEM,EI.NOME,EI.COD_FABRICA')
    Transaction = DM.transPricipal
    Database = DM.Conexao
    Left = 32
    Top = 216
    object fdsEntradaItenPeriodoIDPROD_ITEM: TFIBBCDField
      FieldName = 'IDPROD_ITEM'
      Size = 0
    end
    object fdsEntradaItenPeriodoNOME: TFIBStringField
      FieldName = 'NOME'
      Size = 250
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsEntradaItenPeriodoCOD_FABRICA: TFIBStringField
      FieldName = 'COD_FABRICA'
      Size = 13
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsEntradaItenPeriodoQUANTIDADE: TFIBBCDField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '#,##0.000'
      EditFormat = '0.000'
      Size = 3
    end
    object fdsEntradaItenPeriodoPRECO_VENDA: TFIBBCDField
      FieldName = 'PRECO_VENDA'
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
    end
    object fdsEntradaItenPeriodoPRECO_CUSTO: TFIBBCDField
      FieldName = 'PRECO_CUSTO'
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
    end
    object fdsEntradaItenPeriodoCUSTO_TOTAL: TFIBFloatField
      FieldName = 'CUSTO_TOTAL'
      DisplayFormat = '#,##0.0000000'
      EditFormat = '0.0000000'
    end
    object fdsEntradaItenPeriodoFORNECEDOR: TFIBStringField
      FieldName = 'FORNECEDOR'
      Size = 250
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object frxEntradaItenPeriodo: TfrxDBDataset
    UserName = 'frxEntradaItenPeriodo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IDPROD_ITEM=IDPROD_ITEM'
      'NOME=NOME'
      'COD_FABRICA=COD_FABRICA'
      'QUANTIDADE=QUANTIDADE'
      'PRECO_VENDA=PRECO_VENDA'
      'PRECO_CUSTO=PRECO_CUSTO'
      'FORNECEDOR=FORNECEDOR'
      'CUSTO_TOTAL=CUSTO_TOTAL')
    DataSet = fdsEntradaItenPeriodo
    BCDToCurrency = False
    Left = 34
    Top = 168
  end
  object frxItensPeriodoMov: TfrxDBDataset
    UserName = 'frxItensPeriodoMov'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IDPROD_ITEM=IDPROD_ITEM'
      'NOME=NOME'
      'COD_FABRICA=COD_FABRICA'
      'QUANTIDADE=QUANTIDADE'
      'PRECO_VENDA=PRECO_VENDA'
      'PRECO_CUSTO=PRECO_CUSTO'
      'CUSTO_TOTAL=CUSTO_TOTAL'
      'FORNECEDOR=FORNECEDOR'
      'MOVIMENTACAO=MOVIMENTACAO')
    DataSet = fdsItensPeriodoMov
    BCDToCurrency = False
    Left = 297
    Top = 194
  end
  object fdsItensPeriodoMov: TpFIBDataSet
    DeleteSQL.Strings = (
      '  ')
    RefreshSQL.Strings = (
      '')
    SelectSQL.Strings = (
      'SELECT'
      '    EI.IDPROD_ITEM,'
      '    EI.NOME,'
      '    EI.COD_FABRICA,'
      '    SUM(EI.QTN)QUANTIDADE,'
      '    SUM(EI.PREC_VENDA)PRECO_VENDA,'
      '    SUM(EI.PREC_CUSTO)PRECO_CUSTO,'
      '   (SUM(EI.QTN)* SUM(EI.PREC_CUSTO)) CUSTO_TOTAL,'
      '    MAX(F.NOME) FORNECEDOR,'
      '    EI.MOVIMENTACAO'
      'FROM '
      '  V_REL_ESTOQUE_MOVI_ITENS EI,FORNECEDOR F'
      'WHERE '
      ' F.ID= EI.IDFORNECEDOR'
      'AND'
      '   EI.DT_INC BETWEEN :DT_INI AND :DT_FIM'
      ''
      'GROUP BY EI.MOVIMENTACAO,EI.IDPROD_ITEM,EI.NOME,EI.COD_FABRICA'
      'order by EI.MOVIMENTACAO')
    Transaction = DM.transPricipal
    Database = DM.Conexao
    Left = 297
    Top = 242
    object fdsItensPeriodoMovIDPROD_ITEM: TFIBBCDField
      FieldName = 'IDPROD_ITEM'
      Size = 0
    end
    object fdsItensPeriodoMovNOME: TFIBStringField
      FieldName = 'NOME'
      Size = 250
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsItensPeriodoMovCOD_FABRICA: TFIBStringField
      FieldName = 'COD_FABRICA'
      Size = 13
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsItensPeriodoMovQUANTIDADE: TFIBBCDField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '#,##0.000'
      EditFormat = '0.000'
      Size = 3
    end
    object fdsItensPeriodoMovPRECO_VENDA: TFIBBCDField
      FieldName = 'PRECO_VENDA'
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
    end
    object fdsItensPeriodoMovPRECO_CUSTO: TFIBBCDField
      FieldName = 'PRECO_CUSTO'
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
    end
    object fdsItensPeriodoMovCUSTO_TOTAL: TFIBFloatField
      FieldName = 'CUSTO_TOTAL'
      DisplayFormat = '#,##0.0000000'
      EditFormat = '0.0000000'
    end
    object fdsItensPeriodoMovFORNECEDOR: TFIBStringField
      FieldName = 'FORNECEDOR'
      Size = 250
      Transliterate = False
      EmptyStrToNull = True
    end
    object fdsItensPeriodoMovMOVIMENTACAO: TFIBStringField
      FieldName = 'MOVIMENTACAO'
      Size = 55
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object cdsRelSintetico: TpFIBClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'dspRelSintetico'
    Left = 113
    Top = 287
    object cdsRelSinteticoVLR_TOTAL: TpFIBClientBCDField
      FieldName = 'VLR_TOTAL'
      Precision = 32
    end
    object cdsRelSinteticoVALOR_TOTAL: TAggregateField
      FieldName = 'VALOR_TOTAL'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(VLR_TOTAL)'
    end
  end
  object dspRelSintetico: TpFIBDataSetProvider
    DataSet = fdsRelSintetico
    Left = 113
    Top = 247
  end
  object frxTotaisSintetico: TfrxDBDataset
    UserName = 'frxTotaisSintetico'
    CloseDataSource = False
    FieldAliases.Strings = (
      'VLR_TOTAL=VLR_TOTAL'
      'VALOR_TOTAL=VALOR_TOTAL')
    DataSet = cdsRelSintetico
    BCDToCurrency = False
    Left = 112
    Top = 328
  end
  object dspEntradaPeriodo: TpFIBDataSetProvider
    DataSet = fdsEntradaItenPeriodo
    Left = 33
    Top = 255
  end
  object cdsEntradaPeriodo: TpFIBClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'dspEntradaPeriodo'
    Left = 33
    Top = 303
    object cdsEntradaPeriodoCUSTO_TOTAL: TFloatField
      FieldName = 'CUSTO_TOTAL'
    end
    object cdsEntradaPeriodoVALOR_TOTAL: TAggregateField
      FieldName = 'VALOR_TOTAL'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(CUSTO_TOTAL)'
    end
  end
  object frxTotEntradaPeriodo: TfrxDBDataset
    UserName = 'frxTotEntradaPeriodo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CUSTO_TOTAL=CUSTO_TOTAL'
      'VALOR_TOTAL=VALOR_TOTAL')
    DataSet = cdsEntradaPeriodo
    BCDToCurrency = False
    Left = 33
    Top = 343
  end
  object dspItensPeriodoMov: TpFIBDataSetProvider
    DataSet = fdsItensPeriodoMov
    Left = 297
    Top = 287
  end
  object cdsItensPeriodoMov: TpFIBClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'dspItensPeriodoMov'
    Left = 305
    Top = 327
    object cdsItensPeriodoMovCUSTO_TOTAL: TFloatField
      FieldName = 'CUSTO_TOTAL'
    end
    object cdsItensPeriodoMovVALOR_TOTAL: TAggregateField
      FieldName = 'VALOR_TOTAL'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(CUSTO_TOTAL)'
    end
  end
  object frxTotItensPeriodoMov: TfrxDBDataset
    UserName = 'frxTotItensPeriodoMov'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CUSTO_TOTAL=CUSTO_TOTAL'
      'VALOR_TOTAL=VALOR_TOTAL')
    DataSet = cdsItensPeriodoMov
    BCDToCurrency = False
    Left = 305
    Top = 367
  end
end
