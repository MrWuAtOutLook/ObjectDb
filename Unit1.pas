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

  //dll中输出的两个API
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
    FieldEvent := TFieldEvent.create;  //字段事件对象
    Db := SSCreator.CreateDbObj;    //创建数据库对象
    //指定hash结构的大小,默认值ishsMedium，依据数据库需要的键值的数量的多少
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
 //FreeSGrid不是必须调用的。
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
  //在ShowWithoutStruct = true 时 ，触发。
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
  //有两种方法设置下拉列表：
  //1. 赋值 SimpleText,以逗号分割的字符串
  //或者
  //2. 设置PopupGrid以显示下拉列表

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
    res := Obj.Owner.CalcExpress(Obj, Value);  //计算输入的表达式的值
    if varIsNull(res) then
      Value := '0'
    else
      Value := FloattoStr(res);  
  end;
  //关于参数 PostValue
  //=true,则Grid按默认方式赋值字段并提交数据库
  //=false,则Grid不提交数据，由外部代码处理数据提交。
end;

procedure TGridEvent.OnTabNextStop(var DoIt: WordBool);
begin
  //处理焦点跳转
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
  //初始化过程

  SSEvent := TSSCreatorEvent.create; //创建构造器事件对象
  SSCreator := GetSSCreator(SSEvent, 'a=Qm6&L#7z');//调用API，获得构造器
  Application.OnIdle := OnAppIdle;
end;

procedure TForm1.btnFinalClick(Sender: TObject);
begin
  //最后，你必须要调用这个
  ReleaseSSCreator(SSCreator);      
end;

procedure TForm1.btnStartTransClick(Sender: TObject);
begin
  //开始一个事务（或命令），这是一次Undo操作的回滚单元。
  //所有命令（一个操作单元）以 StartTransaction 方法开始。直到下一个StartTransaction结束。
  Db.CmdMgr.StartCommand('',nil,0);  //参数 ExtData 可以记录你自己的任意数据，在OnFinishUndoRedo事件中返回给调用者
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
  //禁止掉Grid默认的编辑事务提交，也就是说Grid的默认编辑单元格数据不单独提交事务，
  //数据的修改包含在上一个事务（命令）中 。
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
  Application.MessageBox(PChar(S), '提示', MB_ICONINFORMATION);
end;

function TSSCreatorEvent.OnQuestion(QuestionInfo: PWideChar): Integer;
var S:String;
begin
  S := QuestionInfo;
  result := Application.MessageBox(Pchar(S), '提示', mb_YesNo+mb_IconQuestion);
end;

procedure TSSCreatorEvent.OnWarning(WarningInfo: PWideChar);
var S:String;
begin
  S := WarningInfo;
  Application.MessageBox(Pchar(S), '提示', MB_ICONWARNING);
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
  //分发任务。在调用 DispatchTask后，触发此事件
  //异步任务的分发至上而下，最终会至叶子节点，触发叶子节点的异步任务的执行。
  //返回值为false，即不往下递归，到此节点为止 ，PostTask：是否提交异步任务,默认true。
  result := true;
end;

procedure TDbCallBack.OnFinishTask;
begin
  //所有异步任务结束后
end;

function TDbCallBack.OnGetExprValue(const Sender: IBasicRow; const Expr: WideString): double;
var
  Fld:ISRowField;
begin
  //在表达式计算的过程中，会回调此方法，需要在此解析表达式中的字符串类型的操作数，并返回有效的数学操作符（布尔值浮点值或序数值）
  result := 0;
  Fld := Sender.FieldByName[Expr];
  if Assigned(Fld) then
  begin
    result := Sender.asFloat[Fld];
  end;
end;

procedure TDbCallBack.OnGetPrintExpr(const Sender: IBasicRow; const Expr: WideString; var PrintExpr: WideString);
begin
  //解析表达式中的字符串，如 “RGF”需要返回“人工费”，以利于界面可读性。
end;

procedure TDbCallBack.OnOpenProgress(Percent: Integer);
begin

