unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, UITypes,
  Dialogs,ActiveX,ComObj,
  SSObjDb_TLB, StdCtrls, ExtCtrls, ImgList, AxCtrls, Grids, Menus;

type

  TSSCreatorEvent = class(TInterfacedobject, ISSCreatorEvent)
  private
    procedure OnInformation(Info: PWideChar); safecall;
    procedure OnWarning(WarningInfo: PWideChar); safecall;
    function OnQuestion(QuestionInfo: PWideChar): Integer; safecall;
    procedure OnException(ErrorMsg: PWideChar; ErrorCode: Integer); safecall;
  public
    Destructor Destroy;override;
    function SafeCallException(ExceptObject: TObject; ExceptAddr: Pointer): HResult; override;
  end;

  TGridEvent = class(TInterfacedobject, ISGridEvent)
  private
    FDropDownText:String;
    FGrid:ISGrid;
  protected
    procedure OnFilterObj(const AObj: IBasicRow; var Accept: WordBool); safecall;
    procedure OnFilterObjFlat(const AObj: IBasicRow; var Accept: WordBool); safecall;
    procedure OnFilterChildren(const AParent: IBasicRow; var ChildrenAccept: WordBool); safecall;
    procedure OnSelectedCell(ACol: Integer; ARow: Integer; const PriorObj: IBasicRow); safecall;
    procedure OnCollapseNode(const Sender: ISGrid; const Obj: IBasicRow; Index: Integer;
                             var CanDo: WordBool); safecall;
    procedure OnNodeExpandChanged(const Sender: ISGrid; const Obj: IBasicRow; Index: Integer;
                                  Expanded: WordBool); safecall;
    function OnGetRowImageIndex(const Sender: ISGrid; const Obj: IBasicRow): Integer; safecall;
    function OnGetRowImage: IPicture; safecall;
    procedure OnCellDraw(const Sender: ISRowField; const Obj: IBasicRow; const ColDef: ISColDef;
                         GridCol: Integer; GridRow: Integer; DC: OLE_HANDLE; Rect: TxRect;
                         Selected: WordBool; var Drawn: WordBool); safecall;
    procedure OnAcceptKey(const Sender: ISRowField; const Obj: IBasicRow; AKey: Word;
                          var Accept: WordBool); safecall;
    procedure OnGetFieldPickList(const Sender: ISRowField; const Obj: IBasicRow;
                                 var Width: Integer; var SimpleText: WideString); safecall;
    procedure OnGetFieldPickValue(const Sender: ISRowField; const Obj: IBasicRow;
                                  const ObjValue: IBasicRow; var TxtValue: WideString;
                                  Accept: WordBool; var SetEditText: WordBool); safecall;
    procedure OnFieldEditChange(const Sender: ISRowField; const Obj: IBasicRow;
                                const EditText: WideString); safecall;
    procedure OnFieldEditButtonClick(const Sender: ISRowField; const Obj: IBasicRow); safecall;
    procedure OnFieldClick(const Sender: ISRowField; const Obj: IBasicRow); safecall;
    procedure OnFieldDblClick(const Sender: ISRowField; const Obj: IBasicRow); safecall;
    procedure OnGetFieldEditParam(const Sender: ISRowField; const Obj: IBasicRow;
                                  const ColDef: ISColDef; GridCol: Integer; GridRow: Integer;
                                  var FontRec: TxFontRec; var BackParam: TxDrawBackParam); safecall;
    procedure OnGetFieldDrawParam(const Sender: ISRowField; const Obj: IBasicRow;
                                  const ColDef: ISColDef; GridCol: Integer; GridRow: Integer;
                                  var FontRec: TxFontRec; var BackParam: TxDrawBackParam); safecall;
    procedure OnGetFieldEditStyle(const Sender: ISRowField; const Obj: IBasicRow;
                                  var EditStyle: TxEditStyle); safecall;
    procedure OnFieldCanEdit(const Sender: ISRowField; const Obj: IBasicRow; var AllowEdit: WordBool); safecall;
    procedure OnFieldMouseMove(const Sender: ISRowField; const Obj: IBasicRow; ShiftState: Integer); safecall;
    procedure OnGetFieldEditText(const Sender: ISRowField; const Obj: IBasicRow;
                                 var Value: WideString); safecall;
    procedure OnSetFieldEditText(const Sender: ISRowField; const Obj: IBasicRow;
                                 var Value: WideString; var PostValue: WordBool); safecall;
    procedure OnGetFieldDrawText(const Sender: ISRowField; const Obj: IBasicRow;
                                 const ColDef: ISColDef; GridCol: Integer; GridRow: Integer;
                                 var Value: WideString); safecall;
    procedure OnTabNextStop(var DoIt: WordBool); safecall;
    procedure OnParentGridChangeRow(const Sender: ISGrid; const PriorRow: IBasicRow;
                                    const CurrRow: IBasicRow); safecall;
    procedure OnGetCustomRowHeight(const Obj: IBasicRow; Row: Integer; var Height: Integer); safecall;
    procedure OnHint(const Sender: ISGrid; var HintText: WideString); safecall;
    procedure OnClick(const Sender: ISGrid); safecall;
    procedure OnDblClick(const Sender: ISGrid); safecall;
    procedure OnEnter(const Sender: ISGrid); safecall;
    procedure OnExit(const Sender: ISGrid); safecall;
  public
    constructor Create;virtual;
    destructor Destroy;override;
    function SafeCallException(ExceptObject: TObject; ExceptAddr: Pointer): HResult; override;
  end;

  TDbCallBack = class(TInterfacedobject, ISDataSetEvent)
  private
    procedure AfterInsertItem(const AObj: IBasicRow); safecall;
    procedure AfterRemoveItem(const AParent: IBasicRow; const AObj: IBasicRow); safecall;
    procedure BeforeRemoveItem(const AObj: IBasicRow); safecall;
    function OnDispatchTask(const AObj: IBasicRow; DispatchTag: Word;
                            var PostTask: WordBool): WordBool; safecall;
    procedure OnSaveProgress(Percent: Integer); safecall;
    procedure OnOpenProgress(Percent: Integer); safecall;
    procedure OnPurgeProgress(Percent: Integer); safecall;
    procedure OnRebuildRefProgress(Percent: Integer); safecall;
    procedure OnWriteFileCustomId(var AFileId: Integer); safecall;
    function OnReadFileCustomId(AFileId: Integer): WordBool; safecall;
    procedure OnFinishTask; safecall;
    procedure OnRebuildKeyProgress(Percent: Integer); safecall;
    function OnGetExprValue(const Sender: IBasicRow; const Expr: WideString): double; safecall;
    procedure OnGetPrintExpr(const Sender: IBasicRow; const Expr: WideString;
                             var PrintExpr: WideString); safecall;
  public
    Destructor Destroy;override;
    function SafeCallException(ExceptObject: TObject; ExceptAddr: Pointer): HResult; override;
  end;

  TClass1Event = class(TInterfacedObject, ISClassEvent)
  private
    procedure BeforeRemoveItem(const AItem: IBasicRow); safecall;
    procedure AfterInsertItem(const AItem: IBasicRow); safecall;
    procedure AfterRemoveItem(const AParent: IBasicRow; const AItem: IBasicRow); safecall;
    procedure BeforePost(const AObj: IBasicRow); safecall;
    procedure AfterPost(const AObj: IBasicRow); safecall;
    procedure BeforeUndoRedoPost(const AObj: IBasicRow; IsUndo: WordBool); safecall;
    procedure AfterUndoRedoPost(const AObj: IBasicRow; IsUndo: WordBool); safecall;
    function BeforeClone(const ASource: IBasicRow; const ADestParent: IBasicRow; var ExtData: OLE_HANDLE): WordBool; safecall;
    procedure AfterClone(const ASource: IBasicRow; const ADest: IBasicRow; ExtData: OLE_HANDLE); safecall;
    procedure OnNoRefer(const AObj: IBasicRow); safecall;
    procedure OnReferChange(const AObj: IBasicRow); safecall;
    procedure OnNodeAsyncTask(const DestObj: IBasicRow; TaskSequence: Word); safecall;
    procedure OnNeedForeignKeyObj(const AItem: IBasicRow; var RaiseExceptionOnFail: WordBool); safecall;
  public
    function SafeCallException(ExceptObject: TObject; ExceptAddr: Pointer): HResult; override;
  end;

  TFieldEvent = class(TInterfacedObject, ISRowFieldEvent)
  private
    procedure OnGetEditText(const Sender: ISRowField; const AObj: IBasicRow; var Value: WideString); safecall;
    procedure OnGetDrawText(const Sender: ISRowField; const AObj: IBasicRow; var Value: WideString); safecall;
    procedure OnGetEditLimit(const Sender: ISRowField; const AObj: IBasicRow; var MaxLength: Word); safecall;
    function OnGetCheckBoxValue(const Sender: ISRowField; const AObj: IBasicRow; AIndex: Integer): WordBool; safecall;
    procedure OnSetCheckBoxValue(const Sender: ISRowField; const AObj: IBasicRow; Index: Integer;
                                 Value: WordBool); safecall;
    function OnGetCheckBoxVisible(const Sender: ISRowField; const AObj: IBasicRow): WordBool; safecall;
    function OnGetCheckBoxEnabled(const Sender: ISRowField; const AObj: IBasicRow; Index: Integer): WordBool; safecall;
    function OnCalcField(const Sender: ISRowField; const AObj: IBasicRow): OleVariant; safecall;
    procedure OnFieldChange(const Sender: ISRowField; const AObj: IBasicRow); safecall;
  public
    function SafeCallException(ExceptObject: TObject; ExceptAddr: Pointer): HResult; override;
  end;

  TMgrEvent = class(TInterfacedObject, ISCommandMgrEvent)
  private
    procedure OnStartCommand(const ACaption: WideString; IsUndo: WordBool; IsRedo: WordBool;
                             var ExtData: OLE_HANDLE); safecall;
    procedure OnUndoRedoProgress(APercent: Integer); safecall;
    procedure OnClearUndoRedo(IsUndo:WordBool); safecall;
    procedure OnFinishUndoRedo(ExtData: OLE_HANDLE); safecall;
  public
    function SafeCallException(ExceptObject: TObject; ExceptAddr: Pointer): HResult; override;
  end;

  TLocateHandleFunc = procedure(const AObj: IBasicRow; var ANeedBreak: Boolean) stdcall;
  TOnGetReferProc = procedure(const AObj:IBasicRow; var ABreak:Boolean; Info:Ole_Handle);stdcall;

  TForm1 = class(TForm)
    Panel1: TPanel;
    BtnCreateDb: TButton;
    btnFreeDb: TButton;
    btnCreateOpen: TButton;
    btnAddData: TButton;
    Splitter1: TSplitter;
    Panel2: TPanel;
    btnCreateGrid: TButton;
    btnFreeGrid: TButton;
    ImageList1: TImageList;
    Splitter2: TSplitter;
    Panel3: TPanel;
    Panel4: TPanel;
    btnFreeChildGrid: TButton;
    btnSaveDb: TButton;
    btLoadData: TButton;
    btnInit: TButton;
    btnFinal: TButton;
    btnEnableLog: TButton;
    btnStartTrans: TButton;
    btnUndo: TButton;
    btnRedo: TButton;
    btnDisGridDefTrans: TButton;
    PopupMenu1: TPopupMenu;
    InsertBefore1: TMenuItem;
    Insert1: TMenuItem;
    Filterout1: TMenuItem;
    AddChild1: TMenuItem;
    Resort1: TMenuItem;
    Font1: TMenuItem;
    Background1: TMenuItem;
    AddInSort1: TMenuItem;
    StopSort1: TMenuItem;
    btnSwitchNodeBtnStyle: TButton;
    btnSuspend: TButton;
    btnResume: TButton;
    Panel5: TPanel;
    Splitter3: TSplitter;
    btnLoadDefinitionAndOpen: TButton;
    btnCreateClass: TButton;
    btnAlterStru: TButton;
    btnTestCalcExpr: TButton;
    procedure FormDestroy(Sender: TObject);
    procedure btLoadDataClick(Sender: TObject);
    procedure btnInitClick(Sender: TObject);
    procedure btnFinalClick(Sender: TObject);
    procedure btnStartTransClick(Sender: TObject);
    procedure btnUndoClick(Sender: TObject);
    procedure btnRedoClick(Sender: TObject);
    procedure btnDisGridDefTransClick(Sender: TObject);
    procedure BtnCreateDbClick(Sender: TObject);
    procedure btnFreeDbClick(Sender: TObject);
    procedure btnEnableLogClick(Sender: TObject);
    procedure btnCreateOpenClick(Sender: TObject);
    procedure btnAddDataClick(Sender: TObject);
    procedure btnCreateGridClick(Sender: TObject);
    procedure btnFreeGridClick(Sender: TObject);
    procedure btnFreeChildGridClick(Sender: TObject);
    procedure btnSaveDbClick(Sender: TObject);
    procedure InsertBefore1Click(Sender: TObject);
    procedure Insert1Click(Sender: TObject);
    procedure Filterout1Click(Sender: TObject);
    procedure AddChild1Click(Sender: TObject);
    procedure Resort1Click(Sender: TObject);
    procedure Font1Click(Sender: TObject);
    procedure Background1Click(Sender: TObject);
    procedure AddInSort1Click(Sender: TObject);
    procedure StopSort1Click(Sender: TObject);
    procedure btnSwitchNodeBtnStyleClick(Sender: TObject);
    procedure btnSuspendClick(Sender: TObject);
    procedure btnResumeClick(Sender: TObject);
    procedure btnLoadDefinitionAndOpenClick(Sender: TObject);
    procedure btnCreateClassClick(Sender: TObject);
    procedure btnAlterStruClick(Sender: TObject);
    procedure btnTestCalcExprClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure OnAppIdle(Sender: TObject; var Done: Boolean);
    procedure SetDbMisc;
    procedure BuildExtFields;
    //procedure BuildExtFields2;
    procedure BuildExtFields3;
  public
    { Public declarations }
    Grid, ChildGrid, DictGrid:ISGrid;
    GE, CGE:TGridEvent;
    Db:ISDataSet;
    C1, C2, Dict:ISClass;
    C1_FloatFld1,C1_StrFld2, C1_StrFld1:ISRowField;
    DbEvent:ISDataSetEvent;
    Class1Event:ISClassEvent;
    FieldEvent:ISRowFieldEvent;
    MgrEvent: ISCommandMgrEvent;

    destructor Destroy;override;
  end;

