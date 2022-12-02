unit Inicial;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Edit, FMX.Controls.Presentation, FMX.StdCtrls,
  FMX.TabControl,
  System.Actions, idHashSHA, FMX.ActnList;

type
  TFrmInicial = class(TForm)
    LayoutCadastro: TLayout;
    TabControl1: TTabControl;
    TabLogin: TTabItem;
    TabCadastro: TTabItem;
    LayoutLogin: TLayout;
    ActionList1: TActionList;
    ChangeLogin: TChangeTabAction;
    ChangeCadastro: TChangeTabAction;
    Layout1: TLayout;
    Layout5: TLayout;
    Layout6: TLayout;
    Image2: TImage;
    Label4: TLabel;
    edt_senha: TEdit;
    lbl_senha: TLabel;
    edt_email: TEdit;
    lbl_email: TLabel;
    Rectangle1: TRectangle;
    btn_entrar: TButton;
    Label11: TLabel;
    rectangulo_cad_conta: TRectangle;
    Label1: TLabel;
    EditEmailCadastro: TEdit;
    EditSenhaCadastro: TEdit;
    Label2: TLabel;
    CADASTRAR: TButton;
    EditNomeCadastro: TEdit;
    Nome: TLabel;
    Label12: TLabel;
    btn_voltar_cc: TButton;

    procedure btnCadastroClick(Sender: TObject);
    procedure btnRegistrarClick(Sender: TObject);
    procedure btn_entrarClick(Sender: TObject);

    procedure CADASTRARClick(Sender: TObject);
    procedure Label11Click(Sender: TObject);

    procedure btn_voltar_ccClick(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
    usuariologado: integer;
    function SHA1(AString: string): string;
  end;

var
  FrmInicial: TFrmInicial;

implementation

{$R *.fmx} uses Principal, UDM, UOpenURL;

procedure TFrmInicial.btnCadastroClick(Sender: TObject);
begin
  ChangeCadastro.Execute;
end;



procedure TFrmInicial.btnRegistrarClick(Sender: TObject);
var
  senha: string;
begin
  dm.FDQLogin.Close;
  dm.FDQLogin.Open();

  if (EditEmailCadastro.text = EmptyStr) or (EditSenhaCadastro.text = EmptyStr)
  then
    Abort;

  dm.FDQLogin.Append;
  dm.FDQLoginEmail.AsString := EditEmailCadastro.text;
  dm.FDQLoginSenha.AsString := SHA1(EditSenhaCadastro.text);
  dm.FDQLogin.Post;
  dm.FDConnection.CommitRetaining;

  ShowMessage('Cadastro feito com sucesso!');
  ChangeLogin.Execute;
end;




procedure TFrmInicial.btn_entrarClick(Sender: TObject);
begin
     var
  senha: String;
begin
  senha := SHA1(edt_email.text);
  dm.FDQLogin.Close;
  dm.FDQLogin.ParamByName('pEmail').AsString := edt_email.text;
  dm.FDQLogin.Open();

  if not(dm.FDQLogin.IsEmpty) and (dm.FDQLoginSenha.AsString = senha) then
  begin
    if not Assigned(FrmPrincipal) then
      usuariologado := dm.FDQLoginIdLogin.AsInteger;
    Application.CreateForm(TFrmPrincipal, FrmPrincipal);
    FrmPrincipal.Show()
  end
  else
  begin
    ShowMessage('Email ou senha estão incorretos');
  end;

end;
end;



procedure TFrmInicial.btn_voltar_ccClick(Sender: TObject);
begin
      ChangeLogin.Execute;
end;

procedure TFrmInicial.CADASTRARClick(Sender: TObject);
begin
            var
  senha: string;
begin
  dm.FDQLogin.Close;
  dm.FDQLogin.Open();

  if (EditEmailCadastro.text = EmptyStr) or (EditSenhaCadastro.text = EmptyStr)
  then
    Abort;

  dm.FDQLogin.Append;


  dm.FDQLoginEmail.AsString := EditEmailCadastro.text;
  dm.FDQLoginSenha.AsString := SHA1(EditSenhaCadastro.text);
  dm.FDQLogin.Post;
  dm.FDConnection.CommitRetaining;

  ShowMessage('Cadastro feito com sucesso!');
  ChangeLogin.Execute;
end;
end;

procedure TFrmInicial.Label11Click(Sender: TObject);
begin

         ChangeCadastro.Execute;
end;



function TFrmInicial.SHA1(AString: string): string;
var
  SenhaSH1: TIDhASHsha1;
begin
  SenhaSH1 := TIDhASHsha1.Create;
  TRY
    Result := SenhaSH1.HashStringAsHex(AString);
  FINALLY
    SenhaSH1.Free;
  END;
end;

  end.
  end;

   end;

procedure TFrmInicial.rectangulo_cad_contaClick(Sender: TObject);
begin
                ChangeLogin.Execute;
end;
   end;
end.