end;

procedure TDbCallBack.OnPurgeProgress(Percent: Integer);
begin
  // 在文件Pack的时候的进程
end;

function TDbCallBack.OnReadFileCustomId(AFileId: Integer): WordBool;
begin
  //result := AFileId = 123;
  result := true; //根据参数AFileId是否是你所预期的值返回true或false。也就是说判断是否是你的文件。
end;

procedure TDbCallBack.OnRebuildKeyProgress(Percent: Integer);
begin
  //重建数据库的Key过程
end;

procedure TDbCallBack.OnRebuildRefProgress(Percent: Integer);
begin
  //重建数据库的数据引用关系
end;

procedure TDbCallBack.OnSaveProgress(Percent: Integer);
begin

end;

procedure TDbCallBack.OnWriteFileCustomId(var AFileId: Integer);
begin
  AFileId := 123;//Id  写入你的文件Id
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
  result := true; //是否允许克隆
end;

procedure TClass1Event.BeforePost(const AObj: IBasicRow);
var V:Variant;
begin
  if (Aobj.ClassDef = Form1.C1) and
     (AObj.Changed[Form1.C1_StrFld2] or AObj.Changed[Form1.C1_StrFld1]) then
  begin //Obj.Changed[Field]属性只在beforePost事件中有效
    //计算表达式 。如果此类的CachedAST=true，则可以提高CalcExpr方法的计算效率。
    v := Form1.Db.CalcExpr(AObj, AObj.FieldHandle[Form1.C1_StrFld2]);
    if not VarIsNull(V) then
      AObj.Value[Form1.C1_FloatFld1] := V;
  end;
  //此过程中不能再编辑其他行的数据，AfterPost事件中可以。
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
  //此过程的触发是由于ForeignKey指定的Key对象不存在，无法建立引用关系。
  //所以，需要在此过程中，创建外键对象行。典型的应用场景是工料机汇总机制
end;

procedure TClass1Event.OnNodeAsyncTask(const DestObj: IBasicRow; TaskSequence: Word); safecall;
var f:double;
  i: Integer;
begin

  //节点对象的异步任务，即在此过程中执行。 当对象行的数据提交（Post)后，且有 TaskSender=true的字段更改，即会触发此回调。
  //异步任务的执行会自下而上触发。你需要实现各个类行的OnNodeAsyncTask回调过程，完成各类的异步计算任务。
  //参数TaskSequence是此任务的序列值，如果队列中有多个任务需要执行，优先级是从小到大。

  //一般情况下，应根据 “任务序列” 建立需要计算的逻辑分支，以利于优化计算过程
  //每个字段和类都有TaskSequence属性，如有多个字段赋值，则提交的任务的TaskSequence参数为TaskSequence属性的最小值。
  //你需要系统的合理规划 字段和类的TaskSequence属性值，以利于计算的合理和优化。

  //如有需要，你应该只在此方法中调用 PostTask方法

  //你应该把尽量多的 交互数据的提交而引发的其他数据的更改和计算放入此异步过程中，1.有利于UndoRedo 2.有利于计算任务的完整性

  //在此方法中操作的数据是不记录日志的，也就是说这里的数据改变是不需要Undoredo的 。
  //如果在此有插入行数据操作，则此行是“rsSkipLog”类型的 ，在交互操作中也是不参与undoredo的。
  //你也可以把某一个类（ISClass）设置成SkipLog类型的。

  case TaskSequence of
    0,1:
    begin
      if DestObj.Count > 0 then
      begin
        {
        一般分三个部分实现：
        1. 初始化计算用的变量 ，比如：Rgf，Clf，Jxf
        2. 遍历计算所需的行数据，计算相关变量
        3. 赋值目标行字段值
        }

        //1. 初始化变量
        f := 0;

        //2. 遍历计算过程
        for i := 0 to DestObj.Count - 1 do
        begin
          f := f + DestObj.Children[i].AsFloatByName['FloatFld1'];
        end;

        //3. 结果赋值
        DestObj.Edit;
        DestObj.AsFloatByName['FloatFld1'] := f;
        DestObj.Post; //在异步过程中提交数据后，会自动触发父层级的计算任务。

        //...........
        //如要遍历引用对象列表(如：工料机汇总)，参考  IBasicRow.ForEachRefer 方法
      end
      else
      begin
        DestObj.Owner.PostTask(DestObj.Parent, TaskSequence);
      end;
    end;
    else
    begin
      //while calcing nothing on the current node, sometimes ,you may need  next line as example.
      //如没有任何数据的修改，则主动提交父层级的计算任务。
      DestObj.Owner.PostTask(DestObj.Parent, TaskSequence);
    end;
  end;