const
  {$ifdef CPUX86}
  c_DllPath =  '..\src\Win32\Debug\SSObjDb.dll';
  {$else}
  c_DllPath =  '..\src\Win64\Debug\SSObjDb.dll';
  {$endif}

  //dll�����������API
  function GetSSCreator(const AEventHandler:ISSCreatorEvent; const ADevCode:WideString):ISSCreator; stdcall;external c_DllPath;
  procedure ReleaseSSCreator(var Creator:ISSCreator); stdcall; external c_DllPath;

var
  Form1: TForm1;
  SSCreator:ISSCreator;
  SSEvent:ISSCreatorEvent;

implementation
uses Unit2;

{$R *.dfm}

procedure TForm1.BtnCreateDbClick(Sender: TObject);
begin
  if not Assigned(Db) then
  begin
    FieldEvent := TFieldEvent.create;  //�ֶ��¼�����
    Db := SSCreator.CreateDbObj;    //�������ݿ����
    //ָ��hash�ṹ�Ĵ�С,Ĭ��ֵishsMedium���������ݿ���Ҫ�ļ�ֵ�������Ķ���
    Db.FiledHashSize := ishsMini;
  end;
end;

procedure TForm1.btnFreeDbClick(Sender: TObject);
begin
  //before you all FreeDbObj, make sure that the var of "Db" is the last one which reference to ISDataSet interface.
  SSCreator.FreeDbObj(Db);
end;

procedure TForm1.btnCreateOpenClick(Sender: TObject);
//var cf:TxCellFormat;
begin
  //if no file which named with Db.Databasename exists, so create it.
  Db.Open;
  //Db.Classes.Items[0].GetDispFormat('Field1', cf);
  //cf.FontColor := ColorToRGB(clBlue);
  //Db.Classes.Items[0].SetDispFormat(cf);
end;

procedure TForm1.btnAddDataClick(Sender: TObject);
var r,r1:ISRow;
    cf:TxCellFormat;
