object frmTroco: TfrmTroco
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'TROCO'
  ClientHeight = 508
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object RzLabel4: TRzLabel
    Left = 152
    Top = 11
    Width = 372
    Height = 33
    Caption = 'Obrigado, Volte Sempre!'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -29
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
    BlinkIntervalOff = 0
    BlinkIntervalOn = 0
    TextStyle = tsRaised
  end
  object RzBackground1: TRzBackground
    Left = 0
    Top = 67
    Width = 645
    Height = 441
    Active = True
    Align = alClient
    GradientColorStart = 4271645
    GradientColorStop = -1
    GradientDirection = gdDiagonalDown
    ImageStyle = isCenter
    ShowGradient = True
    ShowImage = False
    ShowTexture = False
    ExplicitLeft = -341
    ExplicitTop = -191
    ExplicitWidth = 986
    ExplicitHeight = 592
  end
  object RzLabel6: TRzLabel
    Left = 70
    Top = 96
    Width = 192
    Height = 52
    Caption = 'SubTotal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -43
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    BlinkIntervalOff = 0
    BlinkIntervalOn = 0
  end
  object lblDescAcre: TRzLabel
    Left = 58
    Top = 171
    Width = 204
    Height = 52
    Caption = 'Desconto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -43
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    BlinkIntervalOff = 0
    BlinkIntervalOn = 0
  end
  object RzLabel2: TRzLabel
    Left = 152
    Top = 243
    Width = 110
    Height = 52
    Caption = 'Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -43
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    BlinkIntervalOff = 0
    BlinkIntervalOn = 0
  end
  object RzLabel3: TRzLabel
    Left = 62
    Top = 315
    Width = 200
    Height = 52
    Caption = 'Recebido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -43
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    BlinkIntervalOff = 0
    BlinkIntervalOn = 0
  end
  object RzLabel5: TRzLabel
    Left = 140
    Top = 389
    Width = 122
    Height = 52
    Caption = 'Troco'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -43
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    BlinkIntervalOff = 0
    BlinkIntervalOn = 0
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 645
    Height = 67
    Align = alTop
    BorderOuter = fsFlatRounded
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object RzLabel1: TRzLabel
      Left = 152
      Top = 11
      Width = 372
      Height = 33
      Caption = 'Obrigado, Volte Sempre!'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -29
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
      BlinkIntervalOff = 0
      BlinkIntervalOn = 0
      TextStyle = tsRaised
    end
  end
  object edtDesconto: TRzEdit
    Left = 304
    Top = 171
    Width = 233
    Height = 50
    Text = ''
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -35
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object edtTotal: TRzEdit
    Left = 304
    Top = 243
    Width = 233
    Height = 50
    Text = ''
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -35
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object edtRecebido: TRzEdit
    Left = 304
    Top = 315
    Width = 233
    Height = 50
    Text = ''
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -35
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object edtTroco: TRzEdit
    Left = 304
    Top = 389
    Width = 233
    Height = 50
    Text = ''
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -35
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object edtSubtotal: TRzEdit
    Left = 304
    Top = 101
    Width = 233
    Height = 50
    Text = ''
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -35
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object RzBitBtn1: TRzBitBtn
    Left = 540
    Top = 464
    Width = 97
    Height = 36
    Caption = '&Sair(Enter)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = RzBitBtn1Click
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