end;

procedure TClass1Event.OnNoRefer(const AObj: IBasicRow);
begin
  //当一个Key对象不再有引用者（Refer）
end;

procedure TClass1Event.OnReferChange(const AObj: IBasicRow);
begin
  //当一个Key对象的引用者个数发生变化时。
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
  //计算字段（类型为 irfoCalc 的字段）  ，需要实现此回调方法，返回值即为计算字段的值
  if Sender.FieldName = 'CalcIdFld' then
    result := AObj.Id
  else if Sender.FieldName = 'CalcKeyFld' then
    result := '('+AObj.ClassDef.DefName+')';
end;

procedure TFieldEvent.OnFieldChange(const Sender: ISRowField;
  const AObj: IBasicRow);
begin
  //字段赋值时。
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
    //重新排序
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
      //Grid.Selected.ClassDef.SetDispFormat(); //要设置此类的所有行的格式，调用这个方法
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
    //对于已经排好序的对象上，可以使用 AddItemInSort，未排序的对象上不能调用此方法
    //此方法的调用会保持排序状态，而调用InsertItem或AddItem后，排序状态就没有了。
    Grid.Selected.AddItemInSort(C1, true,'', Idx);
  end;
end;

procedure TForm1.StopSort1Click(Sender: TObject);
begin
  if Grid.Selected <> nil then
  begin
    //不再保持排序状态
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
  //暂停异步任务的处理
  Db.SuspendAllTask;
end;

procedure TForm1.btnResumeClick(Sender: TObject);
//var res:integer;
begin
  //恢复异步任务的处理
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
    SSCreator.ProcessAsyncTask;   //处理异步计算任务
end;

procedure TForm1.btnCreateClassClick(Sender: TObject);
var F:ISRowField;
    b:TxDrawBackParam;