begin
  r := Db.AddRootItem(C1); // the first row data to put in database
  cf.Field := r.FieldByName['StrFld1'];
  cf.FontSize := 15;
  cf.FontStyle := 0;
  cf.FontColor := ColorToRGB(clBlack);
  cf.Color := ColortoRGB(clWhite);
  // if cf.FieldName='', then set the Row Format.
  // you can also set format with Class.SetDispFormat(), which setting all the row obj format of the class.
  r.SetDispFormat(cf);
  r.AddItem(C2, true);
  r.AddItem(C2, true);
  r1 := r.AddItem(C2, true);
  r1.addItem(C1, true);
  r1.addItem(C1, true);
  r1.addItem(C1, true);
  r1.addItem(C1, true);
  r.AddItem(C2, true);
  r1 := r.AddItem(C2, true);
  r1.addItem(C1, true);
  r1.addItem(C1, true);
  r1.addItem(C1, true);
  r1.addItem(C1, true);
  r1 := r.AddItem(C2, true);
  r1.addItem(C1, true);
  r1.addItem(C1, true);
  r1.addItem(C1, true);
  r1.addItem(C1, true);
  r1 := r.AddItem(C2, true);
  r1.addItem(C1, true);
  r1.addItem(C1, true);
  r1.addItem(C1, true);
  r1.addItem(C1, true);
  r1.addItem(C1, true);
  r.AddItem(C2, true);
  r.AddItem(C2, true);

  // Calling GetAggObject , if nil then create it. you can also Call QueryAggObject ,which just Query.
  r := Db.RootItem.GetAggObjectByName('AggFld1');

  r1 := r.AddItem(Dict, true);
  DB.Edit(r1);
  r1.AsStringByName['KeyFld'] := 'ABC';
  r1.AsFloatByName['FloatFld'] := 12.345;
  db.Post;

  r1 := r.AddItem(Dict, true);
  DB.Edit(r1);
  r1.AsStringByName['KeyFld'] := 'CDE';
  r1.AsFloatByName['FloatFld'] := 20.123;
  db.Post;

  r1 := r.AddItem(Dict, true);
  DB.Edit(r1);  // same as r1.Edit;
  r1.AsStringByName['KeyFld'] := 'EFG';
  r1.AsFloatByName['FloatFld'] := 99.99;
  db.Post;  // same asd r1.Post;
end;

procedure TForm1.btnCreateGridClick(Sender: TObject);
var
    col:ISColDef;
    Fld:ISRowField;


  procedure SetGrid(AGrid:ISGrid; AGridEvent:TGridEvent);
  begin
    // if the row have "WordWrap"Field, then the row height depends on the Field Value.
    AGrid.AutoAdjustRowHeight := true;
    //AGrid.AutoAdjColWidth := true;
    //AGrid.AutoAdjColFields := 'Class1.StrFld1';
    AGrid.SetEvent(AGridEvent);
    if Assigned(AGridEvent) then
      AGridEvent.FGrid := AGrid;
    AGrid.SetImageListHandle(ImageList1.Handle, true);
    AGrid.DataView.ColDefs.Add; // the Grid Col No1(the fixed one).

    Col :=  AGrid.DataView.ColDefs.Add;// the Grid Col No.2
    Col.Width := 100;
    Col.Caption := 'StrFld1';
    Col.BindFields := 'Class1.StrFld1,Class2.StrFld1'; // bind multi Fields.

    Col.GroupCaption := 'StrFld';
    Col.Grouped := true;
    Col.GroupColor := clSilver;
    //Col.GroupFont.Color := clRed;

    Col :=  AGrid.DataView.ColDefs.Add;// the Grid Col No.3
    Col.Width := 300;
    Col.Caption := 'StrFld2';
    Col.BindFields := 'Class1.StrFld2';
    AGrid.AutoAdjColWidth := true;
    AGrid.AutoAdjColFields := 'Class1.StrFld2';
    AGrid.AutoAdjColMinWidth := 300;

    Col.Grouped := true;

    Col :=  AGrid.DataView.ColDefs.Add;
    Col.Width := 100;
    Col.Caption := 'FloatField';
    Col.BindFields :=  'Class1.FloatFld1,Class2.FloatFld1';

    Col :=  AGrid.DataView.ColDefs.Add;
    Col.Width := 50;
    Col.Caption := '(Id)';
    Col.BindFields :=  'Class1.CalcIdFld,Class2.CalcIdFld';

    Col :=  AGrid.DataView.ColDefs.Add;
    Col.Width := 50;
    Col.Caption := '(Class)';
    Col.BindFields :=  'Class1.CalcKeyFld,Class2.CalcKeyFld';

    Col :=  AGrid.DataView.ColDefs.Add;
    Col.Width := 100;
    Col.Caption := 'LookupFromDict';
    Col.BindFields :=  'Class1.LookupFromDict,Class2.LookupFromDict';

    Fld := Db.Classes.Items[1].FieldByName['IntFldExt1'];
    if Assigned(Fld) then
    begin
      Col :=  AGrid.DataView.ColDefs.Add;
      Col.Width := 60;
      Col.Caption := 'ExtFld';
      Col.BindFields :=  'Class1.IntFldExt1';
    end;

    Fld := Db.Classes.Items[1].FieldByName['StrFldExtExt1'];
    if Assigned(Fld) then
    begin
      Col :=  AGrid.DataView.ColDefs.Add;
      Col.Width := 100;
      Col.Caption := 'StrFldExtExt1';
      Col.BindFields :=  'Class1.StrFldExtExt1';
    end;

    Fld := Db.Classes.Items[1].FieldByName['IntFldEx3_1'];
    if Assigned(Fld) then
    begin
      Col :=  AGrid.DataView.ColDefs.Add;
      Col.Width := 100;
      Col.Caption := 'IntFldEx3_1';
      Col.BindFields :=  'Class1.IntFldEx3_1';
    end;

    AGrid.DataSet := Db;
    AGrid.AutoAdjustRowHeight := true;

   // PopupGrid is for the Cell editor's dropdown list view
    AGrid.PopupGrid.DataView.ColDefs.Add;
    Col := AGrid.PopupGrid.DataView.ColDefs.Add;
    Col.Caption :='FF';
    Col.BindFields := 'Class2.StrFld1';
    AGrid.PopupGrid.DataView.ColDefs.Add;
    AGrid.PopupGrid.DataView.ColDefs.Items[0].Width := 8;
  end;

  procedure SetDictGrid;
  begin
    DictGrid.DataView.ColDefs.Add;
    Col := DictGrid.DataView.ColDefs.Add;
    Col.Width := 200;
    Col.Caption := 'Dict Key';
    Col.BindFields := 'Dict.KeyFld';

    Col := DictGrid.DataView.ColDefs.Add;
    Col.Width := 100;
    Col.Caption := 'Dict Value';
    Col.BindFields := 'Dict.FloatFld';
    DictGrid.DataSet := Db;
    //DictGrid.ReadOnly := true;
  end;


var f:TxFontRec;
begin
  // the Grid "Object" will bind to a child window. you can use any child window handle as the param,
  //but, using a simple window control(like a panel) is better.
  Grid := SSCreator.CreateSGrid(Panel2.Handle);
  if Assigned(Grid) then
  begin
    //Grid.SelectedColor := $00A97A54;
    if GE = nil then
    begin
      GE := TGridEvent.Create;
    end;
    //Grid.Options := igoRowSelect;
    SetGrid(Grid, GE);
    f := Grid.DataView.ColDefs.Items[1].Font;
    f.Color := clRed;
    Grid.DataView.ColDefs.Items[1].Font := f;
    //Grid.ReadOnly := true;
    Grid.Indent := 12;
  end;
  if Assigned(Grid) then
  begin
    ChildGrid := SSCreator.CreateSGrid(Panel4.Handle);
    ChildGrid.FlatShow := true; //show data as "plain" lines.
    if Assigned(ChildGrid) then
    begin
      if CGE = nil then
      begin
        CGE := TGridEvent.Create;
      end;
      SetGrid(ChildGrid, CGE);
      ChildGrid.DataView.HaveLevelParent := true;
      if Assigned(Grid) then
        //build parent-child Grid relationship, then the ChildGrid's OnParentGridChangeRow callback event will be trigged.
        Grid.RegisterChildGrid(ChildGrid);

      DictGrid := SSCreator.CreateSGrid(Panel5.Handle);
      if Assigned(DictGrid) then
      begin
        DictGrid.DataView.HaveLevelParent := true;
        DictGrid.DataView.LevelParentAsRoot := false; //show LevelParent Obj as the first line in grid.
        SetDictGrid;
        DictGrid.DataView.LevelParent := DB.RootItem.GetAggObjectByName('AggFld1');
      end;
    end;
  end;
end;

procedure TForm1.btnFreeGridClick(Sender: TObject);
begin
 //FreeSGrid���Ǳ�����õġ�
  SSCreator.FreeSGrid(Grid);
end;

{ TGridEvent }

constructor TGridEvent.Create;
begin
  inherited;
  FDropDownText := 'TextA,TextB,TextC';
