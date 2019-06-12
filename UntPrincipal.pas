unit UntPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, IdHashMessageDigest, idHash;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    EdtMd5: TEdit;
    OpenDialog1: TOpenDialog;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function MD5(const fileName : string) : string;
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
    if (OpenDialog1.Execute) then
    begin
        EdtMd5.Text := MD5(OpenDialog1.FileName);
    end;
    
end;

function TForm2.MD5(const fileName: string): string;
var
   idmd5 : TIdHashMessageDigest5;
   fs : TFileStream;
begin
   idmd5 := TIdHashMessageDigest5.Create;
   fs := TFileStream.Create(fileName, fmOpenRead OR fmShareDenyWrite) ;
   try
     result := idmd5.AsHex(idmd5.HashValue(fs)) ;
   finally
     fs.Free;
     idmd5.Free;
   end;

end;

end.
