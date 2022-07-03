unit GeradorConjuntosDe18_t1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBX.IBDatabase, IBX.IBCustomDataSet, IBX.IBQuery, Vcl.Grids,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, StrUtils, System.ImageList, Vcl.ImgList,
  VCLTee.TeCanvas;

type
  TFrm_cjunto18por7 = class(TForm)
    Label36: TLabel;
    MEM_COMBINACOES_TODAS: TMemo;
    pa_topo: TPanel;
    Label53: TLabel;
    BBT_CLOSE: TImage;
    BBT_RECOMECAR: TBitBtn;
    Memo_Combinacoes_Todas: TMemo;
    pgc_AbasPrincipais: TPageControl;
    TabSheet1: TTabSheet;
    Stgr_Todos_Numeros: TStringGrid;
    Stgr_TodosNumerosP17: TStringGrid;
    Ibq_E_SORTEIO_15N: TIBQuery;
    Ds_E_SORTEIO_15N: TDataSource;
    IBQ_Combinacoes: TIBQuery;
    IBTransaction1: TIBTransaction;
    pa_preparar: TPanel;
    La_MensagensPreparar: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    bbt_PrepararOk: TBitBtn;
    bbt_PrepararVoltar: TBitBtn;
    PA_INICIAL: TPanel;
    Label55: TLabel;
    BT_NOVA_SIMULACAO: TButton;
    BT_REAJUSTAR: TButton;
    BBT_SAIR: TButton;
    BBT_CARREGAR: TButton;
    BBT_CANCELAR: TBitBtn;
    pa_fimAnalisador: TPanel;
    Label44: TLabel;
    Label45: TLabel;
    Label47: TLabel;
    LA_rQTD_COMB: TLabel;
    Label58: TLabel;
    LA_gINICIO_100REPET: TLabel;
    Label60: TLabel;
    LA_gFIM_GERAR: TLabel;
    Label50: TLabel;
    La_total100Repetidos: TLabel;
    BBT_PA_REMOVEUREPET: TBitBtn;
    pa_BarraLateral: TPanel;
    pa_menuGerar_20p11: TPanel;
    Panel2: TPanel;
    Label63: TLabel;
    bbt_gerarOk: TBitBtn;
    bbt_gerarVoltar: TBitBtn;
    pa_Status: TPanel;
    pa_gerar: TPanel;
    bt_preparar: TButton;
    pa_Gerador6cj20p11: TPanel;
    pa_Gabarito6cj20p11: TPanel;
    pa_Resultado6cj20p11: TPanel;
    scbx_gabarito6cj20p11: TScrollBox;
    Label7: TLabel;
    Label54: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Stgr_base18: TStringGrid;
    Stgr_serie7Sorteados: TStringGrid;
    Stgr_Base18VF: TStringGrid;
    bt_gerar: TButton;
    Label71: TLabel;
    pgbr_GerandoBloco5: TProgressBar;
    ckbx_GerarCompleto: TCheckBox;
    Lab_gravarDados1: TLabel;
    Pgbr_gravarDados1: TProgressBar;
    Label74: TLabel;
    Pgbr_naoRepetidos1: TProgressBar;
    BitBtn_BlocoDeNotas2: TBitBtn;
    Stgr_serie7NaoSorteados: TStringGrid;
    ScrollBox_resultado: TScrollBox;
    Label62: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label57: TLabel;
    Stgr_BlocoBase8: TStringGrid;
    Label4: TLabel;
    Stgr_Bloco_5Base8: TStringGrid;
    Label5: TLabel;
    Stgr_bloco3S_5Base8: TStringGrid;
    Label6: TLabel;
    Stgr_bloco2NS_5Base8: TStringGrid;
    IBDatabase1: TIBDatabase;
    pgbr_GerandoBloco3e2: TProgressBar;
    Label8: TLabel;
    Panel3: TPanel;
    RadioButton_teste1: TRadioButton;
    RadioButton_teste2: TRadioButton;
    RadioButton_teste3: TRadioButton;
    Label9: TLabel;
    Stgr_Bloco_3Base8: TStringGrid;
    Label100: TLabel;
    Label10: TLabel;
    Stgr_bloco2S_3Base8: TStringGrid;
    pgbr_GerandoBloco3do8: TProgressBar;
    Label11: TLabel;
    pgbr_GerandoBloco2e1: TProgressBar;
    Label12: TLabel;
    Stgr_bloco1NS_3Base8: TStringGrid;
    Label13: TLabel;
    Label14: TLabel;
    Stgr_bloco3NS_Base8: TStringGrid;
    Stgr_bloco5S_Base8: TStringGrid;
    Label15: TLabel;
    pgbr_bloco5S_Base8: TProgressBar;
    Stgr_BlocoBase10: TStringGrid;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Stgr_BlocoBase07: TStringGrid;
    Label19: TLabel;
    pgbr_Bloco3S_Base10: TProgressBar;
    Label20: TLabel;
    Stgr_Bloco1nS_Base07: TStringGrid;
    Label21: TLabel;
    Stgr_BlocoBase06: TStringGrid;
    Label22: TLabel;
    pgbr_Bloco1nS_Base07: TProgressBar;
    RadioButton_Ze: TRadioButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Stgr_Bloco3S_Base06: TStringGrid;
    Label23: TLabel;
    Label24: TLabel;
    Stgr_Bloco1NS_Base06: TStringGrid;
    Label25: TLabel;
    Stgr_Bloco2S_Base06: TStringGrid;
    pgbr_Bloco3S_Base06: TProgressBar;
    Label26: TLabel;
    Stgr_Bloco10S: TStringGrid;
    Stgr_Bloco3S_Base10: TStringGrid;
    Stgr_Bloco5S_Base06: TStringGrid;
    Label27: TLabel;
    BitBtn3: TBitBtn;
    stgr_Sorteados_05: TStringGrid;
    Label28: TLabel;
    stgr_Sorteados_10: TStringGrid;
    Label29: TLabel;
    Label30: TLabel;
    stgr_15Sorteados_Comb1: TStringGrid;
    Label31: TLabel;
    Panel4: TPanel;
    cb_sequenciaMaxima: TComboBox;
    chk_sequenciaMaxima: TCheckBox;
    chk_somatoria160a220: TCheckBox;
    edt_soma1Inicial: TEdit;
    edt_soma1Final: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Bbt_gerarSequenciasClick(Sender: TObject);
    procedure BBT_PA_REMOVEUREPETClick(Sender: TObject);
    procedure bbt_gerarOkClick(Sender: TObject);
    procedure bbt_gerarVoltarClick(Sender: TObject);
    procedure bt_prepararClick(Sender: TObject);
    procedure bbt_PrepararVoltarClick(Sender: TObject);
    procedure bbt_PrepararOkClick(Sender: TObject);
    procedure BitBtn_BlocoDeNotas2Click(Sender: TObject);
    procedure RadioButton_teste1Click(Sender: TObject);
    procedure RadioButton_teste2Click(Sender: TObject);
    procedure RadioButton_teste3Click(Sender: TObject);
    procedure RadioButton_ZeClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure bt_gerarClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure edt_soma1FinalExit(Sender: TObject);
    procedure chk_sequenciaMaximaClick(Sender: TObject);
    procedure chk_somatoria160a220Click(Sender: TObject);
  private
    viDivisorSalvar1 : integer;
    viDivisorSalvar2, viDivisorSalvar3 : integer;
    viDivisorExecutar2, viDivisorExecutar3 : integer;
    viDivisorAtualizar1, viDivisorAtualizar2 : integer;
    viTime1 : integer;
    viTipoAcBlocoBase6 : SmallInt;
    procedure PreenchimentoInicialPadrao;
    procedure Zerar_FLAGTodosNumeros;
    procedure Falso_Linha1TodosNumeros;
    procedure Falso_Linha2TodosNumeros;
    procedure Falso_Linha3TodosNumeros;
    function IIf(Expressao, ParteTRUE, ParteFALSE: Variant): Variant;
    procedure BlocoDeNotas2;
    procedure Bloco_de_8;
    procedure Bloco_de_5Base8;
    procedure ReconstroiTela;
    procedure Bloco_de_3Base5;
    procedure LimparGrid_bloco3S_5Base8;
    procedure LimparGrid_bloco2NS_5Base8;
    procedure Bloco_de_3Base8;
    procedure Bloco_de_2Base5;
    Procedure GravarCJTO_18P7_3base5_3S2NS();
    Procedure CarregarCJTO_18P7_3base5_3S2NS();
    procedure LimparGrid_Bloco_5Base8;
    procedure LimparGrid_Bloco_3Base8;
    procedure GravarCJTO_18P7_bloco5S_Base8;
    procedure Bloco_de_3Base10;
    procedure Bloco_de_1Base06;
    procedure LimparGrid_BlocoBase06;
    procedure Bloco_de_3Base06;
    procedure Bloco_de_1Base06e5 ;
    procedure LimparGrid_bloco2S_3Base8;
    procedure LimparGrid_bloco1NS_3Base8;
    procedure GravarCJTO_18P7_10S_Base10;
    procedure LimparGrid_Stgr_Bloco10S;
    procedure GravarCJTO_18P7_15Sorteados;
    procedure LimparGrid_BlocoBase06e1NS;
    procedure Base_5Sorteados;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_cjunto18por7: TFrm_cjunto18por7;

implementation

{$R *.dfm}


procedure TFrm_cjunto18por7.FormCreate(Sender: TObject);
begin
   SELF.ClientWidth := 1480;
   SELF.ClientHeight := 760;
   SELF.Top := 15;
   SELF.Left := 5;
   // SELF.Visible := TRUE;
   Bbt_CLOSE.Left := SELF.ClientWidth - 35;
   Scbx_gabarito6cj20p11.Visible := True;
   Pa_INICIAL.Enabled := TRUE;
   Pa_INICIAL.Left := 520;
   Pa_INICIAL.Top := 160;
   Zerar_FLAGTodosNumeros();
   PreenchimentoInicialPadrao;
   bt_gerar.Enabled := False;
     pa_FimAnalisador.Visible := False;
     pa_FimAnalisador.Left := 9500;
end;


procedure TFrm_cjunto18por7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   TRY
      BEGIN
         Ibq_COMBINACOES.Close;
         IBDatabase1.Close;
      END
   EXCEPT
      //
   END; // TRY
end;



procedure TFrm_cjunto18por7.Bbt_gerarSequenciasClick(Sender: TObject);
begin
//
end;





procedure TFrm_cjunto18por7.BBT_PA_REMOVEUREPETClick(Sender: TObject);
begin
   pa_FimAnalisador.Visible := False;
end;





procedure TFrm_cjunto18por7.BitBtn_BlocoDeNotas2Click(Sender: TObject);
begin
   pa_FimAnalisador.Visible := False;
   BlocoDeNotas2();
end;



procedure TFrm_cjunto18por7.BlocoDeNotas2;
var
   viContar: integer;
   vcQuery, vsCombinacoes2, vcTitulo, vcSubTitulo: String;
Begin
   vcTitulo := 'kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk';
   vcSubTitulo := '';
   Memo_Combinacoes_Todas.Clear;
   vcQuery := vcQuery + 'select count(distinct(dados07numeros)) as QTD ';
   vcQuery := vcQuery + 'from Cjto_6l20p11_7pre ';
   Self.Ibq_COMBINACOES.SQL.Clear;
   Self.Ibq_COMBINACOES.SQL.Add(vcQuery);
   Self.Ibq_COMBINACOES.Prepare;
   Self.Ibq_COMBINACOES.Open;
   viContar := Self.Ibq_COMBINACOES.FIELDBYNAME('QTD').AsInteger;