end;

destructor TGridEvent.Destroy;
begin

  inherited;
end;

procedure TGridEvent.OnAcceptKey(const Sender: ISRowField;
  const Obj: IBasicRow; AKey: Word; var Accept: WordBool);
begin
  //if AKey =ord('A') then Accept := false;
end;

procedure TGridEvent.OnCellDraw(const Sender: ISRowField;
  const Obj: IBasicRow; const ColDef: ISColDef; GridCol, GridRow: Integer;
  DC: OLE_HANDLE; Rect: TxRect; Selected: WordBool; var Drawn: WordBool);
begin
  //TextOut(DC, Rect.Left, Rect.Top, 'Hello',5);
  //Drawn := true;
end;

procedure TGridEvent.OnClick(const Sender: ISGrid);
begin

end;

procedure TGridEvent.OnCollapseNode(const Sender: ISGrid;
  const Obj: IBasicRow; Index: Integer; var CanDo: WordBool);
begin
  //CanDo := false;
end;

procedure TGridEvent.OnDblClick(const Sender: ISGrid);
begin

end;

procedure TGridEvent.OnEnter(const Sender: ISGrid);
begin
  //ShowMessage('Enter');
end;

procedure TGridEvent.OnExit(const Sender: ISGrid);
begin
  //ShowMessage('Exit');
end;

procedure TGridEvent.OnFieldCanEdit(const Sender: ISRowField;
  const Obj: IBasicRow; var AllowEdit: WordBool);
begin
  //AllowEdit := false;
end;

procedure TGridEvent.OnFieldClick(const Sender: ISRowField;
  const Obj: IBasicRow);
begin
  //ShowMessage('Field Click');
end;

procedure TGridEvent.OnFieldDblClick(const Sender: ISRowField;
  const Obj: IBasicRow);
begin
  ShowMessage('Hell0');
end;

procedure TGridEvent.OnFieldEditButtonClick(const Sender: ISRowField;
  const Obj: IBasicRow);
begin
  showMessage('Edit Button Click');
end;

procedure TGridEvent.OnFieldEditChange(const Sender: ISRowField;
  const Obj: IBasicRow; const EditText: WideString);
begin
  //ShowMessage(EditText);
end;

procedure TGridEvent.OnFieldMouseMove(const Sender: ISRowField;
  const Obj: IBasicRow; ShiftState: Integer);
begin
  //if ShiftState = issShift then
  //  beep;
end;

procedure TGridEvent.OnFilterChildren(const AParent: IBasicRow;
  var ChildrenAccept: WordBool);
begin
  //ChildrenAccept := false;
end;

procedure TGridEvent.OnFilterObjFlat(const AObj: IBasicRow;
  var Accept: WordBool);
begin
  //��ShowWithoutStruct = true ʱ ��������
end;

procedure TGridEvent.OnFilterObj(const AObj: IBasicRow;
  var Accept: WordBool);
begin
  if AObj.ClassDef = Form1.C1 then
    Accept := AObj.AsBooleanByName['BoolFld1']
  else
    Accept := true;
end;

procedure TGridEvent.OnGetCustomRowHeight(const Obj: IBasicRow;
  Row: Integer; var Height: Integer);
begin
  //Height := 50;
end;

procedure TGridEvent.OnGetFieldDrawParam(const Sender: ISRowField;
  const Obj: IBasicRow; const ColDef: ISColDef; GridCol, GridRow: Integer;
  var FontRec: TxFontRec; var BackParam: TxDrawBackParam);
begin
  //FontRec.Style := ifsBold + ifsItalic;
  //FontRec.Size := 15;
end;

procedure TGridEvent.OnGetFieldDrawText(const Sender: ISRowField;
  const Obj: IBasicRow; const ColDef: ISColDef; GridCol, GridRow: Integer;
  var Value: WideString);
begin
  //if GridCol = 0 then
  //  Value := IntToStr(Obj.OrderNo);
end;

procedure TGridEvent.OnGetFieldEditParam(const Sender: ISRowField;
  const Obj: IBasicRow; const ColDef: ISColDef; GridCol, GridRow: Integer;
  var FontRec: TxFontRec; var BackParam: TxDrawBackParam);
begin
  //FontRec.Color := clRed;
  //FontRec.Style := ifsBold;
  //Backparam.Color := clGreen;
end;

procedure TGridEvent.OnGetFieldEditStyle(const Sender: ISRowField;
  const Obj: IBasicRow; var EditStyle: TxEditStyle);
begin
  //EditStyle :=  iesSimple;
end;

procedure TGridEvent.OnGetFieldEditText(const Sender: ISRowField;
  const Obj: IBasicRow; var Value: WideString);
begin
  //Value := 'EditValue:'+Value;
end;

procedure TGridEvent.OnGetFieldPickList(const Sender: ISRowField;
  const Obj: IBasicRow; var Width: Integer; var SimpleText: WideString);
begin
  //�����ַ������������б�
  //1. ��ֵ SimpleText,�Զ��ŷָ���ַ���
  //����
  //2. ����PopupGrid����ʾ�����б�

  //SimpleText := FDropDownText;
  FGrid.PopupGrid.FlatShow := true;
  FGrid.PopupGrid.DataSet := Form1.Db;
  FGrid.PopupGrid.DataView.LevelParent := nil;
  FGrid.PopupGrid.DataView.LevelParent := Form1.Db.RootItem;
end;

procedure TGridEvent.OnGetFieldPickValue(const Sender: ISRowField;
  const Obj, ObjValue: IBasicRow; var TxtValue: WideString;
  Accept: WordBool; var SetEditText: WordBool);
begin
  SetEditText := true;
  if (TxtValue = '')  and (objValue <> nil) then
  begin
    TxtValue := ObjValue.AsStringByName['StrFld1'];
  end
  else
    TxtValue := 'Sel: '+TxtValue;
end;

function TGridEvent.OnGetRowImage: IPicture;
//var p:TPicture;
//    res:IPictureDisp;
begin
  //GetOlePicture(p, res );
  //result := res as IPicture;
  result := nil;
end;

function TGridEvent.OnGetRowImageIndex(const Sender: ISGrid;
  const Obj: IBasicRow): Integer;
begin
  result := -1;
end;

procedure TGridEvent.OnHint(const Sender: ISGrid;
  var HintText: WideString);
begin
  Form1.Panel2.Hint := HintText;
end;

procedure TGridEvent.OnNodeExpandChanged(const Sender: ISGrid;
  const Obj: IBasicRow; Index: Integer; Expanded: WordBool);
begin
  //ShowMessage('Node Status changed.');
end;

procedure TGridEvent.OnParentGridChangeRow(const Sender: ISGrid;
  const PriorRow, CurrRow: IBasicRow);
begin
  FGrid.DataView.LevelParent := CurrRow;
end;

procedure TGridEvent.OnSelectedCell(ACol, ARow: Integer;
  const PriorObj: IBasicRow);
begin
  //beep;
end;

procedure TGridEvent.OnSetFieldEditText(const Sender: ISRowField;
  const Obj: IBasicRow; var Value: WideString; var PostValue: WordBool);
var res:Variant;
begin
  //Value := 'Input: '+Value;
  //PostValue := false;
  if Sender.FieldType = isftFloat then
  begin
    res := Obj.Owner.CalcExpress(Obj, Value);  //��������ı��ʽ��ֵ
    if varIsNull(res) then
      Value := '0'
    else
      Value := FloattoStr(res);  
  end;
  //���ڲ��� PostValue
  //=true,��Grid��Ĭ�Ϸ�ʽ��ֵ�ֶβ��ύ���ݿ�
  //=false,��Grid���ύ���ݣ����ⲿ���봦�������ύ��
end;

procedure TGridEvent.OnTabNextStop(var DoIt: WordBool);
begin
  //��������ת
  //if FGrid.SelectedField.FieldName ='Field2'then
  //  DoIt := false;  
end;

function TGridEvent.SafeCallException(ExceptObject: TObject; ExceptAddr: Pointer): HResult;
begin
  Result := HandleSafeCallException(ExceptObject, ExceptAddr, IID_ISGridEvent, '', '');
end;

destructor TForm1.Destroy;
begin
  inherited;
end;

procedure TForm1.btLoadDataClick(Sender: TObject);
begin
  Db.DatabaseName := ExtractFilePath(ParamStr(0))+'Test.db';
  //Db.LoadDefinitions;
  //SetDbMisc;
  Db.ReadOnly := false;
  Db.Open; // open existed file.
end;

