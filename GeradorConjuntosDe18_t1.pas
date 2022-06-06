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
    Stgr_Bloco3S_Base10: TStringGrid;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Bbt_gerarSequenciasClick(Sender: TObject);
    procedure BBT_PA_REMOVEUREPETClick(Sender: TObject);
    procedure bbt_gerarOkClick(Sender: TObject);
    procedure bbt_gerarVoltarClick(Sender: TObject);
    procedure bt_prepararClick(Sender: TObject);
    procedure bbt_PrepararVoltarClick(Sender: TObject);
    procedure bbt_PrepararOkClick(Sender: TObject);
    procedure bt_gerarClick(Sender: TObject);
    procedure BitBtn_BlocoDeNotas2Click(Sender: TObject);
    procedure RadioButton_teste1Click(Sender: TObject);
    procedure RadioButton_teste2Click(Sender: TObject);
    procedure RadioButton_teste3Click(Sender: TObject);
    procedure RadioButton_ZeClick(Sender: TObject);
  private
    viDivisorSalvar1 : integer;
    viDivisorSalvar2, viDivisorSalvar3 : integer;
    viDivisorExecutar2 : integer;
    viDivisorAtualizar1, viDivisorAtualizar2 : integer;
    viTime1 : integer;
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
   Sleep (2000);
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
   sleep (1500);
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



procedure TFrm_cjunto18por7.bt_gerarClick(Sender: TObject);
begin
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
//   try
//      Bloco_de_5Base8();
//   except
//      vsQuery := 'Estouro de memória == Fim deste processamento - por enquanto';
//   end;
(*
   Bloco_de_5Base8();
*)
   try
      vsMensagemEstouro := 'CONCLUSÃO OK:';
      Bloco_de_3Base10();
   except
      vsMensagemEstouro := 'ESTOURO DE MEMÓRIA:';
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
   vsMensagemEstouro := vsMensagemEstouro+#13+'Fase 2.1.A. Bloco 3 Sorteados'+Stgr_BlocoBase07.RowCount.ToString+#13+'Fase 3.1.A. Bloco 1 Não Sort.'+Stgr_BlocoBase06.RowCount.ToString;
   showmessage(vsMensagemEstouro);
   showmessage(vsMensagemEstouro);
end;


procedure TFrm_cjunto18por7.Bloco_de_8;
var
   viAnaliseCombinatoria, viComb1, viComb2, viComb3, viComb4, viComb5, viComb6, viComb7, viComb8, viLinhas : Integer;
   ViContarCelulas, viContarColunas: Integer;
begin
   viLinhas := 1;
   ScrollBox_resultado.HorzScrollBar.Position := 0;
   ScrollBox_resultado.Repaint;
   for viAnaliseCombinatoria := 1 to Stgr_base18.RowCount-1 do
   begin
      for viComb1 := 2 to Stgr_base18.ColCount-8 do    //16
      begin
         for viComb2 := viComb1+1 to Stgr_base18.ColCount-7 do
         begin
            for viComb3 := viComb2+1 to Stgr_base18.ColCount-6 do
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
                                 IF (Stgr_Todos_Numeros.Cells[viContarColunas,1]='F') THEN
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
   for viAnaliseCombinatoria := 1 to Trunc((Stgr_BlocoBase8.RowCount-1)/066.0) do  // /49 45 ou 145
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

      IF (viAnaliseCombinatoria mod viDivisorAtualizar2)=0 then
      begin
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
         Exit;
      end;

   end;
   pgbr_GerandoBloco5.Position := 100;
   pgbr_GerandoBloco5.Repaint;
   Stgr_Bloco_5Base8.RowCount := viLinhas;
   Stgr_Bloco_5Base8.Repaint;
   ReconstroiTela;
end;



procedure TFrm_cjunto18por7.Bloco_de_3Base5;
var
   viAnaliseCombinatoria, viComb1, viComb2, viComb3, ViContarCelulas, viContarColunas, viLinhas, viTotalLinhas : Integer;