//   Memo_Combinacoes_Todas.Lines.Add('Dados Processados/Gerados: ' + stgr_flagFiltro4Blocos.Cells[0,1]);
   Memo_Combinacoes_Todas.Lines.Add(vcTitulo);
   Memo_Combinacoes_Todas.Lines.Add(vcSubTitulo);
   Memo_Combinacoes_Todas.Lines.Add('TOTAL: ' + INTtoSTR(viContar));
   Memo_Combinacoes_Todas.Lines.Add('----------------------------');
   vcQuery := 'select distinct(dados07numeros) as dados ';
   vcQuery := vcQuery + ' from Cjto_6l20p11_7pre ';
   vcQuery := vcQuery + 'order by dados07numeros ';
   Self.Ibq_COMBINACOES.SQL.Clear;
   Self.Ibq_COMBINACOES.SQL.Add(vcQuery);
   Self.Ibq_COMBINACOES.Prepare;
   Self.Ibq_COMBINACOES.Open;
   Self.Ibq_COMBINACOES.First;
   WHILE (NOT(Self.Ibq_COMBINACOES.Eof)) DO
   BEGIN
      vsCombinacoes2 := '';
      vsCombinacoes2 := trim(Self.Ibq_COMBINACOES.FIELDBYNAME('DADOS').AsString);
      Memo_Combinacoes_Todas.Lines.Add(vsCombinacoes2);
      Self.Ibq_COMBINACOES.Next;
   END; // FOR viContar
   Memo_Combinacoes_Todas.Repaint;
   Memo_Combinacoes_Todas.Lines.SaveToFile('C:\CxLotoFacil\Gerador_Conjunto_18_com_7_N.TXT');
    winExec('Notepad.exe C:\CxLotoFacil\Gerador_Conjunto_18_com_7_N.TXT', sw_shownormal);
   showmessage('BLOCO DE NOTAS GERADO' + #13+#13+#13 + 'Arquivo está localizado em:' +#13+#13+'C:\CxLotoFacil\Gerador_Conjunto_18_com_7_N.TXT');
End;



procedure TFrm_cjunto18por7.bt_prepararClick(Sender: TObject);
begin
   pa_preparar.Left := 590;
   pa_preparar.Top := 210;
   pa_preparar.Enabled := True;
   pa_preparar.Visible := True;
   bt_preparar.Enabled := False;
end;


procedure TFrm_cjunto18por7.bbt_PrepararOkClick(Sender: TObject);
begin
   pgbr_GerandoBloco5.Position := 0;
   pgbr_GerandoBloco3e2.Position := 0;
   pgbr_GerandoBloco3do8.Position := 0;
   pgbr_GerandoBloco2e1.Position := 0;
    pgbr_bloco5S_Base8.Position := 0;
    pgbr_Bloco3S_Base10.Position := 0;
    pgbr_Bloco1nS_Base07.Position := 0;
    pgbr_bloco5S_Base8.Repaint;
   pgbr_GerandoBloco5.Repaint;
   pgbr_GerandoBloco3e2.Repaint;
   pgbr_GerandoBloco3do8.Repaint;
   pgbr_GerandoBloco2e1.Repaint;
   pgbr_Bloco3S_Base10.Repaint;
   pgbr_Bloco1nS_Base07.Repaint;
   pgbr_Bloco3S_Base06.Position := 0;
   pgbr_Bloco3S_Base06.Repaint;
   Try
      IBQ_Combinacoes.SQL.Clear;
 //     IBQ_Combinacoes.SQL.Add('CREATE TABLE CJTO_18P7_D10 (DADOS10 VARCHAR(21) COLLATE PT_BR);') ;
      IBQ_Combinacoes.SQL.Add('CREATE TABLE CJTO_18P7_3base5_3S2NS (POSICAO05DE08 VARCHAR(8) COLLATE PT_BR, POSICAO08 VARCHAR(6) COLLATE PT_BR, SORTEADOS VARCHAR(9) COLLATE PT_BR, NAO_SORTEADOS VARCHAR(6) COLLATE PT_BR);') ;
      IBQ_Combinacoes.ExecSQL;
      IBQ_Combinacoes.SQL.Clear;
      IBQ_Combinacoes.SQL.Add('COMMIT')  ;
      IBQ_Combinacoes.ExecSQL;
      IBQ_Combinacoes.Transaction.StartTransaction;
      IBQ_Combinacoes.Transaction.Commit;
      IBQ_Combinacoes.Transaction.StartTransaction;
   Except
      IBQ_Combinacoes.SQL.Clear;
//      IBQ_Combinacoes.SQL.Add('DELETE FROM CJTO_18P7_D10;')  ;
      IBQ_Combinacoes.SQL.Add('DELETE FROM CJTO_18P7_3base5_3S2NS;')  ;
      IBQ_Combinacoes.ExecSQL;
      IBQ_Combinacoes.SQL.Clear;
      IBQ_Combinacoes.SQL.Add('COMMIT')  ;
      IBQ_Combinacoes.ExecSQL ;
      IBQ_Combinacoes.Transaction.StartTransaction;
      IBQ_Combinacoes.Transaction.Commit;
      IBQ_Combinacoes.Transaction.StartTransaction;
   End;
   Sleep (500);
   // 5 sorteados da fase 1
   Try
      IBQ_Combinacoes.SQL.Clear;
      IBQ_Combinacoes.SQL.Add('CREATE TABLE CJTO_18P7_5S_Base8_3S2NS (POSICAO05DE08 VARCHAR(8) COLLATE PT_BR, POSICAO08 VARCHAR(6) COLLATE PT_BR, SORTEADOS VARCHAR(16) COLLATE PT_BR, NAO_SORTEADOS VARCHAR(9) COLLATE PT_BR);') ;
      IBQ_Combinacoes.ExecSQL;
      IBQ_Combinacoes.SQL.Clear;
      IBQ_Combinacoes.SQL.Add('COMMIT')  ;
      IBQ_Combinacoes.ExecSQL;
      IBQ_Combinacoes.Transaction.StartTransaction;
      IBQ_Combinacoes.Transaction.Commit;
      IBQ_Combinacoes.Transaction.StartTransaction;
   Except
      IBQ_Combinacoes.SQL.Clear;
      IBQ_Combinacoes.SQL.Add('DELETE FROM CJTO_18P7_5S_Base8_3S2NS;')  ;
      IBQ_Combinacoes.ExecSQL;
      IBQ_Combinacoes.SQL.Clear;
      IBQ_Combinacoes.SQL.Add('COMMIT')  ;
      IBQ_Combinacoes.ExecSQL ;
      IBQ_Combinacoes.Transaction.StartTransaction;
      IBQ_Combinacoes.Transaction.Commit;
      IBQ_Combinacoes.Transaction.StartTransaction;
   End;
   // 10 sorteados da fasae 2
   Try
      IBQ_Combinacoes.SQL.Clear;
      IBQ_Combinacoes.SQL.Add('CREATE TABLE CJTO_18P7_10S_Base10 (POSICAO03DE10 VARCHAR(18) COLLATE PT_BR, POSICAO08 VARCHAR(6) COLLATE PT_BR, SORTEADOS VARCHAR(31) COLLATE PT_BR);') ;
      IBQ_Combinacoes.ExecSQL;
      IBQ_Combinacoes.SQL.Clear;
      IBQ_Combinacoes.SQL.Add('COMMIT')  ;
      IBQ_Combinacoes.ExecSQL;
      IBQ_Combinacoes.Transaction.StartTransaction;
      IBQ_Combinacoes.Transaction.Commit;
      IBQ_Combinacoes.Transaction.StartTransaction;
   Except
      IBQ_Combinacoes.SQL.Clear;
      IBQ_Combinacoes.SQL.Add('DELETE FROM CJTO_18P7_10S_Base10;')  ;
      IBQ_Combinacoes.ExecSQL;
      IBQ_Combinacoes.SQL.Clear;
      IBQ_Combinacoes.SQL.Add('COMMIT')  ;
      IBQ_Combinacoes.ExecSQL ;
      IBQ_Combinacoes.Transaction.StartTransaction;
      IBQ_Combinacoes.Transaction.Commit;
      IBQ_Combinacoes.Transaction.StartTransaction;
   End;
   // 10 sorteados da fasae 2
   Try
      IBQ_Combinacoes.SQL.Clear;
      IBQ_Combinacoes.SQL.Add  ('CREATE TABLE CJTO_18P7_15S_RESULTADO (N INTEGER, DADOS VARCHAR(45) COLLATE PT_BR); ');
      IBQ_Combinacoes.ExecSQL;
      IBQ_Combinacoes.SQL.Clear;
      IBQ_Combinacoes.SQL.Add('COMMIT')  ;
      IBQ_Combinacoes.ExecSQL;
      IBQ_Combinacoes.Transaction.StartTransaction;
      IBQ_Combinacoes.Transaction.Commit;
      IBQ_Combinacoes.Transaction.StartTransaction;
   Except
      IBQ_Combinacoes.SQL.Clear;
      IBQ_Combinacoes.SQL.Add('DELETE FROM CJTO_18P7_15S_RESULTADO;')  ;
      IBQ_Combinacoes.ExecSQL;
      IBQ_Combinacoes.SQL.Clear;
      IBQ_Combinacoes.SQL.Add('COMMIT')  ;
      IBQ_Combinacoes.ExecSQL ;
      IBQ_Combinacoes.Transaction.StartTransaction;
      IBQ_Combinacoes.Transaction.Commit;
      IBQ_Combinacoes.Transaction.StartTransaction;
   End;
   sleep (500);
   showmessage('Preparar concluído');
   bt_preparar.Enabled := True;
   pa_preparar.Visible := False;
   pa_preparar.Repaint;
   bt_gerar.Enabled := True;
end;


procedure TFrm_cjunto18por7.bbt_PrepararVoltarClick(Sender: TObject);
begin
   bt_preparar.Enabled := True;
   pa_preparar.Visible := False;
   pa_preparar.Repaint;
end;



procedure TFrm_cjunto18por7.RadioButton_ZeClick(Sender: TObject);
begin
   viDivisorSalvar1 := 4050;
   viDivisorAtualizar1 := 331;
   viDivisorAtualizar2 := 110;
   viTime1 := 75; //175
   viDivisorExecutar2 := 98;    //       [43.758/98*120]
   viDivisorSalvar2 := 51000;
   viDivisorSalvar3 := 33000;
end;

procedure TFrm_cjunto18por7.RadioButton_teste1Click(Sender: TObject);
begin
   viDivisorSalvar1 := (3059*4);        //8100
   viDivisorAtualizar1 := Trunc(437*2.5) ;
   viDivisorAtualizar2:= (3059*3) ;
   {
AC 8 (OU 10) EM 18 : 43.758  (dividir 100)
AC 5 EM 8 : 56 (437 x 56 = 24.472)
	AC 3 EM 5: 10 ( 24.472 x 10 =244.720)   / 5
	AC 2 em 3: 3 ( 48.944 x 2 = 97.888)
   }
   viTime1 := 9; //275
   viDivisorExecutar2 := 1 ; //100
   viDivisorExecutar3 := 1 ; //239                                     1
   viDivisorSalvar2 := 3120;   // /15   //105000       ==>3950    9600
   viDivisorSalvar3 := 49000;
{
 AC 8 (OU 10) EM 18 : 43.758  (dividir 100)
 AC 7 EM 10: 120  (437 X 120 = 52.440)
 AC 1 em 7 : 7 (52440x 7 = 367.080)
 base de 5 para formar 10 (367.080x 5 =   1.835.400)
 }


end;

procedure TFrm_cjunto18por7.RadioButton_teste2Click(Sender: TObject);
begin
   viDivisorSalvar1 := 6251;  //40500
   viDivisorAtualizar1 := 893;  //1890
   viDivisorAtualizar2:= 6251;   // 2431
   viTime1 := 180;
   viDivisorExecutar2 := 1;
   viDivisorExecutar3 := 1 ; //235
   viDivisorSalvar2 := 162500;  // /15    //262500
   viDivisorSalvar3 := 122500;
   // 262500
   // 91875
end;

procedure TFrm_cjunto18por7.RadioButton_teste3Click(Sender: TObject);
begin
   viDivisorSalvar1 := 76573; //27000
   viDivisorAtualizar1 := 10939;  //1890
   viDivisorAtualizar2:= 76573;   //7293
   viTime1 := 500;
   viDivisorExecutar2 := 1;
   viDivisorExecutar3 := 1 ; //235
   viDivisorSalvar2 := 848400;  // /15
   viDivisorSalvar3 := 245000;
   //525000
   //245000
end;


procedure TFrm_cjunto18por7.bt_gerarClick(Sender: TObject);
begin
   edt_soma1Inicial.Enabled := false;
   edt_soma1Final.Enabled := false;
   cb_sequenciaMaxima.Enabled := false;
   chk_somatoria160a220.Checked := false;
   chk_sequenciaMaxima.Checked := false;

   pa_menuGerar_20p11.Left := 520;
   pa_menuGerar_20p11.Top := 160;
//   bbt_gerarOk.Top := 235;
//   bbt_gerarVoltar.Top := 235;
//   pa_menuGerar_20p11.Height := 286;
   ckbx_GerarCompleto.Checked := False;
   bbt_gerarOk.Repaint;
   bbt_gerarVoltar.Repaint;
   pa_menuGerar_20p11.Enabled := True;
   pa_menuGerar_20p11.Visible := True;
   pa_menuGerar_20p11.Repaint;
end;



procedure TFrm_cjunto18por7.bbt_gerarOkClick(Sender: TObject);
var
   vsQuery, vsMensagemEstouro : String;
begin
   if (RadioButton_teste1.Checked = false)
      and (RadioButton_teste2.Checked = false)
      and (RadioButton_teste3.Checked = false)
      and (RadioButton_Ze.Checked = false)
   then
   begin
      ShowMessage('Escolha uma opção.');
      bbt_gerarOk.SetFocus;
      Abort;
   end;
   bbt_gerarVoltar.Click;
   bt_gerar.Enabled := False;
   LA_gINICIO_100REPET.Caption := DateToStr(Date) + ' - ' +TimeToStr(Time);
   vsQuery := 'fim deste processamento - por enquanto';
   Bloco_de_8();
   try
      vsMensagemEstouro := 'CONCLUSÃO OK:';
      Bloco_de_5Base8();
   except
      vsMensagemEstouro := 'ESTOURO DE MEMÓRIA:' +#13+'Fase 1.3.B  Bloco c  / 2 SORTEADOS: '+Stgr_bloco2S_3Base8.RowCount.ToString+#13+'Fase 1.4. Bloco de 3 Não Sort.'+Stgr_bloco3NS_Base8.RowCount.ToString;
   end;
//   try
//      vsMensagemEstouro := 'CONCLUSÃO OK:';
//      Bloco_de_3Base10();
//   except
//      vsMensagemEstouro := 'ESTOURO DE MEMÓRIA:' +#13+'Fase 2.1.A. Bloco 3 Sorteados'+Stgr_BlocoBase07.RowCount.ToString+#13+'Fase 3.1.A. Bloco 1 Não Sort.'+Stgr_BlocoBase06.RowCount.ToString;
//   end;
   LA_gFIM_GERAR.Caption := DateToStr(Date) +' - ' + TimeToStr(Time);
   pa_FimAnalisador.Visible := True;
   pa_FimAnalisador.Left := 770;
   showmessage(vsMensagemEstouro);
   showmessage(vsMensagemEstouro);
end;


procedure TFrm_cjunto18por7.BitBtn1Click(Sender: TObject);
var
   vsQuery, vsMensagemEstouro : String;
begin
   if (RadioButton_teste1.Checked = false)
      and (RadioButton_teste2.Checked = false)
      and (RadioButton_teste3.Checked = false)
      and (RadioButton_Ze.Checked = false)
   then
   begin
      ShowMessage('Escolha uma opção.');
      bbt_gerarOk.SetFocus;
      Abort;
   end;
   bbt_gerarVoltar.Click;
   bt_gerar.Enabled := False;
   LA_gINICIO_100REPET.Caption := DateToStr(Date) + ' - ' +TimeToStr(Time);
   vsQuery := 'fim deste processamento - por enquanto';
   Bloco_de_8();
//   try
//      Bloco_de_5Base8();
//   except
//      vsMensagemEstouro := 'ESTOURO DE MEMÓRIA:' +#13+'Fase 1.3.B  Bloco c  / 2 SORTEADOS: '+Stgr_bloco2S_3Base8.RowCount.ToString+#13+'Fase 1.4. Bloco de 3 Não Sort.'+Stgr_bloco3NS_Base8.RowCount.ToString;
//   end;
         viTipoAcBlocoBase6 := 0;
         try
            vsMensagemEstouro := 'CONCLUSÃO OK:';
            Bloco_de_3Base10();
         except
            vsMensagemEstouro := 'ESTOURO DE MEMÓRIA:' +#13+'Fase 2.1.A. Bloco 3 Sorteados'+Stgr_BlocoBase07.RowCount.ToString+#13+'Fase 3.1.A. Bloco 1 Não Sort.'+Stgr_BlocoBase06.RowCount.ToString;
         end;
   LA_gFIM_GERAR.Caption := DateToStr(Date) +' - ' + TimeToStr(Time);
//   LA_rQTD_COMB.Caption :=stgr_flagFiltro4Blocos.Cells[0,1];
//   vsQuery := vsQuery + 'select count(distinct(dados07numeros)) as QTD ';
//   vsQuery := vsQuery + 'from Cjto_6l20p11_7pre
   Self.Ibq_COMBINACOES.SQL.Clear;
   Self.Ibq_COMBINACOES.SQL.Add(vsQuery);
//   Self.Ibq_COMBINACOES.Prepare;
//   Self.Ibq_COMBINACOES.Open;
//   La_total100Repetidos.Caption := Self.Ibq_COMBINACOES.FIELDBYNAME('QTD').AsString;
   pa_FimAnalisador.Visible := True;
   pa_FimAnalisador.Left := 770;
//   showmessage(vsQuery);
   showmessage(vsMensagemEstouro);
   showmessage(vsMensagemEstouro);
end;



procedure TFrm_cjunto18por7.BitBtn2Click(Sender: TObject);
var
   vsQuery, vsMensagemEstouro : String;
begin
   if (RadioButton_teste1.Checked = false)
      and (RadioButton_teste2.Checked = false)
      and (RadioButton_teste3.Checked = false)
      and (RadioButton_Ze.Checked = false)
   then
   begin
      ShowMessage('Escolha uma opção.');
      bbt_gerarOk.SetFocus;
      Abort;
   end;

   if StrToInt(edt_soma1Final.Text) < strToInt(edt_soma1Inicial.Text) then
   begin
      Showmessage('Valor final de ser maior ou igual ao valor inicial.');
      edt_soma1Final.SetFocus;
      Abort
   end;
   if StrToInt(edt_soma1Inicial.Text) < 150 then
   begin
      Showmessage('Valor inicial abaixo de 150.');
      edt_soma1Inicial.SetFocus;
      Abort
   end;
   if StrToInt(edt_soma1Final.Text) > 220 then
   begin
      Showmessage('Valor final acima de 220.');
      edt_soma1Final.SetFocus;
      Abort
   end;

   bbt_gerarVoltar.Click;
   bt_gerar.Enabled := False;
   LA_gINICIO_100REPET.Caption := DateToStr(Date) + ' - ' +TimeToStr(Time);
   vsQuery := 'fim deste processamento - por enquanto';
   Bloco_de_8();
   try
      vsMensagemEstouro := 'CONCLUSÃO 1 OK:';
      Bloco_de_5Base8();
   except
      vsMensagemEstouro := 'ESTOURO DE MEMÓRIA:' +#13+'Fase 1.3.B  Bloco c  / 2 SORTEADOS: '+Stgr_bloco2S_3Base8.RowCount.ToString+#13+'Fase 1.4. Bloco de 3 Não Sort.'+Stgr_bloco3NS_Base8.RowCount.ToString;
   end;
   try
      viTipoAcBlocoBase6 := 1;
      vsMensagemEstouro := vsMensagemEstouro+ ' - '+ 'CONCLUSÃO 2 OK:';
      Bloco_de_3Base10();
   except
      vsMensagemEstouro := vsMensagemEstouro+ ' - '+#13+#13+  'ESTOURO DE MEMÓRIA:' +#13+'Fase 2.1.A. Bloco 3 Sorteados'+Stgr_BlocoBase07.RowCount.ToString+#13+'Fase 3.1.A. Bloco 1 Não Sort.'+Stgr_BlocoBase06.RowCount.ToString;
   end;
   LA_gFIM_GERAR.Caption := DateToStr(Date) +' - ' + TimeToStr(Time);
   pa_FimAnalisador.Visible := True;
   pa_FimAnalisador.Left := 770;
   showmessage(vsMensagemEstouro);
   showmessage(vsMensagemEstouro);
end;



procedure TFrm_cjunto18por7.BitBtn3Click(Sender: TObject);
var
   vsQuery, vsMensagemEstouro : String;
begin
   if (RadioButton_teste1.Checked = false)
      and (RadioButton_teste2.Checked = false)
      and (RadioButton_teste3.Checked = false)
      and (RadioButton_Ze.Checked = false)
   then
   begin
      ShowMessage('Escolha uma opção.');
      bbt_gerarOk.SetFocus;
      Abort;
   end;
   bbt_gerarVoltar.Click;
   bt_gerar.Enabled := False;
   LA_gINICIO_100REPET.Caption := DateToStr(Date) + ' - ' +TimeToStr(Time);
   vsQuery := 'fim deste processamento - por enquanto';
   Bloco_de_8();
//   try
//      Bloco_de_5Base8();
//   except
//      vsMensagemEstouro := 'ESTOURO DE MEMÓRIA:' +#13+'Fase 1.3.B  Bloco c  / 2 SORTEADOS: '+Stgr_bloco2S_3Base8.RowCount.ToString+#13+'Fase 1.4. Bloco de 3 Não Sort.'+Stgr_bloco3NS_Base8.RowCount.ToString;
//   end;
         viTipoAcBlocoBase6 := 1;
         try
            vsMensagemEstouro := 'CONCLUSÃO OK:';
            Bloco_de_3Base10();
         except
            vsMensagemEstouro := 'ESTOURO DE MEMÓRIA:' +#13+'Fase 2.1.A. Bloco 3 Sorteados'+Stgr_BlocoBase07.RowCount.ToString+#13+'Fase 3.1.A. Bloco 1 Não Sort.'+Stgr_BlocoBase06.RowCount.ToString;
         end;
   LA_gFIM_GERAR.Caption := DateToStr(Date) +' - ' + TimeToStr(Time);
//   LA_rQTD_COMB.Caption :=stgr_flagFiltro4Blocos.Cells[0,1];
//   vsQuery := vsQuery + 'select count(distinct(dados07numeros)) as QTD ';
//   vsQuery := vsQuery + 'from Cjto_6l20p11_7pre
   Self.Ibq_COMBINACOES.SQL.Clear;
   Self.Ibq_COMBINACOES.SQL.Add(vsQuery);
//   Self.Ibq_COMBINACOES.Prepare;
//   Self.Ibq_COMBINACOES.Open;
//   La_total100Repetidos.Caption := Self.Ibq_COMBINACOES.FIELDBYNAME('QTD').AsString;
   pa_FimAnalisador.Visible := True;
   pa_FimAnalisador.Left := 770;
//   showmessage(vsQuery);
   showmessage(vsMensagemEstouro);
   showmessage(vsMensagemEstouro);
end;


procedure TFrm_cjunto18por7.Bloco_de_8;
var
   viAnaliseCombinatoria, viComb1, viComb2, viComb3, viComb4, viComb5, viComb6, viComb7, viComb8, viLinhas : Integer;
   ViContarCelulas, viContarColunas: Integer;
begin
   Falso_Linha2TodosNumeros;
   for viContarColunas := 02 to 19 do
   begin
      Stgr_Todos_Numeros.Cells[STRtoINT(Stgr_base18.Cells[viContarColunas, 1]), 2] := 'V';
   end;
   viLinhas := 1;
   ScrollBox_resultado.HorzScrollBar.Position := 0;
   ScrollBox_resultado.Repaint;
   for viAnaliseCombinatoria := 1 to Stgr_base18.RowCount-1 do
   begin
      for viComb1 := 2 to Stgr_base18.ColCount-8 do    //16     original: 8
      begin
         for viComb2 := viComb1+1 to Stgr_base18.ColCount-7 do  //15     original: 7
         begin
            for viComb3 := viComb2+1 to Stgr_base18.ColCount-6 do  //14    original: 6
            begin
               for viComb4 := viComb3+1 to Stgr_base18.ColCount-5 do
               begin
                  for viComb5 := viComb4+1 to Stgr_base18.ColCount-4 do
                  begin
                     for viComb6 := viComb5+1 to Stgr_base18.ColCount-3 do
                     begin
                        for viComb7 := viComb6+1 to Stgr_base18.ColCount-2 do
                        begin
                           for viComb8 := viComb7+1 to Stgr_base18.ColCount-1 do
                           begin
                              Stgr_BlocoBase8.Cells[00,viLinhas] := viLinhas.ToString;
                              Stgr_BlocoBase8.Cells[01,viLinhas] := Stgr_base18.Cells[0, viAnaliseCombinatoria];
                              Stgr_BlocoBase8.Cells[02,viLinhas] := Stgr_base18.Cells[viComb1, viAnaliseCombinatoria];
                              Stgr_BlocoBase8.Cells[03,viLinhas] := Stgr_base18.Cells[viComb2, viAnaliseCombinatoria];
                              Stgr_BlocoBase8.Cells[04,viLinhas] := Stgr_base18.Cells[viComb3, viAnaliseCombinatoria];
                              Stgr_BlocoBase8.Cells[05,viLinhas] := Stgr_base18.Cells[viComb4, viAnaliseCombinatoria];
                              Stgr_BlocoBase8.Cells[06,viLinhas] := Stgr_base18.Cells[viComb5, viAnaliseCombinatoria];
                              Stgr_BlocoBase8.Cells[07,viLinhas] := Stgr_base18.Cells[viComb6, viAnaliseCombinatoria];
                              Stgr_BlocoBase8.Cells[08,viLinhas] := Stgr_base18.Cells[viComb7, viAnaliseCombinatoria];
                              Stgr_BlocoBase8.Cells[09,viLinhas] := Stgr_base18.Cells[viComb8, viAnaliseCombinatoria];

                              Falso_Linha1TodosNumeros;
                              for viContarColunas := 02 to 09 do
                              begin
                                 Stgr_Todos_Numeros.Cells[STRtoINT(Stgr_BlocoBase8.Cells[viContarColunas, viLinhas]), 1] := 'V';
                              end;
                              ViContarCelulas := 1;
                              FOR viContarColunas :=1 TO 25 DO
                              BEGIN
                                 IF  (Stgr_Todos_Numeros.Cells[viContarColunas,2]='V')  and  (Stgr_Todos_Numeros.Cells[viContarColunas,1]='F') THEN
                                 BEGIN
                                      Stgr_BlocoBase10.Cells [ViContarCelulas+1, viLinhas] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContarColunas,0]),2) ;
                                      ViContarCelulas := ViContarCelulas+1;
                                 END; // IF (STRGR_TODOS_NUMEROS
                              END; // FOR viContarColunas
                              Stgr_BlocoBase10.Cells[00,viLinhas] := viLinhas.ToString;
                              Stgr_BlocoBase10.Cells[01,viLinhas] := Stgr_base18.Cells[0, viAnaliseCombinatoria];
                              viLinhas := viLinhas +1;
                           end; // for viComb8
                        end; // for viComb7
                     end; // for viComb6
                  end; // for viComb5
               end; // for viComb4
            end; // for viComb3
            Stgr_BlocoBase8.RowCount := viLinhas;
            Stgr_BlocoBase8.Repaint;
            Stgr_BlocoBase10.RowCount := viLinhas;
            Stgr_BlocoBase10.Repaint;
            sleep (10);
         end; // for viComb2
      end; // for viComb1
   end;
   Stgr_BlocoBase8.RowCount := viLinhas;
   Stgr_BlocoBase8.Repaint;
   Stgr_BlocoBase10.RowCount := viLinhas;
   Stgr_BlocoBase10.Repaint;
   ReconstroiTela;