begin
  //创建数据定义

  Dict := Db.CreateClass('Dict', '字典类');  //创建行类
  F := Dict.CreateField(isftShortString, irfoData, 'KeyFld','关键字字段',10); //创建字段
  F := Dict.CreateField(isftFloat, irfoData, 'FloatFld', 'Float Field', 0);
  F.IsNotifySender := true;  //=ture,则此值发生变化后，会发送通知给引用者（导致Grid刷新或触发计算...)
  F.IsTaskSender := true;   //是否是计算触发字段
  F.TaskSequence := 1;
  Dict.KeyField := 'KeyFld';  //关键字字段（关键字段可以为空） ，Key是数据库全局的，不按类（表）分开

  C1 := Db.CreateClass('Class1','类1');
  C1.CachedAST := true; //是否cache抽象语法树，会提高表达式表达式字段的计算效率

  BuildExtFields3;

  F := C1.CreateField(isftInteger, irfoData, 'IntFld1', '整数字段1', 0);
  F.IsTaskSender := true;

  BuildExtFields;

  C1_StrFld1 := C1.CreateField(isftShortString, irfoData, 'StrFld1', '字符串字段1', 30);
  C1_StrFld1.WordWrap := true;
  C1_StrFld1.EditStyle := iesPickList;
  C1.SortFields := 'StrFld1'; //可以指定多个字段排序，用分号分割
  C1.SortOption := 'desc';    //多个排序字段的话，以分号分割 ，例：‘desc;asc;asc;desc’
  b := F.BackParam;
  //b.Color := clBtnFace;
  F.BackParam := b;
  C1_FloatFld1 := C1.CreateField(isftFloat, irfoData, 'FloatFld1', '浮点字段1', 0);
  C1_FloatFld1.IsTaskSender := true;
  C1_FloatFld1.TaskSequence := 1;

  //BuildExtFields2;

  C1_StrFld2 := C1.CreateField(isftShortString, irfoData, 'StrFld2', '字符串字段2', 60);
  F := C1.CreateField(isftBoolean, irfoData, 'BoolFld1', '布尔字段1', 0);
  //设置自动过滤字段，可以指定多个字段，分号分隔。当此中的字段值改变时，会触发Grid的重新过滤计算。
  //Grid的AutoRefilter属性要为true才能有效。
  //还有Manual方式，你可以调用 ReFilterAObj 或 ReFilterAItem 方法
  C1.AutoFilterFields := 'BoolFld1';
  F.DefaultValue := true;   // 指定字段默认值

  //Agg Field(聚合字段）：聚合字段不是一个值，是行数据对象类型，
  //这样，一个行对象，就可以有多个Children子集 ，除了默认的Children列表，还可以有多个命名Children子集
  F := C1.CreateField(isftAggField, irfoData, 'AggFld1', '聚合字段1', 0);
  F.AggClassName := 'Dict'; //set the Agg Classname to create Agg Object with the Class
  //when you need, you Call GetAggObject method to Get(or Create) the Agg Row Object.


  //指定行对象的外键后，就建立了此行（引用者）与外键对象（被引用者）的引用关系，
  //两者之间会产生通知。ForEachRefer方法可获得引用列表
  //有三种方法可以产生非父子关系的对象之间产生计算任务的通知
  //1. 被引用行计算相关数据字段发生变化后，会触发引用行计算 （相关属性：IsTaskSender， IsNotifySender）
  //2. 引用行计算相关字段发生变化后（IsTaskSender字段），设置为IsTaskReceiver的外键字段对应的外键对象会触发计算
  //3. 某一行对象中有LookUp类型的AggField，则如果此字段有IsTaskReceiver属性，则也会触发AggField行对象计算。
  C1.ForeignKeyFields := 'StrFld1';

  C2 := Db.CreateClass('Class2','类2');
  C2.CachedAST := true;
  F := C2.CreateField(isftInt64, irfoData, 'Int64Fld1', '64位字段1', 0);
  F := C2.CreateField(isftFloat, irfoData, 'FloatFld1', '浮点字段1', 0);
  F.IsTaskSender := true;
  F := C2.CreateField(isftShortString, irfoData, 'StrFld1', '字符串字段1', 128);
  F.WordWrap := true;
  F.EditStyle := iesEllipsis;
  F := C2.CreateField(isftAggField, irfoData, 'AggFld1', '聚合字段1', 0);
  F.AggClassName := C1.DefName;

  C2.ForeignKeyFields := 'StrFld1';

  DB.Classes.Items[0].Fields[1].IsNotifySender := true;

  F := DB.Classes.Items[1].CreateField(isftFloat, irfoLookup, 'LookupFromDict', '', 0);
  F.LookupKeyField := 'StrFld1';   //LookupKeyField不一定是此行对象的外键，也就是说可以只Lookup但不维护引用关系
  F.LookupResultFields := 'Dict.FloatFld';//可指定多个类行的不同字段，用分号分割，如：‘Dict.FloatFld;Dict2.FloatFld2’

  F := DB.Classes.Items[2].CreateField(isftFloat, irfoLookup, 'LookupFromDict', '', 0);
  F.LookupKeyField := 'StrFld1';
  F.LookupResultFields := 'Dict.FloatFld';

  //计算字段的值需要在OnCalcField事件中实现
  F := DB.Classes.Items[1].CreateField(isftInteger, irfoCalc, 'CalcIdFld','用于显示内部Id',0);
  //增加一个checkBox在此字段上,如果需要你可以增加多个CheckBox
  F.CheckBoxItems.AddItem;
  F := DB.Classes.Items[1].CreateField(isftShortString, irfoCalc, 'CalcKeyFld','用于显示Key',32);

  F := DB.Classes.Items[2].CreateField(isftInteger, irfoCalc, 'CalcIdFld','用于显示内部Id',0);
  F := DB.Classes.Items[2].CreateField(isftShortString, irfoCalc, 'CalcKeyFld','用于显示Key',32);

  SetDbMisc;
