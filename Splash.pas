unit Splash;
interface
uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, REST.Types,
  FMX.Objects, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls, System.JSON;
type
  TVersao = class(TForm)
    LayoutFundo: TLayout;
    LayoutUpdate: TLayout;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    Image1: TImage;
    Image2: TImage;
    lable1: TLabel;
    Rectangle1: TRectangle;
    btn_atualizar: TButton;
    Label4: TLabel;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure btn_atualizarClick(Sender: TObject);
  private
    procedure OnFinishUpdate(Sender: TObject);
    { Private declarations }
  public
    versao_app: string;
    versao_server: string;
    { Public declarations }
  end;
var
  Versao: TVersao;
implementation
{$R *.fmx}
uses UOpenURL, Inicial;

procedure TVersao.btn_atualizarClick(Sender: TObject);
begin
                var url : string;
begin
{$IFDEF ANDROID}
     url:= 'https://drive.google.com/file/d/131h4Sq5KYS3XnpK3XbvjfddaWJOTuqih/view?usp=sharing';
{$ELSE}
      url:= 'https://drive.google.com/file/d/131h4Sq5KYS3XnpK3XbvjfddaWJOTuqih/view?usp=sharing';
{$ENDIF}
     OpenURL(url, False);
     Application.Terminate;
end;
end;

procedure TVersao.FormCreate(Sender: TObject);
begin
  versao_app := '1.1';
  versao_server := '0.0';

end;
procedure TVersao.FormShow(Sender: TObject);
var
  t: TThread;
begin
  t := TThread.CreateAnonymousThread(
    procedure
    var
      JsonObj: TJSONObject;
    begin
      sleep(2000);
      try
        RESTRequest1.Execute;
      except
        on ex: Exception do
        begin
          raise Exception.Create('Erro ao acessar o servidor' + ex.Message);
          exit;
        end;
      end;
      try
        JsonObj := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes
          (RESTRequest1.Response.JSONValue.ToString), 0) as TJSONObject;

        versao_server := TJSONObject(JsonObj).GetValue('Versao').Value;
      finally
        JsonObj.Disposeof;
      end;
    end);
  t.OnTerminate := OnFinishUpdate;
  t.Start;
end;
procedure TVersao.Image1Click(Sender: TObject);
begin
  FrmInicial:=TFrmInicial.Create(Application);
  FrmInicial.Show();
end;
procedure TVersao.OnFinishUpdate(Sender: TObject);
begin
  if Assigned(TThread(Sender).FatalException) then
  begin
    showmessage(Exception(TThread(Sender).FatalException).Message);
    exit;
  end;
       if versao_app > versao_server then
  begin
    LayoutFundo.Visible := true;
    LayoutUpdate.Visible := false;
  end;
  if versao_app < versao_server then
  begin
    LayoutFundo.Visible := False;
    LayoutUpdate.Visible := True;
  end;
end;

end.