end;





procedure TFrm_cjunto18por7.Bloco_de_5Base8;
var
   viAnaliseCombinatoria, viComb1, viComb2, viComb3, viComb4, viComb5, viLinhas : Integer;
begin
   viLinhas := 1;
   for viAnaliseCombinatoria := 43753 to Trunc((Stgr_BlocoBase8.RowCount-1)/viDivisorExecutar2) do  // /49 45 ou 145
   begin
      for viComb1 := 2 to Stgr_BlocoBase8.ColCount-5 do
      begin
         for viComb2 := viComb1+1 to Stgr_BlocoBase8.ColCount-4 do
         begin
            for viComb3 := viComb2+1 to Stgr_BlocoBase8.ColCount-3 do
            begin
               for viComb4 := viComb3+1 to Stgr_BlocoBase8.ColCount-2 do
               begin
                  for viComb5 := viComb4+1 to Stgr_BlocoBase8.ColCount-1 do
                  begin
                     Stgr_Bloco_5Base8.Cells[00,viLinhas] := viLinhas.ToString;
                     Stgr_Bloco_5Base8.Cells[01,viLinhas] := Stgr_BlocoBase8.Cells[0, viAnaliseCombinatoria];
                     Stgr_Bloco_5Base8.Cells[02,viLinhas] := Stgr_BlocoBase8.Cells[1, viAnaliseCombinatoria];
                     Stgr_Bloco_5Base8.Cells[03,viLinhas] := Stgr_BlocoBase8.Cells[viComb1, viAnaliseCombinatoria];
                     Stgr_Bloco_5Base8.Cells[04,viLinhas] := Stgr_BlocoBase8.Cells[viComb2, viAnaliseCombinatoria];
                     Stgr_Bloco_5Base8.Cells[05,viLinhas] := Stgr_BlocoBase8.Cells[viComb3, viAnaliseCombinatoria];
                     Stgr_Bloco_5Base8.Cells[06,viLinhas] := Stgr_BlocoBase8.Cells[viComb4, viAnaliseCombinatoria];
                     Stgr_Bloco_5Base8.Cells[07,viLinhas] := Stgr_BlocoBase8.Cells[viComb5, viAnaliseCombinatoria];
                     viLinhas := viLinhas +1;
                  end; // for viComb5
               end; // for viComb4
            end; // for viComb3
         end; // for viComb2
         if viAnaliseCombinatoria MOD 450 = 0 then    //135
         begin
            Stgr_Bloco_5Base8.RowCount := viLinhas;
            Stgr_Bloco_5Base8.Repaint;
            pgbr_GerandoBloco5.Position := trunc((viAnaliseCombinatoria / (Stgr_BlocoBase8.RowCount-1))*100);
            pgbr_GerandoBloco5.Repaint;
            sleep (99);
            // piscar tela a cada 2250 ou  1125
         end;
         if viAnaliseCombinatoria MOD 4500 = 0 then    //450  - 1450
         begin
            ReconstroiTela;
         end;
      end; // for viComb1

      IF (viAnaliseCombinatoria mod viDivisorAtualizar1)=0 then
      begin
         Stgr_Bloco_5Base8.RowCount := viLinhas;
         Stgr_Bloco_5Base8.Repaint;
         Bloco_de_3Base8();
         Bloco_de_3Base5();     // a partir do 5 base 8
         Bloco_de_2Base5();     // a partir 3 base 8
         //GravarCJTO_18P7_3base5_3S2NS;
//            LimparGrid_Bloco_5Base8;
//            LimparGrid_Bloco_3Base8;
//            LimparGrid_bloco3S_5Base8;
//            LimparGrid_bloco2NS_5Base8;
            ReconstroiTela;
         pgbr_GerandoBloco5.Position := 0;
        // Exit;
      end;

   end;
   pgbr_GerandoBloco5.Position := 100;
   pgbr_GerandoBloco5.Repaint;
   Stgr_Bloco_5Base8.RowCount := viLinhas;
   Stgr_Bloco_5Base8.Repaint;

         Bloco_de_3Base8();
         Bloco_de_3Base5();     // a partir do 5 base 8
         Bloco_de_2Base5();     // a partir 3 base 8


   ReconstroiTela;
end;



procedure TFrm_cjunto18por7.Bloco_de_3Base5;
var
   viAnaliseCombinatoria, viComb1, viComb2, viComb3, ViContarCelulas, viContarColunas, viLinhas, viTotalLinhas : Integer;
   vsiFimAC : smallint;
begin
   //Label100.Caption := 'Bloco_de_3//5 comecou';
   //Label100.Repaint;
   vsiFimAC := 1;
   if viDivisorExecutar2 > 1 then
      vsiFimAC := 8;
   viLinhas := 1;
   viTotalLinhas := 1;
   pgbr_GerandoBloco3e2.Position := 0;
   for viAnaliseCombinatoria := 1 to Trunc((Stgr_Bloco_5Base8.RowCount-1)/vsiFimAC) do
   begin
      for viComb1 := 3 to Stgr_Bloco_5Base8.ColCount- 3 do
      begin
         for viComb2 := viComb1+1 to Stgr_Bloco_5Base8.ColCount-2 do
         begin
            for viComb3 := viComb2+1 to Stgr_Bloco_5Base8.ColCount-1 do
            begin
               Stgr_bloco3S_5Base8.Cells[00,viLinhas] := viTotalLinhas.ToString;
               Stgr_bloco3S_5Base8.Cells[01,viLinhas] := Stgr_Bloco_5Base8.Cells[0, viAnaliseCombinatoria];
               Stgr_bloco3S_5Base8.Cells[02,viLinhas] := Stgr_Bloco_5Base8.Cells[1, viAnaliseCombinatoria];
               Stgr_bloco3S_5Base8.Cells[03,viLinhas] := Stgr_Bloco_5Base8.Cells[viComb1, viAnaliseCombinatoria];
               Stgr_bloco3S_5Base8.Cells[04,viLinhas] := Stgr_Bloco_5Base8.Cells[viComb2, viAnaliseCombinatoria];
               Stgr_bloco3S_5Base8.Cells[05,viLinhas] := Stgr_Bloco_5Base8.Cells[viComb3, viAnaliseCombinatoria];
                  Falso_Linha1TodosNumeros;
                  Falso_Linha2TodosNumeros;
                  for viContarColunas := 03 to 07 do
                  begin
                     Stgr_Todos_Numeros.Cells[(STRtoINT(Stgr_Bloco_5Base8.Cells[viContarColunas, (Stgr_bloco3S_5Base8.Cells[01,viLinhas]).ToInteger])), 1] := 'V';
                  end;
                  for viContarColunas := 03 to 05 do
                  begin
                     Stgr_Todos_Numeros.Cells[(STRtoINT(Stgr_bloco3S_5Base8.Cells[viContarColunas, viLinhas])), 2] := 'V';
                  end;
                  ViContarCelulas := 1;
                  Stgr_bloco2NS_5Base8.Cells [00,viLinhas] := viTotalLinhas.ToString;
                  Stgr_bloco2NS_5Base8.Cells[01,viLinhas] := Stgr_Bloco_5Base8.Cells[0, viAnaliseCombinatoria];
                  Stgr_bloco2NS_5Base8.Cells[02,viLinhas] := Stgr_Bloco_5Base8.Cells[1, viAnaliseCombinatoria];
                  FOR viContarColunas :=1 TO 25 DO
                  BEGIN
                     IF (Stgr_Todos_Numeros.Cells[viContarColunas,1]='V') and (Stgr_Todos_Numeros.Cells[viContarColunas,2]='F') THEN
                     BEGIN
                          Stgr_bloco2NS_5Base8.Cells [ViContarCelulas+2, viLinhas] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContarColunas,0]),2) ;
                          ViContarCelulas := ViContarCelulas+1;
                     END; // IF (STRGR_TODOS_NUMEROS
                  END; // FOR viContarColunas
               viLinhas := viLinhas +1;
               viTotalLinhas := viTotalLinhas +1;
            end; // for viComb3
         end; // for viComb2
         if viAnaliseCombinatoria MOD 3059 = 0 then    //54000  45000   ou 13500
         begin
            ReconstroiTela;
         end;
//         if viAnaliseCombinatoria MOD viDivisorSalvar1 = 0 then    //45000
//         begin
//            Stgr_bloco2NS_5Base8.RowCount := viLinhas;
//            Stgr_bloco3S_5Base8.RowCount := viLinhas;
//            GravarCJTO_18P7_3base5_3S2NS;
//            LimparGrid_bloco3S_5Base8;
//            LimparGrid_bloco2NS_5Base8;
//            viLinhas := 1;
//            ReconstroiTela;
//         end;
      end; // for viComb1
      if (viAnaliseCombinatoria MOD viDivisorAtualizar1) = 0 then    //45000
      begin
         Stgr_bloco3S_5Base8.RowCount := viLinhas;
         Stgr_bloco3S_5Base8.Repaint;
         Stgr_bloco2NS_5Base8.RowCount := viLinhas;
         Stgr_bloco2NS_5Base8.Repaint;
         try
            pgbr_GerandoBloco3e2.Position := trunc((viAnaliseCombinatoria / (Stgr_Bloco_5Base8.RowCount-1))*100);
         except
            showmessage('Seguindo em frente -- 0 --');
         end;
         pgbr_GerandoBloco3e2.Repaint;
         sleep (viTime1);
      end;
   end;
   Stgr_BlocoBase8.Cells[0,0] := viTotalLinhas.ToString;
   Stgr_BlocoBase8.Repaint;
   Stgr_Bloco_5Base8.Cells[0,0] := viTotalLinhas.ToString;
   Stgr_Bloco_5Base8.Repaint;
   pgbr_GerandoBloco3e2.Position := 100;
   pgbr_GerandoBloco3e2.Repaint;
   Stgr_bloco3S_5Base8.RowCount := viLinhas;
   Stgr_bloco3S_5Base8.Repaint;
   Stgr_bloco2NS_5Base8.RowCount := viLinhas;
   Stgr_bloco2NS_5Base8.Repaint;
//   GravarCJTO_18P7_3base5_3S2NS;
//   Label101.Caption := 'Bloco_de_3//5 TERMINOU';
//   Label101.Repaint;
   ReconstroiTela;
end;



procedure TFrm_cjunto18por7.Bloco_de_3Base8;
var
   viAnaliseCombinatoria, viContarColunas, ViContarCelulas : Integer;
begin
//   Label102.Caption := 'Bloco_de_3/8 começou';
//   Label102.Repaint;
   ScrollBox_resultado.HorzScrollBar.Position := 750;
   ScrollBox_resultado.Repaint;
   pgbr_GerandoBloco3do8.Position := 0;
   for viAnaliseCombinatoria := 1 to Trunc((Stgr_Bloco_5Base8.RowCount-1)/1) do
   begin
      Stgr_Bloco_3Base8.Cells[00,viAnaliseCombinatoria] := Stgr_Bloco_5Base8.Cells[00,viAnaliseCombinatoria];
      Stgr_Bloco_3Base8.Cells[01,viAnaliseCombinatoria] := Stgr_Bloco_5Base8.Cells[01,viAnaliseCombinatoria];
      Stgr_Bloco_3Base8.Cells[02,viAnaliseCombinatoria] := Stgr_Bloco_5Base8.Cells[02,viAnaliseCombinatoria];
      Falso_Linha1TodosNumeros;
      Falso_Linha2TodosNumeros;
      for viContarColunas := 02 to 09 do
      begin
         Stgr_Todos_Numeros.Cells[STRtoINT(Stgr_BlocoBase8.Cells[viContarColunas, Stgr_Bloco_5Base8.Cells[01,viAnaliseCombinatoria].ToInteger]), 1] := 'V';
      end;
      for viContarColunas := 03 to 07 do
      begin
         Stgr_Todos_Numeros.Cells[STRtoINT(Stgr_Bloco_5Base8.Cells[viContarColunas, viAnaliseCombinatoria]), 2] := 'V';
      end;
      ViContarCelulas := 1;
      FOR viContarColunas :=1 TO 25 DO
      BEGIN
         IF (Stgr_Todos_Numeros.Cells[viContarColunas,1]='V') and (Stgr_Todos_Numeros.Cells[viContarColunas,2]='F') THEN
         BEGIN
              Stgr_Bloco_3Base8.Cells [ViContarCelulas+2, viAnaliseCombinatoria] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContarColunas,0]),2) ;
              ViContarCelulas := ViContarCelulas+1;
         END; // IF (STRGR_TODOS_NUMEROS
      END; // FOR viContarColunas
      if viAnaliseCombinatoria MOD 1000 = 0 then    //450
      begin
         Stgr_Bloco_3Base8.RowCount := viAnaliseCombinatoria;
         Stgr_Bloco_3Base8.Repaint;
         pgbr_GerandoBloco3do8.Position := trunc((viAnaliseCombinatoria / (Stgr_Bloco_5Base8.RowCount-1))*100);
         pgbr_GerandoBloco3do8.Repaint;
         sleep (29);
         // piscar tela a cada 2250 ou  1125
      end;
      if viAnaliseCombinatoria MOD 2000 = 0 then    //450
      begin
         ReconstroiTela;
      end;
   end;
   pgbr_GerandoBloco3do8.Position := 100;
   pgbr_GerandoBloco3do8.Repaint;
   Stgr_Bloco_3Base8.RowCount := viAnaliseCombinatoria;
   Stgr_Bloco_3Base8.Repaint;
//   Label103.Caption := 'Bloco_de_3/8 começou';
//   Label103.Repaint;
   ReconstroiTela;
end;


Procedure TFrm_cjunto18por7.GravarCJTO_18P7_bloco5S_Base8();
Var
   vsQuery, vsNumerosSort, vsNumerosNaoSort, vsNomeTabela : String;
   viTotalLinhas, viContarColunas : integer;
Begin
   Pgbr_gravarDados1.Position := 0;
   Pgbr_gravarDados1.Repaint;
   Lab_gravarDados1.Font.Size := 12;
   Lab_gravarDados1.Font.Style := [fsUnderline];
   Lab_gravarDados1.Repaint;
   vsNomeTabela := 'CJTO_18P7_5S_Base8_3S2NS';
   for viTotalLinhas := 1 to Stgr_bloco5S_Base8.RowCount-1 do
   begin
      vsNumerosSort := '';
      for viContarColunas := 3 to 7 do
      begin
         vsNumerosSort:= vsNumerosSort + Stgr_bloco5S_Base8.Cells[viContarColunas,viTotalLinhas] + ' ';
      end;
      vsNumerosNaoSort := '';
      for viContarColunas := 1 to 3 do
      begin
         vsNumerosNaoSort:= vsNumerosNaoSort + Stgr_bloco3NS_Base8.Cells[viContarColunas,viTotalLinhas] + ' ';
      end;
      vsQuery  := 'INSERT INTO ' +vsNomeTabela+ ' (POSICAO05DE08, POSICAO08, SORTEADOS, NAO_SORTEADOS) Values ('
              +#39+  TRIM(Stgr_bloco5S_Base8.Cells[1,viTotalLinhas])
              +#39+ ','+#39+ TRIM(Stgr_bloco5S_Base8.Cells[2,viTotalLinhas])
              +#39+ ','+#39+  TRIM(vsNumerosSort)
              +#39+ ','+#39+  TRIM(vsNumerosNaoSort)
          +#39+ ');';
      IBQ_Combinacoes.SQL.Clear;
      IBQ_Combinacoes.SQL.Add(vsQuery)  ;
      iBQ_Combinacoes.ExecSQL;
      if (viTotalLinhas MOD 100) = 0 then
      BEGIN
         Pgbr_gravarDados1.Position := Trunc((viTotalLinhas/(Stgr_bloco5S_Base8.RowCount-1))*100);
         Pgbr_gravarDados1.Repaint;
         Sleep (25);
      END;
   end;
   Pgbr_gravarDados1.Position := 100;
   Pgbr_gravarDados1.Repaint;
   IBQ_Combinacoes.SQL.Clear;
   IBQ_Combinacoes.SQL.Add('COMMIT')  ;
   IBQ_Combinacoes.ExecSQL;
   IBQ_Combinacoes.Transaction.StartTransaction;
   IBQ_Combinacoes.Transaction.Commit;
   IBQ_Combinacoes.Transaction.StartTransaction;
   Lab_gravarDados1.Font.Size := 10;
   Lab_gravarDados1.Font.Style := [fsBold];
   Lab_gravarDados1.Repaint;
   Pgbr_gravarDados1.Repaint;
