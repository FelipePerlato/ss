unit Principal;
interface
uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.Edit, FMX.Controls.Presentation, FMX.StdCtrls, FMX.ListBox, FMX.Layouts,
  FMX.Objects, IOUtils, System.Rtti, FMX.Grid.Style, FMX.Grid, FMX.ScrollBox,
  Data.Bind.EngExt, FMX.Bind.DBEngExt, System.Bindings.Outputs,
  FMX.Bind.Editors, Data.Bind.Components, Data.Bind.DBScope, System.Actions,
  FMX.ActnList;
type
  TFrmPrincipal = class(TForm)
    TabControl1: TTabControl;
    TabVeiculo: TTabItem;
    TabViajem: TTabItem;
    LayoutGeral: TLayout;
    LayoutPrincipal: TLayout;
    Layout1: TLayout;
    BtnGps: TButton;
    ActionList1: TActionList;
    ChangeCarro: TChangeTabAction;
    ChangeMenu: TChangeTabAction;
    Layout7: TLayout;
    BtnCarro: TButton;
    Layout3: TLayout;
    EditNome: TEdit;
    Nome: TLabel;
    Layout6: TLayout;
    EditModelo: TEdit;
    Modelo: TLabel;
    Layout10: TLayout;
    EditDesc: TEdit;
    lbl_Descrição: TLabel;
    Layout11: TLayout;
    EditTanque: TEdit;
    Tanque: TLabel;
    Layout8: TLayout;
    btnVoltar: TButton;
    btnDistancia: TButton;
    Rectangle1: TRectangle;
    Layout2: TLayout;
    EditPlaca: TEdit;
    Placa: TLabel;
    Rectangle2: TRectangle;
    Label1: TLabel;
    btn_cadastrar: TButton;
    btn_perfil: TButton;
    btn_desconectar: TButton;
    Label4: TLabel;
    ChangeDesconectar: TChangeTabAction;
    procedure FormCreate(Sender: TObject);

    procedure BtnGpsClick(Sender: TObject);
    procedure BtnCarroClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnDistanciaClick(Sender: TObject);
    procedure btn_cadastrarClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  FrmPrincipal: TFrmPrincipal;
implementation
{$R *.fmx} uses UDM, Inicial, GPS, Distancia;
procedure TFrmPrincipal.BtnCarroClick(Sender: TObject);
begin
  ChangeCarro.Execute;
end;
procedure TFrmPrincipal.btnDistanciaClick(Sender: TObject);
begin
FrmDistancia:=TFrmDistancia.Create(Application);
FrmDistancia.Show();
end;
procedure TFrmPrincipal.BtnGpsClick(Sender: TObject);
begin
  FrmGps:=TFrmGps.Create(Application);
  FrmGps.Show();
end;

procedure TFrmPrincipal.btnVoltarClick(Sender: TObject);
begin
  ChangeMenu.Execute;
end;
procedure TFrmPrincipal.btn_cadastrarClick(Sender: TObject);
begin
               dm.FDQCarro.Close;
  dm.FDQCarro.Open();
  dm.FDQCarro.Append;
  dm.FDQCarroplaca.AsString := EditPlaca.text;
  dm.FDQCarronome.AsString := EditNome.text;
  dm.FDQCarromodelo.AsString := EditModelo.text;
  dm.FDQCarrodescricao.AsString := EditDesc.text;
  dm.FDQCarroqtdtanque.AsInteger := EditTanque.text.ToInteger();
  ShowMessage('Carro cadastrado!');
   dm.FDQCarro.Post;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  dm.FDQCarro.Close;
  dm.FDQCarro.Open();
end;



end.
