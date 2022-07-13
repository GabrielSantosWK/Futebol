unit Controllers.Rodada;

interface
uses
  Horse,
  Services.Time,
  System.JSON,
  DataSet.Serialize;
  procedure Registry;
  procedure ListarTimes(Req: THorseRequest; Res: THorseResponse; Next: TProc);
  procedure ObterTime(Req: THorseRequest; Res: THorseResponse; Next: TProc);
  procedure CadastrarTime(Req: THorseRequest; Res: THorseResponse; Next: TProc);
  procedure AlterarTimes(Req: THorseRequest; Res: THorseResponse; Next: TProc);
  procedure DeletarTimes(Req: THorseRequest; Res: THorseResponse; Next: TProc);
implementation
procedure ListarTimes(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LService:TServiceTime;
  LRetorno:TJSONObject;

begin
  LService := TServiceTime.Create;
  try
    LRetorno := TJSONObject.Create;
    LRetorno.AddPair('DATA',LService.ListAll(Req.Query).ToJSONArray());
    LRetorno.AddPair('RECORDS',TJSONNumber.Create(LService.GetRecordCount));
    Res.Send(LRetorno)
  finally
    LService.Free;
  end;
end;
procedure ObterTime(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LService:TServiceTime;
begin
  LService := TServiceTime.Create;
  try
    if LService.GetByID(Req.Params['id']).IsEmpty then
      //raise EHorseException.Create(THTTPStatus.NotFound,'Time não encontrado');
    Res.Send(LService.qryCadastro.ToJSONObject());
  finally
    LService.Free;
  end;
end;
procedure CadastrarTime(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LService:TServiceTime;
  LTime:TJSONObject;
begin
  LService := TServiceTime.Create;
  try
    LTime := Req.Body<TJSONObject>;
    if LService.Append(LTime) then
      Res.Send(LService.qryCadastro.ToJSONObject()).Status(THTTPStatus.Created);
  finally
    LService.Free;
  end;
end;
procedure AlterarTimes(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LService:TServiceTime;
  LTime:TJSONObject;
begin
  LService := TServiceTime.Create;
  try
    if LService.GetByID(Req.Params['id']).IsEmpty then
      //raise EHorseException.Create(THTTPStatus.NotFound,'Time não encontrado');

    LTime := Req.Body<TJSONObject>;
    if LService.Update(LTime)then
      Res.Status(THTTPStatus.NoContent);
  finally
    LService.Free;
  end;
end;
procedure DeletarTimes(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LService:TServiceTime;
  LTime:TJSONObject;
begin
  LService := TServiceTime.Create;
  try
    if LService.GetByID(Req.Params['id']).IsEmpty then
      //raise EHorseException.Create(THTTPStatus.NotFound,'Time não encontrado');

    LTime := Req.Body<TJSONObject>;
    if LService.Delete then
      Res.Status(THTTPStatus.NoContent);
  finally
    LService.Free;
  end;
end;

procedure Registry;
begin
  THorse.Get('/times',ListarTimes);
  THorse.Get('/times/:id',ObterTime);
  THorse.Post('/times',CadastrarTime);
  THorse.Put('/times/:id',AlterarTimes);
  THorse.Delete('/times/:id',DeletarTimes);
end;

end.