End;



procedure TFrm_cjunto18por7.Bloco_de_2Base5;
var
   viAnaliseCombinatoria, viComb1, viComb2, ViContarCelulas, viContarColunas, viLinhas, viTotalLinhas : Integer;
   vsiFimAC : smallint;
begin
//   Label100.Caption := 'Bloco_de_2//5 comecou';
//   Label100.Repaint;
   viLinhas := 1;
   viTotalLinhas := 1;
   ScrollBox_resultado.HorzScrollBar.Position := 990;
   ScrollBox_resultado.Repaint;
   pgbr_GerandoBloco2e1.Position := 0;
   vsiFimAC := 1;
   if viDivisorExecutar2 > 1 then
      vsiFimAC := 8;
   for viAnaliseCombinatoria := 1 to Trunc((Stgr_Bloco_3Base8.RowCount-1)/vsiFimAC) do
   begin
      for viComb1 := 3 to Stgr_Bloco_3Base8.ColCount-2 do
      begin
         for viComb2 := viComb1+1 to Stgr_Bloco_3Base8.ColCount-1 do
         begin
            Stgr_bloco2S_3Base8.Cells[00,viLinhas] := viTotalLinhas.ToString;
            Stgr_bloco2S_3Base8.Cells[01,viLinhas] := Stgr_Bloco_3Base8.Cells[0, viAnaliseCombinatoria];
            Stgr_bloco2S_3Base8.Cells[02,viLinhas] := Stgr_Bloco_3Base8.Cells[1, viAnaliseCombinatoria];
            Stgr_bloco2S_3Base8.Cells[03,viLinhas] := Stgr_Bloco_3Base8.Cells[viComb1, viAnaliseCombinatoria];
            Stgr_bloco2S_3Base8.Cells[04,viLinhas] := Stgr_Bloco_3Base8.Cells[viComb2, viAnaliseCombinatoria];
            Falso_Linha1TodosNumeros;
            Falso_Linha2TodosNumeros;
            for viContarColunas := 03 to 05 do
            begin
               Stgr_Todos_Numeros.Cells[(STRtoINT(Stgr_Bloco_3Base8.Cells[viContarColunas, (Stgr_bloco2S_3Base8.Cells[01,viLinhas]).ToInteger])), 1] := 'V';
            end;
            for viContarColunas := 03 to 04 do
            begin
               Stgr_Todos_Numeros.Cells[(STRtoINT(Stgr_bloco2S_3Base8.Cells[viContarColunas, viLinhas])), 2] := 'V';
            end;
            Stgr_bloco1NS_3Base8.Cells [00,viLinhas] := viTotalLinhas.ToString;
            ViContarCelulas := 1;
            FOR viContarColunas :=1 TO 25 DO
            BEGIN
               IF (Stgr_Todos_Numeros.Cells[viContarColunas,1]='V') and (Stgr_Todos_Numeros.Cells[viContarColunas,2]='F') THEN
               BEGIN
                    Stgr_bloco1NS_3Base8.Cells [ViContarCelulas+2, viLinhas] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContarColunas,0]),2) ;
                    ViContarCelulas := ViContarCelulas+1;
               END; // IF (STRGR_TODOS_NUMEROS
            END; // FOR viContarColunas
            viLinhas := viLinhas +1;
            viTotalLinhas := viTotalLinhas +1;
         end; // for viComb2
         if viAnaliseCombinatoria MOD (3059*2) = 0 then    //45000   ou 13500
         begin
            ReconstroiTela;
         end;
         if (viTotalLinhas MOD viDivisorSalvar1) = 0 then    //45000
         begin
            Stgr_bloco2S_3Base8.RowCount := viLinhas;
            Stgr_bloco2S_3Base8.Repaint;
            Stgr_bloco1NS_3Base8.RowCount := viLinhas;
            Stgr_bloco1NS_3Base8.Repaint;
        Base_5Sorteados;
            viLinhas := 1;
            ScrollBox_resultado.HorzScrollBar.Position := 990;
            ScrollBox_resultado.Repaint;
            ReconstroiTela;
//                  Exit;
         end;
      end; // for viComb1
      if viAnaliseCombinatoria MOD viDivisorAtualizar2 = 0 then    //45000
      begin
         Stgr_bloco2S_3Base8.RowCount := viLinhas;
         Stgr_bloco2S_3Base8.Repaint;
         Stgr_bloco1NS_3Base8.RowCount := viLinhas;
         Stgr_bloco1NS_3Base8.Repaint;
         pgbr_GerandoBloco2e1.Position := trunc((viAnaliseCombinatoria / (Stgr_Bloco_3Base8.RowCount-1))*100);
         pgbr_GerandoBloco2e1.Repaint;
         sleep (viTime1);
      end;
   end;
   Stgr_BlocoBase8.Cells[0,0] := viTotalLinhas.ToString;
   Stgr_BlocoBase8.Repaint;
   Stgr_Bloco_3Base8.Cells[0,0] := viTotalLinhas.ToString;
   Stgr_Bloco_3Base8.Repaint;
   pgbr_GerandoBloco2e1.Position := 100;
   pgbr_GerandoBloco2e1.Repaint;
   Stgr_bloco2S_3Base8.RowCount := viLinhas;
   Stgr_bloco2S_3Base8.Repaint;
   Stgr_bloco1NS_3Base8.RowCount := viLinhas;
   Stgr_bloco1NS_3Base8.Repaint;

Base_5Sorteados

//   Label101.Caption := 'Bloco_de_2//3 TERMINOU';
//   Label101.Repaint;
   ReconstroiTela;
end;





procedure TFrm_cjunto18por7.Bloco_de_3Base10;
var
   viAnaliseCombinatoria, viComb1, viComb2, viComb3, viComb4, viComb5, viLinhas, viTotalLinhas : Integer;
   viContarColunas, ViContarCelulas : Integer;
   vsiFimAC1, vsiFimAC2 : smallint;
begin
   try
      ScrollBox_resultado.HorzScrollBar.Position := 2795;
      ScrollBox_resultado.Repaint;
      viLinhas := 1;
      viTotalLinhas := 1;
      vsiFimAC1 := 3;
      vsiFimAC2 := 2;
//      if viDivisorExecutar3 > 1 then
//         vsiFimAC1 := 10;
//      if viDivisorExecutar3 > 1 then
//         vsiFimAC2 := 9;
//      viDivisorExecutar3 := 10;
      for viAnaliseCombinatoria := 43753 to Trunc((Stgr_BlocoBase10.RowCount-1)/viDivisorExecutar3) do  // /49 45 ou 145
      begin
         for viComb1 := 2 to Stgr_BlocoBase10.ColCount-vsiFimAC1 do // -3
         begin
            for viComb2 := viComb1+1 to Stgr_BlocoBase10.ColCount-vsiFimAC2 do   // -2
            begin
               for viComb3 := viComb2+1 to Stgr_BlocoBase10.ColCount-1 do
               begin
                  Stgr_Bloco3S_Base10.Cells[00,viLinhas] := viTotalLinhas.ToString;
                  Stgr_Bloco3S_Base10.Cells[01,viLinhas] := Stgr_BlocoBase10.Cells[0, viAnaliseCombinatoria];
                  Stgr_Bloco3S_Base10.Cells[02,viLinhas] := Stgr_BlocoBase10.Cells[1, viAnaliseCombinatoria];
                  Stgr_Bloco3S_Base10.Cells[03,viLinhas] := Stgr_BlocoBase10.Cells[viComb1, viAnaliseCombinatoria];
                  Stgr_Bloco3S_Base10.Cells[04,viLinhas] := Stgr_BlocoBase10.Cells[viComb2, viAnaliseCombinatoria];
                  Stgr_Bloco3S_Base10.Cells[05,viLinhas] := Stgr_BlocoBase10.Cells[viComb3, viAnaliseCombinatoria];

                  Falso_Linha1TodosNumeros;
                  Falso_Linha2TodosNumeros;
                  for viContarColunas := 02 to 11 do
                  begin
                     Stgr_Todos_Numeros.Cells[STRtoINT(Stgr_BlocoBase10.Cells[viContarColunas, viAnaliseCombinatoria]), 1] := 'V';
                  end;
                  for viContarColunas := 03 to 05 do
                  begin
                     Stgr_Todos_Numeros.Cells[STRtoINT(Stgr_Bloco3S_Base10.Cells[viContarColunas, viLinhas]), 2] := 'V';
                  end;
                  ViContarCelulas := 2;
                  FOR viContarColunas :=1 TO 25 DO
                  BEGIN
                     IF (Stgr_Todos_Numeros.Cells[viContarColunas,1]='V') and  (Stgr_Todos_Numeros.Cells[viContarColunas,2]='F') THEN
                     BEGIN
                          Stgr_BlocoBase07.Cells [ViContarCelulas+1, viLinhas] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContarColunas,0]),2) ;
                          ViContarCelulas := ViContarCelulas+1;
                     END; // IF (STRGR_TODOS_NUMEROS
                  END; // FOR viContarColunas
                  Stgr_BlocoBase07.Cells[00,viLinhas] :=Stgr_Bloco3S_Base10.Cells[00,viLinhas] ;
                  Stgr_BlocoBase07.Cells[01,viLinhas] :=Stgr_Bloco3S_Base10.Cells[01,viLinhas] ;
                  Stgr_BlocoBase07.Cells[02,viLinhas] :=Stgr_Bloco3S_Base10.Cells[02,viLinhas] ;

                  viLinhas := viLinhas +1;
                  viTotalLinhas := viTotalLinhas +1;

                  IF (viLinhas mod viDivisorSalvar2)=0 then    // MENOR VALOR 131130
                  begin
                     Stgr_Bloco3S_Base10.RowCount := viLinhas;
                     Stgr_Bloco3S_Base10.Repaint;
                     Stgr_BlocoBase07.RowCount := viLinhas;
                     Stgr_BlocoBase07.Repaint;
                     ReconstroiTela;
                     Bloco_de_1Base06();
                     ScrollBox_resultado.HorzScrollBar.Position := 2795;
                     ScrollBox_resultado.Repaint;
                     ReconstroiTela;
                     pgbr_Bloco3S_Base10.Position := trunc((viAnaliseCombinatoria / (Stgr_BlocoBase10.RowCount-1))*100);
                     pgbr_Bloco3S_Base10.Repaint;
                     // limpar bloco de 6
                     // gravar
                     //LimparGrid_BlocoBase06();
                     viLinhas := 1;
                     Stgr_Bloco3S_Base10.RowCount := viLinhas;
                     Stgr_Bloco3S_Base10.Repaint;
                     Stgr_BlocoBase07.RowCount := viLinhas;
                     Stgr_BlocoBase07.Repaint;
                  end;

               end; // for viComb3
            end; // for viComb2
            if (viAnaliseCombinatoria MOD Trunc((Stgr_BlocoBase10.RowCount-1)/(viDivisorExecutar3/15))) = 0 then    //135    //450
            begin
               Stgr_Bloco3S_Base10.RowCount := viLinhas;
               Stgr_Bloco3S_Base10.Repaint;
               Stgr_BlocoBase07.RowCount := viLinhas;
               Stgr_BlocoBase07.Repaint;
               pgbr_Bloco3S_Base10.Position := trunc((viAnaliseCombinatoria / (Stgr_BlocoBase10.RowCount-1))*100);
               pgbr_Bloco3S_Base10.Repaint;
               sleep (viTime1);
               // piscar tela a cada 2250 ou  1125
            end;
            if  (viAnaliseCombinatoria MOD Trunc((Stgr_BlocoBase10.RowCount-1)/(viDivisorExecutar3/5))) = 0 then    //450  - 1450
            begin
               ReconstroiTela;
            end;
         end; // for viComb1
      end;
   finally
      pgbr_Bloco3S_Base10.Position := 100;
      pgbr_Bloco3S_Base10.Repaint;
      Stgr_Bloco3S_Base10.RowCount := viLinhas;
      Stgr_Bloco3S_Base10.Repaint;
      Stgr_BlocoBase07.RowCount := viLinhas;
      Stgr_BlocoBase07.Repaint;
      ReconstroiTela;

      Bloco_de_1Base06();
   end;
end;



procedure TFrm_cjunto18por7.Bloco_de_1Base06;
var
   viAnaliseCombinatoria, viComb1, viComb2, viComb3, viComb4, viComb5, viLinhas : Integer;
   viContarColunas, ViContarCelulas : Integer;
   vsiFimAC1: smallint;
begin
   try
      pgbr_Bloco1nS_Base07.Position := 0;
      pgbr_Bloco1nS_Base07.Repaint;
      Stgr_Bloco1nS_Base07.RowCount := viLinhas;
      Stgr_Bloco1nS_Base07.Repaint;
      Stgr_BlocoBase06.RowCount := viLinhas;
      Stgr_BlocoBase06.Repaint;
      ScrollBox_resultado.HorzScrollBar.Position := 3575;
      ScrollBox_resultado.Repaint;
      ReconstroiTela;
      viLinhas := 1;
      vsiFimAC1 := 1;
      if viDivisorExecutar3 > 1 then
         vsiFimAC1 := 1;
      for viAnaliseCombinatoria := 1 to Trunc((Stgr_BlocoBase07.RowCount-1)/vsiFimAC1) do  // /49 45 ou 145
      begin
         for viComb1 := 3 to Stgr_BlocoBase07.ColCount-vsiFimAC1 do     //-1
         begin
            Stgr_Bloco1nS_Base07.Cells[00,viLinhas] := viLinhas.ToString;
            Stgr_Bloco1nS_Base07.Cells[01,viLinhas] := Stgr_BlocoBase07.Cells[0, viAnaliseCombinatoria];
            Stgr_Bloco1nS_Base07.Cells[02,viLinhas] := Stgr_BlocoBase07.Cells[1, viAnaliseCombinatoria];
            Stgr_Bloco1nS_Base07.Cells[03,viLinhas] := Stgr_BlocoBase07.Cells[viComb1, viAnaliseCombinatoria];

            Falso_Linha1TodosNumeros;
            Falso_Linha2TodosNumeros;
            for viContarColunas := 03 to 09 do
            begin
               Stgr_Todos_Numeros.Cells[STRtoINT(Stgr_BlocoBase07.Cells[viContarColunas, viAnaliseCombinatoria]), 1] := 'V';
            end;
            for viContarColunas := 03 to 03 do
            begin
               Stgr_Todos_Numeros.Cells[STRtoINT(Stgr_Bloco1nS_Base07.Cells[viContarColunas, viLinhas]), 2] := 'V';
            end;
            ViContarCelulas := 2;
            FOR viContarColunas :=1 TO 25 DO
            BEGIN
               IF (Stgr_Todos_Numeros.Cells[viContarColunas,1]='V') and  (Stgr_Todos_Numeros.Cells[viContarColunas,2]='F') THEN
               BEGIN
                    Stgr_BlocoBase06.Cells [ViContarCelulas+1, viLinhas] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContarColunas,0]),2) ;
                    ViContarCelulas := ViContarCelulas+1;
               END; // IF (STRGR_TODOS_NUMEROS
            END; // FOR viContarColunas
            Stgr_BlocoBase06.Cells[00,viLinhas] :=Stgr_Bloco1nS_Base07.Cells[00,viLinhas] ;
            Stgr_BlocoBase06.Cells[01,viLinhas] :=Stgr_Bloco1nS_Base07.Cells[01,viLinhas] ;
            Stgr_BlocoBase06.Cells[02,viLinhas] :=Stgr_BlocoBase07.Cells[1, viAnaliseCombinatoria]; // Stgr_Bloco1nS_Base07.Cells[02,viLinhas] ;

            viLinhas := viLinhas +1;
         end; // for viComb1
         if viAnaliseCombinatoria MOD 990 = 0 then    //135 1920
         begin
            Stgr_Bloco1nS_Base07.RowCount := viLinhas;
            Stgr_Bloco1nS_Base07.Repaint;
            Stgr_BlocoBase06.RowCount := viLinhas;
            Stgr_BlocoBase06.Repaint;
            pgbr_Bloco1nS_Base07.Position := trunc((viAnaliseCombinatoria / (Stgr_BlocoBase07.RowCount-1))*100);
            pgbr_Bloco1nS_Base07.Repaint;
            sleep (1);    //19
            LimparGrid_Stgr_Bloco10S   ;
            if viTipoAcBlocoBase6=0 then
               Bloco_de_3Base06
            else
               Bloco_de_1Base06e5 ;

            ReconstroiTela;
            GravarCJTO_18P7_10S_Base10;
            ScrollBox_resultado.HorzScrollBar.Position := 3575;
            ScrollBox_resultado.Repaint;
            LimparGrid_BlocoBase06;
            viLinhas := 1;
            Stgr_Bloco1nS_Base07.RowCount := viLinhas;
            Stgr_Bloco1nS_Base07.Repaint;
            Stgr_BlocoBase06.RowCount := viLinhas;
            Stgr_BlocoBase06.Repaint;
            ReconstroiTela;
         end;
         if viAnaliseCombinatoria MOD 3945 = 0 then    //450  - 1450   14400
         begin
            ReconstroiTela;
         end;
      end;
   finally
      pgbr_Bloco1nS_Base07.Position := 100;
      pgbr_Bloco1nS_Base07.Repaint;
      Stgr_Bloco1nS_Base07.RowCount := viLinhas;
      Stgr_Bloco1nS_Base07.Repaint;
      Stgr_BlocoBase06.RowCount := viLinhas;
      Stgr_BlocoBase06.Repaint;
      if viTipoAcBlocoBase6=0 then
         Bloco_de_3Base06
      else
         Bloco_de_1Base06e5 ;
      GravarCJTO_18P7_10S_Base10;
      LimparGrid_BlocoBase06;
      ReconstroiTela;
   end;
end;



procedure TFrm_cjunto18por7.Bloco_de_3Base06;
var
   viAnaliseCombinatoria, viComb1, viComb2, viComb3, viContaSerie7, viLinhas, viLinhas2, viLinhaCapturar : Integer;
   viContarColunas, ViContarCelulas : Integer;
   vasSobram3: array [1..3] of String;