procedure TForm1.btnInitClick(Sender: TObject);
begin
  //��ʼ������

  SSEvent := TSSCreatorEvent.create; //�����������¼�����
  SSCreator := GetSSCreator(SSEvent, 'a=Qm6&L#7z');//����API����ù�����
  Application.OnIdle := OnAppIdle;
end;

procedure TForm1.btnFinalClick(Sender: TObject);
begin
  //��������Ҫ�������
  ReleaseSSCreator(SSCreator);      
end;

procedure TForm1.btnStartTransClick(Sender: TObject);
begin
  //��ʼһ�����񣨻����������һ��Undo�����Ļع���Ԫ��
  //�������һ��������Ԫ���� StartTransaction ������ʼ��ֱ����һ��StartTransaction������
  Db.CmdMgr.StartCommand('',nil,0);  //���� ExtData ���Լ�¼���Լ����������ݣ���OnFinishUndoRedo�¼��з��ظ�������
end;

procedure TForm1.btnUndoClick(Sender: TObject);
begin
  if DB.CmdMgr.CanUndo then
    Db.CmdMgr.Undo;
end;

procedure TForm1.btnRedoClick(Sender: TObject);
begin
  if DB.CmdMgr.CanRedo then
    Db.CmdMgr.Redo;
end;

procedure TForm1.btnDisGridDefTransClick(Sender: TObject);
begin
  //��ֹ��GridĬ�ϵı༭�����ύ��Ҳ����˵Grid��Ĭ�ϱ༭��Ԫ�����ݲ������ύ����
  //���ݵ��޸İ�������һ����������� ��
  Db.DisableGridEditCommand;
end;

procedure TForm1.btnEnableLogClick(Sender: TObject);
begin
  // EnableLog, then you can do Undo Redo. otherwise, UndoRedo is disabled.
  Db.EnableLog := true;
end;

procedure TForm1.btnFreeChildGridClick(Sender: TObject);
begin
  Grid.UnRegisterChildGrid(ChildGrid);
  SSCreator.FreeSGrid(ChildGrid);
end;

procedure TForm1.btnSaveDbClick(Sender: TObject);
begin
  Db.DatabaseName := ExtractFilePath(ParamStr(0))+'Test.db';
  Db.SaveDataSet(true);
end;

{ TSSCreatorEvent }

destructor TSSCreatorEvent.Destroy;
begin
  inherited;
end;

procedure TSSCreatorEvent.OnException(ErrorMsg: PWideChar;
  ErrorCode: Integer);
begin
  showmessage(ErrorMsg);
  //generally, no raise exception again here.
end;

procedure TSSCreatorEvent.OnInformation(Info: PWideChar);
var S:String;
begin
  S := Info;
  Application.MessageBox(PChar(S), '��ʾ', MB_ICONINFORMATION);
end;

function TSSCreatorEvent.OnQuestion(QuestionInfo: PWideChar): Integer;
var S:String;
begin
  S := QuestionInfo;
  result := Application.MessageBox(Pchar(S), '��ʾ', mb_YesNo+mb_IconQuestion);
end;

procedure TSSCreatorEvent.OnWarning(WarningInfo: PWideChar);
var S:String;
begin
  S := WarningInfo;
  Application.MessageBox(Pchar(S), '��ʾ', MB_ICONWARNING);
end;

function TSSCreatorEvent.SafeCallException(ExceptObject: TObject; ExceptAddr: Pointer): HResult;
begin
  Result := HandleSafeCallException(ExceptObject, ExceptAddr, IID_ISSCreatorEvent, '', '');
end;

{ TDbCallBack }

procedure TDbCallBack.AfterInsertItem(const AObj: IBasicRow);
begin
  //beep;
end;

procedure TDbCallBack.AfterRemoveItem(const AParent, AObj: IBasicRow);
begin

end;

procedure TDbCallBack.BeforeRemoveItem(const AObj: IBasicRow);
begin

end;

destructor TDbCallBack.Destroy;
begin
  inherited;
end;

function TDbCallBack.OnDispatchTask(const AObj: IBasicRow; DispatchTag: Word;
                            var PostTask: WordBool): WordBool; safecall;
begin
  //�ַ������ڵ��� DispatchTask�󣬴������¼�
  //�첽����ķַ����϶��£����ջ���Ҷ�ӽڵ㣬����Ҷ�ӽڵ���첽�����ִ�С�
  //����ֵΪfalse���������µݹ飬���˽ڵ�Ϊֹ ��PostTask���Ƿ��ύ�첽����,Ĭ��true��
  result := true;
end;

procedure TDbCallBack.OnFinishTask;
begin
  //�����첽���������
end;

function TDbCallBack.OnGetExprValue(const Sender: IBasicRow; const Expr: WideString): double;
var
  Fld:ISRowField;
begin
  //�ڱ��ʽ����Ĺ����У���ص��˷�������Ҫ�ڴ˽������ʽ�е��ַ������͵Ĳ���������������Ч����ѧ������������ֵ����ֵ������ֵ��
  result := 0;
  Fld := Sender.FieldByName[Expr];
  if Assigned(Fld) then
  begin
    result := Sender.asFloat[Fld];
  end;
end;

procedure TDbCallBack.OnGetPrintExpr(const Sender: IBasicRow; const Expr: WideString; var PrintExpr: WideString);
begin
  //�������ʽ�е��ַ������� ��RGF����Ҫ���ء��˹��ѡ��������ڽ���ɶ��ԡ�
end;

procedure TDbCallBack.OnOpenProgress(Percent: Integer);
begin

end;

procedure TDbCallBack.OnPurgeProgress(Percent: Integer);
begin
  // ���ļ�Pack��ʱ��Ľ���
end;

function TDbCallBack.OnReadFileCustomId(AFileId: Integer): WordBool;
begin
  //result := AFileId = 123;
  result := true; //���ݲ���AFileId�Ƿ�������Ԥ�ڵ�ֵ����true��false��Ҳ����˵�ж��Ƿ�������ļ���
end;

procedure TDbCallBack.OnRebuildKeyProgress(Percent: Integer);
begin
  //�ؽ����ݿ��Key����
end;

procedure TDbCallBack.OnRebuildRefProgress(Percent: Integer);
begin
  //�ؽ����ݿ���������ù�ϵ
end;

procedure TDbCallBack.OnSaveProgress(Percent: Integer);
begin

end;

procedure TDbCallBack.OnWriteFileCustomId(var AFileId: Integer);
begin
  AFileId := 123;//Id  д������ļ�Id
end;

function TDbCallBack.SafeCallException(ExceptObject: TObject; ExceptAddr: Pointer): HResult;
begin
  Result := HandleSafeCallException(ExceptObject, ExceptAddr, IID_ISDataSetEvent, '', '');
end;

{ TClass1Event }

procedure TClass1Event.AfterClone(const ASource, ADest: IBasicRow;
  ExtData: OLE_HANDLE);
begin

end;

procedure TClass1Event.AfterInsertItem(const AItem: IBasicRow);
begin

end;

procedure TClass1Event.AfterPost(const AObj: IBasicRow);
begin
  //ShowMessage('Posted!');
end;

procedure TClass1Event.AfterRemoveItem(const AParent, AItem: IBasicRow);
begin

end;

procedure TClass1Event.AfterUndoRedoPost(const AObj: IBasicRow;
  IsUndo: WordBool);
begin

end;

function TClass1Event.BeforeClone(const ASource, ADestParent: IBasicRow;
  var ExtData: OLE_HANDLE): WordBool;
begin
  result := true; //�Ƿ������¡
end;

procedure TClass1Event.BeforePost(const AObj: IBasicRow);
var V:Variant;
begin
  if (Aobj.ClassDef = Form1.C1) and
     (AObj.Changed[Form1.C1_StrFld2] or AObj.Changed[Form1.C1_StrFld1]) then
  begin //Obj.Changed[Field]����ֻ��beforePost�¼�����Ч
    //������ʽ ����������CachedAST=true����������CalcExpr�����ļ���Ч�ʡ�
    v := Form1.Db.CalcExpr(AObj, AObj.FieldHandle[Form1.C1_StrFld2]);
    if not VarIsNull(V) then
      AObj.Value[Form1.C1_FloatFld1] := V;
  end;
  //�˹����в����ٱ༭�����е����ݣ�AfterPost�¼��п��ԡ�
end;

procedure TClass1Event.BeforeRemoveItem(const AItem: IBasicRow);
begin

end;

procedure TClass1Event.BeforeUndoRedoPost(const AObj: IBasicRow;
  IsUndo: WordBool);
begin

end;