begin
   //Label100.Caption := 'Bloco_de_3//5 comecou';
   //Label100.Repaint;
   viLinhas := 1;
   viTotalLinhas := 1;
   pgbr_GerandoBloco3e2.Position := 0;
   for viAnaliseCombinatoria := 1 to Stgr_Bloco_5Base8.RowCount-1 do
   begin
      for viComb1 := 3 to Stgr_Bloco_5Base8.ColCount-3 do
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
         if viAnaliseCombinatoria MOD 54000 = 0 then    //45000   ou 13500
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
      if viAnaliseCombinatoria MOD viDivisorAtualizar1 = 0 then    //45000
      begin
         Stgr_bloco3S_5Base8.RowCount := viLinhas;
         Stgr_bloco3S_5Base8.Repaint;
         Stgr_bloco2NS_5Base8.RowCount := viLinhas;
         Stgr_bloco2NS_5Base8.Repaint;
         try
            pgbr_GerandoBloco3e2.Position := trunc((viAnaliseCombinatoria / (Stgr_Bloco_5Base8.RowCount-1))*100);
         except
            showmessage('Seguindoem frente -- 0 --');
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
      if viAnaliseCombinatoria MOD 1340 = 0 then    //450
      begin
         Stgr_Bloco_3Base8.RowCount := viAnaliseCombinatoria;
         Stgr_Bloco_3Base8.Repaint;
         pgbr_GerandoBloco3do8.Position := trunc((viAnaliseCombinatoria / (Stgr_Bloco_5Base8.RowCount-1))*100);
         pgbr_GerandoBloco3do8.Repaint;
         sleep (29);
         // piscar tela a cada 2250 ou  1125
      end;
      if viAnaliseCombinatoria MOD 4500 = 0 then    //450
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
   viContarComb1, viContarComb2, viLinhas2 : integer;
begin
//   Label100.Caption := 'Bloco_de_2//5 comecou';
//   Label100.Repaint;
   viLinhas := 1;
   viTotalLinhas := 1;
   ScrollBox_resultado.HorzScrollBar.Position := 990;
   ScrollBox_resultado.Repaint;
   pgbr_GerandoBloco2e1.Position := 0;
   for viAnaliseCombinatoria := 1 to Stgr_Bloco_3Base8.RowCount-1 do
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
         if viAnaliseCombinatoria MOD 6990 = 0 then    //45000   ou 13500
         begin
            ReconstroiTela;
         end;
         if (viAnaliseCombinatoria MOD viDivisorSalvar1) = 0 then    //45000
         begin
            Stgr_bloco2S_3Base8.RowCount := viLinhas;
            Stgr_bloco2S_3Base8.Repaint;
            Stgr_bloco1NS_3Base8.RowCount := viLinhas;
            Stgr_bloco1NS_3Base8.Repaint;
            ScrollBox_resultado.HorzScrollBar.Position := 1635;
            ScrollBox_resultado.Repaint;
            ReconstroiTela;
            viLinhas2 := 1;
            pgbr_bloco5S_Base8.Position := 0;
            pgbr_bloco5S_Base8.Repaint;
            for viContarComb1 := 1 to Stgr_bloco2S_3Base8.RowCount-1 do
            begin
               for viContarComb2 := 1 to Stgr_bloco3S_5Base8.RowCount-1 do
               begin
                  if not(Stgr_bloco2S_3Base8.Cells[01,viContarComb1] = Stgr_bloco3S_5Base8.Cells[1, viContarComb2]) then
                     continue;
                  Stgr_bloco5S_Base8.Cells[00,viLinhas2] := viLinhas2.ToString;
                  Stgr_bloco5S_Base8.Cells[01,viLinhas2] := Stgr_bloco2S_3Base8.Cells[1, viContarComb1];
                  Stgr_bloco5S_Base8.Cells[02,viLinhas2] := Stgr_bloco2S_3Base8.Cells[2, viContarComb1];
                   Stgr_bloco3NS_Base8.Cells[00,viLinhas2] := viLinhas2.ToString;
                  Stgr_bloco5S_Base8.Cells[03,viLinhas2] := Stgr_bloco3S_5Base8.Cells[3, viContarComb2];
                  Stgr_bloco5S_Base8.Cells[04,viLinhas2] := Stgr_bloco3S_5Base8.Cells[4, viContarComb2];
                  Stgr_bloco5S_Base8.Cells[05,viLinhas2] := Stgr_bloco3S_5Base8.Cells[5, viContarComb2];
                  Stgr_bloco5S_Base8.Cells[06,viLinhas2] := Stgr_bloco2S_3Base8.Cells[3, viContarComb1];
                  Stgr_bloco5S_Base8.Cells[07,viLinhas2] := Stgr_bloco2S_3Base8.Cells[4, viContarComb1];
                   Stgr_bloco3NS_Base8.Cells[01,viLinhas2] := Stgr_bloco2NS_5Base8.Cells[3, viContarComb2];
                   Stgr_bloco3NS_Base8.Cells[02,viLinhas2] := Stgr_bloco2NS_5Base8.Cells[4, viContarComb2];
                   Stgr_bloco3NS_Base8.Cells[03,viLinhas2] := Stgr_bloco1NS_3Base8.Cells[3, viContarComb1];
                   viLinhas2 := viLinhas2+1;
               end;
               if (Stgr_bloco2S_3Base8.Cells[1, viContarComb1].ToInteger MOD (Trunc(viDivisorSalvar1/60)) )= 0 then
               begin
                  pgbr_bloco5S_Base8.Position := trunc((viContarComb1 / (Stgr_bloco2S_3Base8.RowCount-1))*100);
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
            GravarCJTO_18P7_bloco5S_Base8();
            LimparGrid_bloco3S_5Base8;
            LimparGrid_bloco2NS_5Base8;
            viLinhas := 1;
            ScrollBox_resultado.HorzScrollBar.Position := 990;
            ScrollBox_resultado.Repaint;
            ReconstroiTela;