begin
   try
      ScrollBox_resultado.HorzScrollBar.Position := 4540;
      ScrollBox_resultado.Repaint;
      viLinhas := 1;
      viLinhas2 := 1;
      for viAnaliseCombinatoria := 1 to Trunc((Stgr_BlocoBase06.RowCount-1)/1) do
      begin
         for viComb1 := 3 to Stgr_BlocoBase06.ColCount-3 do
         begin
            for viComb2 := viComb1+1 to Stgr_BlocoBase06.ColCount-2 do
            begin
               for viComb3 := viComb2+1 to Stgr_BlocoBase06.ColCount-1 do
               begin
                  Stgr_Bloco3S_Base06.Cells[00,viLinhas] := viLinhas.ToString;
                  Stgr_Bloco3S_Base06.Cells[01,viLinhas] := Stgr_BlocoBase06.Cells[0, viAnaliseCombinatoria];
                  Stgr_Bloco3S_Base06.Cells[02,viLinhas] := Stgr_BlocoBase06.Cells[1, viAnaliseCombinatoria];
                  Stgr_Bloco3S_Base06.Cells[03,viLinhas] := Stgr_BlocoBase06.Cells[viComb1, viAnaliseCombinatoria];
                  Stgr_Bloco3S_Base06.Cells[04,viLinhas] := Stgr_BlocoBase06.Cells[viComb2, viAnaliseCombinatoria];
                  Stgr_Bloco3S_Base06.Cells[05,viLinhas] := Stgr_BlocoBase06.Cells[viComb3, viAnaliseCombinatoria];

                     // ==>  1 não sorteado
                     Falso_Linha1TodosNumeros;
                     Falso_Linha2TodosNumeros;
                     for viContarColunas := 03 to 08 do
                     begin
                        Stgr_Todos_Numeros.Cells[STRtoINT(Stgr_BlocoBase06.Cells[viContarColunas, viAnaliseCombinatoria]), 1] := 'V';
                     end;
                     for viContarColunas := 03 to 05 do
                     begin
                        Stgr_Todos_Numeros.Cells[STRtoINT(Stgr_Bloco3S_Base06.Cells[viContarColunas, viLinhas]), 2] := 'V';
                     end;
                     vasSobram3[1] := '--';
                     vasSobram3[2] := '--';
                     vasSobram3[3] := '--';
                     ViContarCelulas := 1;
                     FOR viContarColunas :=1 TO 25 DO
                     BEGIN
                        IF (Stgr_Todos_Numeros.Cells[viContarColunas,1]='V') and  (Stgr_Todos_Numeros.Cells[viContarColunas,2]='F') THEN
                        BEGIN
                             vasSobram3[ViContarCelulas] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContarColunas,0]),2) ;
                             ViContarCelulas := ViContarCelulas+1;
                        END; // IF (STRGR_TODOS_NUMEROS
                     END; // FOR viContarColunas
                     Stgr_Bloco1NS_Base06.Cells[00,viLinhas] := viLinhas.ToString;
                     Stgr_Bloco1NS_Base06.Cells[1,viLinhas+0] := vasSobram3[1];
                     Stgr_Bloco1NS_Base06.Cells[00,viLinhas+1] := (viLinhas+1).ToString;
                     Stgr_Bloco1NS_Base06.Cells[1,viLinhas+1] := vasSobram3[2];
                     Stgr_Bloco1NS_Base06.Cells[00,viLinhas+2] := (viLinhas+2).ToString;
                     Stgr_Bloco1NS_Base06.Cells[1,viLinhas+2] := vasSobram3[3];
                     // adicionando linhas para depois poder encontrar sobra
                     Stgr_Bloco3S_Base06.Cells[00,viLinhas+1] :=(viLinhas+1).ToString;
                     Stgr_Bloco3S_Base06.Cells[01,viLinhas+1] := Stgr_Bloco3S_Base06.Cells[01,viLinhas];
                     Stgr_Bloco3S_Base06.Cells[02,viLinhas+1] := Stgr_Bloco3S_Base06.Cells[02,viLinhas];
                     Stgr_Bloco3S_Base06.Cells[03,viLinhas+1] := Stgr_Bloco3S_Base06.Cells[03,viLinhas];
                     Stgr_Bloco3S_Base06.Cells[04,viLinhas+1] := Stgr_Bloco3S_Base06.Cells[04,viLinhas];
                     Stgr_Bloco3S_Base06.Cells[05,viLinhas+1] := Stgr_Bloco3S_Base06.Cells[05,viLinhas];
                     Stgr_Bloco3S_Base06.Cells[00,viLinhas+2] := (viLinhas+2).ToString;
                     Stgr_Bloco3S_Base06.Cells[01,viLinhas+2] := Stgr_Bloco3S_Base06.Cells[01,viLinhas];
                     Stgr_Bloco3S_Base06.Cells[02,viLinhas+2] := Stgr_Bloco3S_Base06.Cells[02,viLinhas];
                     Stgr_Bloco3S_Base06.Cells[03,viLinhas+2] := Stgr_Bloco3S_Base06.Cells[03,viLinhas];
                     Stgr_Bloco3S_Base06.Cells[04,viLinhas+2] := Stgr_Bloco3S_Base06.Cells[04,viLinhas];
                     Stgr_Bloco3S_Base06.Cells[05,viLinhas+2] := Stgr_Bloco3S_Base06.Cells[05,viLinhas];

                     // ==>  2 Sobras
                     Stgr_Bloco2S_Base06.Cells[00,viLinhas] := viLinhas.ToString;
                     Stgr_Bloco2S_Base06.Cells[1,viLinhas+0] := vasSobram3[2];
                     Stgr_Bloco2S_Base06.Cells[2,viLinhas+0] := vasSobram3[3];
                     Stgr_Bloco2S_Base06.Cells[00,viLinhas+1] := viLinhas.ToString;
                     Stgr_Bloco2S_Base06.Cells[1,viLinhas+1] := vasSobram3[1];
                     Stgr_Bloco2S_Base06.Cells[2,viLinhas+1] := vasSobram3[3];
                     Stgr_Bloco2S_Base06.Cells[00,viLinhas+2] := viLinhas.ToString;
                     Stgr_Bloco2S_Base06.Cells[1,viLinhas+2] := vasSobram3[1];
                     Stgr_Bloco2S_Base06.Cells[2,viLinhas+2] := vasSobram3[2];

                     // ==> Base 10 N.Sort
                     for  viContaSerie7 := 0 to 4 do
                     begin
                        viLinhaCapturar := StrToInt(Stgr_Bloco1nS_Base07.Cells[1,Stgr_Bloco3S_Base06.Cells[1,viLinhas].ToInteger]);
//                        viLinhaCapturar := Stgr_BlocoBase06.Cells[1, viLinhas].ToInteger;
                        Stgr_Bloco10S.Cells[00,viLinhas2+viContaSerie7] := (viLinhas2+viContaSerie7).ToString;
                        Stgr_Bloco10S.Cells[01,viLinhas2+viContaSerie7] := Stgr_Bloco3S_Base06.Cells[01,viLinhas];
                        Stgr_Bloco10S.Cells[02,viLinhas2+viContaSerie7] := Stgr_Bloco3S_Base06.Cells[02,viLinhas];
                        Stgr_Bloco10S.Cells[03,viLinhas2+viContaSerie7] := Stgr_Bloco3S_Base10.Cells[1,viLinhaCapturar];
                        Stgr_Bloco10S.Cells[04,viLinhas2+viContaSerie7] := vasSobram3[2];
                        Stgr_Bloco10S.Cells[05,viLinhas2+viContaSerie7] := vasSobram3[3];
                        Stgr_Bloco10S.Cells[06,viLinhas2+viContaSerie7] :=  Stgr_Bloco3S_Base06.Cells[03,viLinhas];
                        Stgr_Bloco10S.Cells[07,viLinhas2+viContaSerie7] :=  Stgr_Bloco3S_Base06.Cells[04,viLinhas];
                        Stgr_Bloco10S.Cells[08,viLinhas2+viContaSerie7] :=  Stgr_Bloco3S_Base06.Cells[05,viLinhas];
                        Stgr_Bloco10S.Cells[09,viLinhas2+viContaSerie7] := Stgr_Bloco3S_Base10.Cells[03,viLinhaCapturar];
                        Stgr_Bloco10S.Cells[10,viLinhas2+viContaSerie7] := Stgr_Bloco3S_Base10.Cells[04,viLinhaCapturar];
                        Stgr_Bloco10S.Cells[11,viLinhas2+viContaSerie7] := Stgr_Bloco3S_Base10.Cells[05,viLinhaCapturar];
                        Stgr_Bloco10S.Cells[12,viLinhas2+viContaSerie7] := Stgr_serie7Sorteados.Cells[01,viContaSerie7+1];
                        Stgr_Bloco10S.Cells[13,viLinhas2+viContaSerie7] := Stgr_serie7Sorteados.Cells[02,viContaSerie7+1];

                        Stgr_Bloco10S.Cells[00,viLinhas2+viContaSerie7+1] := (viLinhas2+viContaSerie7+1).ToString;
                        Stgr_Bloco10S.Cells[01,viLinhas2+viContaSerie7+1] := Stgr_Bloco3S_Base06.Cells[01,viLinhas];
                        Stgr_Bloco10S.Cells[02,viLinhas2+viContaSerie7+1] := Stgr_Bloco3S_Base06.Cells[02,viLinhas];
                        Stgr_Bloco10S.Cells[03,viLinhas2+viContaSerie7+1] := Stgr_Bloco3S_Base10.Cells[1,viLinhaCapturar];
                        Stgr_Bloco10S.Cells[04,viLinhas2+viContaSerie7+1] := vasSobram3[1];
                        Stgr_Bloco10S.Cells[05,viLinhas2+viContaSerie7+1] := vasSobram3[3];
                        Stgr_Bloco10S.Cells[06,viLinhas2+viContaSerie7+1] :=  Stgr_Bloco3S_Base06.Cells[03,viLinhas];
                        Stgr_Bloco10S.Cells[07,viLinhas2+viContaSerie7+1] :=  Stgr_Bloco3S_Base06.Cells[04,viLinhas];
                        Stgr_Bloco10S.Cells[08,viLinhas2+viContaSerie7+1] :=  Stgr_Bloco3S_Base06.Cells[05,viLinhas];
                        Stgr_Bloco10S.Cells[09,viLinhas2+viContaSerie7+1] := Stgr_Bloco3S_Base10.Cells[03,viLinhaCapturar];
                        Stgr_Bloco10S.Cells[10,viLinhas2+viContaSerie7+1] := Stgr_Bloco3S_Base10.Cells[04,viLinhaCapturar];
                        Stgr_Bloco10S.Cells[11,viLinhas2+viContaSerie7+1] := Stgr_Bloco3S_Base10.Cells[05,viLinhaCapturar];
                        Stgr_Bloco10S.Cells[12,viLinhas2+viContaSerie7+1] := Stgr_serie7Sorteados.Cells[01,viContaSerie7+1];
                        Stgr_Bloco10S.Cells[13,viLinhas2+viContaSerie7+1] := Stgr_serie7Sorteados.Cells[02,viContaSerie7+1];

                        Stgr_Bloco10S.Cells[00,viLinhas2+viContaSerie7+2] := (viLinhas2+viContaSerie7+2).ToString;
                        Stgr_Bloco10S.Cells[01,viLinhas2+viContaSerie7+2] := Stgr_Bloco3S_Base06.Cells[01,viLinhas];
                        Stgr_Bloco10S.Cells[02,viLinhas2+viContaSerie7+2] := Stgr_Bloco3S_Base06.Cells[02,viLinhas];
                        Stgr_Bloco10S.Cells[03,viLinhas2+viContaSerie7+2] := Stgr_Bloco3S_Base10.Cells[1,viLinhaCapturar];
                        Stgr_Bloco10S.Cells[04,viLinhas2+viContaSerie7+2] := vasSobram3[1];
                        Stgr_Bloco10S.Cells[05,viLinhas2+viContaSerie7+2] := vasSobram3[2];
                        Stgr_Bloco10S.Cells[06,viLinhas2+viContaSerie7+2] :=  Stgr_Bloco3S_Base06.Cells[03,viLinhas];
                        Stgr_Bloco10S.Cells[07,viLinhas2+viContaSerie7+2] :=  Stgr_Bloco3S_Base06.Cells[04,viLinhas];
                        Stgr_Bloco10S.Cells[08,viLinhas2+viContaSerie7+2] :=  Stgr_Bloco3S_Base06.Cells[05,viLinhas];
                        Stgr_Bloco10S.Cells[09,viLinhas2+viContaSerie7+2] := Stgr_Bloco3S_Base10.Cells[03,viLinhaCapturar];
                        Stgr_Bloco10S.Cells[10,viLinhas2+viContaSerie7+2] := Stgr_Bloco3S_Base10.Cells[04,viLinhaCapturar];
                        Stgr_Bloco10S.Cells[11,viLinhas2+viContaSerie7+2] := Stgr_Bloco3S_Base10.Cells[05,viLinhaCapturar];
                           Stgr_Bloco10S.Cells[12,viLinhas2+viContaSerie7+2] := Stgr_serie7Sorteados.Cells[01,viContaSerie7+1];
                        Stgr_Bloco10S.Cells[13,viLinhas2+viContaSerie7+2] := Stgr_serie7Sorteados.Cells[02,viContaSerie7+1];
                        viLinhas2 := viLinhas2 + 2;
                     end;
                  viLinhas2 := viLinhas2 + 5;
                  viLinhas := viLinhas + 3;
               end; // for viComb3
            end; // for viComb2
            if viAnaliseCombinatoria MOD 960 = 0 then
            begin
               Stgr_Bloco3S_Base06.RowCount := viLinhas;
               Stgr_Bloco3S_Base06.Repaint;
               pgbr_Bloco3S_Base06.Position := trunc((viAnaliseCombinatoria / (Stgr_BlocoBase06.RowCount-1))*100);
               pgbr_Bloco3S_Base06.Repaint;
               sleep (viTime1);
               // piscar tela a cada 2250 ou  1125
            end;
            if viAnaliseCombinatoria MOD 720 = 0 then    //450  - 1450
            begin
               ReconstroiTela;
            end;
         end; // for viComb1
      end;
   finally
      pgbr_Bloco3S_Base06.Position := 100;
      pgbr_Bloco3S_Base06.Repaint;
      Stgr_Bloco3S_Base06.RowCount := viLinhas;
      Stgr_Bloco3S_Base06.Repaint;
      Stgr_Bloco1NS_Base06.RowCount := viLinhas;
      Stgr_Bloco1NS_Base06.Repaint;
      Stgr_Bloco2S_Base06.RowCount := viLinhas;
      Stgr_Bloco2S_Base06.Repaint;
      Stgr_Bloco10S.RowCount := viLinhas2;
      Stgr_Bloco10S.Repaint;
      ReconstroiTela;
   end;
end;


procedure TFrm_cjunto18por7.Bloco_de_1Base06e5;
var
   viAnaliseCombinatoria, viComb1, viComb2, viComb3, viContaSerie7, viLinhas, viLinhas2, viLinhaCapturar, viLinhaCapturar2 : Integer;
   viContarColunas, ViContarCelulas : Integer;
   vasSobram3: array [0..4] of String;
begin
   try
      ScrollBox_resultado.HorzScrollBar.Position := 4840;
      ScrollBox_resultado.Repaint;
      viLinhas := 1;
      viLinhas2 := 1;
      for viAnaliseCombinatoria := 1 to Trunc((Stgr_BlocoBase06.RowCount-1)/1) do
      begin
         for viComb1 := 3 to Stgr_BlocoBase06.ColCount-1 do
         begin
                  Stgr_Bloco5S_Base06.Cells[00,viLinhas] := viLinhas.ToString;
                  Stgr_Bloco5S_Base06.Cells[01,viLinhas] := Stgr_BlocoBase06.Cells[0, viAnaliseCombinatoria];
                  Stgr_Bloco5S_Base06.Cells[02,viLinhas] := Stgr_BlocoBase06.Cells[1, viAnaliseCombinatoria];
//                  Stgr_Bloco3S_Base06.Cells[03,viLinhas] := Stgr_BlocoBase06.Cells[viComb1, viAnaliseCombinatoria];
//                  Stgr_Bloco3S_Base06.Cells[04,viLinhas] := Stgr_BlocoBase06.Cells[viComb2, viAnaliseCombinatoria];
//                  Stgr_Bloco3S_Base06.Cells[05,viLinhas] := Stgr_BlocoBase06.Cells[viComb3, viAnaliseCombinatoria];
                     Stgr_Bloco1NS_Base06.Cells[00,viLinhas] := viLinhas.ToString;
                     Stgr_Bloco1NS_Base06.Cells[1,viLinhas+0] := Stgr_BlocoBase06.Cells[viComb1, viAnaliseCombinatoria];
                     // ==>  1 não sorteado
                     Falso_Linha1TodosNumeros;
                     Falso_Linha2TodosNumeros;
                     for viContarColunas := 03 to 08 do
                     begin
                        Stgr_Todos_Numeros.Cells[STRtoINT(Stgr_BlocoBase06.Cells[viContarColunas, viAnaliseCombinatoria]), 1] := 'V';
                     end;
                     for viContarColunas := 01 to 01 do
                     begin
                        Stgr_Todos_Numeros.Cells[STRtoINT(Stgr_Bloco1NS_Base06.Cells[viContarColunas, viLinhas]), 2] := 'V';
                     end;
                     vasSobram3[0] := '--';
                     vasSobram3[1] := '--';
                     vasSobram3[2] := '--';
                     vasSobram3[3] := '--';
                     vasSobram3[4] := '--';
                     ViContarCelulas := 0;
                     FOR viContarColunas :=1 TO 25 DO
                     BEGIN
                        IF (Stgr_Todos_Numeros.Cells[viContarColunas,1]='V') and  (Stgr_Todos_Numeros.Cells[viContarColunas,2]='F') THEN
                        BEGIN
                             vasSobram3[ViContarCelulas] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContarColunas,0]),2) ;
                             ViContarCelulas := ViContarCelulas+1;
                        END; // IF (STRGR_TODOS_NUMEROS
                     END; // FOR viContarColunas
                     // adicionando linhas para depois poder encontrar sobra
                     Stgr_Bloco5S_Base06.Cells[03,viLinhas+0] := vasSobram3[0];
                     Stgr_Bloco5S_Base06.Cells[04,viLinhas+0] := vasSobram3[1];
                     Stgr_Bloco5S_Base06.Cells[05,viLinhas+0] := vasSobram3[2];
                     Stgr_Bloco5S_Base06.Cells[06,viLinhas+0] := vasSobram3[3];
                     Stgr_Bloco5S_Base06.Cells[07,viLinhas+0] := vasSobram3[4];

                     // ==> Base 10 N.Sort
                     for  viContaSerie7 := 0 to 4 do
                     begin
                        viLinhaCapturar2 := StrToInt(Stgr_Bloco1nS_Base07.Cells[1,Stgr_Bloco5S_Base06.Cells[1,viLinhas].ToInteger]);
                        viLinhaCapturar := Stgr_BlocoBase06.Cells[2, viAnaliseCombinatoria].ToInteger;
                        Stgr_Bloco10S.Cells[00,viLinhas2+viContaSerie7] := (viLinhas2+viContaSerie7).ToString;
                        Stgr_Bloco10S.Cells[01,viLinhas2+viContaSerie7] := Stgr_Bloco5S_Base06.Cells[01,viLinhas];
                        Stgr_Bloco10S.Cells[02,viLinhas2+viContaSerie7] := Stgr_Bloco5S_Base06.Cells[02,viLinhas];