procedure TClass1Event.OnNeedForeignKeyObj(const AItem: IBasicRow; var RaiseExceptionOnFail: WordBool);
begin
  //�˹��̵Ĵ���������ForeignKeyָ����Key���󲻴��ڣ��޷��������ù�ϵ��
  //���ԣ���Ҫ�ڴ˹����У�������������С����͵�Ӧ�ó����ǹ��ϻ����ܻ���
end;

procedure TClass1Event.OnNodeAsyncTask(const DestObj: IBasicRow; TaskSequence: Word); safecall;
var f:double;
  i: Integer;
begin

  //�ڵ������첽���񣬼��ڴ˹�����ִ�С� �������е������ύ��Post)������ TaskSender=true���ֶθ��ģ����ᴥ���˻ص���
  //�첽�����ִ�л����¶��ϴ���������Ҫʵ�ָ������е�OnNodeAsyncTask�ص����̣���ɸ�����첽��������
  //����TaskSequence�Ǵ����������ֵ������������ж��������Ҫִ�У����ȼ��Ǵ�С����

  //һ������£�Ӧ���� ���������С� ������Ҫ������߼���֧���������Ż��������
  //ÿ���ֶκ��඼��TaskSequence���ԣ����ж���ֶθ�ֵ�����ύ�������TaskSequence����ΪTaskSequence���Ե���Сֵ��
  //����Ҫϵͳ�ĺ���滮 �ֶκ����TaskSequence����ֵ�������ڼ���ĺ�����Ż���

  //������Ҫ����Ӧ��ֻ�ڴ˷����е��� PostTask����

  //��Ӧ�ðѾ������ �������ݵ��ύ���������������ݵĸ��ĺͼ��������첽�����У�1.������UndoRedo 2.�����ڼ��������������

  //�ڴ˷����в����������ǲ���¼��־�ģ�Ҳ����˵��������ݸı��ǲ���ҪUndoredo�� ��
  //����ڴ��в��������ݲ�����������ǡ�rsSkipLog�����͵� ���ڽ���������Ҳ�ǲ�����undoredo�ġ�
  //��Ҳ���԰�ĳһ���ࣨISClass�����ó�SkipLog���͵ġ�

  case TaskSequence of
    0,1:
    begin
      if DestObj.Count > 0 then
      begin
        {
        һ�����������ʵ�֣�
        1. ��ʼ�������õı��� �����磺Rgf��Clf��Jxf
        2. ������������������ݣ�������ر���
        3. ��ֵĿ�����ֶ�ֵ
        }

        //1. ��ʼ������
        f := 0;

        //2. �����������
        for i := 0 to DestObj.Count - 1 do
        begin
          f := f + DestObj.Children[i].AsFloatByName['FloatFld1'];
        end;

        //3. �����ֵ
        DestObj.Edit;
        DestObj.AsFloatByName['FloatFld1'] := f;
        DestObj.Post; //���첽�������ύ���ݺ󣬻��Զ��������㼶�ļ�������

        //...........
        //��Ҫ�������ö����б�(�磺���ϻ�����)���ο�  IBasicRow.ForEachRefer ����
      end
      else
      begin
        DestObj.Owner.PostTask(DestObj.Parent, TaskSequence);
      end;
    end;
    else
    begin
      //while calcing nothing on the current node, sometimes ,you may need  next line as example.
      //��û���κ����ݵ��޸ģ��������ύ���㼶�ļ�������
      DestObj.Owner.PostTask(DestObj.Parent, TaskSequence);
    end;
  end;

end;

procedure TClass1Event.OnNoRefer(const AObj: IBasicRow);
begin
  //��һ��Key�������������ߣ�Refer��
end;

procedure TClass1Event.OnReferChange(const AObj: IBasicRow);
begin
  //��һ��Key����������߸��������仯ʱ��
end;

function TClass1Event.SafeCallException(ExceptObject: TObject; ExceptAddr: Pointer): HResult;
begin
  //handle Ole Exception
  Result := HandleSafeCallException(ExceptObject, ExceptAddr, IID_ISClassEvent, '', '');
end;

{ TFieldEvent }

function TFieldEvent.OnCalcField(const Sender: ISRowField;
  const AObj: IBasicRow): OleVariant;
begin
  //�����ֶΣ�����Ϊ irfoCalc ���ֶΣ�  ����Ҫʵ�ִ˻ص�����������ֵ��Ϊ�����ֶε�ֵ
  if Sender.FieldName = 'CalcIdFld' then
    result := AObj.Id
  else if Sender.FieldName = 'CalcKeyFld' then
    result := '('+AObj.ClassDef.DefName+')';
end;

procedure TFieldEvent.OnFieldChange(const Sender: ISRowField;
  const AObj: IBasicRow);
begin
  //�ֶθ�ֵʱ��
end;

function TFieldEvent.OnGetCheckBoxEnabled(const Sender: ISRowField;
  const AObj: IBasicRow; Index: Integer): WordBool;
begin
  result := true;
end;

function TFieldEvent.OnGetCheckBoxValue(const Sender: ISRowField;
  const AObj: IBasicRow; AIndex: Integer): WordBool;
begin
  result := true;
end;

function TFieldEvent.OnGetCheckBoxVisible(const Sender: ISRowField;
  const AObj: IBasicRow): WordBool;
begin
  result := true;
end;

procedure TFieldEvent.OnGetDrawText(const Sender: ISRowField;
  const AObj: IBasicRow; var Value: WideString);
begin

end;

procedure TFieldEvent.OnGetEditLimit(const Sender: ISRowField;
  const AObj: IBasicRow; var MaxLength: Word);
begin

end;

procedure TFieldEvent.OnGetEditText(const Sender: ISRowField;
  const AObj: IBasicRow; var Value: WideString);
begin

end;

procedure TFieldEvent.OnSetCheckBoxValue(const Sender: ISRowField;
  const AObj: IBasicRow; Index: Integer; Value: WordBool);
begin
  //param Value means the checkbox is checked or not.
  //according the checkbox status, you modify the field value or do other thing.
end;

function TFieldEvent.SafeCallException(ExceptObject: TObject; ExceptAddr: Pointer): HResult;
begin
  Result := HandleSafeCallException(ExceptObject, ExceptAddr, IID_ISRowFieldEvent, '', '');
end;

{ TMgrEvent }

procedure TMgrEvent.OnClearUndoRedo(IsUndo: WordBool);
begin
  //here clear your undo redo prompt stack
end;

procedure TMgrEvent.OnFinishUndoRedo(ExtData: OLE_HANDLE);
begin
  //ShowMessage('Undo Redo Finished!');
end;

procedure TMgrEvent.OnStartCommand(const ACaption: WideString; IsUndo, IsRedo: WordBool; var ExtData: OLE_HANDLE);
begin
  // push row to your undo redo prompt stack,
  //on redo, push row to your undo prompt stack, pop row from redo prompt stack
  //on undo, push row to your redo prompt stack, pop row from undo prompt stack
  //get UndoRedoLimit for keeping your undo redo prompt stack with the right Item count.
end;

procedure TMgrEvent.OnUndoRedoProgress(APercent: Integer);
begin

end;

function TMgrEvent.SafeCallException(ExceptObject: TObject; ExceptAddr: Pointer): HResult;
begin
  Result := HandleSafeCallException(ExceptObject, ExceptAddr, IID_ISCommandMgrEvent, '', '');
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(Db) then
    SSCreator.FreeDbObj(Db);
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  ReleaseSSCreator(SSCreator);
end;

procedure TForm1.InsertBefore1Click(Sender: TObject);
begin
  if Grid.Selected <> nil then
  begin
    Grid.Selected.Parent.InsertItemBefore(C1, Grid.Selected, true);
  end;
end;

procedure TForm1.Insert1Click(Sender: TObject);
begin
  if Grid.Selected <> nil then
  begin
    Grid.Selected.Parent.InsertItemAfter(C1, Grid.Selected, true);
  end;
end;

procedure TForm1.Filterout1Click(Sender: TObject);
begin
  if Grid.Selected <> nil then
  begin
    if Grid.Selected.ClassDef = C1 then
    begin
      Db.Edit(Grid.Selected);
      Grid.Selected.AsBooleanByName['BoolFld1'] := false;
      //Grid.Selected.ValueByName['Field2'] := 'Hello';
      Db.Post;
    end;
  end;
end;

procedure TForm1.AddChild1Click(Sender: TObject);
begin
  if Grid.Selected <> nil then
  begin
    Grid.Selected.AddItem(DB.Classes.Items[1], true);
  end;
end;