end;

procedure TForm1.btnAlterStruClick(Sender: TObject);
var C:ISClass;
begin
  //修改数据库结构，实体数据类型的只能增加，不能Drop。
  //Calc或Lookup类型的可以增删。
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
  F.SetEvent(FieldEvent); //赋值事件回调接口
  F := DB.Classes.Items[1].FieldByName['CalcKeyFld'];
  F.SetEvent(FieldEvent);

  F := DB.Classes.Items[2].FieldByName['CalcIdFld'];
  F.SetEvent(FieldEvent);
  F := DB.Classes.Items[2].FieldByName['CalcKeyFld'];
  F.SetEvent(FieldEvent);

  Class1Event := TClass1Event.create;   //类的事件接口
  DB.Classes.Items[1].SetEvent(Class1Event);
  Db.Classes.Items[2].SetEvent(Class1Event);

  //UndoRedo相关的事件接口
  MgrEvent := TMgrEvent.Create;
  Db.CmdMgr.SetEvent(MgrEvent);

  DbEvent := TDbCallBack.create; //Db的回调接口
  DB.SetEvent(DbEvent);
end;

procedure TForm1.BuildExtFields;
var C:ISClass;
    F:ISRowField;
begin
  C := Db.Classes.Items[1];

  F := C.CreateField(isftInteger, irfoLookup, 'IntFldExt2', '整数字段1', 0);
  F := C.CreateField(isftShortString, irfoData, 'StrFldExt1', '字符串字段1', 30);
  F := C.CreateField(isftInteger, irfoData, 'IntFldExt1', '整数字段1', 0);

  F := C.CreateField(isftInteger, irfoCalc, 'IntFldExt3', '整数字段1', 0);
  C.Fields[1].DefaultValue := 123;
end;

{
procedure TForm1.BuildExtFields2;
var C:ISClass;
    F:ISRowField;
begin
  C := Db.Classes.Items[1];
  F := C.CreateField(isftInteger, irfoLookup, 'IntFldExtExt2', '整数字段1', 0);
  F := C.CreateField(isftShortString, irfoData, 'StrFldExtExt1', '字符串字段1', 30);
  F := C.CreateField(isftInteger, irfoData, 'IntFldExtExt1', '整数字段1', 0);

  F := C.CreateField(isftInteger, irfoCalc, 'IntFldExtExt3', '整数字段1', 0);
  C.Fields[5].DefaultValue := 567;
end;
}

procedure TForm1.BuildExtFields3;
var C:ISClass;
    F:ISRowField;
begin
  C := Db.Classes.Items[1];
  F := C.CreateField(isftInteger, irfoLookup, 'IntFldExt3_2', '整数字段1', 0);
  F := C.CreateField(isftAggField, irfoData, 'StrFldExt3_Agg', 'Agg', 30);
  F := C.CreateField(isftInteger, irfoData, 'IntFldEx3_1', '整数字段1', 0);
  //Blob字段可以放任何二进制数据, 5M以下的blob字段可以UndoRedo，大于5M的没有UndoRedo，如果需要，你可以分割Blob到多个Blob字段
  F := C.CreateField(isftBlob, irfoData, 'BlobFldExt3_1','',0);

  F := C.CreateField(isftInteger, irfoCalc, 'IntFldExt3_3', '整数字段1', 0);
  //C.Fields[5].DefaultValue := 567;
end;

initialization
finalization

end.