//                        Stgr_Bloco10S.Cells[03,viLinhas2+viContaSerie7] := Stgr_Bloco3S_Base10.Cells[1,viLinhaCapturar];
                        Stgr_Bloco10S.Cells[03,viLinhas2+viContaSerie7] := viLinhaCapturar.ToString;
                        Stgr_Bloco10S.Cells[04,viLinhas2+viContaSerie7] := vasSobram3[0];
                        Stgr_Bloco10S.Cells[05,viLinhas2+viContaSerie7] := vasSobram3[1];
                        Stgr_Bloco10S.Cells[06,viLinhas2+viContaSerie7] := vasSobram3[2];
                        Stgr_Bloco10S.Cells[07,viLinhas2+viContaSerie7] := vasSobram3[3];
                        Stgr_Bloco10S.Cells[08,viLinhas2+viContaSerie7] := vasSobram3[4];
                        Stgr_Bloco10S.Cells[09,viLinhas2+viContaSerie7] := Stgr_Bloco3S_Base10.Cells[03,viLinhaCapturar2];
                        Stgr_Bloco10S.Cells[10,viLinhas2+viContaSerie7] := Stgr_Bloco3S_Base10.Cells[04,viLinhaCapturar2];
                        Stgr_Bloco10S.Cells[11,viLinhas2+viContaSerie7] := Stgr_Bloco3S_Base10.Cells[05,viLinhaCapturar2];
                        Stgr_Bloco10S.Cells[12,viLinhas2+viContaSerie7] := Stgr_serie7Sorteados.Cells[01,viContaSerie7+1];
                        Stgr_Bloco10S.Cells[13,viLinhas2+viContaSerie7] := Stgr_serie7Sorteados.Cells[02,viContaSerie7+1];
                     end;
                  viLinhas2 := viLinhas2 + 5;
                  viLinhas := viLinhas + 1;

            if viAnaliseCombinatoria MOD 1440 = 0 then
            begin
               Stgr_Bloco5S_Base06.RowCount := viLinhas;
               Stgr_Bloco5S_Base06.Repaint;
               Stgr_Bloco1NS_Base06.RowCount := viLinhas;
               Stgr_Bloco1NS_Base06.Repaint;
               pgbr_Bloco3S_Base06.Position := trunc((viAnaliseCombinatoria / (Stgr_BlocoBase06.RowCount-1))*100);
               pgbr_Bloco3S_Base06.Repaint;
               sleep (viTime1);
               // piscar tela a cada 2250 ou  1125
            end;
            if viAnaliseCombinatoria MOD 960 = 0 then    //450  - 1450
            begin
               ReconstroiTela;
            end;
         end; // for viComb1
      end;
   finally
      pgbr_Bloco3S_Base06.Position := 100;
      pgbr_Bloco3S_Base06.Repaint;
      Stgr_Bloco5S_Base06.RowCount := viLinhas;
      Stgr_Bloco5S_Base06.Repaint;
      Stgr_Bloco1NS_Base06.RowCount := viLinhas;
      Stgr_Bloco1NS_Base06.Repaint;
      Stgr_Bloco10S.RowCount := viLinhas2;
      Stgr_Bloco10S.Repaint;
      ReconstroiTela;
   end;
end;


procedure TFrm_cjunto18por7.ReconstroiTela;
begin
  Frm_cjunto18por7.WindowState := wsMinimized;
  Frm_cjunto18por7.WindowState := wsNormal;
  pgc_AbasPrincipais.Repaint;
  pa_BarraLateral.Repaint;
  pa_Gerador6cj20p11.Repaint;
  sleep(79);
end;



procedure TFrm_cjunto18por7.LimparGrid_Bloco_5Base8;
begin
   Stgr_Bloco_5Base8.CleanupInstance;
   Stgr_Bloco_5Base8.Free;
   ScrollBox_resultado.HorzScrollBar.Position := 0;
   ScrollBox_resultado.Repaint;
   sleep (650);
   Stgr_Bloco_5Base8 := TStringGrid.Create(Self);
   Stgr_Bloco_5Base8.Parent := ScrollBox_resultado;
   with Stgr_Bloco_5Base8 do
   begin
      Left := 444                          ;
      Top := 43                            ;
      Width := 372                         ;
      Height := 22070                      ;
      TabStop := False                     ;
      Anchors := [akLeft, akTop, akBottom] ;
      BorderStyle := bsNone                ;
      Color := 8020033                     ;
      ColCount := 8                        ;
      DefaultColWidth := 33                ;
      DefaultRowHeight := 23               ;
      DrawingStyle := gdsGradient          ;
      FixedColor := 10590093               ;
      FixedCols := 3                       ;
      RowCount := 11                       ;
      Font.Charset := DEFAULT_CHARSET      ;
      Font.Color := 12184570               ;
      Font.Height := -12                   ;
      Font.Name := 'Tahoma'                ;
      Font.Style := []                     ;
      GradientEndColor := 11508367         ;
      GradientStartColor := 10520445       ;
      Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
      ParentFont := False                  ;
      TabOrder := 1                        ;
   end;
   Stgr_bloco_5Base8.ColWidths[0] := 60;
   Stgr_bloco_5Base8.ColWidths[1] := 45;
   Stgr_bloco_5Base8.ColWidths[2] := 36;
   Stgr_bloco_5Base8.Height := ScrollBox_resultado.Height - 50;
   Stgr_bloco_5Base8.Repaint;
end;



procedure TFrm_cjunto18por7.LimparGrid_Bloco_3Base8;
begin
   Stgr_bloco_3Base8.CleanupInstance;
   Stgr_bloco_3Base8.Free;
   ScrollBox_resultado.HorzScrollBar.Position := 750;
   ScrollBox_resultado.Repaint;
   sleep (650);
   Stgr_bloco_3Base8 := TStringGrid.Create(Self);
   Stgr_bloco_3Base8.Parent := ScrollBox_resultado;
   with Stgr_bloco_3Base8 do
   begin
      Left := 95                           ;
      Top := 41                             ;
      Width := 315                          ;
      Height := 22070                       ;
      TabStop := False                      ;
      Anchors := [akLeft, akTop, akBottom]  ;
      BorderStyle := bsNone                 ;
      Color := 8020033                      ;
      ColCount := 6                         ;
      DefaultColWidth := 39                 ;
      DefaultRowHeight := 23                ;
      DrawingStyle := gdsGradient           ;
      FixedColor := 10590093                ;
      FixedCols := 3                        ;
      RowCount := 11                        ;
      Font.Charset := DEFAULT_CHARSET       ;
      Font.Color := 12184570                ;
      Font.Height := -12                    ;
      Font.Name := 'Tahoma'                 ;
      Font.Style := []                      ;
      GradientEndColor := 11508367          ;
      GradientStartColor := 10520445        ;
      Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
      ParentFont := False                   ;
      TabOrder := 4                         ;
   end;
   Stgr_bloco_3Base8.ColWidths[0] := 60;
   Stgr_bloco_3Base8.ColWidths[1] := 45;
   Stgr_bloco_3Base8.ColWidths[2] := 36;
   Stgr_bloco_3Base8.Height := ScrollBox_resultado.Height - 50;
   Stgr_bloco_3Base8.Repaint;
end;


procedure TFrm_cjunto18por7.LimparGrid_bloco3S_5Base8;
begin
   Stgr_bloco3S_5Base8.CleanupInstance;
   Stgr_bloco3S_5Base8.Free;
   ScrollBox_resultado.HorzScrollBar.Position := 555;
   ScrollBox_resultado.Repaint;
   sleep (650);
   Stgr_bloco3S_5Base8 := TStringGrid.Create(Self);
   Stgr_bloco3S_5Base8.Parent := ScrollBox_resultado;
   with Stgr_bloco3S_5Base8 do
   begin
      Left := 649       ;
      Top := 55         ;
      Width := 290      ;
      Height := 199   ;
      TabStop := False  ;
      Anchors := [akLeft, akTop, akBottom]  ;
      BorderStyle := bsNone            ;
      Color := 8811864                 ;
      ColCount := 6                    ;
      DefaultColWidth := 33            ;
      DefaultRowHeight := 23           ;
      DrawingStyle := gdsGradient      ;
      FixedColor := 10590093           ;
      FixedCols := 3                   ;
      RowCount := 11                   ;
      Font.Charset := DEFAULT_CHARSET  ;
      Font.Color := 12184570           ;
      Font.Height := -12               ;
      Font.Name := 'Tahoma'            ;
      Font.Style := []                 ;
      GradientEndColor := 11508367     ;
      GradientStartColor := 10520445   ;
      Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
      ParentFont := False ;
      TabOrder := 2       ;
   end;
   Stgr_bloco3S_5Base8.ColWidths[0] := 60;
   Stgr_bloco3S_5Base8.ColWidths[1] := 50;
   Stgr_bloco3S_5Base8.ColWidths[2] := 40;
   Stgr_bloco3S_5Base8.Height := ScrollBox_resultado.Height - 70;
   Stgr_bloco3S_5Base8.Repaint;
   ReconstroiTela;
end;



procedure TFrm_cjunto18por7.LimparGrid_bloco2NS_5Base8;
begin
   Stgr_bloco2NS_5Base8.CleanupInstance;
   FreeAndNil(Stgr_bloco2NS_5Base8);
   ScrollBox_resultado.HorzScrollBar.Position := 755;
   ScrollBox_resultado.Repaint;
   sleep (650);
   Stgr_bloco2NS_5Base8 := TStringGrid.Create(Self);
   Stgr_bloco2NS_5Base8.Parent := ScrollBox_resultado;
   with Stgr_bloco2NS_5Base8 do
   begin
     Left := 724         ;
     Top := 55           ;
     Width := 255        ;
     Height := 199     ;
     TabStop := False    ;
     Anchors := [akLeft, akTop, akBottom]  ;
     BorderStyle := bsNone       ;
     Color := 8021596            ;
     DefaultColWidth := 33       ;
     DefaultRowHeight := 23      ;
     DrawingStyle := gdsGradient ;
     FixedColor := 11314341      ;
     FixedCols := 3              ;
     RowCount := 11              ;
     Font.Charset := DEFAULT_CHARSET ;
     Font.Color := 12184570          ;
     Font.Height := -12              ;
     Font.Name := 'Tahoma'           ;
     Font.Style := []                ;
     GradientEndColor := 11508367    ;
     GradientStartColor := 10520445  ;
     Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]  ;
     ParentFont := False       ;
     TabOrder := 3             ;
     DefaultRowHeight := 23    ;
   end;
   Stgr_bloco2NS_5Base8.ColWidths[0] := 60;
   Stgr_bloco2NS_5Base8.ColWidths[1] := 50;
   Stgr_bloco2NS_5Base8.ColWidths[2] := 40;
   Stgr_bloco2NS_5Base8.Height := ScrollBox_resultado.Height - 70;
   Stgr_bloco2NS_5Base8.Repaint;
   ReconstroiTela;
end;



procedure TFrm_cjunto18por7.LimparGrid_bloco2S_3Base8;
begin
   Stgr_bloco2S_3Base8.CleanupInstance;
   Stgr_bloco2S_3Base8.Free;
   sleep (650);
   Stgr_bloco2S_3Base8 := TStringGrid.Create(Self);
   Stgr_bloco2S_3Base8.Parent := ScrollBox_resultado;
   with Stgr_bloco2S_3Base8 do
   begin
      Left := 91                           ;
      Top := 49                            ;
      Width := 230                         ;
      Height := 21659                      ;
      TabStop := False                     ;
      Anchors := [akLeft, akTop, akBottom] ;
      BorderStyle := bsNone                ;
      Color := 8811864                     ;
      DefaultColWidth := 28                ;
      DefaultRowHeight := 23               ;
      DrawingStyle := gdsGradient          ;
      FixedColor := 11314341               ;
      FixedCols := 3                       ;
      RowCount := 11                       ;
      Font.Charset := DEFAULT_CHARSET      ;
      Font.Color := 12184570               ;
      Font.Height := -12                   ;
      Font.Name := 'Tahoma'                ;
      Font.Style := []                     ;
      GradientEndColor := 11508367         ;
      GradientStartColor := 10520445       ;
      Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
      ParentFont := False                  ;
      TabOrder := 5 ;
   end;
   Stgr_bloco2S_3Base8.ColWidths[0] := 60;
   Stgr_bloco2S_3Base8.ColWidths[1] := 45;
   Stgr_bloco2S_3Base8.ColWidths[2] := 36;
   Stgr_bloco2S_3Base8.Height := ScrollBox_resultado.Height - 50;
   Stgr_bloco2S_3Base8.Repaint;
   ReconstroiTela;
end;



procedure TFrm_cjunto18por7.LimparGrid_bloco1NS_3Base8;
begin
   Stgr_bloco1NS_3Base8.CleanupInstance;
   Stgr_bloco1NS_3Base8.Free;
   sleep (650);
   Stgr_bloco1NS_3Base8 := TStringGrid.Create(Self);
   Stgr_bloco1NS_3Base8.Parent := ScrollBox_resultado;
   with Stgr_bloco1NS_3Base8 do
   begin
      Left := 328                          ;
      Top := 49                            ;
      Width := 222                         ;
      Height := 21659                      ;
      TabStop := False                     ;
      Anchors := [akLeft, akTop, akBottom] ;
      BorderStyle := bsNone                ;
      Color := 8021596                     ;
      ColCount := 4                        ;
      DefaultColWidth := 29                ;
      DefaultRowHeight := 23               ;
      DrawingStyle := gdsGradient          ;
      FixedColor := 11314341               ;
      FixedCols := 3                       ;
      RowCount := 11                       ;
      Font.Charset := DEFAULT_CHARSET      ;
      Font.Color := 12184570               ;
      Font.Height := -12                   ;
      Font.Name := 'Tahoma'                ;
      Font.Style := []                     ;
      GradientEndColor := 11508367         ;
      GradientStartColor := 10520445       ;
      Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
      ParentFont := False                  ;
      TabOrder := 6;                       ;
   end;
   Stgr_bloco1NS_3Base8.ColWidths[0] := 60;
   Stgr_bloco1NS_3Base8.ColWidths[1] := 45;
   Stgr_bloco1NS_3Base8.ColWidths[2] := 36;
   Stgr_bloco1NS_3Base8.Height := ScrollBox_resultado.Height - 50;
   Stgr_bloco1NS_3Base8.Repaint;
   ReconstroiTela;
end;



procedure TFrm_cjunto18por7.LimparGrid_Stgr_Bloco10S;
begin
      ScrollBox_resultado.HorzScrollBar.Position := 4895;
      ScrollBox_resultado.Repaint;
   Stgr_Bloco10S.CleanupInstance;
   Stgr_Bloco10S.Free;
   sleep (650);
   Stgr_Bloco10S := TStringGrid.Create(Self);
   Stgr_Bloco10S.Parent := ScrollBox_resultado;
   with Stgr_Bloco10S do
   begin
      Left := 979                           ;
      Top := 21                             ;
      Width := 510                          ;
      Height := 21596                       ;
      TabStop := False                      ;
      Anchors := [akLeft, akTop, akBottom]  ;
      BorderStyle := bsNone                 ;
      Color := 8811864                      ;
      ColCount := 14                        ;
      DefaultColWidth := 28                 ;
      DefaultRowHeight := 23                ;
      DrawingStyle := gdsGradient           ;
      FixedColor := 11314341                ;
      FixedCols := 4                        ;
      RowCount := 29                        ;
      Font.Charset := DEFAULT_CHARSET       ;
      Font.Color := 12184570                ;
      Font.Height := -12                    ;
      Font.Name := 'Tahoma'                 ;
      Font.Style := []                      ;
      GradientEndColor := 11508367          ;
      GradientStartColor := 10520445        ;
      Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
      ParentFont := False                   ;
      TabOrder := 17                       ;
   end;
   Stgr_Bloco10S.ColWidths[0] := 60;
   Stgr_Bloco10S.ColWidths[1] := 49;
   Stgr_Bloco10S.ColWidths[2] := 39;
   Stgr_Bloco10S.ColWidths[3] := 39;
   Stgr_Bloco10S.Height := ScrollBox_resultado.Height - 30;
   Stgr_Bloco10S.Repaint;
   ReconstroiTela;
end;




procedure TFrm_cjunto18por7.LimparGrid_BlocoBase06;
begin
   Stgr_BlocoBase06.CleanupInstance;
   Stgr_BlocoBase06.Free;
   ScrollBox_resultado.HorzScrollBar.Position := 3640;
   ScrollBox_resultado.Repaint;
   sleep (650);
   Stgr_BlocoBase06 := TStringGrid.Create(Self);
   Stgr_BlocoBase06.Parent := ScrollBox_resultado;
   with Stgr_BlocoBase06 do
   begin
     Left := 810                           ;
     Top := 26                             ;
     Width := 410                          ;
     Height := 21890                       ;
     TabStop := False                      ;
     Anchors := [akLeft, akTop, akBottom]  ;
     BorderStyle := bsNone                 ;
     Color := 8020033                      ;
     ColCount := 9                         ;
     DefaultColWidth := 35                 ;
     DefaultRowHeight := 23                ;
     DrawingStyle := gdsGradient           ;
     FixedColor := 10590093                ;
     FixedCols := 3                        ;
     RowCount := 11                        ;
     Font.Charset := DEFAULT_CHARSET       ;
     Font.Color := 12184570                ;
     Font.Height := -12                    ;
     Font.Name := 'Tahoma'                 ;
     Font.Style := []                      ;
     GradientEndColor := 9734013           ;
     GradientStartColor := 10525327        ;
     Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
     RowCount := 2                        ;
     ParentFont := False                   ;
     TabOrder := 13                        ;
   end;
   Stgr_BlocoBase06.ColWidths[0] := 60;
   Stgr_BlocoBase06.ColWidths[1] := 45;
   Stgr_BlocoBase06.ColWidths[2] := 36;
   Stgr_BlocoBase06.Height := ScrollBox_resultado.Height - 50;
   Stgr_BlocoBase06.Repaint;