procedure TForm1.Resort1Click(Sender: TObject);
begin
  if Grid.Selected <> nil then
  begin
    //��������
    Grid.Selected.Resort;
  end;
end;

procedure TForm1.Font1Click(Sender: TObject);
var dlg:TFontDialog;
    FontRec:TxFontRec;
    BP:TxDrawBackParam;
    fmt:TxCellFormat;
begin
  if Grid.Selected <> nil then
  begin
    dlg := TFontDialog.Create(self);

    Grid.GetDrawParam(Grid.SelectedField, Grid.Selected,
      Grid.DataView.ColDefs.items[Grid.DataView.Columns.Items[Grid.Col].DefCol], Grid.Col, Grid.Row, FontRec, BP);
    dlg.Font.Name := FontRec.Name;
    dlg.Font.Size := FontRec.Size;
    dlg.Font.Style := TFontStyles(TFontStyle(FontRec.Style));
    dlg.Font.Color := FontRec.Color;
    if dlg.Execute then
    begin
      if Grid.SelectList.Selected[Grid.Selected] then
        fmt.Field := nil
      else
        fmt.Field := Grid.SelectedField;
      fmt.FontSize := dlg.Font.Size;
      fmt.FontStyle := ord(TFontStyle(dlg.Font.style));
      fmt.FontColor := dlg.Font.Color;
      fmt.Color := BP.Color;
      Grid.Selected.SetDispFormat(fmt);
      //Grid.Selected.ClassDef.SetDispFormat(); //Ҫ���ô���������еĸ�ʽ�������������
    end;
    dlg.free;
  end;
end;

procedure TForm1.Background1Click(Sender: TObject);
var dlg:TColorDialog;
    FontRec:TxFontRec;
    BP:TxDrawBackParam;
    fmt:TxCellFormat;
begin
  if Grid.Selected <> nil then
  begin
    dlg := TColorDialog.Create(self);

    Grid.GetDrawParam(Grid.SelectedField, Grid.Selected,
      Grid.DataView.ColDefs.items[Grid.DataView.Columns.Items[Grid.Col].DefCol], Grid.Col, Grid.Row, FontRec, BP);
    dlg.Color := BP.Color;
    if dlg.Execute then
    begin
      if Grid.SelectList.Selected[Grid.Selected] then
        fmt.Field := nil
      else
        fmt.Field := Grid.SelectedField;
      fmt.FontSize := FontRec.Size;
      fmt.FontStyle := FontRec.Style;
      fmt.FontColor := FontRec.Color;
      fmt.Color := dlg.Color;                   
      Grid.Selected.SetDispFormat(fmt);
    end;
    dlg.free;
  end;
end;

procedure TForm1.AddInSort1Click(Sender: TObject);
var idx:integer;
begin
  if Grid.Selected <> nil then
  begin
    //�����Ѿ��ź���Ķ����ϣ�����ʹ�� AddItemInSort��δ����Ķ����ϲ��ܵ��ô˷���
    //�˷����ĵ��ûᱣ������״̬��������InsertItem��AddItem������״̬��û���ˡ�
    Grid.Selected.AddItemInSort(C1, true,'', Idx);
  end;
end;

procedure TForm1.StopSort1Click(Sender: TObject);
begin
  if Grid.Selected <> nil then
  begin
    //���ٱ�������״̬
    Grid.Selected.StopSort;
  end;
end;

procedure TForm1.btnSwitchNodeBtnStyleClick(Sender: TObject);
var i:Integer;
begin
  i := Grid.NodeBtnStyle +1;
  if i = 3 then
    i := 0;
  Grid.NodeBtnStyle := i;
end;

procedure TForm1.btnSuspendClick(Sender: TObject);
begin
  //��ͣ�첽����Ĵ���
  Db.SuspendAllTask;
end;

procedure TForm1.btnResumeClick(Sender: TObject);
//var res:integer;
begin
  //�ָ��첽����Ĵ���
  Db.ResumeAllTask;
  //res := Db.WaitForProcessTasks;
  //ShowMessage('Time elapsed: '+IntToStr(res));
end;

procedure TForm1.btnLoadDefinitionAndOpenClick(Sender: TObject);
var dlg:TOpenDialog;
    ADb:ISDataSet;
    AGrid:ISGrid;
    i:Integer;
begin
  ADb := nil;
  dlg := TOpenDialog.Create(Application);
  try
    if dlg.Execute then
    begin
      with TForm2.Create(Application) do
      begin
        ADb := SSCreator.CreateDbObj;
        ADb.DatabaseName := dlg.FileName; //set database filename
        ADb.LoadDefinitions;           //load the definitions of the database
        ADb.Open;
        AGrid := SSCreator.CreateSGrid(Panel1.Handle);
        //set SimpleFieldShow property to true ,the Grid can show data without binding Field.
        AGrid.SimpleFieldShow := true;
        For i:= 0 to 20 do
        begin
          AGrid.DataView.ColDefs.Add;
        end;
        AGrid.DataSet := ADb;
        Db := ADb;
        ShowModal;
        Free;
      end;
    end;
  finally
    SsCreator.FreeDbObj(ADb);
    dlg.free;
    AGrid := nil;
  end;  
end;

procedure TForm1.OnAppIdle(Sender: TObject; var Done: Boolean);
begin
  if Assigned(SSCreator) then
    SSCreator.ProcessAsyncTask;   //�����첽��������
end;

procedure TForm1.btnCreateClassClick(Sender: TObject);
var F:ISRowField;
    b:TxDrawBackParam;
