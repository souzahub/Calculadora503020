object MainForm: TMainForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'CALCULADORA 50/30/20'
  ClientHeight = 391
  ClientWidth = 311
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 90
    Height = 13
    Caption = 'Rendimento l'#237'quido'
    ParentShowHint = False
    ShowHint = True
    OnMouseMove = Label1MouseMove
  end
  object Image1: TImage
    Left = 112
    Top = 22
    Width = 17
    Height = 17
    ParentShowHint = False
    Picture.Data = {
      0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
      00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000003
      094944415478DAED975D48936114C7B7395C90B3586590F4054DEB22C2A820EA
      42CCA84520220BBF16B288C06E84BEA820840A2BC80882406291EE8B4692068D
      4C6944175E14455D242EA2621715BC176551FBEEF7D416B2DEAD77EE95DDF8C0
      E1FCB79DF79CFFF9789FE7995653E4A59D23908F717B7B7B35AA09B12412890A
      AD56BB487C9F4C2625F027A0BFA4A4E44E7F7FFFA4AA0408BC91201781F50AFD
      8E607FC2ED76BF2888406D6DADBEB2B2B2177818D1219F9121B2BD1F8FC783B1
      584C7CD6E8F5FA0A9D4E5745D03DE806F412BE4E607735140A1D0F0402B1BC09
      7474742C8C46A33E91350EC338EB35180C3D0E87632A17E9B6B6B6726C4FD1A2
      2EB44154231289ECF3F97C5F1413B0582C0693C93406DC86BCC35983C7E379A9
      B0FCE9B66D80F85DE02A883C9124A9DEEFF7871511208B3ED44124846C75B95C
      A17C82A7577373F37286721CB80C12D79D4E67E77F09B4B6B66EC1583CF4833E
      6FF77ABDCF67123CBD6C36DB262AF818388F8A6C66309FE52440F6A3A81D189F
      C5F84C2EE7D82685A642398799A4CE8BB9008E60BB2B2B01F19E137802283170
      AB150C9C220256AB75416969E95BA009FF552416942580C3D3A873B0EDA35F87
      0A297DE622B91B043F003C09E10BB20428D518C1EB9006080CAB4980E41A5183
      C828047666AB8028CD1A089821F0468153452D4855E0777B91495A509D8D80E8
      79191B87918DE39B9A04EC76BB311C0E7F054E615F9E8D80083A9FEDB46C6060
      E07B31088853CC9C39A96A10686969594B62AF8113D8AF932590EF10E64340D1
      103228C7C8FE1272930AD8D5244072B7486C3F7284E47AB31128EE469472FA50
      F3E7089E8DADF801B6BBA7FFF6CF839C60359C604F813F553E8C0CE89ACC633D
      DB717C05D5A551F138462EE3E768A68D2C81EEEE6E5D30181C02EE4524DA61A5
      1D8FF2CCBC8E8C6F03C5C575D86C3637E237A18880583257B26B64D3C38D57CA
      1598F77D3176E24AD639E32B597AC95C4AC55B710FC7836C2AAF900FC28E602B
      90F5106D4A55CDA829F4523A7D15ED5A2E43E4EF1F1302AC442F4DFDF41179AF
      99AD3F26B3B9E608FC024C34CD30C65AA9200000000049454E44AE426082}
    ShowHint = True
    Stretch = True
    OnMouseMove = Image1MouseMove
  end
  object Label2: TLabel
    Left = 16
    Top = 211
    Width = 270
    Height = 13
    Caption = '_____________________________________________'
    ParentShowHint = False
    ShowHint = True
    OnMouseMove = Label1MouseMove
  end
  object Label3: TLabel
    Left = 16
    Top = 101
    Width = 249
    Height = 14
    Caption = 'Como deveria distribuir meu or'#231'amento?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnMouseMove = Label1MouseMove
  end
  object Label4: TLabel
    Left = 16
    Top = 144
    Width = 84
    Height = 13
    Caption = 'Custos Essenciais'
    ParentShowHint = False
    ShowHint = True
    OnMouseMove = Label1MouseMove
  end
  object Label5: TLabel
    Left = 16
    Top = 192
    Width = 77
    Height = 13
    Caption = 'Custos Pessoais'
    ParentShowHint = False
    ShowHint = True
    OnMouseMove = Label1MouseMove
  end
  object Label6: TLabel
    Left = 16
    Top = 248
    Width = 90
    Height = 13
    Caption = 'Custos Financeiros'
    ParentShowHint = False
    ShowHint = True
    OnMouseMove = Label1MouseMove
  end
  object Label10: TLabel
    Left = 16
    Top = 163
    Width = 270
    Height = 13
    Caption = '_____________________________________________'
    ParentShowHint = False
    ShowHint = True
    OnMouseMove = Label1MouseMove
  end
  object Label7: TLabel
    Left = 16
    Top = 82
    Width = 270
    Height = 13
    Caption = '_____________________________________________'
    ParentShowHint = False
    ShowHint = True
    OnMouseMove = Label1MouseMove
  end
  object Label8: TLabel
    Left = 16
    Top = 278
    Width = 270
    Height = 13
    Caption = '_____________________________________________'
    ParentShowHint = False
    ShowHint = True
    OnMouseMove = Label1MouseMove
  end
  object ceTOTAL: TEdit
    Left = 16
    Top = 45
    Width = 97
    Height = 19
    Color = clInfoBk
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    OnChange = ceTOTALChange
    OnKeyPress = ceTOTALKeyPress
  end
  object Edit1: TEdit
    Left = 144
    Top = 138
    Width = 97
    Height = 19
    Color = clInfoBk
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 144
    Top = 190
    Width = 97
    Height = 19
    Color = clInfoBk
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 144
    Top = 246
    Width = 97
    Height = 19
    Color = clInfoBk
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 3
  end
end