end;



procedure TFrm_cjunto18por7.LimparGrid_BlocoBase06e1NS;
begin
   Stgr_BlocoBase06.CleanupInstance;
   Stgr_BlocoBase06.Free;
   ScrollBox_resultado.HorzScrollBar.Position := 3640;
   ScrollBox_resultado.Repaint;
   sleep (650);
   Stgr_BlocoBase06 := TStringGrid.Create(Self);
   Stgr_BlocoBase06.Parent := ScrollBox_resultado;
   with Stgr_BlocoBase06 do
   begin
     Left := 741                           ;
     Top := 26                             ;
     Width := 410                          ;
     Height := 21890                       ;
     TabStop := False                      ;
     Anchors := [akLeft, akTop, akBottom]  ;
     BorderStyle := bsNone                 ;
     Color := 8020033                      ;
     ColCount := 9                         ;
     DefaultColWidth := 35                 ;
     DefaultRowHeight := 23                ;
     DrawingStyle := gdsGradient           ;
     FixedColor := 10590093                ;
     FixedCols := 3                        ;
     RowCount := 11                        ;
     Font.Charset := DEFAULT_CHARSET       ;
     Font.Color := 12184570                ;
     Font.Height := -12                    ;
     Font.Name := 'Tahoma'                 ;
     Font.Style := []                      ;
     GradientEndColor := 9734013           ;
     GradientStartColor := 10525327        ;
     Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
     ParentFont := False                   ;
     TabOrder := 13                        ;
   end;
   Stgr_BlocoBase06.ColWidths[0] := 60;
   Stgr_BlocoBase06.ColWidths[1] := 45;
   Stgr_BlocoBase06.ColWidths[2] := 36;
   Stgr_BlocoBase06.Height := ScrollBox_resultado.Height - 50;
   Stgr_BlocoBase06.Repaint;

   Stgr_Bloco1nS_Base07.CleanupInstance;
   Stgr_Bloco1nS_Base07.Free;
   ScrollBox_resultado.HorzScrollBar.Position := 3640;
   ScrollBox_resultado.Repaint;
   sleep (650);
   Stgr_Bloco1nS_Base07 := TStringGrid.Create(Self);
   Stgr_Bloco1nS_Base07.Parent := ScrollBox_resultado;
   with Stgr_Bloco1nS_Base07 do
   begin
      Left := 483                              ;
      Top := 46                                ;
      Width := 240                             ;
      Height := 21890                          ;
      TabStop := False                         ;
      Anchors := [akLeft, akTop, akBottom]     ;
      BorderStyle := bsNone                    ;
      Color := 9732429                         ;
      ColCount := 4                            ;
      DefaultColWidth := 33                    ;
      DefaultRowHeight := 23                   ;
      DrawingStyle := gdsGradient              ;
      FixedColor := 10590093                   ;
      FixedCols := 3                           ;
      RowCount := 11                           ;
      Font.Charset := DEFAULT_CHARSET          ;
      Font.Color := 12184570                   ;
      Font.Height := -12                       ;
      Font.Name := 'Tahoma'                    ;
      Font.Style := []                         ;
      GradientEndColor := 11510933             ;
      GradientStartColor := 10520445           ;
      Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]   ;
      ParentFont := False                      ;
      TabOrder := 12                          ;
   end;
   Stgr_Bloco1nS_Base07.ColWidths[0] := 60;
   Stgr_Bloco1nS_Base07.ColWidths[1] := 45;
   Stgr_Bloco1nS_Base07.ColWidths[2] := 36;
   Stgr_Bloco1nS_Base07.Height := ScrollBox_resultado.Height - 50;
   Stgr_Bloco1nS_Base07.Repaint;
end;


procedure TFrm_cjunto18por7.Base_5Sorteados;
var
  viLinhas2: Integer;
  viContarComb1: Integer;
  viContarComb2: Integer;
begin
  ScrollBox_resultado.HorzScrollBar.Position := 1635;
  ScrollBox_resultado.Repaint;
  ReconstroiTela;
  viLinhas2 := 1;
  pgbr_bloco5S_Base8.Position := 0;
  pgbr_bloco5S_Base8.Repaint;
  for viContarComb1 := 1 to Stgr_bloco2S_3Base8.RowCount - 1 do
  begin
    for viContarComb2 := 1 to Stgr_bloco3S_5Base8.RowCount - 1 do
    begin
      if not (Stgr_bloco2S_3Base8.Cells[1, viContarComb1] = Stgr_bloco3S_5Base8.Cells[1, viContarComb2]) then
        continue;
      Stgr_bloco5S_Base8.Cells[0, viLinhas2] := viLinhas2.ToString;
      Stgr_bloco5S_Base8.Cells[1, viLinhas2] := Stgr_bloco2S_3Base8.Cells[1, viContarComb1];
      Stgr_bloco5S_Base8.Cells[2, viLinhas2] := Stgr_bloco2S_3Base8.Cells[2, viContarComb1];
      Stgr_bloco3NS_Base8.Cells[0, viLinhas2] := viLinhas2.ToString;
      Stgr_bloco5S_Base8.Cells[3, viLinhas2] := Stgr_bloco3S_5Base8.Cells[3, viContarComb2];
      Stgr_bloco5S_Base8.Cells[4, viLinhas2] := Stgr_bloco3S_5Base8.Cells[4, viContarComb2];
      Stgr_bloco5S_Base8.Cells[5, viLinhas2] := Stgr_bloco3S_5Base8.Cells[5, viContarComb2];
      Stgr_bloco5S_Base8.Cells[6, viLinhas2] := Stgr_bloco2S_3Base8.Cells[3, viContarComb1];
      Stgr_bloco5S_Base8.Cells[7, viLinhas2] := Stgr_bloco2S_3Base8.Cells[4, viContarComb1];
      Stgr_bloco3NS_Base8.Cells[1, viLinhas2] := Stgr_bloco2NS_5Base8.Cells[3, viContarComb2];
      Stgr_bloco3NS_Base8.Cells[2, viLinhas2] := Stgr_bloco2NS_5Base8.Cells[4, viContarComb2];
      Stgr_bloco3NS_Base8.Cells[3, viLinhas2] := Stgr_bloco1NS_3Base8.Cells[3, viContarComb1];
      viLinhas2 := viLinhas2 + 1;
    end;
    if (Stgr_bloco2S_3Base8.Cells[1, viContarComb1].ToInteger mod (Trunc(viDivisorSalvar1 / 60))) = 0 then
    begin
      pgbr_bloco5S_Base8.Position := trunc((viContarComb1 / (Stgr_bloco2S_3Base8.RowCount - 1)) * 100);
      pgbr_bloco5S_Base8.Repaint;
      Stgr_bloco5S_Base8.RowCount := viLinhas2;
      Stgr_bloco5S_Base8.Repaint;
      Stgr_bloco3NS_Base8.RowCount := viLinhas2;
      Stgr_bloco3NS_Base8.Repaint;
      ReconstroiTela;
    end;
  end;
  Stgr_bloco5S_Base8.RowCount := viLinhas2;
  Stgr_bloco5S_Base8.Repaint;
  Stgr_bloco3NS_Base8.RowCount := viLinhas2;
  Stgr_bloco3NS_Base8.Repaint;
  ReconstroiTela;
  GravarCJTO_18P7_bloco5S_Base8;
  LimparGrid_bloco2S_3Base8;
  LimparGrid_bloco1NS_3Base8;
end;



Procedure TFrm_cjunto18por7.GravarCJTO_18P7_3base5_3S2NS();
Var
   vsQuery, vsNumerosSort, vsNumerosNaoSort, vsNomeTabela : String;
   viTotalLinhas, viContarColunas : integer;
Begin
   Pgbr_gravarDados1.Position := 0;
   Pgbr_gravarDados1.Repaint;
   Lab_gravarDados1.Font.Size := 12;
   Lab_gravarDados1.Font.Style := [fsUnderline];
   Lab_gravarDados1.Repaint;
   vsNomeTabela := 'CJTO_18P7_3base5_3S2NS';
   for viTotalLinhas := 1 to Stgr_bloco3S_5Base8.RowCount-1 do
   begin
      vsNumerosSort := '';
      for viContarColunas := 3 to 5 do
      begin
         vsNumerosSort:= vsNumerosSort + Stgr_bloco3S_5Base8.Cells[viContarColunas,viTotalLinhas] + ' ';
      end;
      vsNumerosNaoSort := '';
      for viContarColunas := 3 to 4 do
      begin
         vsNumerosNaoSort:= vsNumerosNaoSort + Stgr_bloco2NS_5Base8.Cells[viContarColunas,viTotalLinhas] + ' ';
      end;
      vsQuery  := 'INSERT INTO ' +vsNomeTabela+ ' (POSICAO05DE08, POSICAO08, SORTEADOS, NAO_SORTEADOS) Values ('
              +#39+  TRIM(Stgr_bloco3S_5Base8.Cells[1,viTotalLinhas])
              +#39+ ','+#39+ TRIM(Stgr_bloco3S_5Base8.Cells[2,viTotalLinhas])
              +#39+ ','+#39+  TRIM(vsNumerosSort)
              +#39+ ','+#39+  TRIM(vsNumerosNaoSort)
          +#39+ ');';
      IBQ_Combinacoes.SQL.Clear;
      IBQ_Combinacoes.SQL.Add(vsQuery)  ;
      iBQ_Combinacoes.ExecSQL;
      if (viTotalLinhas MOD 100) = 0 then
      BEGIN
         Pgbr_gravarDados1.Position := Trunc((viTotalLinhas/(Stgr_bloco3S_5Base8.RowCount-1))*100);
         Pgbr_gravarDados1.Repaint;
         Sleep (25);
      END;
   end;
   Pgbr_gravarDados1.Position := 100;
   Pgbr_gravarDados1.Repaint;
   IBQ_Combinacoes.SQL.Clear;
   IBQ_Combinacoes.SQL.Add('COMMIT')  ;
   IBQ_Combinacoes.ExecSQL;
   IBQ_Combinacoes.Transaction.StartTransaction;
   IBQ_Combinacoes.Transaction.Commit;
   IBQ_Combinacoes.Transaction.StartTransaction;
   Lab_gravarDados1.Font.Size := 10;
   Lab_gravarDados1.Font.Style := [fsBold];
   Lab_gravarDados1.Repaint;
   Pgbr_gravarDados1.Repaint;
End;




Procedure TFrm_cjunto18por7.GravarCJTO_18P7_10S_Base10();
Var
   vsQuery, vsNumerosSort, vsNumerosNaoSort, vsNomeTabela : String;
   viTotalLinhas, viContarColunas : integer;
Begin
   Pgbr_gravarDados1.Position := 0;
   Pgbr_gravarDados1.Repaint;
   Lab_gravarDados1.Font.Size := 12;
   Lab_gravarDados1.Font.Style := [fsUnderline];
   Lab_gravarDados1.Repaint;
   vsNomeTabela := 'CJTO_18P7_10S_Base10';
   for viTotalLinhas := 1 to Stgr_Bloco10S.RowCount-1 do
   begin
      vsNumerosSort := '';
      for viContarColunas := 4 to 13 do
      begin
         vsNumerosSort:= vsNumerosSort + Stgr_Bloco10S.Cells[viContarColunas,viTotalLinhas] + ' ';
      end;
      vsNumerosNaoSort := '';
//      for viContarColunas := 3 to 4 do
//      begin
//         vsNumerosNaoSort:= vsNumerosNaoSort + Stgr_bloco2NS_5Base8.Cells[viContarColunas,viTotalLinhas] + ' ';
//      end;
      vsQuery  := 'INSERT INTO ' +vsNomeTabela+ ' (POSICAO03DE10, POSICAO08, SORTEADOS) Values ('
              +#39+  TRIM(Stgr_Bloco10S.Cells[2,viTotalLinhas])
              +#39+ ','+#39+ TRIM(Stgr_Bloco10S.Cells[3,viTotalLinhas])
              +#39+ ','+#39+  TRIM(vsNumerosSort)
          +#39+ ');';
      IBQ_Combinacoes.SQL.Clear;
      IBQ_Combinacoes.SQL.Add(vsQuery)  ;
      iBQ_Combinacoes.ExecSQL;
      if (viTotalLinhas MOD 100) = 0 then
      BEGIN
         Pgbr_gravarDados1.Position := Trunc((viTotalLinhas/(Stgr_Bloco10S.RowCount-1))*100);
         Pgbr_gravarDados1.Repaint;
         Sleep (25);
      END;
   end;
   Pgbr_gravarDados1.Position := 100;
   Pgbr_gravarDados1.Repaint;
   IBQ_Combinacoes.SQL.Clear;
   IBQ_Combinacoes.SQL.Add('COMMIT')  ;
   IBQ_Combinacoes.ExecSQL;
   IBQ_Combinacoes.Transaction.StartTransaction;
   IBQ_Combinacoes.Transaction.Commit;
   IBQ_Combinacoes.Transaction.StartTransaction;
   Lab_gravarDados1.Font.Size := 10;
   Lab_gravarDados1.Font.Style := [fsBold];
   Lab_gravarDados1.Repaint;
   Pgbr_gravarDados1.Repaint;
End;



Procedure TFrm_cjunto18por7.GravarCJTO_18P7_15Sorteados();
Var
   vsQuery, vsNumerosSort, vsNomeTabela : String;
   viTotalLinhas, viContarColunas : integer;
Begin
   Pgbr_gravarDados1.Position := 0;
   Pgbr_gravarDados1.Repaint;
   Lab_gravarDados1.Font.Size := 12;
   Lab_gravarDados1.Font.Style := [fsUnderline];
   Lab_gravarDados1.Repaint;
   vsNomeTabela := 'CJTO_18P7_15S_RESULTADO';
   for viTotalLinhas := 1 to stgr_15Sorteados_Comb1.RowCount-1 do
   begin
      vsNumerosSort := '';
      for viContarColunas := 4 to 13 do
      begin
         vsNumerosSort:= vsNumerosSort + stgr_15Sorteados_Comb1.Cells[viContarColunas,viTotalLinhas] + ' ';
      end;
      vsQuery  := 'INSERT INTO ' +vsNomeTabela+ ' (N, DADOS) Values ('
              +#39+  TRIM(stgr_15Sorteados_Comb1.Cells[0,viTotalLinhas])
              +#39+ ','+#39+  TRIM(vsNumerosSort)
          +#39+ ');';
      IBQ_Combinacoes.SQL.Clear;
      IBQ_Combinacoes.SQL.Add(vsQuery)  ;
      iBQ_Combinacoes.ExecSQL;
      if (viTotalLinhas MOD 100) = 0 then
      BEGIN
         Pgbr_gravarDados1.Position := Trunc((viTotalLinhas/(stgr_15Sorteados_Comb1.RowCount-1))*100);
         Pgbr_gravarDados1.Repaint;
         Sleep (25);
      END;
   end;
   Pgbr_gravarDados1.Position := 100;
   Pgbr_gravarDados1.Repaint;
   IBQ_Combinacoes.SQL.Clear;
   IBQ_Combinacoes.SQL.Add('COMMIT')  ;
   IBQ_Combinacoes.ExecSQL;
   IBQ_Combinacoes.Transaction.StartTransaction;
   IBQ_Combinacoes.Transaction.Commit;
   IBQ_Combinacoes.Transaction.StartTransaction;
   Lab_gravarDados1.Font.Size := 10;
   Lab_gravarDados1.Font.Style := [fsBold];
   Lab_gravarDados1.Repaint;
   Pgbr_gravarDados1.Repaint;
End;


Procedure TFrm_cjunto18por7.CarregarCJTO_18P7_3base5_3S2NS();
Var
   viQuantidade, viLinhas: integer;
   vsQuery : String;
Begin
   vsQuery := vsQuery + 'Select  * ';
   vsQuery := vsQuery + 'from CJTO_18P7_3base5_3S2NS ';
   vsQuery := vsQuery + 'order by POSICAO05DE08 || POSICAO08  ';
   IBQ_Combinacoes.SQL.Clear;
   IBQ_Combinacoes.SQL.Add(vsQuery)  ;
   IBQ_Combinacoes.Prepare;
   IBQ_Combinacoes.Open;
   IBQ_Combinacoes.First;
   viLinhas := 1;
   while not(IBQ_Combinacoes.Eof) do
   begin
      Stgr_bloco3S_5Base8.Cells[00,viLinhas] := viLinhas.ToString;
      Stgr_bloco3S_5Base8.Cells[01,viLinhas] := IBQ_Combinacoes.FieldByName('POSICAO05DE08').AsString;
      Stgr_bloco3S_5Base8.Cells[02,viLinhas] := IBQ_Combinacoes.FieldByName('POSICAO08').AsString;
      Stgr_bloco3S_5Base8.Cells[03,viLinhas] := Copy((IBQ_Combinacoes.FieldByName('SORTEADOS').AsString),01,2);
      Stgr_bloco3S_5Base8.Cells[04,viLinhas] := Copy((IBQ_Combinacoes.FieldByName('SORTEADOS').AsString),04,2);
      Stgr_bloco3S_5Base8.Cells[05,viLinhas] := Copy((IBQ_Combinacoes.FieldByName('SORTEADOS').AsString),07,2);
      Stgr_bloco2NS_5Base8.Cells[01,viLinhas] := IBQ_Combinacoes.FieldByName('POSICAO05DE08').AsString;
      Stgr_bloco2NS_5Base8.Cells[02,viLinhas] := IBQ_Combinacoes.FieldByName('POSICAO08').AsString;
      Stgr_bloco2NS_5Base8.Cells[03,viLinhas] := Copy((IBQ_Combinacoes.FieldByName('NAO_SORTEADOS').AsString),01,2);
      Stgr_bloco2NS_5Base8.Cells[04,viLinhas] := Copy((IBQ_Combinacoes.FieldByName('NAO_SORTEADOS').AsString),04,2);
      viLinhas := viLinhas + 1;
      IBQ_Combinacoes.Next;
   end;
   Stgr_bloco3S_5Base8.RowCount := viLinhas;
   Stgr_bloco2NS_5Base8.Repaint;