begin
  //�������ݶ���

  Dict := Db.CreateClass('Dict', '�ֵ���');  //��������
  F := Dict.CreateField(isftShortString, irfoData, 'KeyFld','�ؼ����ֶ�',10); //�����ֶ�
  F := Dict.CreateField(isftFloat, irfoData, 'FloatFld', 'Float Field', 0);
  F.IsNotifySender := true;  //=ture,���ֵ�����仯�󣬻ᷢ��֪ͨ�������ߣ�����Gridˢ�»򴥷�����...)
  F.IsTaskSender := true;   //�Ƿ��Ǽ��㴥���ֶ�
  F.TaskSequence := 1;
  Dict.KeyField := 'KeyFld';  //�ؼ����ֶΣ��ؼ��ֶο���Ϊ�գ� ��Key�����ݿ�ȫ�ֵģ������ࣨ���ֿ�

  C1 := Db.CreateClass('Class1','��1');
  C1.CachedAST := true; //�Ƿ�cache�����﷨��������߱��ʽ���ʽ�ֶεļ���Ч��

  BuildExtFields3;

  F := C1.CreateField(isftInteger, irfoData, 'IntFld1', '�����ֶ�1', 0);
  F.IsTaskSender := true;

  BuildExtFields;

  C1_StrFld1 := C1.CreateField(isftShortString, irfoData, 'StrFld1', '�ַ����ֶ�1', 30);
  C1_StrFld1.WordWrap := true;
  C1_StrFld1.EditStyle := iesPickList;
  C1.SortFields := 'StrFld1'; //����ָ������ֶ������÷ֺŷָ�
  C1.SortOption := 'desc';    //��������ֶεĻ����Էֺŷָ� ��������desc;asc;asc;desc��
  b := F.BackParam;
  //b.Color := clBtnFace;
  F.BackParam := b;
  C1_FloatFld1 := C1.CreateField(isftFloat, irfoData, 'FloatFld1', '�����ֶ�1', 0);
  C1_FloatFld1.IsTaskSender := true;
  C1_FloatFld1.TaskSequence := 1;

  //BuildExtFields2;

  C1_StrFld2 := C1.CreateField(isftShortString, irfoData, 'StrFld2', '�ַ����ֶ�2', 60);
  F := C1.CreateField(isftBoolean, irfoData, 'BoolFld1', '�����ֶ�1', 0);
  //�����Զ������ֶΣ�����ָ������ֶΣ��ֺŷָ��������е��ֶ�ֵ�ı�ʱ���ᴥ��Grid�����¹��˼��㡣
  //Grid��AutoRefilter����ҪΪtrue������Ч��
  //����Manual��ʽ������Ե��� ReFilterAObj �� ReFilterAItem ����
  C1.AutoFilterFields := 'BoolFld1';
  F.DefaultValue := true;   // ָ���ֶ�Ĭ��ֵ

  //Agg Field(�ۺ��ֶΣ����ۺ��ֶβ���һ��ֵ���������ݶ������ͣ�
  //������һ���ж��󣬾Ϳ����ж��Children�Ӽ� ������Ĭ�ϵ�Children�б��������ж������Children�Ӽ�
  F := C1.CreateField(isftAggField, irfoData, 'AggFld1', '�ۺ��ֶ�1', 0);
  F.AggClassName := 'Dict'; //set the Agg Classname to create Agg Object with the Class
  //when you need, you Call GetAggObject method to Get(or Create) the Agg Row Object.


  //ָ���ж��������󣬾ͽ����˴��У������ߣ���������󣨱������ߣ������ù�ϵ��
  //����֮������֪ͨ��ForEachRefer�����ɻ�������б�
  //�����ַ������Բ����Ǹ��ӹ�ϵ�Ķ���֮��������������֪ͨ
  //1. �������м�����������ֶη����仯�󣬻ᴥ�������м��� ��������ԣ�IsTaskSender�� IsNotifySender��
  //2. �����м�������ֶη����仯��IsTaskSender�ֶΣ�������ΪIsTaskReceiver������ֶζ�Ӧ���������ᴥ������
  //3. ĳһ�ж�������LookUp���͵�AggField����������ֶ���IsTaskReceiver���ԣ���Ҳ�ᴥ��AggField�ж�����㡣
  C1.ForeignKeyFields := 'StrFld1';

  C2 := Db.CreateClass('Class2','��2');
  C2.CachedAST := true;
  F := C2.CreateField(isftInt64, irfoData, 'Int64Fld1', '64λ�ֶ�1', 0);
  F := C2.CreateField(isftFloat, irfoData, 'FloatFld1', '�����ֶ�1', 0);
  F.IsTaskSender := true;
  F := C2.CreateField(isftShortString, irfoData, 'StrFld1', '�ַ����ֶ�1', 128);
  F.WordWrap := true;
  F.EditStyle := iesEllipsis;
  F := C2.CreateField(isftAggField, irfoData, 'AggFld1', '�ۺ��ֶ�1', 0);
  F.AggClassName := C1.DefName;

  C2.ForeignKeyFields := 'StrFld1';

  DB.Classes.Items[0].Fields[1].IsNotifySender := true;

  F := DB.Classes.Items[1].CreateField(isftFloat, irfoLookup, 'LookupFromDict', '', 0);
  F.LookupKeyField := 'StrFld1';   //LookupKeyField��һ���Ǵ��ж���������Ҳ����˵����ֻLookup����ά�����ù�ϵ
  F.LookupResultFields := 'Dict.FloatFld';//��ָ��������еĲ�ͬ�ֶΣ��÷ֺŷָ�磺��Dict.FloatFld;Dict2.FloatFld2��

  F := DB.Classes.Items[2].CreateField(isftFloat, irfoLookup, 'LookupFromDict', '', 0);
  F.LookupKeyField := 'StrFld1';
  F.LookupResultFields := 'Dict.FloatFld';

  //�����ֶε�ֵ��Ҫ��OnCalcField�¼���ʵ��
  F := DB.Classes.Items[1].CreateField(isftInteger, irfoCalc, 'CalcIdFld','������ʾ�ڲ�Id',0);
  //����һ��checkBox�ڴ��ֶ���,�����Ҫ��������Ӷ��CheckBox
  F.CheckBoxItems.AddItem;
  F := DB.Classes.Items[1].CreateField(isftShortString, irfoCalc, 'CalcKeyFld','������ʾKey',32);

  F := DB.Classes.Items[2].CreateField(isftInteger, irfoCalc, 'CalcIdFld','������ʾ�ڲ�Id',0);
  F := DB.Classes.Items[2].CreateField(isftShortString, irfoCalc, 'CalcKeyFld','������ʾKey',32);

  SetDbMisc;
end;

procedure TForm1.btnAlterStruClick(Sender: TObject);
var C:ISClass;
begin
  //�޸����ݿ�ṹ��ʵ���������͵�ֻ�����ӣ�����Drop��
  //Calc��Lookup���͵Ŀ�����ɾ��
  Db.DatabaseName := ExtractFilePath(ParamStr(0))+'Test.db';
  Db.LoadDefinitions;
  C := DB.Classes.Items[1];
  C.Fields[2].DefaultValue := 678;

  C.deleteField('IntFldExt3');
  //C.deleteField('IntFldExt3_3');
  //BuildExtFields2;
  //C.deleteField('IntFldExt2');



  //F := C.FieldByName['IntFldExt3'];
  //F.FieldOption := irfoData;
  SetDbMisc;
  Db.ReadOnly := false;
  Db.Open;
end;

procedure TForm1.btnTestCalcExprClick(Sender: TObject);
var Obj:ISRow;
    f:double;
    i,B,E: Integer;
begin
  Obj := Grid.Selected;
  f := 0;
  B := GetTickCount;
  for i := 0 to 100000 do
  begin
    f := f+ Db.CalcExpr(Obj, Obj.FieldHandle[C1_StrFld2]);
  end;
  E := GetTickCount;
  f := 0;
  for i := 0 to 100000 do
  begin
    f := f+ Db.CalcExpress(Obj, Obj.AsString[C1_StrFld2]);
  end;
  ShowMessage(IntTostr(E-B)+','+IntToStr(GetTickCount-Cardinal(E)));
end;

procedure TForm1.SetDbMisc;
var F:ISRowField;
begin

  F := DB.Classes.Items[1].FieldByName['CalcIdFld'];
  F.SetEvent(FieldEvent); //��ֵ�¼��ص��ӿ�
  F := DB.Classes.Items[1].FieldByName['CalcKeyFld'];
  F.SetEvent(FieldEvent);

  F := DB.Classes.Items[2].FieldByName['CalcIdFld'];
  F.SetEvent(FieldEvent);
  F := DB.Classes.Items[2].FieldByName['CalcKeyFld'];
  F.SetEvent(FieldEvent);

  Class1Event := TClass1Event.create;   //����¼��ӿ�
  DB.Classes.Items[1].SetEvent(Class1Event);
  Db.Classes.Items[2].SetEvent(Class1Event);

  //UndoRedo��ص��¼��ӿ�
  MgrEvent := TMgrEvent.Create;
  Db.CmdMgr.SetEvent(MgrEvent);

  DbEvent := TDbCallBack.create; //Db�Ļص��ӿ�
  DB.SetEvent(DbEvent);
end;

procedure TForm1.BuildExtFields;
var C:ISClass;
    F:ISRowField;
begin
  C := Db.Classes.Items[1];

  F := C.CreateField(isftInteger, irfoLookup, 'IntFldExt2', '�����ֶ�1', 0);
  F := C.CreateField(isftShortString, irfoData, 'StrFldExt1', '�ַ����ֶ�1', 30);
  F := C.CreateField(isftInteger, irfoData, 'IntFldExt1', '�����ֶ�1', 0);

  F := C.CreateField(isftInteger, irfoCalc, 'IntFldExt3', '�����ֶ�1', 0);
  C.Fields[1].DefaultValue := 123;
end;

{
procedure TForm1.BuildExtFields2;
var C:ISClass;
    F:ISRowField;
begin
  C := Db.Classes.Items[1];
  F := C.CreateField(isftInteger, irfoLookup, 'IntFldExtExt2', '�����ֶ�1', 0);
  F := C.CreateField(isftShortString, irfoData, 'StrFldExtExt1', '�ַ����ֶ�1', 30);
  F := C.CreateField(isftInteger, irfoData, 'IntFldExtExt1', '�����ֶ�1', 0);

  F := C.CreateField(isftInteger, irfoCalc, 'IntFldExtExt3', '�����ֶ�1', 0);
  C.Fields[5].DefaultValue := 567;
end;
}

procedure TForm1.BuildExtFields3;
var C:ISClass;
    F:ISRowField;
begin
  C := Db.Classes.Items[1];
  F := C.CreateField(isftInteger, irfoLookup, 'IntFldExt3_2', '�����ֶ�1', 0);
  F := C.CreateField(isftAggField, irfoData, 'StrFldExt3_Agg', 'Agg', 30);
  F := C.CreateField(isftInteger, irfoData, 'IntFldEx3_1', '�����ֶ�1', 0);
  //Blob�ֶο��Է��κζ���������, 5M���µ�blob�ֶο���UndoRedo������5M��û��UndoRedo�������Ҫ������Էָ�Blob�����Blob�ֶ�
  F := C.CreateField(isftBlob, irfoData, 'BlobFldExt3_1','',0);

  F := C.CreateField(isftInteger, irfoCalc, 'IntFldExt3_3', '�����ֶ�1', 0);
  //C.Fields[5].DefaultValue := 567;
end;

initialization
finalization

end.