//                  Exit;
         end;
      end; // for viComb1
      if viAnaliseCombinatoria MOD viDivisorAtualizar1 = 0 then    //45000
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
//   Label101.Caption := 'Bloco_de_2//3 TERMINOU';
//   Label101.Repaint;
   ReconstroiTela;
end;





procedure TFrm_cjunto18por7.Bloco_de_3Base10;
var
   viAnaliseCombinatoria, viComb1, viComb2, viComb3, viComb4, viComb5, viLinhas : Integer;
   viContarColunas, ViContarCelulas : Integer;
begin
   try
      ScrollBox_resultado.HorzScrollBar.Position := 2795;
      ScrollBox_resultado.Repaint;
      viLinhas := 1;
      for viAnaliseCombinatoria := 1 to Trunc((Stgr_BlocoBase10.RowCount-1)/viDivisorExecutar2) do  // /49 45 ou 145
      begin
         for viComb1 := 2 to Stgr_BlocoBase10.ColCount-3 do
         begin
            for viComb2 := viComb1+1 to Stgr_BlocoBase10.ColCount-2 do
            begin
               for viComb3 := viComb2+1 to Stgr_BlocoBase10.ColCount-1 do
               begin
                  Stgr_Bloco3S_Base10.Cells[00,viLinhas] := viLinhas.ToString;
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

                  IF (viLinhas mod viDivisorSalvar2)=0 then    // MENOR VALOR 131130
                  begin
                     Stgr_Bloco3S_Base10.RowCount := viLinhas;
                     Stgr_Bloco3S_Base10.Repaint;
                     Stgr_BlocoBase07.RowCount := viLinhas;
                     Stgr_BlocoBase07.Repaint;
                     Bloco_de_1Base06();
                     ScrollBox_resultado.HorzScrollBar.Position := 2795;
                     ScrollBox_resultado.Repaint;
                     ReconstroiTela;
                     pgbr_Bloco3S_Base10.Position := trunc((viAnaliseCombinatoria / (Stgr_BlocoBase10.RowCount-1))*100);
                     pgbr_Bloco3S_Base10.Repaint;
                  end;

               end; // for viComb3
            end; // for viComb2
            if viAnaliseCombinatoria MOD 450 = 0 then    //135
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
            if viAnaliseCombinatoria MOD 540 = 0 then    //450  - 1450
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
   end;
end;



