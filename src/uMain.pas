unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TMainForm = class(TForm)
    Label1: TLabel;
    ceTOTAL: TEdit;
    Image1: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    Label10: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Procedure FormatarComoMoeda( Componente : TObject; var Key: Char );
    procedure ceTOTALKeyPress(Sender: TObject; var Key: Char);
    procedure Label1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure ceTOTALChange(Sender: TObject);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ValorEssencial;
    procedure ValorPessoais;
    procedure ValorFinanceiro;
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.ceTOTALChange(Sender: TObject);
begin

  ValorEssencial;
  ValorPessoais;
  ValorFinanceiro;

end;

procedure TMainForm.ceTOTALKeyPress(Sender: TObject; var Key: Char);
begin
 FormatarComoMoeda( ceTOTAL, Key );
end;

procedure TMainForm.FormatarComoMoeda(Componente: TObject; var Key: Char);
var
   str_valor  : String;
   dbl_valor  : double;
begin

   { verificando se estamos recebendo o TEdit realmente }
   IF Componente is TEdit THEN
   BEGIN
      { se tecla pressionada e' um numero, backspace ou del deixa passar }
      IF ( Key in ['0'..'9', #8, #9] ) THEN
      BEGIN
         { guarda valor do TEdit com que vamos trabalhar }
         str_valor := TEdit( Componente ).Text ;
         { verificando se nao esta vazio }
         IF str_valor = EmptyStr THEN str_valor := '0,00' ;
         { se valor numerico ja insere na string temporaria }
         IF Key in ['0'..'9'] THEN str_valor := Concat( str_valor, Key ) ;
         { retira pontos e virgulas se tiver! }
         str_valor := Trim( StringReplace( str_valor, '.', '', [rfReplaceAll, rfIgnoreCase] ) ) ;
         str_valor := Trim( StringReplace( str_valor, ',', '', [rfReplaceAll, rfIgnoreCase] ) ) ;
         {inserindo 2 casas decimais}
         dbl_valor := StrToFloat( str_valor ) ;
         dbl_valor := ( dbl_valor / 100 ) ;

         {reseta posicao do tedit}
         TEdit( Componente ).SelStart := Length( TEdit( Componente ).Text );
         {retornando valor tratado ao TEdit}
         TEdit( Componente ).Text := FormatFloat( '#,##0.00', dbl_valor ) ;
      END;
      {se nao e' key relevante entao reseta}
      IF NOT( Key in [#8, #9] ) THEN key := #0;
   END;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin

  ceTOTAL.SetFocus;
  ceTOTAL.Text := FormatFloat( '#,##0.00', 0 );

end;

procedure TMainForm.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Image1.hint := 'Informe seu rendimento mensal.'+#13+'Some seu salário líquido,'+#13+'rendimentos de aluguéis,'+#13+'investimentos ou outras'+#13+'fontes de renda.';
  Application.HintHidePause := 30000;
end;

procedure TMainForm.Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Image2.hint := 'Custos Essenciais são aqueles'+#13+'gastos as quais você não pode evitar.';
  Application.HintHidePause := 30000;
end;

procedure TMainForm.Image3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Image3.hint := 'Custos pessoais são aqueles gastos com'+#13+'maior flexibilidade. São'+#13+'importantes para você, mas podem ser'+#13+'evitados na hora do aperto.';
  Application.HintHidePause := 30000;
end;

procedure TMainForm.Image4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Image4.hint := 'Dinheiro direcionado às suas metas'+#13+'financeiras, sobretudo, pagamento'+#13+'de dívidas e poupanças ou investimentos.';
  Application.HintHidePause := 30000;
end;

procedure TMainForm.Label1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
//Label1.hint := 'Informe seu rendimento mensal.'+#13+'Some seu salário líquido,'+#13+'rendimentos de aluguéis,'+#13+'investimentos ou outras '+#13+' fontes de renda.';

end;

procedure TMainForm.ValorEssencial;
var
val1 : string;
Total1 : Currency;

begin
  val1 := FloatToStr( StrToCurrDef(StringReplace(ceTOTAL.Text, '.', '', [rfReplaceAll]), 0) );

  Total1 := (StrToFloat(val1)*50)/100;
  Edit1.Text := FormatFloat( '#,##0.00', Total1 );

end;

procedure TMainForm.ValorFinanceiro;
var
val3 : string;
Total3 : Currency;

begin
  val3 := FloatToStr( StrToCurrDef(StringReplace(ceTOTAL.Text, '.', '', [rfReplaceAll]), 0) );
  Total3 := (StrToFloat(val3)*20)/100;
  Edit3.Text := FormatFloat( '#,##0.00', Total3 );
end;

procedure TMainForm.ValorPessoais;
var
val2 : string;
Total2 : Currency;

begin
  val2 := FloatToStr( StrToCurrDef(StringReplace(ceTOTAL.Text, '.', '', [rfReplaceAll]), 0) );
  Total2 := (StrToFloat(val2)*30)/100;
  Edit2.Text := FormatFloat( '#,##0.00', Total2 );
end;

end.