end;


procedure TFrm_cjunto18por7.bbt_gerarVoltarClick(Sender: TObject);
begin
   pa_menuGerar_20p11.Enabled := True;
   pa_menuGerar_20p11.Visible := False;
   pa_menuGerar_20p11.Repaint;
end;



procedure TFrm_cjunto18por7.chk_sequenciaMaximaClick(Sender: TObject);
begin
   if chk_sequenciaMaxima.Checked  = True then
   begin
      cb_sequenciaMaxima.Enabled := true;
      cb_sequenciaMaxima.SetFocus;
   end;
end;

procedure TFrm_cjunto18por7.chk_somatoria160a220Click(Sender: TObject);
begin
   if chk_somatoria160a220.Checked = True then
   begin
      edt_soma1Inicial.Enabled := true;
      edt_soma1Final.Enabled := true;
      edt_soma1Inicial.SetFocus;
   end;
end;

procedure TFrm_cjunto18por7.edt_soma1FinalExit(Sender: TObject);
begin
   if StrToInt(edt_soma1Final.Text) < strToInt(edt_soma1Inicial.Text) then
   begin
      Showmessage('Valor final de ser maior ou igual ao valor inicial.');
      edt_soma1Final.SetFocus;
   end;
end;


// ===================================================================
procedure TFrm_cjunto18por7.Zerar_FLAGTodosNumeros();
var
  viContar: Integer;
begin
  for viContar := 1 to 25 do
  begin
    Stgr_Todos_Numeros.Cells[viContar, 0] := viContar.ToString;
    Stgr_Todos_Numeros.Cells[viContar, 1] := 'F';
    Stgr_Todos_Numeros.Cells[viContar, 2] := 'F';
    Stgr_Todos_Numeros.Cells[viContar, 3] := 'F';
  end;
end;


procedure TFrm_cjunto18por7.Falso_Linha1TodosNumeros();
var
  viContar: Integer;
begin
  for viContar := 1 to 25 do
  begin
    Stgr_Todos_Numeros.Cells[viContar, 1] := 'F';
  end;
end;


procedure TFrm_cjunto18por7.Falso_Linha2TodosNumeros();
var
  viContar: Integer;
begin
  for viContar := 1 to 25 do
  begin
    Stgr_Todos_Numeros.Cells[viContar, 2] := 'F';
  end;
end;


procedure TFrm_cjunto18por7.Falso_Linha3TodosNumeros();
var
  viContar: Integer;
begin
  for viContar := 1 to 25 do
  begin
    Stgr_Todos_Numeros.Cells[viContar, 3] := 'F';
  end;
end;


function TFrm_cjunto18por7.IIf(Expressao: Variant; ParteTRUE, ParteFALSE: Variant): Variant;
 begin
   if Expressao then
      Result := ParteTRUE
   else
      Result := ParteFALSE;
 end;




Procedure TFrm_cjunto18por7.PreenchimentoInicialPadrao;
var
  viContar: Integer;
begin
   Zerar_FLAGTodosNumeros();
   for viContar := 2 to 21 do
   begin
      Stgr_base18.Cells[viContar, 0] := INTtoSTR(viContar - 1);
   end;
   for viContar  := 1 to Stgr_base18.RowCount-1 do
   begin
      Stgr_base18VF.Cells[1,viContar] := 'F';
   end;
      Stgr_base18VF.Cells[1,1] := 'V';

 // =====>> Blocos de base, 20 e 11
  //01
   //01 14 03 13 04 12 06 11 08 16 15 24 22 25 21 27 20 29 18 30
   //02 05 07 09 10 17 19 23 26 28 31
   Stgr_base18.Cells[0, 01] := '01';
   Stgr_base18.Cells[1, 01] := 'V';
   Stgr_base18.Cells[2, 01] := '01';
   Stgr_base18.Cells[3, 1] := '02';
   Stgr_base18.Cells[4, 01] := '03';
   Stgr_base18.Cells[5, 1] := '04';
   Stgr_base18.Cells[6, 01] := '05';
   Stgr_base18.Cells[7, 1] := '06';
   Stgr_base18.Cells[8, 01] := '14';
   Stgr_base18.Cells[9, 1] := '15';
   Stgr_base18.Cells[10, 01] := '16';
   Stgr_base18.Cells[11, 1] := '17';
   Stgr_base18.Cells[12, 01] := '18';
   Stgr_base18.Cells[13, 1] := '19';
   Stgr_base18.Cells[14, 01] := '20';
   Stgr_base18.Cells[15, 1] := '21';
   Stgr_base18.Cells[16, 01] := '22';
   Stgr_base18.Cells[17, 1] := '23';
   Stgr_base18.Cells[18, 01] := '24';
   Stgr_base18.Cells[19, 1] := '25';
   //
   Stgr_serie7Sorteados.Cells[1, 01] := '08';
   Stgr_serie7Sorteados.Cells[2, 01] := '13';
   Stgr_serie7Sorteados.Cells[1, 02] := '08';
   Stgr_serie7Sorteados.Cells[2, 02] := '12';
   Stgr_serie7Sorteados.Cells[1, 3] := '08';
   Stgr_serie7Sorteados.Cells[2, 03] := '11';
   Stgr_serie7Sorteados.Cells[1, 4] := '08';
   Stgr_serie7Sorteados.Cells[2, 04] := '09';
   Stgr_serie7Sorteados.Cells[1, 5] := '07';
   Stgr_serie7Sorteados.Cells[2, 05] := '08';
   //
   Stgr_serie7NaoSorteados.Cells[1, 01] := '07';
   Stgr_serie7NaoSorteados.Cells[2, 01] := '09';
   Stgr_serie7NaoSorteados.Cells[3, 01] := '10';
   Stgr_serie7NaoSorteados.Cells[4, 01] := '11';
   Stgr_serie7NaoSorteados.Cells[5, 01] := '12';
   Stgr_serie7NaoSorteados.Cells[1, 02] := '07';
   Stgr_serie7NaoSorteados.Cells[2, 02] := '09';
   Stgr_serie7NaoSorteados.Cells[3, 02] := '10';
   Stgr_serie7NaoSorteados.Cells[4, 02] := '11';
   Stgr_serie7NaoSorteados.Cells[5, 02] := '13';
   Stgr_serie7NaoSorteados.Cells[1, 03] := '07';
   Stgr_serie7NaoSorteados.Cells[2, 03] := '09';
   Stgr_serie7NaoSorteados.Cells[3, 03] := '10';
   Stgr_serie7NaoSorteados.Cells[4, 03] := '12';
   Stgr_serie7NaoSorteados.Cells[5, 03] := '13';
   Stgr_serie7NaoSorteados.Cells[1, 04] := '07';
   Stgr_serie7NaoSorteados.Cells[2, 04] := '10';
   Stgr_serie7NaoSorteados.Cells[3, 04] := '11';
   Stgr_serie7NaoSorteados.Cells[4, 04] := '12';
   Stgr_serie7NaoSorteados.Cells[5, 04] := '13';
   Stgr_serie7NaoSorteados.Cells[1, 05] := '09';
   Stgr_serie7NaoSorteados.Cells[2, 05] := '10';
   Stgr_serie7NaoSorteados.Cells[3, 05] := '11';
   Stgr_serie7NaoSorteados.Cells[4, 05] := '12';
   Stgr_serie7NaoSorteados.Cells[5, 05] := '13';

   Stgr_base18.RowCount := 2;
   Stgr_base18.ColWidths[0] := 39;
   Stgr_base18.Height := Scbx_gabarito6cj20p11.Height - 59;
   Stgr_base18.Repaint;
   Stgr_serie7Sorteados.RowCount := 6;
   Stgr_serie7Sorteados.Height := scbx_gabarito6cj20p11.Height - 59;
   Stgr_serie7Sorteados.Repaint;
   Stgr_serie7NaoSorteados.RowCount := 6;
   Stgr_serie7NaoSorteados.Height := Scbx_gabarito6cj20p11.Height - 59;
   Stgr_serie7NaoSorteados.Repaint;


   Stgr_blocoBase8.ColWidths[0] := 60;
   Stgr_blocoBase8.ColWidths[1] := 39;
   Stgr_blocoBase8.Height := ScrollBox_resultado.Height - 40;
   Stgr_blocoBase8.Repaint;
   Stgr_bloco_5Base8.ColWidths[0] := 60;
   Stgr_bloco_5Base8.ColWidths[1] := 45;
   Stgr_bloco_5Base8.ColWidths[2] := 36;
   Stgr_bloco_5Base8.Height := ScrollBox_resultado.Height - 50;
   Stgr_bloco_5Base8.Repaint;
   Stgr_bloco3S_5Base8.ColWidths[0] := 69;
   Stgr_bloco3S_5Base8.ColWidths[1] := 55;
   Stgr_bloco3S_5Base8.ColWidths[2] := 35;
   Stgr_bloco3S_5Base8.Height := ScrollBox_resultado.Height - 70;
   Stgr_bloco3S_5Base8.Repaint;
   Stgr_bloco2NS_5Base8.ColWidths[0] := 65;
   Stgr_bloco2NS_5Base8.ColWidths[1] := 50;
   Stgr_bloco2NS_5Base8.ColWidths[2] := 35;
   Stgr_bloco2NS_5Base8.Height := ScrollBox_resultado.Height - 70;
   Stgr_bloco2NS_5Base8.Repaint;
   Stgr_bloco_3Base8.ColWidths[0] := 60;
   Stgr_bloco_3Base8.ColWidths[1] := 45;
   Stgr_bloco_3Base8.ColWidths[2] := 36;
   Stgr_bloco_3Base8.Height := ScrollBox_resultado.Height - 50;
   Stgr_bloco_3Base8.Repaint;
   Stgr_bloco2S_3Base8.ColWidths[0] := 60;
   Stgr_bloco2S_3Base8.ColWidths[1] := 45;
   Stgr_bloco2S_3Base8.ColWidths[2] := 36;
   Stgr_bloco2S_3Base8.Height := ScrollBox_resultado.Height - 50;
   Stgr_bloco2S_3Base8.Repaint;
   Stgr_bloco1NS_3Base8.ColWidths[0] := 60;
   Stgr_bloco1NS_3Base8.ColWidths[1] := 45;
   Stgr_bloco1NS_3Base8.ColWidths[2] := 36;
   Stgr_bloco1NS_3Base8.Height := ScrollBox_resultado.Height - 50;
   Stgr_bloco1NS_3Base8.Repaint;
   Stgr_bloco3NS_Base8.ColWidths[0] := 60;
   Stgr_bloco3NS_Base8.ColWidths[1] := 45;
   Stgr_bloco3NS_Base8.ColWidths[2] := 36;
   Stgr_bloco3NS_Base8.ColWidths[0] := 60;
   Stgr_bloco3NS_Base8.Height := ScrollBox_resultado.Height - 50;
   Stgr_bloco3NS_Base8.Repaint;
   Stgr_bloco5S_Base8.ColWidths[0] := 60;
   Stgr_bloco5S_Base8.Height := ScrollBox_resultado.Height - 50;
   Stgr_bloco5S_Base8.Repaint;
   Stgr_blocoBase10.ColWidths[0] := 60;
   Stgr_blocoBase10.ColWidths[1] := 39;
   Stgr_blocoBase10.Height := ScrollBox_resultado.Height - 40;
   Stgr_blocoBase10.Repaint;
   Stgr_Bloco3S_Base10.ColWidths[0] := 60;
   Stgr_Bloco3S_Base10.ColWidths[1] := 45;
   Stgr_Bloco3S_Base10.ColWidths[2] := 36;
   Stgr_Bloco3S_Base10.Height := ScrollBox_resultado.Height - 50;
   Stgr_Bloco3S_Base10.Repaint;
   Stgr_BlocoBase07.ColWidths[0] := 60;
   Stgr_BlocoBase07.ColWidths[1] := 45;
   Stgr_BlocoBase07.ColWidths[2] := 36;
   Stgr_BlocoBase07.Height := ScrollBox_resultado.Height - 50;
   Stgr_BlocoBase07.Repaint;
   Stgr_Bloco1nS_Base07.ColWidths[0] := 60;
   Stgr_Bloco1nS_Base07.ColWidths[1] := 45;
   Stgr_Bloco1nS_Base07.ColWidths[2] := 65;
   Stgr_Bloco1nS_Base07.Height := ScrollBox_resultado.Height - 50;
   Stgr_Bloco1nS_Base07.Repaint;
   Stgr_BlocoBase06.ColWidths[0] := 65;
   Stgr_BlocoBase06.ColWidths[1] := 65;
   Stgr_BlocoBase06.ColWidths[2] := 50;
   Stgr_BlocoBase06.Height := ScrollBox_resultado.Height - 50;
   Stgr_BlocoBase06.Repaint;
      Stgr_Bloco3S_Base06.ColWidths[0] := 60;
   Stgr_Bloco3S_Base06.ColWidths[1] := 45;
   Stgr_Bloco3S_Base06.ColWidths[2] := 36;
   Stgr_Bloco3S_Base06.Height := ScrollBox_resultado.Height - 50;
   Stgr_Bloco3S_Base06.Repaint;
   Stgr_Bloco1NS_Base06.ColWidths[0] := 70;
   Stgr_Bloco1NS_Base06.Height := ScrollBox_resultado.Height - 50;
   Stgr_Bloco1NS_Base06.Repaint;
   Stgr_Bloco2S_Base06.ColWidths[0] := 70;
   Stgr_Bloco2S_Base06.Height := ScrollBox_resultado.Height - 50;
   Stgr_Bloco2S_Base06.Repaint;
   Stgr_Bloco5S_Base06.ColWidths[0] := 65;
   Stgr_Bloco5S_Base06.ColWidths[1] := 45;
   Stgr_Bloco5S_Base06.ColWidths[2] := 36;
   Stgr_Bloco5S_Base06.Height := ScrollBox_resultado.Height - 50;
   Stgr_Bloco5S_Base06.Repaint;
   Stgr_Bloco10S.ColWidths[0] := 60;
   Stgr_Bloco10S.ColWidths[1] := 49;
   Stgr_Bloco10S.ColWidths[2] := 39;
   Stgr_Bloco10S.ColWidths[3] := 39;
   Stgr_Bloco10S.Height := ScrollBox_resultado.Height - 30;
   Stgr_Bloco10S.Repaint;
end;


end.












procedure Tfrm_Ranqueador16Com12Linhas.Somatoria_Faixa_Comb16Filtro1(viLinhas: Integer);
var
   viContarColunas, viFlagNumero: Integer;
begin
  // ------------------
  // --> Somatória
  // ------------------
  if chk_somatoria160a220.Checked = True then
  begin
    viFlagNumero := 0;
    for viContarColunas := 1 to 15 do
    begin
      viFlagNumero := viFlagNumero + stgr_15Sorteados_Comb1.Cells[3 + viContarColunas, viLinhas].ToInteger;
    end;
    if (viFlagNumero >= StrToInt(edt_soma1Inicial.Text)) and (viFlagNumero <= StrToInt(edt_soma1Final.Text)) then
      stgr_15Sorteados_Comb1Flag.Cells[1, viLinhas] := 'V'
    else
      stgr_15Sorteados_Comb1Flag.Cells[1, viLinhas] := 'F';
  end;
end;


procedure Tfrm_Ranqueador16Com12Linhas.SequenciasMaximaComb16Filtro1(viLinhas: Integer);
var
  Local_viContarColunas, viFlagNumero: Integer;
  Local_viContarColunas1: Integer;
begin
  // ---------------------
  // --> Seqüência Máxima
  // ---------------------
  if chk_sequenciaMaxima.Checked = True then
  begin
    Falso_Linha1TodosNumeros;
    for Local_viContarColunas := 1 to 15 do
    begin
      Stgr_Todos_Numeros.Cells[STRtoINT(stgr_15Sorteados_Comb1.Cells[3 + Local_viContarColunas, viLinhas]), 1] := 'V';
    end;
    viFlagNumero := 0;
    for Local_viContarColunas1 := 1 to 15 do
    begin
      if (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 0, 1] = 'V') and (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 1, 1] = 'V') and (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 2, 1] = 'V') and (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 3, 1] = 'V') and (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 4, 1] = 'V') and (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 5, 1] = 'V') and (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 6, 1] = 'V') and (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 7, 1] = 'V') and (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 8, 1] = 'V') and (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 9, 1] = 'V') and (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 10, 1] = 'V') then
      begin
        if viFlagNumero = 0 then
          viFlagNumero := 11;
      end
      else if (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 0, 1] = 'V') and (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 1, 1] = 'V') and (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 2, 1] = 'V') and (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 3, 1] = 'V') and (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 4, 1] = 'V') and (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 5, 1] = 'V') and (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 6, 1] = 'V') and (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 7, 1] = 'V') and (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 8, 1] = 'V') and (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 9, 1] = 'V') then
      begin
        if viFlagNumero = 0 then
          viFlagNumero := 10;
      end
      else if (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 0, 1] = 'V') and (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 1, 1] = 'V') and (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 2, 1] = 'V') and (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 3, 1] = 'V') and (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 4, 1] = 'V') and (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 5, 1] = 'V') and (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 6, 1] = 'V') and (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 7, 1] = 'V') and (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 8, 1] = 'V') then
      begin
        if viFlagNumero = 0 then
          viFlagNumero := 9;
      end
      else if (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 0, 1] = 'V') and (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 1, 1] = 'V') and (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 2, 1] = 'V') and (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 3, 1] = 'V') and (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 4, 1] = 'V') and (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 5, 1] = 'V') and (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 6, 1] = 'V') and (Stgr_Todos_Numeros.Cells[Local_viContarColunas1 + 7, 1] = 'V') then
        if viFlagNumero = 0 then
          viFlagNumero := 8;
    end;
    if (cb_sequenciaMaxima.ItemIndex = 0) and (viFlagNumero <= 8) then
      stgr_15Sorteados_Comb1Flag.Cells[2, viLinhas] := 'V'
    else if (cb_sequenciaMaxima.ItemIndex = 1) and (viFlagNumero <= 9) then
      stgr_15Sorteados_Comb1Flag.Cells[2, viLinhas] := 'V'
    else if (cb_sequenciaMaxima.ItemIndex = 2) and (viFlagNumero <= 10) then
      stgr_15Sorteados_Comb1Flag.Cells[2, viLinhas] := 'V'
    else
    begin
      stgr_15Sorteados_Comb1Flag.Cells[2, viLinhas] := 'F';
    end;
  end;
end;