procedure TFrm_cjunto18por7.Bloco_de_1Base06;
var
   viAnaliseCombinatoria, viComb1, viComb2, viComb3, viComb4, viComb5, viLinhas : Integer;
   viContarColunas, ViContarCelulas : Integer;
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
      for viAnaliseCombinatoria := 1 to Trunc((Stgr_BlocoBase07.RowCount-1)/1.0) do  // /49 45 ou 145
      begin
         for viComb1 := 3 to Stgr_BlocoBase07.ColCount-1 do
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
            Stgr_BlocoBase06.Cells[02,viLinhas] :=Stgr_Bloco1nS_Base07.Cells[02,viLinhas] ;

            viLinhas := viLinhas +1;
            if viAnaliseCombinatoria MOD 2880 = 0 then    //135
            begin
               Stgr_Bloco1nS_Base07.RowCount := viLinhas;
               Stgr_Bloco1nS_Base07.Repaint;
               Stgr_BlocoBase06.RowCount := viLinhas;
               Stgr_BlocoBase06.Repaint;
               pgbr_Bloco1nS_Base07.Position := trunc((viAnaliseCombinatoria / (Stgr_BlocoBase07.RowCount-1))*100);
               pgbr_Bloco1nS_Base07.Repaint;
               sleep (19);
               // piscar tela a cada 2250 ou  1125
            end;
            if viAnaliseCombinatoria MOD 18400 = 0 then    //450  - 1450
            begin
               ReconstroiTela;
            end;
         end; // for viComb1
      end;
   finally
      pgbr_Bloco1nS_Base07.Position := 100;
      pgbr_Bloco1nS_Base07.Repaint;
      Stgr_Bloco1nS_Base07.RowCount := viLinhas;
      Stgr_Bloco1nS_Base07.Repaint;
      Stgr_BlocoBase06.RowCount := viLinhas;
      Stgr_BlocoBase06.Repaint;
      ReconstroiTela;
   end;
end;



procedure TFrm_cjunto18por7.RadioButton_ZeClick(Sender: TObject);
begin
   viDivisorSalvar1 := 8100;
   viDivisorAtualizar1 := 221;
   viDivisorAtualizar2:= 663;
   viTime1 := 75; //175
   viDivisorExecutar2 := 98;
   viDivisorSalvar2 := 51000;
   viDivisorSalvar3 := 33000;
end;

procedure TFrm_cjunto18por7.RadioButton_teste1Click(Sender: TObject);
begin
   viDivisorSalvar1 := 8100;
   viDivisorAtualizar1 := 221;
   viDivisorAtualizar2:= 663;
   viTime1 := 175; //175
   viDivisorExecutar2 := 1;
   viDivisorSalvar2 := 105000;   // /15
   viDivisorSalvar3 := 49000;
end;

procedure TFrm_cjunto18por7.RadioButton_teste2Click(Sender: TObject);
begin
   viDivisorSalvar1 := 45000;
   viDivisorAtualizar1 := 1890;
   viDivisorAtualizar2:= 2431;
   viTime1 := 180;
   viDivisorExecutar2 := 1;
   viDivisorSalvar2 := 262500;  // /15
   viDivisorSalvar3 := 122500;
   // 262500
   // 91875
end;

procedure TFrm_cjunto18por7.RadioButton_teste3Click(Sender: TObject);
begin
   viDivisorSalvar1 := 297000; //27000
   viDivisorAtualizar2:= 10939;   //7293
   viTime1 := 500;
   viDivisorExecutar2 := 1;
   viDivisorSalvar2 := 525000;  // /15
   viDivisorSalvar3 := 245000;
   //525000
   //245000
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
      Left := 671                           ;
      Top := 43                             ;
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
   ScrollBox_resultado.HorzScrollBar.Position := 427;
   ScrollBox_resultado.Repaint;
   sleep (650);
   Stgr_bloco3S_5Base8 := TStringGrid.Create(Self);
   Stgr_bloco3S_5Base8.Parent := ScrollBox_resultado;
   with Stgr_bloco3S_5Base8 do
   begin
      Left := 414       ;
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
   ScrollBox_resultado.HorzScrollBar.Position := 427;
   ScrollBox_resultado.Repaint;
   sleep (650);
   Stgr_bloco2NS_5Base8 := TStringGrid.Create(Self);
   Stgr_bloco2NS_5Base8.Parent := ScrollBox_resultado;
   with Stgr_bloco2NS_5Base8 do
   begin
     Left := 705         ;
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
   Stgr_Bloco1nS_Base07.ColWidths[2] := 36;
   Stgr_Bloco1nS_Base07.Height := ScrollBox_resultado.Height - 50;
   Stgr_Bloco1nS_Base07.Repaint;
   Stgr_BlocoBase06.ColWidths[0] := 60;
   Stgr_BlocoBase06.ColWidths[1] := 45;
   Stgr_BlocoBase06.ColWidths[2] := 36;
   Stgr_BlocoBase06.Height := ScrollBox_resultado.Height - 50;
   Stgr_BlocoBase06.Repaint;
end;



end.

