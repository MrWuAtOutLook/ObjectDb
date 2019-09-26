unit SSObjDb_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// $Rev: 52393 $
// File generated on 2019/8/27 10:30:19 from Type Library described below.

// ************************************************************************  //
// Type Lib: D:\WSH\SSDbObj\src\ssobjdb.tlb (1)
// LIBID: {01236487-0C17-491A-91B5-EE2D74CB71C1}
// LCID: 0
// Helpfile: 
// HelpString: SSObjDb Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Winapi.ActiveX;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  SSObjDbMajorVersion = 2;
  SSObjDbMinorVersion = 0;

  LIBID_SSObjDb: TGUID = '{01236487-0C17-491A-91B5-EE2D74CB71C1}';

  IID_IBasicRow: TGUID = '{6F28F0EB-3A8A-491F-BF77-F4BB622B5E26}';
  IID_ISDataSet: TGUID = '{11E82B07-187E-4804-925A-816DC8E18D1F}';
  IID_ISGrid: TGUID = '{A43488B9-B6BA-4663-8190-8EA2B3881041}';
  IID_IViewList: TGUID = '{D9660F2E-C60D-49EA-B8C0-644F1DAAF43C}';
  IID_ISColDef: TGUID = '{D281FCAA-A430-4DDC-86DE-EEC7EA7C4C10}';
  IID_ISColDefs: TGUID = '{EF260F8E-3587-4D4A-84B7-355296885BF1}';
  IID_IViewDataList: TGUID = '{BE205DA5-8D5D-4A81-A11C-A72EF617898D}';
  IID_ISClass: TGUID = '{0AC02BAB-C814-4D8A-B6DC-372F813588E2}';
  IID_ISRowField: TGUID = '{909C6EA8-FF27-45D6-AFFD-02AD3E10EA99}';
  IID_ISClassList: TGUID = '{85919436-06A4-4DAC-A97C-6E5CE91E21F6}';
  IID_ICheckBoxItems: TGUID = '{A45D1D64-F998-443B-B64C-D53422753996}';
  IID_ISDataView: TGUID = '{FF28D8F8-89CF-439B-9FAA-5DDCACD1A806}';
  IID_ISColumn: TGUID = '{7D6E2860-F42D-4F4B-BFD9-9395B40ACFBD}';
  IID_ISColumns: TGUID = '{604A84CD-B5B5-4440-BA14-4E66AE008F0D}';
  IID_ISEditParam: TGUID = '{C075A4BF-19CC-4404-9896-016DEAA32EE4}';
  IID_ISCommandMgr: TGUID = '{99C9FC55-9FED-4484-9D6B-2BB6368FCBEC}';
  IID_ISCommandParam: TGUID = '{27EA027E-4FE7-4D91-9127-87BFC5E17824}';
  IID_ISCommandMgrEvent: TGUID = '{B06186EE-CD57-4FB6-B423-4E617C4A2F4E}';
  IID_ISClassEvent: TGUID = '{F87ACE2B-6B6C-4E31-9CAD-8E4B722CDAE6}';
  IID_ISRowFieldEvent: TGUID = '{766A5FC6-B97A-419E-A965-DEAA019AC56F}';
  IID_ISDataSetEvent: TGUID = '{FDC49117-2C83-4FF4-A3D4-495940A2BA47}';
  IID_IDualIntfList: TGUID = '{F4885014-3121-4431-B822-2B9ED1A0EDE2}';
  IID_IStream: TGUID = '{0000000C-0000-0000-C000-000000000046}';
  IID_ISGridEvent: TGUID = '{1D69F45A-48C1-4381-AC58-CDA5A48188FB}';
  IID_ISelectList: TGUID = '{30806FEE-45E3-44F5-B482-AD4145DE8F6A}';
  IID_IViewOption: TGUID = '{4B90FA92-2AE9-4864-B2DB-77CF64354D53}';
  IID_IViewOptions: TGUID = '{384C0826-2C01-42D0-8A26-3B7635D318C9}';
  IID_ISSCreator: TGUID = '{03B02C38-9E0F-4EAA-892C-AB69E6F81B2E}';
  IID_ISSCreatorEvent: TGUID = '{77195328-B9FF-4F80-8964-C78E3D8A1069}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum TxEditStyle
type
  TxEditStyle = TOleEnum;
const
  iesSimple = $00000000;
  iesEllipsis = $00000001;
  iesPickList = $00000002;

// Constants for enum TxGridLinkOP
type
  TxGridLinkOP = TOleEnum;
const
  iloAdd = $00000000;
  iloRemove = $00000001;

// Constants for enum TxAlignment
type
  TxAlignment = TOleEnum;
const
  ialLeft = $00000000;
  ialRight = $00000001;
  ialCenter = $00000002;

// Constants for enum TxFontStyle
type
  TxFontStyle = TOleEnum;
const
  ifsBold = $00000001;
  ifsItalic = $00000002;
  ifsUnderLine = $00000004;
  ifsStrikeOut = $00000008;

// Constants for enum TxFieldKind
type
  TxFieldKind = TOleEnum;
const
  fkdOrd = $00000000;
  fkdFloat = $00000001;
  fkdString = $00000002;
  fkdAggField = $00000003;
  fkdBlobField = $00000004;

// Constants for enum TxDataSetState
type
  TxDataSetState = TOleEnum;
const
  isdsNormal = $00000000;
  isdsIniting = $00000001;
  isdsSerializing = $00000002;
  isdsFinaling = $00000003;
  isdsClosing = $00000004;
  isdsUnloading = $00000005;
  isdsCachingForUpdate = $00000006;

// Constants for enum TxCommandState
type
  TxCommandState = TOleEnum;
const
  cdsGeneral = $00000000;
  cdsUndo = $00000001;
  cdsRedo = $00000002;

// Constants for enum TxChildrenKind
type
  TxChildrenKind = TOleEnum;
const
  ickChildren = $00000001;
  ickAggFields = $00000002;

// Constants for enum TxRowState
type
  TxRowState = TOleEnum;
const
  irsIsExtChild = $00000001;
  irsExpanded = $00000002;
  irsIsSorted = $00000004;
  irsUtilityRow = $00000008;
  irsCachedObj = $00000010;
  irsBlank = $00000020;
  irsSkipLog = $00000040;
  irsSkipChildrenLog = $00000080;

// Constants for enum TxFieldType
type
  TxFieldType = TOleEnum;
const
  isftInteger = $00000000;
  isftDWord = $00000001;
  isftSmallInt = $00000002;
  isftWord = $00000003;
  isftByte = $00000004;
  isftChar = $00000005;
  isftBoolean = $00000006;
  isftFloat = $00000007;
  isftInt64 = $00000009;
  isftShortString = $0000000B;
  isftAggField = $0000000C;
  isftBlob = $0000000D;

// Constants for enum TxFieldOption
type
  TxFieldOption = TOleEnum;
const
  irfoData = $00000000;
  irfoLookup = $00000001;
  irfoCalc = $00000002;

// Constants for enum TxSFClassType
type
  TxSFClassType = TOleEnum;
const
  isfctGeneral = $00000000;
  isfctIndependentor = $00000001;

// Constants for enum TxSFDatasetSettings
type
  TxSFDatasetSettings = TOleEnum;
const
  idsNoReference = $00000001;

// Constants for enum TxSFDataSetOptions
type
  TxSFDataSetOptions = TOleEnum;
const
  isfoUnExistsCreate = $00000001;
  isfoMemory = $00000002;
  isfoCreateEncrypted = $00000008;

// Constants for enum TxSFDataSetFiledHashSize
type
  TxSFDataSetFiledHashSize = TOleEnum;
const
  ishsMini = $00000000;
  ishsSmall = $00000001;
  ishsMedium = $00000002;
  ishsLarge = $00000003;

// Constants for enum TxPurgeOnVoidSpace
type
  TxPurgeOnVoidSpace = TOleEnum;
const
  ipvsNever = $00000000;
  ipvs30Percent = $00000001;
  ipvs50Percent = $00000002;
  ipvs70Percent = $00000003;
  ipvs90Percent = $00000004;

// Constants for enum TxGridOption
type
  TxGridOption = TOleEnum;
const
  igoColSizing = $00000001;
  igoEditing = $00000002;
  igoTabs = $00000004;
  igoRowSelect = $00000008;
  igoThumbTracking = $00000010;
  igoOnlyF2Editing = $00000020;

// Constants for enum TxShiftState
type
  TxShiftState = TOleEnum;
const
  issShift = $00000001;
  issAlt = $00000002;
  issCtrl = $00000004;
  issLeft = $00000008;
  issRight = $00000010;
  issMiddle = $00000020;
  issDouble = $00000040;
  issTouch = $00000080;
  issPen = $00000100;
  issCommand = $00000200;

// Constants for enum TxNodeBtnKind
type
  TxNodeBtnKind = TOleEnum;
const
  inbkTriangleStyle = $00000000;
  inbkArrowStyle = $00000001;
  inbkPlusMinusStyle = $00000002;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IBasicRow = interface;
  IBasicRowDisp = dispinterface;
  ISDataSet = interface;
  ISDataSetDisp = dispinterface;
  ISGrid = interface;
  ISGridDisp = dispinterface;
  IViewList = interface;
  IViewListDisp = dispinterface;
  ISColDef = interface;
  ISColDefDisp = dispinterface;
  ISColDefs = interface;
  ISColDefsDisp = dispinterface;
  IViewDataList = interface;
  IViewDataListDisp = dispinterface;
  ISClass = interface;
  ISClassDisp = dispinterface;
  ISRowField = interface;
  ISRowFieldDisp = dispinterface;
  ISClassList = interface;
  ISClassListDisp = dispinterface;
  ICheckBoxItems = interface;
  ICheckBoxItemsDisp = dispinterface;
  ISDataView = interface;
  ISDataViewDisp = dispinterface;
  ISColumn = interface;
  ISColumnDisp = dispinterface;
  ISColumns = interface;
  ISColumnsDisp = dispinterface;
  ISEditParam = interface;
  ISEditParamDisp = dispinterface;
  ISCommandMgr = interface;
  ISCommandMgrDisp = dispinterface;
  ISCommandParam = interface;
  ISCommandParamDisp = dispinterface;
  ISCommandMgrEvent = interface;
  ISCommandMgrEventDisp = dispinterface;
  ISClassEvent = interface;
  ISClassEventDisp = dispinterface;
  ISRowFieldEvent = interface;
  ISRowFieldEventDisp = dispinterface;
  ISDataSetEvent = interface;
  ISDataSetEventDisp = dispinterface;
  IDualIntfList = interface;
  IDualIntfListDisp = dispinterface;
  IStream = interface;
  ISGridEvent = interface;
  ISGridEventDisp = dispinterface;
  ISelectList = interface;
  ISelectListDisp = dispinterface;
  IViewOption = interface;
  IViewOptionDisp = dispinterface;
  IViewOptions = interface;
  IViewOptionsDisp = dispinterface;
  ISSCreator = interface;
  ISSCreatorDisp = dispinterface;
  ISSCreatorEvent = interface;
  ISSCreatorEventDisp = dispinterface;

// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  ISRow = IBasicRow; 


  TxRect = record
    Top: Integer;
    Left: Integer;
    Bottom: Integer;
    Right: Integer;
  end;

  TxFontRec = record
    Name: WideString;
    Color: Integer;
    Style: TxFontStyle;
    Size: Integer;
    Heigh: Integer;
  end;

  TxDrawBackParam = record
    Color: Integer;
    Align: TxAlignment;
  end;

  TxCellFormat = record
    Field: ISRowField;
    Color: LongWord;
    FontSize: Byte;
    FontStyle: LongWord;
    FontColor: LongWord;
  end;

  TxFieldHandle = record
    H1: Largeuint;
    H2: Largeuint;
  end;


// *********************************************************************//
// Interface: IBasicRow
// Flags:     (320) Dual OleAutomation
// GUID:      {6F28F0EB-3A8A-491F-BF77-F4BB622B5E26}
// *********************************************************************//
  IBasicRow = interface(IUnknown)
    ['{6F28F0EB-3A8A-491F-BF77-F4BB622B5E26}']
    function Get_ClassDef: ISClass; safecall;
    function Get_Parent: IBasicRow; safecall;
    function Get_Children(Index: Integer): IBasicRow; safecall;
    function Get_Owner: ISDataSet; safecall;
    function Get_Count: Integer; safecall;
    function Get_Level: Integer; safecall;
    function Get_Visible: WordBool; safecall;
    function ParentFrom(const AItem: IBasicRow): WordBool; safecall;
    function WrapGetAncestorOfLevel(ALevel: Integer): IBasicRow; safecall;
    procedure WrapGetDrawParam(const AFieldDef: ISRowField; var AFontRec: TxFontRec; 
                               var ABackParam: TxDrawBackParam); safecall;
    function Get_DrawText(const AFieldDef: ISRowField): WideString; safecall;
    function Get_ShowEditor(const AFieldDef: ISRowField): WordBool; safecall;
    function Get_EditText(const AFieldDef: ISRowField): WideString; safecall;
    procedure WrapGetEditParam(const AFieldDef: ISRowField; var AFontRec: TxFontRec; 
                               var ABackParam: TxDrawBackParam; var AEditStyle: TxEditStyle); safecall;
    function Get_Id: Integer; safecall;
    function Get_IsRoot: WordBool; safecall;
    function Get_EditLimit(const AFieldDef: ISRowField): Integer; safecall;
    function Get_RefCount: Integer; safecall;
    procedure PostAField(const AFieldDef: ISRowField; const AValue: WideString); safecall;
    function Get_Expanded: WordBool; safecall;
    procedure Set_Expanded(Value: WordBool); safecall;
    function DParentFrom(const AItem: IBasicRow): WordBool; safecall;
    function WrapGetEditStyle(const AField: ISRowField): TxEditStyle; safecall;
    function Get_Deleted: WordBool; safecall;
    function Get_Invalid: WordBool; safecall;
    function GetObjDrawParam(const AFieldDef: ISRowField; var AFontRec: TxFontRec; 
                             var ABackParam: TxDrawBackParam): WordBool; safecall;
    function Get_IsNormalObj: WordBool; safecall;
    function Get_AsBoolean(const AField: ISRowField): WordBool; safecall;
    procedure Set_AsBoolean(const AField: ISRowField; Value: WordBool); safecall;
    function Get_AsInteger(const AField: ISRowField): Integer; safecall;
    procedure Set_AsInteger(const AField: ISRowField; Value: Integer); safecall;
    function Get_Value(const AField: ISRowField): OleVariant; safecall;
    procedure Set_Value(const AField: ISRowField; Value: OleVariant); safecall;
    function Get_AsInt64(const AField: ISRowField): Int64; safecall;
    procedure Set_AsInt64(const AField: ISRowField; Value: Int64); safecall;
    function Get_AsFloat(const AField: ISRowField): Double; safecall;
    procedure Set_AsFloat(const AField: ISRowField; Value: Double); safecall;
    function Get_AsString(const AField: ISRowField): WideString; safecall;
    procedure Set_AsString(const AField: ISRowField; const Value: WideString); safecall;
    function Get_AsBooleanByName(const AFieldName: WideString): WordBool; safecall;
    procedure Set_AsBooleanByName(const AFieldName: WideString; Value: WordBool); safecall;
    function Get_AsIntegerByName(const AFieldName: WideString): Integer; safecall;
    procedure Set_AsIntegerByName(const AFieldName: WideString; Value: Integer); safecall;
    function Get_ValueByName(const AFieldName: WideString): OleVariant; safecall;
    procedure Set_ValueByName(const AFieldName: WideString; Value: OleVariant); safecall;
    function Get_AsInt64ByName(const AFieldName: WideString): Int64; safecall;
    procedure Set_AsInt64ByName(const AFieldName: WideString; Value: Int64); safecall;
    function Get_AsFloatByName(const AFieldName: WideString): Double; safecall;
    procedure Set_AsFloatByName(const AFieldName: WideString; Value: Double); safecall;
    function Get_AsStringByName(const AFieldName: WideString): WideString; safecall;
    procedure Set_AsStringByName(const AFieldName: WideString; const Value: WideString); safecall;
    function GetAncestorOfMulti(SClasses: OleVariant; ArySize: Integer; IncludeSelf: WordBool): IBasicRow; safecall;
    function GetAncestorOfSingle(const AClass: ISClass; IncludeSelf: WordBool): IBasicRow; safecall;
    function Get_TrunkParent: IBasicRow; safecall;
    function DParentFrom2(const AItem: IBasicRow): WordBool; safecall;
    procedure Resort; safecall;
    function IndexOf(const AObj: IBasicRow): Integer; safecall;
    procedure ItemMoveTo(FromIndex: Integer; ToIndex: Integer); safecall;
    procedure ClearItems; safecall;
    function RemoveItem(const AObj: IBasicRow): Integer; safecall;
    procedure DeleteItem(Index: Integer); safecall;
    function CloneItemFrom(InsertPos: Integer; const SourceObj: IBasicRow; RecurseOf: Integer; 
                           const MappingList: IDualIntfList): Integer; safecall;
    function CloneAllChildrenFrom(const SourceParent: IBasicRow; RecurseOf: Integer; 
                                  const MappingList: IDualIntfList): Integer; safecall;
    function FindItem(const AObj: IBasicRow; out Index: Integer): WordBool; safecall;
    function FindItemBySortValues(SortKeyValues: OleVariant; out Index: Integer): WordBool; safecall;
    function LocateItem(const LocateFields: WideString; LocateValues: OleVariant; 
                        Handler: OLE_HANDLE): IBasicRow; safecall;
    procedure AssignFrom(const Source: IBasicRow; const FieldNames: WideString); safecall;
    procedure AssignExcept(const Source: IBasicRow; const ExceptFieldNames: WideString); safecall;
    function IsBlank: WordBool; safecall;
    function Get_Id64: Int64; safecall;
    function Get_HexId: WideString; safecall;
    function Get_RowState: Integer; safecall;
    function Get_IsSorted: WordBool; safecall;
    function Get_IsCachedObj: WordBool; safecall;
    function Get_IsExtChild: WordBool; safecall;
    procedure ClearValues; safecall;
    function AddItem(const AClassDef: ISClass; Expanded: WordBool): IBasicRow; safecall;
    function AddItemInSort(const AClassDef: ISClass; Expanded: WordBool; SortValues: OleVariant; 
                           out AIndex: Integer): IBasicRow; safecall;
    function InsertItem(AIndex: Integer; const AClassDef: ISClass; Expanded: WordBool): IBasicRow; safecall;
    function InsertItemBeforeLast(const AClassDef: ISClass; Expanded: WordBool): IBasicRow; safecall;
    function InsertItemBefore(const AClassDef: ISClass; const AObj: IBasicRow; Expanded: WordBool): IBasicRow; safecall;
    function InsertItemAfter(const AClassDef: ISClass; const AObj: IBasicRow; Expanded: WordBool): IBasicRow; safecall;
    function Load(Recurse: WordBool): Integer; safecall;
    function LoadChildren(Recurse: WordBool): Integer; safecall;
    function LoadAggFields(Recurse: WordBool): Integer; safecall;
    function Get_Key: WideString; safecall;
    function GetAggObject(const AField: ISRowField): IBasicRow; safecall;
    function GetAggObjectByName(const AFldName: WideString): IBasicRow; safecall;
    function QueryAggObject(const AField: ISRowField): IBasicRow; safecall;
    function QueryAggObjectByName(const AFldName: WideString): IBasicRow; safecall;
    function Get_LookUpKey(const AField: ISRowField): WideString; safecall;
    function GetFldChangedRawData(DataP: OLE_HANDLE; DataSize: Integer): Integer; safecall;
    procedure ForEachRefer(Proc: OLE_HANDLE; Info: OLE_HANDLE); safecall;
    function GetReferCount: Integer; safecall;
    function Get_FieldByName(const FldName: WideString): ISRowField; safecall;
    function HaveRefer: WordBool; safecall;
    function HaveReferOf(const ReferClass: ISClass; const ExcludeObj: IBasicRow; 
                         ExcludeAncestor: WordBool): WordBool; safecall;
    function GetOrigObj: IBasicRow; safecall;
    procedure PostNotify(Sequence: Word; WordwrapSender: WordBool; TaskSender: WordBool); safecall;
    procedure SetDispFormat(AFormat: TxCellFormat); safecall;
    function GetDispFormat(const AFld: ISRowField; out AFormat: TxCellFormat): WordBool; safecall;
    procedure DeleteDispFormat(const AFld: ISRowField); safecall;
    procedure DeleteAllDispFormat; safecall;
    procedure RefreshRowHeight; safecall;
    function Get_Changed(const AField: ISRowField): WordBool; safecall;
    function Get_Independentor: IBasicRow; safecall;
    function Get_OrderNo: LongWord; safecall;
    function Get_Index: LongWord; safecall;
    procedure StopSort; safecall;
    function Get_ForeignKey(const AField: ISRowField): WideString; safecall;
    function Edit: WordBool; safecall;
    function Post: Integer; safecall;
    function Get_FieldHandle(const Field: ISRowField): TxFieldHandle; safecall;
    procedure DeleteAggObj(const AggField: ISRowField); safecall;
    function Get_GlobalOrderNo: LongWord; safecall;
    function Get_Handle: OLE_HANDLE; safecall;
    property ClassDef: ISClass read Get_ClassDef;
    property Parent: IBasicRow read Get_Parent;
    property Children[Index: Integer]: IBasicRow read Get_Children;
    property Owner: ISDataSet read Get_Owner;
    property Count: Integer read Get_Count;
    property Level: Integer read Get_Level;
    property Visible: WordBool read Get_Visible;
    property DrawText[const AFieldDef: ISRowField]: WideString read Get_DrawText;
    property ShowEditor[const AFieldDef: ISRowField]: WordBool read Get_ShowEditor;
    property EditText[const AFieldDef: ISRowField]: WideString read Get_EditText;
    property Id: Integer read Get_Id;
    property IsRoot: WordBool read Get_IsRoot;
    property EditLimit[const AFieldDef: ISRowField]: Integer read Get_EditLimit;
    property RefCount: Integer read Get_RefCount;
    property Expanded: WordBool read Get_Expanded write Set_Expanded;
    property Deleted: WordBool read Get_Deleted;
    property Invalid: WordBool read Get_Invalid;
    property IsNormalObj: WordBool read Get_IsNormalObj;
    property AsBoolean[const AField: ISRowField]: WordBool read Get_AsBoolean write Set_AsBoolean;
    property AsInteger[const AField: ISRowField]: Integer read Get_AsInteger write Set_AsInteger;
    property Value[const AField: ISRowField]: OleVariant read Get_Value write Set_Value;
    property AsInt64[const AField: ISRowField]: Int64 read Get_AsInt64 write Set_AsInt64;
    property AsFloat[const AField: ISRowField]: Double read Get_AsFloat write Set_AsFloat;
    property AsString[const AField: ISRowField]: WideString read Get_AsString write Set_AsString;
    property AsBooleanByName[const AFieldName: WideString]: WordBool read Get_AsBooleanByName write Set_AsBooleanByName;
    property AsIntegerByName[const AFieldName: WideString]: Integer read Get_AsIntegerByName write Set_AsIntegerByName;
    property ValueByName[const AFieldName: WideString]: OleVariant read Get_ValueByName write Set_ValueByName;
    property AsInt64ByName[const AFieldName: WideString]: Int64 read Get_AsInt64ByName write Set_AsInt64ByName;
    property AsFloatByName[const AFieldName: WideString]: Double read Get_AsFloatByName write Set_AsFloatByName;
    property AsStringByName[const AFieldName: WideString]: WideString read Get_AsStringByName write Set_AsStringByName;
    property TrunkParent: IBasicRow read Get_TrunkParent;
    property Id64: Int64 read Get_Id64;
    property HexId: WideString read Get_HexId;
    property RowState: Integer read Get_RowState;
    property IsSorted: WordBool read Get_IsSorted;
    property IsCachedObj: WordBool read Get_IsCachedObj;
    property IsExtChild: WordBool read Get_IsExtChild;
    property Key: WideString read Get_Key;
    property LookUpKey[const AField: ISRowField]: WideString read Get_LookUpKey;
    property FieldByName[const FldName: WideString]: ISRowField read Get_FieldByName;
    property Changed[const AField: ISRowField]: WordBool read Get_Changed;
    property Independentor: IBasicRow read Get_Independentor;
    property OrderNo: LongWord read Get_OrderNo;
    property Index: LongWord read Get_Index;
    property ForeignKey[const AField: ISRowField]: WideString read Get_ForeignKey;
    property FieldHandle[const Field: ISRowField]: TxFieldHandle read Get_FieldHandle;
    property GlobalOrderNo: LongWord read Get_GlobalOrderNo;
    property Handle: OLE_HANDLE read Get_Handle;
  end;

// *********************************************************************//
// DispIntf:  IBasicRowDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {6F28F0EB-3A8A-491F-BF77-F4BB622B5E26}
// *********************************************************************//
  IBasicRowDisp = dispinterface
    ['{6F28F0EB-3A8A-491F-BF77-F4BB622B5E26}']
    property ClassDef: ISClass readonly dispid 101;
    property Parent: IBasicRow readonly dispid 102;
    property Children[Index: Integer]: IBasicRow readonly dispid 103;
    property Owner: ISDataSet readonly dispid 104;
    property Count: Integer readonly dispid 105;
    property Level: Integer readonly dispid 107;
    property Visible: WordBool readonly dispid 108;
    function ParentFrom(const AItem: IBasicRow): WordBool; dispid 109;
    function WrapGetAncestorOfLevel(ALevel: Integer): IBasicRow; dispid 110;
    procedure WrapGetDrawParam(const AFieldDef: ISRowField; 
                               var AFontRec: {NOT_OLEAUTO(TxFontRec)}OleVariant; 
                               var ABackParam: {NOT_OLEAUTO(TxDrawBackParam)}OleVariant); dispid 112;
    property DrawText[const AFieldDef: ISRowField]: WideString readonly dispid 113;
    property ShowEditor[const AFieldDef: ISRowField]: WordBool readonly dispid 115;
    property EditText[const AFieldDef: ISRowField]: WideString readonly dispid 114;
    procedure WrapGetEditParam(const AFieldDef: ISRowField; 
                               var AFontRec: {NOT_OLEAUTO(TxFontRec)}OleVariant; 
                               var ABackParam: {NOT_OLEAUTO(TxDrawBackParam)}OleVariant; 
                               var AEditStyle: TxEditStyle); dispid 116;
    property Id: Integer readonly dispid 119;
    property IsRoot: WordBool readonly dispid 120;
    property EditLimit[const AFieldDef: ISRowField]: Integer readonly dispid 121;
    property RefCount: Integer readonly dispid 123;
    procedure PostAField(const AFieldDef: ISRowField; const AValue: WideString); dispid 125;
    property Expanded: WordBool dispid 106;
    function DParentFrom(const AItem: IBasicRow): WordBool; dispid 126;
    function WrapGetEditStyle(const AField: ISRowField): TxEditStyle; dispid 127;
    property Deleted: WordBool readonly dispid 128;
    property Invalid: WordBool readonly dispid 129;
    function GetObjDrawParam(const AFieldDef: ISRowField; 
                             var AFontRec: {NOT_OLEAUTO(TxFontRec)}OleVariant; 
                             var ABackParam: {NOT_OLEAUTO(TxDrawBackParam)}OleVariant): WordBool; dispid 130;
    property IsNormalObj: WordBool readonly dispid 111;
    property AsBoolean[const AField: ISRowField]: WordBool dispid 117;
    property AsInteger[const AField: ISRowField]: Integer dispid 131;
    property Value[const AField: ISRowField]: OleVariant dispid 132;
    property AsInt64[const AField: ISRowField]: Int64 dispid 133;
    property AsFloat[const AField: ISRowField]: Double dispid 134;
    property AsString[const AField: ISRowField]: WideString dispid 135;
    property AsBooleanByName[const AFieldName: WideString]: WordBool dispid 136;
    property AsIntegerByName[const AFieldName: WideString]: Integer dispid 137;
    property ValueByName[const AFieldName: WideString]: OleVariant dispid 138;
    property AsInt64ByName[const AFieldName: WideString]: Int64 dispid 139;
    property AsFloatByName[const AFieldName: WideString]: Double dispid 140;
    property AsStringByName[const AFieldName: WideString]: WideString dispid 141;
    function GetAncestorOfMulti(SClasses: OleVariant; ArySize: Integer; IncludeSelf: WordBool): IBasicRow; dispid 142;
    function GetAncestorOfSingle(const AClass: ISClass; IncludeSelf: WordBool): IBasicRow; dispid 143;
    property TrunkParent: IBasicRow readonly dispid 144;
    function DParentFrom2(const AItem: IBasicRow): WordBool; dispid 145;
    procedure Resort; dispid 146;
    function IndexOf(const AObj: IBasicRow): Integer; dispid 147;
    procedure ItemMoveTo(FromIndex: Integer; ToIndex: Integer); dispid 148;
    procedure ClearItems; dispid 149;
    function RemoveItem(const AObj: IBasicRow): Integer; dispid 150;
    procedure DeleteItem(Index: Integer); dispid 151;
    function CloneItemFrom(InsertPos: Integer; const SourceObj: IBasicRow; RecurseOf: Integer; 
                           const MappingList: IDualIntfList): Integer; dispid 152;
    function CloneAllChildrenFrom(const SourceParent: IBasicRow; RecurseOf: Integer; 
                                  const MappingList: IDualIntfList): Integer; dispid 153;
    function FindItem(const AObj: IBasicRow; out Index: Integer): WordBool; dispid 154;
    function FindItemBySortValues(SortKeyValues: OleVariant; out Index: Integer): WordBool; dispid 155;
    function LocateItem(const LocateFields: WideString; LocateValues: OleVariant; 
                        Handler: OLE_HANDLE): IBasicRow; dispid 156;
    procedure AssignFrom(const Source: IBasicRow; const FieldNames: WideString); dispid 118;
    procedure AssignExcept(const Source: IBasicRow; const ExceptFieldNames: WideString); dispid 157;
    function IsBlank: WordBool; dispid 158;
    property Id64: Int64 readonly dispid 159;
    property HexId: WideString readonly dispid 160;
    property RowState: Integer readonly dispid 161;
    property IsSorted: WordBool readonly dispid 162;
    property IsCachedObj: WordBool readonly dispid 163;
    property IsExtChild: WordBool readonly dispid 165;
    procedure ClearValues; dispid 166;
    function AddItem(const AClassDef: ISClass; Expanded: WordBool): IBasicRow; dispid 167;
    function AddItemInSort(const AClassDef: ISClass; Expanded: WordBool; SortValues: OleVariant; 
                           out AIndex: Integer): IBasicRow; dispid 168;
    function InsertItem(AIndex: Integer; const AClassDef: ISClass; Expanded: WordBool): IBasicRow; dispid 169;
    function InsertItemBeforeLast(const AClassDef: ISClass; Expanded: WordBool): IBasicRow; dispid 170;
    function InsertItemBefore(const AClassDef: ISClass; const AObj: IBasicRow; Expanded: WordBool): IBasicRow; dispid 171;
    function InsertItemAfter(const AClassDef: ISClass; const AObj: IBasicRow; Expanded: WordBool): IBasicRow; dispid 172;
    function Load(Recurse: WordBool): Integer; dispid 173;
    function LoadChildren(Recurse: WordBool): Integer; dispid 174;
    function LoadAggFields(Recurse: WordBool): Integer; dispid 175;
    property Key: WideString readonly dispid 176;
    function GetAggObject(const AField: ISRowField): IBasicRow; dispid 177;
    function GetAggObjectByName(const AFldName: WideString): IBasicRow; dispid 178;
    function QueryAggObject(const AField: ISRowField): IBasicRow; dispid 179;
    function QueryAggObjectByName(const AFldName: WideString): IBasicRow; dispid 180;
    property LookUpKey[const AField: ISRowField]: WideString readonly dispid 181;
    function GetFldChangedRawData(DataP: OLE_HANDLE; DataSize: Integer): Integer; dispid 182;
    procedure ForEachRefer(Proc: OLE_HANDLE; Info: OLE_HANDLE); dispid 187;
    function GetReferCount: Integer; dispid 188;
    property FieldByName[const FldName: WideString]: ISRowField readonly dispid 189;
    function HaveRefer: WordBool; dispid 190;
    function HaveReferOf(const ReferClass: ISClass; const ExcludeObj: IBasicRow; 
                         ExcludeAncestor: WordBool): WordBool; dispid 191;
    function GetOrigObj: IBasicRow; dispid 192;
    procedure PostNotify(Sequence: Word; WordwrapSender: WordBool; TaskSender: WordBool); dispid 193;
    procedure SetDispFormat(AFormat: {NOT_OLEAUTO(TxCellFormat)}OleVariant); dispid 194;
    function GetDispFormat(const AFld: ISRowField; 
                           out AFormat: {NOT_OLEAUTO(TxCellFormat)}OleVariant): WordBool; dispid 195;
    procedure DeleteDispFormat(const AFld: ISRowField); dispid 196;
    procedure DeleteAllDispFormat; dispid 197;
    procedure RefreshRowHeight; dispid 198;
    property Changed[const AField: ISRowField]: WordBool readonly dispid 199;
    property Independentor: IBasicRow readonly dispid 200;
    property OrderNo: LongWord readonly dispid 201;
    property Index: LongWord readonly dispid 186;
    procedure StopSort; dispid 122;
    property ForeignKey[const AField: ISRowField]: WideString readonly dispid 202;
    function Edit: WordBool; dispid 203;
    function Post: Integer; dispid 204;
    property FieldHandle[const Field: ISRowField]: {NOT_OLEAUTO(TxFieldHandle)}OleVariant readonly dispid 205;
    procedure DeleteAggObj(const AggField: ISRowField); dispid 164;
    property GlobalOrderNo: LongWord readonly dispid 183;
    property Handle: OLE_HANDLE readonly dispid 124;
  end;

// *********************************************************************//
// Interface: ISDataSet
// Flags:     (320) Dual OleAutomation
// GUID:      {11E82B07-187E-4804-925A-816DC8E18D1F}
// *********************************************************************//
  ISDataSet = interface(IUnknown)
    ['{11E82B07-187E-4804-925A-816DC8E18D1F}']
    function Get_Classes: ISClassList; safecall;
    function Get_RootItem: IBasicRow; safecall;
    function Get_NormalState: Integer; safecall;
    function Get_InitingState: Integer; safecall;
    function Get_FinalingState: Integer; safecall;
    function WrapLinkNotify(const AView: ISDataView; Op: TxGridLinkOP): Integer; safecall;
    function Get_State: SYSINT; safecall;
    function Get_Active: WordBool; safecall;
    function Get_Handle: OLE_HANDLE; safecall;
    function Get_TaskState: WordBool; safecall;
    procedure LoadModuleDefines(AModuleId: Word); safecall;
    procedure ClearItems; safecall;
    function Open: WordBool; safecall;
    function OpenFromTemplate(const ATemplateFile: WideString): WordBool; safecall;
    function Close: WordBool; safecall;
    function Get_ViewZoomRatio: Double; safecall;
    procedure Set_ViewZoomRatio(Value: Double); safecall;
    function Get_GridEditCommandEnabled: WordBool; safecall;
    function Get_CmdMgr: ISCommandMgr; safecall;
    function Get_OwnerHandle: OLE_HANDLE; safecall;
    function ValidForLog(const AObj: IBasicRow): WordBool; safecall;
    function CreateClass(const AClassName: WideString; const AClassCaption: WideString): ISClass; safecall;
    procedure ReFilterAObj(const AObj: IBasicRow); safecall;
    function Get_ClassByName(const AClsName: WideString): ISClass; safecall;
    function Get_ObjCount: Integer; safecall;
    function Get_Id: Integer; safecall;
    procedure SetEvent(const AIntf: ISDataSetEvent); safecall;
    function Get_EventIntf: ISDataSetEvent; safecall;
    procedure DeleteDataSet; safecall;
    function Edit(const AObj: IBasicRow): WordBool; safecall;
    procedure CancelEdit; safecall;
    function Post: Integer; safecall;
    function TryPost: Integer; safecall;
    function Edited: WordBool; safecall;
    function Get_EditingObj: IBasicRow; safecall;
    function SaveDataSet(Stricted: WordBool): WordBool; safecall;
    function SaveBlobFrom(const SoureStream: IStream; const AObj: IBasicRow; 
                          const ABlobField: ISRowField): WordBool; safecall;
    function ReadBlobTo(const DestStream: IStream; const AObj: IBasicRow; 
                        const ABlobField: ISRowField): WordBool; safecall;
    function SaveBlobString(const AStr: WideString; const AObj: IBasicRow; 
                            const ABlobField: ISRowField): WordBool; safecall;
    function ReadBlobString(out AStr: WideString; const AObj: IBasicRow; 
                            const ABlobField: ISRowField): WordBool; safecall;
    function AddRootItem(const AClass: ISClass): IBasicRow; safecall;
    function LoadRoot: WordBool; safecall;
    function AddUtilityRow(const AClass: ISClass): IBasicRow; safecall;
    function LoadDefinitions: WordBool; safecall;
    function ObjById(AId: Integer): IBasicRow; safecall;
    function ObjById64(AId64: Int64): IBasicRow; safecall;
    procedure PostTask(const AObj: IBasicRow; TaskSequence: Word); safecall;
    procedure DispatchTask(const AObj: IBasicRow; DispatchTag: Word); safecall;
    function FindObjByKey(const AKey: WideString): IBasicRow; safecall;
    function HaveUnFinishedTask: WordBool; safecall;
    function WaitForProcessTasks: LongWord; safecall;
    procedure SuspendAllTask; safecall;
    procedure ResumeAllTask; safecall;
    function GetTaskCount: Integer; safecall;
    function BuildAddRef(const AObj: IBasicRow): WordBool; safecall;
    function ReBuildRef: WordBool; safecall;
    procedure SetUtilityNode(const ANodeForGettingObj: IBasicRow; 
                             const ANodeForCacheUpdate: IBasicRow); safecall;
    function BeginCacheUpdate(const AObj: IBasicRow): IBasicRow; safecall;
    function BeginCacheAdd(const AClass: ISClass): IBasicRow; safecall;
    function ApplyCacheUpdate(const ACachedObj: IBasicRow): Integer; safecall;
    function ApplyCacheAdd(const ACachedObj: IBasicRow; const ApplyTo: IBasicRow): Integer; safecall;
    function CancelCacheUpdate(const ACachedObj: IBasicRow): WordBool; safecall;
    procedure ClearErrorMsgOfTask; safecall;
    procedure DisableGridEditCommand; safecall;
    procedure EnableGridEditCommand; safecall;
    function DatabaseUnpackTo(const ToDir: WideString): WordBool; safecall;
    function DatabasePackAs(const AFileName: WideString): WordBool; safecall;
    function Purge: WordBool; safecall;
    procedure ClearInvalidIntegrityException; safecall;
    function Get_Settings: TxSFDatasetSettings; safecall;
    procedure Set_Settings(Value: TxSFDatasetSettings); safecall;
    function Get_RowCount: Integer; safecall;
    function Get_ErrorMsgOfTask: WideString; safecall;
    function Get_ErrorMsgOfUnknown: WideString; safecall;
    function Get_EnableLog: WordBool; safecall;
    procedure Set_EnableLog(Value: WordBool); safecall;
    function Get_WorkPath: WideString; safecall;
    function Get_DatabaseName: WideString; safecall;
    procedure Set_DatabaseName(const Value: WideString); safecall;
    function Get_Options: TxSFDataSetOptions; safecall;
    procedure Set_Options(Value: TxSFDataSetOptions); safecall;
    function Get_FiledHashSize: TxSFDataSetFiledHashSize; safecall;
    procedure Set_FiledHashSize(Value: TxSFDataSetFiledHashSize); safecall;
    function Get_PackedMode: WordBool; safecall;
    procedure Set_PackedMode(Value: WordBool); safecall;
    function Get_PurgeOnVoidSpace: TxPurgeOnVoidSpace; safecall;
    procedure Set_PurgeOnVoidSpace(Value: TxPurgeOnVoidSpace); safecall;
    procedure PreLoadHash; safecall;
    function Get_ReadOnly: WordBool; safecall;
    procedure Set_ReadOnly(Value: WordBool); safecall;
    procedure DeleteClass(const AClassName: WideString); safecall;
    procedure AbortAllTask; safecall;
    function SimpleRoundTo(Value: Double; Digit: Integer): Double; safecall;
    function CalcExpr(const Sender: IBasicRow; FieldHandle: TxFieldHandle): OleVariant; safecall;
    function CalcExpress(const Sender: IBasicRow; const Expr: WideString): OleVariant; safecall;
    function VerifyExpress(const Sender: IBasicRow; const Expr: WideString; 
                           out RetExpr: WideString; out UsedItem: WideString): WordBool; safecall;
    property Classes: ISClassList read Get_Classes;
    property RootItem: IBasicRow read Get_RootItem;
    property NormalState: Integer read Get_NormalState;
    property InitingState: Integer read Get_InitingState;
    property FinalingState: Integer read Get_FinalingState;
    property State: SYSINT read Get_State;
    property Active: WordBool read Get_Active;
    property Handle: OLE_HANDLE read Get_Handle;
    property TaskState: WordBool read Get_TaskState;
    property ViewZoomRatio: Double read Get_ViewZoomRatio write Set_ViewZoomRatio;
    property GridEditCommandEnabled: WordBool read Get_GridEditCommandEnabled;
    property CmdMgr: ISCommandMgr read Get_CmdMgr;
    property OwnerHandle: OLE_HANDLE read Get_OwnerHandle;
    property ClassByName[const AClsName: WideString]: ISClass read Get_ClassByName;
    property ObjCount: Integer read Get_ObjCount;
    property Id: Integer read Get_Id;
    property EventIntf: ISDataSetEvent read Get_EventIntf;
    property EditingObj: IBasicRow read Get_EditingObj;
    property Settings: TxSFDatasetSettings read Get_Settings write Set_Settings;
    property RowCount: Integer read Get_RowCount;
    property ErrorMsgOfTask: WideString read Get_ErrorMsgOfTask;
    property ErrorMsgOfUnknown: WideString read Get_ErrorMsgOfUnknown;
    property EnableLog: WordBool read Get_EnableLog write Set_EnableLog;
    property WorkPath: WideString read Get_WorkPath;
    property DatabaseName: WideString read Get_DatabaseName write Set_DatabaseName;
    property Options: TxSFDataSetOptions read Get_Options write Set_Options;
    property FiledHashSize: TxSFDataSetFiledHashSize read Get_FiledHashSize write Set_FiledHashSize;
    property PackedMode: WordBool read Get_PackedMode write Set_PackedMode;
    property PurgeOnVoidSpace: TxPurgeOnVoidSpace read Get_PurgeOnVoidSpace write Set_PurgeOnVoidSpace;
    property ReadOnly: WordBool read Get_ReadOnly write Set_ReadOnly;
  end;

// *********************************************************************//
// DispIntf:  ISDataSetDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {11E82B07-187E-4804-925A-816DC8E18D1F}
// *********************************************************************//
  ISDataSetDisp = dispinterface
    ['{11E82B07-187E-4804-925A-816DC8E18D1F}']
    property Classes: ISClassList readonly dispid 101;
    property RootItem: IBasicRow readonly dispid 102;
    property NormalState: Integer readonly dispid 103;
    property InitingState: Integer readonly dispid 104;
    property FinalingState: Integer readonly dispid 105;
    function WrapLinkNotify(const AView: ISDataView; Op: TxGridLinkOP): Integer; dispid 107;
    property State: SYSINT readonly dispid 108;
    property Active: WordBool readonly dispid 109;
    property Handle: OLE_HANDLE readonly dispid 111;
    property TaskState: WordBool readonly dispid 106;
    procedure LoadModuleDefines(AModuleId: Word); dispid 112;
    procedure ClearItems; dispid 113;
    function Open: WordBool; dispid 114;
    function OpenFromTemplate(const ATemplateFile: WideString): WordBool; dispid 115;
    function Close: WordBool; dispid 116;
    property ViewZoomRatio: Double dispid 117;
    property GridEditCommandEnabled: WordBool readonly dispid 118;
    property CmdMgr: ISCommandMgr readonly dispid 119;
    property OwnerHandle: OLE_HANDLE readonly dispid 120;
    function ValidForLog(const AObj: IBasicRow): WordBool; dispid 121;
    function CreateClass(const AClassName: WideString; const AClassCaption: WideString): ISClass; dispid 122;
    procedure ReFilterAObj(const AObj: IBasicRow); dispid 124;
    property ClassByName[const AClsName: WideString]: ISClass readonly dispid 126;
    property ObjCount: Integer readonly dispid 127;
    property Id: Integer readonly dispid 128;
    procedure SetEvent(const AIntf: ISDataSetEvent); dispid 129;
    property EventIntf: ISDataSetEvent readonly dispid 130;
    procedure DeleteDataSet; dispid 131;
    function Edit(const AObj: IBasicRow): WordBool; dispid 132;
    procedure CancelEdit; dispid 133;
    function Post: Integer; dispid 134;
    function TryPost: Integer; dispid 135;
    function Edited: WordBool; dispid 136;
    property EditingObj: IBasicRow readonly dispid 137;
    function SaveDataSet(Stricted: WordBool): WordBool; dispid 138;
    function SaveBlobFrom(const SoureStream: IStream; const AObj: IBasicRow; 
                          const ABlobField: ISRowField): WordBool; dispid 139;
    function ReadBlobTo(const DestStream: IStream; const AObj: IBasicRow; 
                        const ABlobField: ISRowField): WordBool; dispid 140;
    function SaveBlobString(const AStr: WideString; const AObj: IBasicRow; 
                            const ABlobField: ISRowField): WordBool; dispid 141;
    function ReadBlobString(out AStr: WideString; const AObj: IBasicRow; 
                            const ABlobField: ISRowField): WordBool; dispid 142;
    function AddRootItem(const AClass: ISClass): IBasicRow; dispid 143;
    function LoadRoot: WordBool; dispid 144;
    function AddUtilityRow(const AClass: ISClass): IBasicRow; dispid 145;
    function LoadDefinitions: WordBool; dispid 146;
    function ObjById(AId: Integer): IBasicRow; dispid 147;
    function ObjById64(AId64: Int64): IBasicRow; dispid 148;
    procedure PostTask(const AObj: IBasicRow; TaskSequence: Word); dispid 149;
    procedure DispatchTask(const AObj: IBasicRow; DispatchTag: Word); dispid 150;
    function FindObjByKey(const AKey: WideString): IBasicRow; dispid 151;
    function HaveUnFinishedTask: WordBool; dispid 152;
    function WaitForProcessTasks: LongWord; dispid 153;
    procedure SuspendAllTask; dispid 154;
    procedure ResumeAllTask; dispid 155;
    function GetTaskCount: Integer; dispid 156;
    function BuildAddRef(const AObj: IBasicRow): WordBool; dispid 157;
    function ReBuildRef: WordBool; dispid 158;
    procedure SetUtilityNode(const ANodeForGettingObj: IBasicRow; 
                             const ANodeForCacheUpdate: IBasicRow); dispid 159;
    function BeginCacheUpdate(const AObj: IBasicRow): IBasicRow; dispid 160;
    function BeginCacheAdd(const AClass: ISClass): IBasicRow; dispid 161;
    function ApplyCacheUpdate(const ACachedObj: IBasicRow): Integer; dispid 162;
    function ApplyCacheAdd(const ACachedObj: IBasicRow; const ApplyTo: IBasicRow): Integer; dispid 163;
    function CancelCacheUpdate(const ACachedObj: IBasicRow): WordBool; dispid 164;
    procedure ClearErrorMsgOfTask; dispid 167;
    procedure DisableGridEditCommand; dispid 168;
    procedure EnableGridEditCommand; dispid 169;
    function DatabaseUnpackTo(const ToDir: WideString): WordBool; dispid 170;
    function DatabasePackAs(const AFileName: WideString): WordBool; dispid 171;
    function Purge: WordBool; dispid 172;
    procedure ClearInvalidIntegrityException; dispid 173;
    property Settings: TxSFDatasetSettings dispid 174;
    property RowCount: Integer readonly dispid 175;
    property ErrorMsgOfTask: WideString readonly dispid 176;
    property ErrorMsgOfUnknown: WideString readonly dispid 177;
    property EnableLog: WordBool dispid 178;
    property WorkPath: WideString readonly dispid 179;
    property DatabaseName: WideString dispid 180;
    property Options: TxSFDataSetOptions dispid 181;
    property FiledHashSize: TxSFDataSetFiledHashSize dispid 182;
    property PackedMode: WordBool dispid 183;
    property PurgeOnVoidSpace: TxPurgeOnVoidSpace dispid 184;
    procedure PreLoadHash; dispid 185;
    property ReadOnly: WordBool dispid 110;
    procedure DeleteClass(const AClassName: WideString); dispid 186;
    procedure AbortAllTask; dispid 123;
    function SimpleRoundTo(Value: Double; Digit: Integer): Double; dispid 187;
    function CalcExpr(const Sender: IBasicRow; FieldHandle: {NOT_OLEAUTO(TxFieldHandle)}OleVariant): OleVariant; dispid 188;
    function CalcExpress(const Sender: IBasicRow; const Expr: WideString): OleVariant; dispid 189;
    function VerifyExpress(const Sender: IBasicRow; const Expr: WideString; 
                           out RetExpr: WideString; out UsedItem: WideString): WordBool; dispid 190;
  end;

// *********************************************************************//
// Interface: ISGrid
// Flags:     (320) Dual OleAutomation
// GUID:      {A43488B9-B6BA-4663-8190-8EA2B3881041}
// *********************************************************************//
  ISGrid = interface(IUnknown)
    ['{A43488B9-B6BA-4663-8190-8EA2B3881041}']
    procedure InvalidateGrid; safecall;
    procedure InvalidRow(ARow: Integer); safecall;
    procedure Inn_ZoomRatioChanged; safecall;
    procedure Inn_ClearColumn; safecall;
    procedure Inn_BeforeNodeCollapsing(Index: Integer); safecall;
    procedure Inn_AfterNodeCollapsing(Index: Integer; Count: Integer); safecall;
    procedure Inn_BeforeNodeExpanding(Index: Integer); safecall;
    procedure Inn_AfterNodeExpanding(Index: Integer; Count: Integer); safecall;
    procedure Inn_AfterSetColTabStop(Col: Integer; Value: WordBool); safecall;
    procedure Inn_OnSetColLayout(var CanSet: WordBool); safecall;
    procedure Inn_OnSetColVisible(var CanSet: WordBool); safecall;
    procedure Inn_OnSetColWidth(var CanSet: WordBool); safecall;
    procedure Inn_AfterSetColumns; safecall;
    procedure Inn_BeforeBatchAdding; safecall;
    procedure Inn_AfterBatchAdding; safecall;
    function Get_VisibleRowCount: Integer; safecall;
    procedure UpdateRowHeight(ARow: Integer); safecall;
    procedure Inn_OnRowHeightsChanged; safecall;
    procedure HideInplaceEditor; safecall;
    procedure Inn_BeforeClearingView; safecall;
    procedure Inn_AfterClearingView; safecall;
    procedure Inn_BeforeItemDeleting(const AObj: IBasicRow); safecall;
    procedure Inn_AfterDeleteItem(DelIdx: Integer; DelCount: Integer; OrigRow: Integer; 
                                  DrawParentNodeBtn: WordBool); safecall;
    procedure Inn_AfterAddItem(OrigIdx: Integer; ParentIdx: Integer; AddCount: Integer); safecall;
    procedure Inn_AfterUnBind; safecall;
    procedure Inn_AfterBind; safecall;
    procedure Inn_AfterSetDataSet; safecall;
    function Get_IsDelphiControl: WordBool; safecall;
    function Get_IsDelphiDesignState: WordBool; safecall;
    function Get_IsDelphiLoadingState: WordBool; safecall;
    function Get_EventIntf: ISGridEvent; safecall;
    procedure SetEvent(const AEventIntf: ISGridEvent); safecall;
    procedure RegisterChildGrid(const AGrid: ISGrid); safecall;
    procedure UnRegisterChildGrid(const AGrid: ISGrid); safecall;
    procedure GetDrawParam(const FieldDef: ISRowField; const Obj: IBasicRow; 
                           const ColDef: ISColDef; GridCol: Integer; GridRow: Integer; 
                           out FontRec: TxFontRec; out BackParam: TxDrawBackParam); safecall;
    function Get_SelectList: ISelectList; safecall;
    function Get_Selected: IBasicRow; safecall;
    function Get_SelectedField: ISRowField; safecall;
    procedure Set_SelectedField(const Value: ISRowField); safecall;
    procedure Set_SelFieldByName(const Param1: WideString); safecall;
    function Get_SelColumn: Integer; safecall;
    procedure Set_SelColumn(Value: Integer); safecall;
    function Get_LockUpdate: WordBool; safecall;
    procedure Set_LockUpdate(Value: WordBool); safecall;
    function Locate(const AObj: IBasicRow): WordBool; safecall;
    function Get_SimpleShowField(const AObj: IBasicRow; ACol: Integer): ISRowField; safecall;
    function Get_DataView: ISDataView; safecall;
    function Get_PopupGrid: ISGrid; safecall;
    function Get_FocusRectColor: OLE_COLOR; safecall;
    procedure Set_FocusRectColor(Value: OLE_COLOR); safecall;
    function Get_DataSet: ISDataSet; safecall;
    procedure Set_DataSet(const Value: ISDataSet); safecall;
    function Get_ViewOptions: IViewOptions; safecall;
    function Get_Indent: Integer; safecall;
    procedure Set_Indent(Value: Integer); safecall;
    procedure SetImageListHandle(AHandle: OLE_HANDLE; Shared: WordBool); safecall;
    function GetImageListHandle: OLE_HANDLE; safecall;
    function Get_SelectedColor: Integer; safecall;
    procedure Set_SelectedColor(Value: Integer); safecall;
    function Get_ReadOnly: WordBool; safecall;
    procedure Set_ReadOnly(Value: WordBool); safecall;
    function Get_ReturnAsTab: WordBool; safecall;
    procedure Set_ReturnAsTab(Value: WordBool); safecall;
    function Get_AutoAdjColWidth: WordBool; safecall;
    procedure Set_AutoAdjColWidth(Value: WordBool); safecall;
    function Get_AutoAdjColFields: WideString; safecall;
    procedure Set_AutoAdjColFields(const Value: WideString); safecall;
    function Get_AutoAdjColMinWidth: Word; safecall;
    procedure Set_AutoAdjColMinWidth(Value: Word); safecall;
    function Get_AutoAdjustRowHeight: WordBool; safecall;
    procedure Set_AutoAdjustRowHeight(Value: WordBool); safecall;
    function Get_ShowOneLevel: WordBool; safecall;
    procedure Set_ShowOneLevel(Value: WordBool); safecall;
    function Get_FlatShow: WordBool; safecall;
    procedure Set_FlatShow(Value: WordBool); safecall;
    function Get_SimpleFieldShow: WordBool; safecall;
    procedure Set_SimpleFieldShow(Value: WordBool); safecall;
    function Get_MultiSelect: WordBool; safecall;
    procedure Set_MultiSelect(Value: WordBool); safecall;
    function ShowInplaceEditor: WordBool; safecall;
    function Get_IsEditing: WordBool; safecall;
    function Get_Options: LongWord; safecall;
    procedure Set_Options(Value: LongWord); safecall;
    function Get_Col: Integer; safecall;
    procedure Set_Col(Value: Integer); safecall;
    function Get_Row: Integer; safecall;
    procedure Set_Row(Value: Integer); safecall;
    function Get_LeftCol: Integer; safecall;
    procedure Set_LeftCol(Value: Integer); safecall;
    function Get_TopRow: Integer; safecall;
    procedure Set_TopRow(Value: Integer); safecall;
    function Get_EditorMode: WordBool; safecall;
    function Get_FixedDataCols: Integer; safecall;
    procedure Set_FixedDataCols(Value: Integer); safecall;
    procedure SetFocus; safecall;
    function Get_Handle: OLE_HANDLE; safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const Value: WideString); safecall;
    function Get_Tag: Integer; safecall;
    procedure Set_Tag(Value: Integer); safecall;
    function Get_FixedCellColor: Integer; safecall;
    procedure Set_FixedCellColor(Value: Integer); safecall;
    function Get_GridLineColor: Integer; safecall;
    procedure Set_GridLineColor(Value: Integer); safecall;
    function Get_NodeBtnStyle: TxNodeBtnKind; safecall;
    procedure Set_NodeBtnStyle(Value: TxNodeBtnKind); safecall;
    property VisibleRowCount: Integer read Get_VisibleRowCount;
    property IsDelphiControl: WordBool read Get_IsDelphiControl;
    property IsDelphiDesignState: WordBool read Get_IsDelphiDesignState;
    property IsDelphiLoadingState: WordBool read Get_IsDelphiLoadingState;
    property EventIntf: ISGridEvent read Get_EventIntf;
    property SelectList: ISelectList read Get_SelectList;
    property Selected: IBasicRow read Get_Selected;
    property SelectedField: ISRowField read Get_SelectedField write Set_SelectedField;
    property SelFieldByName: WideString write Set_SelFieldByName;
    property SelColumn: Integer read Get_SelColumn write Set_SelColumn;
    property LockUpdate: WordBool read Get_LockUpdate write Set_LockUpdate;
    property SimpleShowField[const AObj: IBasicRow; ACol: Integer]: ISRowField read Get_SimpleShowField;
    property DataView: ISDataView read Get_DataView;
    property PopupGrid: ISGrid read Get_PopupGrid;
    property FocusRectColor: OLE_COLOR read Get_FocusRectColor write Set_FocusRectColor;
    property DataSet: ISDataSet read Get_DataSet write Set_DataSet;
    property ViewOptions: IViewOptions read Get_ViewOptions;
    property Indent: Integer read Get_Indent write Set_Indent;
    property SelectedColor: Integer read Get_SelectedColor write Set_SelectedColor;
    property ReadOnly: WordBool read Get_ReadOnly write Set_ReadOnly;
    property ReturnAsTab: WordBool read Get_ReturnAsTab write Set_ReturnAsTab;
    property AutoAdjColWidth: WordBool read Get_AutoAdjColWidth write Set_AutoAdjColWidth;
    property AutoAdjColFields: WideString read Get_AutoAdjColFields write Set_AutoAdjColFields;
    property AutoAdjColMinWidth: Word read Get_AutoAdjColMinWidth write Set_AutoAdjColMinWidth;
    property AutoAdjustRowHeight: WordBool read Get_AutoAdjustRowHeight write Set_AutoAdjustRowHeight;
    property ShowOneLevel: WordBool read Get_ShowOneLevel write Set_ShowOneLevel;
    property FlatShow: WordBool read Get_FlatShow write Set_FlatShow;
    property SimpleFieldShow: WordBool read Get_SimpleFieldShow write Set_SimpleFieldShow;
    property MultiSelect: WordBool read Get_MultiSelect write Set_MultiSelect;
    property IsEditing: WordBool read Get_IsEditing;
    property Options: LongWord read Get_Options write Set_Options;
    property Col: Integer read Get_Col write Set_Col;
    property Row: Integer read Get_Row write Set_Row;
    property LeftCol: Integer read Get_LeftCol write Set_LeftCol;
    property TopRow: Integer read Get_TopRow write Set_TopRow;
    property EditorMode: WordBool read Get_EditorMode;
    property FixedDataCols: Integer read Get_FixedDataCols write Set_FixedDataCols;
    property Handle: OLE_HANDLE read Get_Handle;
    property Name: WideString read Get_Name write Set_Name;
    property Tag: Integer read Get_Tag write Set_Tag;
    property FixedCellColor: Integer read Get_FixedCellColor write Set_FixedCellColor;
    property GridLineColor: Integer read Get_GridLineColor write Set_GridLineColor;
    property NodeBtnStyle: TxNodeBtnKind read Get_NodeBtnStyle write Set_NodeBtnStyle;
  end;

// *********************************************************************//
// DispIntf:  ISGridDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {A43488B9-B6BA-4663-8190-8EA2B3881041}
// *********************************************************************//
  ISGridDisp = dispinterface
    ['{A43488B9-B6BA-4663-8190-8EA2B3881041}']
    procedure InvalidateGrid; dispid 96;
    procedure InvalidRow(ARow: Integer); dispid 97;
    procedure Inn_ZoomRatioChanged; dispid 98;
    procedure Inn_ClearColumn; dispid 99;
    procedure Inn_BeforeNodeCollapsing(Index: Integer); dispid 101;
    procedure Inn_AfterNodeCollapsing(Index: Integer; Count: Integer); dispid 102;
    procedure Inn_BeforeNodeExpanding(Index: Integer); dispid 103;
    procedure Inn_AfterNodeExpanding(Index: Integer; Count: Integer); dispid 104;
    procedure Inn_AfterSetColTabStop(Col: Integer; Value: WordBool); dispid 109;
    procedure Inn_OnSetColLayout(var CanSet: WordBool); dispid 110;
    procedure Inn_OnSetColVisible(var CanSet: WordBool); dispid 111;
    procedure Inn_OnSetColWidth(var CanSet: WordBool); dispid 112;
    procedure Inn_AfterSetColumns; dispid 113;
    procedure Inn_BeforeBatchAdding; dispid 114;
    procedure Inn_AfterBatchAdding; dispid 115;
    property VisibleRowCount: Integer readonly dispid 118;
    procedure UpdateRowHeight(ARow: Integer); dispid 119;
    procedure Inn_OnRowHeightsChanged; dispid 120;
    procedure HideInplaceEditor; dispid 122;
    procedure Inn_BeforeClearingView; dispid 123;
    procedure Inn_AfterClearingView; dispid 124;
    procedure Inn_BeforeItemDeleting(const AObj: IBasicRow); dispid 125;
    procedure Inn_AfterDeleteItem(DelIdx: Integer; DelCount: Integer; OrigRow: Integer; 
                                  DrawParentNodeBtn: WordBool); dispid 126;
    procedure Inn_AfterAddItem(OrigIdx: Integer; ParentIdx: Integer; AddCount: Integer); dispid 127;
    procedure Inn_AfterUnBind; dispid 128;
    procedure Inn_AfterBind; dispid 129;
    procedure Inn_AfterSetDataSet; dispid 130;
    property IsDelphiControl: WordBool readonly dispid 131;
    property IsDelphiDesignState: WordBool readonly dispid 132;
    property IsDelphiLoadingState: WordBool readonly dispid 133;
    property EventIntf: ISGridEvent readonly dispid 134;
    procedure SetEvent(const AEventIntf: ISGridEvent); dispid 135;
    procedure RegisterChildGrid(const AGrid: ISGrid); dispid 105;
    procedure UnRegisterChildGrid(const AGrid: ISGrid); dispid 106;
    procedure GetDrawParam(const FieldDef: ISRowField; const Obj: IBasicRow; 
                           const ColDef: ISColDef; GridCol: Integer; GridRow: Integer; 
                           out FontRec: {NOT_OLEAUTO(TxFontRec)}OleVariant; 
                           out BackParam: {NOT_OLEAUTO(TxDrawBackParam)}OleVariant); dispid 107;
    property SelectList: ISelectList readonly dispid 108;
    property Selected: IBasicRow readonly dispid 121;
    property SelectedField: ISRowField dispid 136;
    property SelFieldByName: WideString writeonly dispid 137;
    property SelColumn: Integer dispid 138;
    property LockUpdate: WordBool dispid 139;
    function Locate(const AObj: IBasicRow): WordBool; dispid 140;
    property SimpleShowField[const AObj: IBasicRow; ACol: Integer]: ISRowField readonly dispid 141;
    property DataView: ISDataView readonly dispid 142;
    property PopupGrid: ISGrid readonly dispid 143;
    property FocusRectColor: OLE_COLOR dispid 144;
    property DataSet: ISDataSet dispid 145;
    property ViewOptions: IViewOptions readonly dispid 146;
    property Indent: Integer dispid 147;
    procedure SetImageListHandle(AHandle: OLE_HANDLE; Shared: WordBool); dispid 148;
    function GetImageListHandle: OLE_HANDLE; dispid 149;
    property SelectedColor: Integer dispid 150;
    property ReadOnly: WordBool dispid 151;
    property ReturnAsTab: WordBool dispid 152;
    property AutoAdjColWidth: WordBool dispid 153;
    property AutoAdjColFields: WideString dispid 154;
    property AutoAdjColMinWidth: Word dispid 155;
    property AutoAdjustRowHeight: WordBool dispid 156;
    property ShowOneLevel: WordBool dispid 157;
    property FlatShow: WordBool dispid 158;
    property SimpleFieldShow: WordBool dispid 159;
    property MultiSelect: WordBool dispid 160;
    function ShowInplaceEditor: WordBool; dispid 161;
    property IsEditing: WordBool readonly dispid 162;
    property Options: LongWord dispid 163;
    property Col: Integer dispid 164;
    property Row: Integer dispid 116;
    property LeftCol: Integer dispid 117;
    property TopRow: Integer dispid 165;
    property EditorMode: WordBool readonly dispid 166;
    property FixedDataCols: Integer dispid 167;
    procedure SetFocus; dispid 168;
    property Handle: OLE_HANDLE readonly dispid 169;
    property Name: WideString dispid 170;
    property Tag: Integer dispid 171;
    property FixedCellColor: Integer dispid 172;
    property GridLineColor: Integer dispid 173;
    property NodeBtnStyle: TxNodeBtnKind dispid 174;
  end;

// *********************************************************************//
// Interface: IViewList
// Flags:     (320) Dual OleAutomation
// GUID:      {D9660F2E-C60D-49EA-B8C0-644F1DAAF43C}
// *********************************************************************//
  IViewList = interface(IUnknown)
    ['{D9660F2E-C60D-49EA-B8C0-644F1DAAF43C}']
    function CanAdd(const AItem: IBasicRow): WordBool; safecall;
    procedure AddItem(const AParent: IBasicRow; Index: Integer; RefPrior: Integer); safecall;
    function DeleteItem(const AParent: IBasicRow; const AItem: IBasicRow; IsMoveItem: WordBool): Integer; safecall;
    function Get_Items(Index: Integer): IBasicRow; safecall;
    function FindAItem(const AItem: IBasicRow; out AList: IViewDataList; OnlyVisible: WordBool): Integer; safecall;
    function Get_DataList: IViewDataList; safecall;
    procedure UpdateRowHeight(const AList: IViewDataList; Index: Integer); safecall;
    procedure UpdateClassRowHeight(const AClassDef: ISClass; const AList: IViewDataList); safecall;
    function ClearChildren(const AParent: IBasicRow; IsMoveItem: WordBool): Integer; safecall;
    procedure AddAllChildren(const AParent: IBasicRow); safecall;
    procedure ReFilterAItem(const AItem: IBasicRow); safecall;
    function Get_Count: Integer; safecall;
    function IndexOfVisibleItem(const AItem: IBasicRow): Integer; safecall;
    function Collapse(Index: Integer; Recurse: WordBool): Integer; safecall;
    function Expand(Index: Integer; Recurse: WordBool): Integer; safecall;
    property Items[Index: Integer]: IBasicRow read Get_Items;
    property DataList: IViewDataList read Get_DataList;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IViewListDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {D9660F2E-C60D-49EA-B8C0-644F1DAAF43C}
// *********************************************************************//
  IViewListDisp = dispinterface
    ['{D9660F2E-C60D-49EA-B8C0-644F1DAAF43C}']
    function CanAdd(const AItem: IBasicRow): WordBool; dispid 101;
    procedure AddItem(const AParent: IBasicRow; Index: Integer; RefPrior: Integer); dispid 102;
    function DeleteItem(const AParent: IBasicRow; const AItem: IBasicRow; IsMoveItem: WordBool): Integer; dispid 103;
    property Items[Index: Integer]: IBasicRow readonly dispid 104;
    function FindAItem(const AItem: IBasicRow; out AList: IViewDataList; OnlyVisible: WordBool): Integer; dispid 105;
    property DataList: IViewDataList readonly dispid 106;
    procedure UpdateRowHeight(const AList: IViewDataList; Index: Integer); dispid 107;
    procedure UpdateClassRowHeight(const AClassDef: ISClass; const AList: IViewDataList); dispid 108;
    function ClearChildren(const AParent: IBasicRow; IsMoveItem: WordBool): Integer; dispid 109;
    procedure AddAllChildren(const AParent: IBasicRow); dispid 110;
    procedure ReFilterAItem(const AItem: IBasicRow); dispid 111;
    property Count: Integer readonly dispid 112;
    function IndexOfVisibleItem(const AItem: IBasicRow): Integer; dispid 113;
    function Collapse(Index: Integer; Recurse: WordBool): Integer; dispid 114;
    function Expand(Index: Integer; Recurse: WordBool): Integer; dispid 115;
  end;

// *********************************************************************//
// Interface: ISColDef
// Flags:     (320) Dual OleAutomation
// GUID:      {D281FCAA-A430-4DDC-86DE-EEC7EA7C4C10}
// *********************************************************************//
  ISColDef = interface(IUnknown)
    ['{D281FCAA-A430-4DDC-86DE-EEC7EA7C4C10}']
    function GetFieldDefByClass(LayoutIndex: Integer; const AClass: ISClass): ISRowField; safecall;
    function Get_TabStop: WordBool; safecall;
    procedure Set_TabStop(Value: WordBool); safecall;
    function Get_LayoutCount: Integer; safecall;
    function Get_SubLayoutCount(Index: Integer): Integer; safecall;
    function Get_Caption: WideString; safecall;
    procedure Set_Caption(const Value: WideString); safecall;
    function Get_Font: TxFontRec; safecall;
    procedure Set_Font(Value: TxFontRec); safecall;
    function Get_Index: Integer; safecall;
    procedure Set_Index(Value: Integer); safecall;
    function Get_BindFields: WideString; safecall;
    procedure Set_BindFields(const Value: WideString); safecall;
    function Get_LayOut: WideString; safecall;
    procedure Set_LayOut(const Value: WideString); safecall;
    function Get_Visible: WordBool; safecall;
    procedure Set_Visible(Value: WordBool); safecall;
    function Get_Color: LongWord; safecall;
    procedure Set_Color(Value: LongWord); safecall;
    function Get_Width: Integer; safecall;
    procedure Set_Width(Value: Integer); safecall;
    function Get_GroupCaption: WideString; safecall;
    procedure Set_GroupCaption(const Value: WideString); safecall;
    function Get_Grouped: WordBool; safecall;
    procedure Set_Grouped(Value: WordBool); safecall;
    function Get_GroupFont: TxFontRec; safecall;
    procedure Set_GroupFont(Value: TxFontRec); safecall;
    function Get_GroupColor: Integer; safecall;
    procedure Set_GroupColor(Value: Integer); safecall;
    function Get_ColCountInGroup: Integer; safecall;
    function Get_GroupColumnNo: Integer; safecall;
    property TabStop: WordBool read Get_TabStop write Set_TabStop;
    property LayoutCount: Integer read Get_LayoutCount;
    property SubLayoutCount[Index: Integer]: Integer read Get_SubLayoutCount;
    property Caption: WideString read Get_Caption write Set_Caption;
    property Font: TxFontRec read Get_Font write Set_Font;
    property Index: Integer read Get_Index write Set_Index;
    property BindFields: WideString read Get_BindFields write Set_BindFields;
    property LayOut: WideString read Get_LayOut write Set_LayOut;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property Color: LongWord read Get_Color write Set_Color;
    property Width: Integer read Get_Width write Set_Width;
    property GroupCaption: WideString read Get_GroupCaption write Set_GroupCaption;
    property Grouped: WordBool read Get_Grouped write Set_Grouped;
    property GroupFont: TxFontRec read Get_GroupFont write Set_GroupFont;
    property GroupColor: Integer read Get_GroupColor write Set_GroupColor;
    property ColCountInGroup: Integer read Get_ColCountInGroup;
    property GroupColumnNo: Integer read Get_GroupColumnNo;
  end;

// *********************************************************************//
// DispIntf:  ISColDefDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {D281FCAA-A430-4DDC-86DE-EEC7EA7C4C10}
// *********************************************************************//
  ISColDefDisp = dispinterface
    ['{D281FCAA-A430-4DDC-86DE-EEC7EA7C4C10}']
    function GetFieldDefByClass(LayoutIndex: Integer; const AClass: ISClass): ISRowField; dispid 102;
    property TabStop: WordBool dispid 104;
    property LayoutCount: Integer readonly dispid 105;
    property SubLayoutCount[Index: Integer]: Integer readonly dispid 106;
    property Caption: WideString dispid 107;
    property Font: {NOT_OLEAUTO(TxFontRec)}OleVariant dispid 108;
    property Index: Integer dispid 109;
    property BindFields: WideString dispid 110;
    property LayOut: WideString dispid 111;
    property Visible: WordBool dispid 101;
    property Color: LongWord dispid 112;
    property Width: Integer dispid 103;
    property GroupCaption: WideString dispid 113;
    property Grouped: WordBool dispid 114;
    property GroupFont: {NOT_OLEAUTO(TxFontRec)}OleVariant dispid 115;
    property GroupColor: Integer dispid 116;
    property ColCountInGroup: Integer readonly dispid 117;
    property GroupColumnNo: Integer readonly dispid 118;
  end;

// *********************************************************************//
// Interface: ISColDefs
// Flags:     (320) Dual OleAutomation
// GUID:      {EF260F8E-3587-4D4A-84B7-355296885BF1}
// *********************************************************************//
  ISColDefs = interface(IUnknown)
    ['{EF260F8E-3587-4D4A-84B7-355296885BF1}']
    function Get_Items(Index: Integer): ISColDef; safecall;
    function Get_Count: Integer; safecall;
    function IndexOfBindFields(const BindF: WideString): Integer; safecall;
    function Add: ISColDef; safecall;
    function Insert(Index: Integer): ISColDef; safecall;
    function IndexOfItem(const AColDef: ISColDef): Integer; safecall;
    procedure Delete(Index: Integer); safecall;
    procedure Remove(const AColDef: ISColDef); safecall;
    procedure BeginUpdateItem; safecall;
    procedure EndUpdateItem; safecall;
    property Items[Index: Integer]: ISColDef read Get_Items;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  ISColDefsDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {EF260F8E-3587-4D4A-84B7-355296885BF1}
// *********************************************************************//
  ISColDefsDisp = dispinterface
    ['{EF260F8E-3587-4D4A-84B7-355296885BF1}']
    property Items[Index: Integer]: ISColDef readonly dispid 101;
    property Count: Integer readonly dispid 102;
    function IndexOfBindFields(const BindF: WideString): Integer; dispid 103;
    function Add: ISColDef; dispid 104;
    function Insert(Index: Integer): ISColDef; dispid 105;
    function IndexOfItem(const AColDef: ISColDef): Integer; dispid 106;
    procedure Delete(Index: Integer); dispid 107;
    procedure Remove(const AColDef: ISColDef); dispid 108;
    procedure BeginUpdateItem; dispid 109;
    procedure EndUpdateItem; dispid 110;
  end;

// *********************************************************************//
// Interface: IViewDataList
// Flags:     (320) Dual OleAutomation
// GUID:      {BE205DA5-8D5D-4A81-A11C-A72EF617898D}
// *********************************************************************//
  IViewDataList = interface(IUnknown)
    ['{BE205DA5-8D5D-4A81-A11C-A72EF617898D}']
    function Get_Heights(Index: Integer): Integer; safecall;
    procedure Set_Heights(Index: Integer; Value: Integer); safecall;
    function Get_Items(Index: Integer): IBasicRow; safecall;
    function Get_Branchs(Index: Integer): IViewDataList; safecall;
    function Get_Count: Integer; safecall;
    function Get_CountOfInheritors(Index: Integer): Integer; safecall;
    procedure WrapBatchDelete(FromIndex: Integer; ToIndex: Integer; FreeObj: Integer; 
                              ExtData: Integer); safecall;
    procedure DecCountOfInheritors(Index: Integer; DecCount: Integer); safecall;
    procedure IncCountOfInheritors(Index: Integer; IncCount: Integer); safecall;
    procedure InsertAItem(Index: Integer; const AItem: IBasicRow); safecall;
    procedure CreateBranch(Index: Integer); safecall;
    property Heights[Index: Integer]: Integer read Get_Heights write Set_Heights;
    property Items[Index: Integer]: IBasicRow read Get_Items;
    property Branchs[Index: Integer]: IViewDataList read Get_Branchs;
    property Count: Integer read Get_Count;
    property CountOfInheritors[Index: Integer]: Integer read Get_CountOfInheritors;
  end;

// *********************************************************************//
// DispIntf:  IViewDataListDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {BE205DA5-8D5D-4A81-A11C-A72EF617898D}
// *********************************************************************//
  IViewDataListDisp = dispinterface
    ['{BE205DA5-8D5D-4A81-A11C-A72EF617898D}']
    property Heights[Index: Integer]: Integer dispid 101;
    property Items[Index: Integer]: IBasicRow readonly dispid 102;
    property Branchs[Index: Integer]: IViewDataList readonly dispid 103;
    property Count: Integer readonly dispid 104;
    property CountOfInheritors[Index: Integer]: Integer readonly dispid 105;
    procedure WrapBatchDelete(FromIndex: Integer; ToIndex: Integer; FreeObj: Integer; 
                              ExtData: Integer); dispid 106;
    procedure DecCountOfInheritors(Index: Integer; DecCount: Integer); dispid 107;
    procedure IncCountOfInheritors(Index: Integer; IncCount: Integer); dispid 108;
    procedure InsertAItem(Index: Integer; const AItem: IBasicRow); dispid 110;
    procedure CreateBranch(Index: Integer); dispid 111;
  end;

// *********************************************************************//
// Interface: ISClass
// Flags:     (320) Dual OleAutomation
// GUID:      {0AC02BAB-C814-4D8A-B6DC-372F813588E2}
// *********************************************************************//
  ISClass = interface(IUnknown)
    ['{0AC02BAB-C814-4D8A-B6DC-372F813588E2}']
    function IndexOfField(const AFieldName: WideString): Integer; safecall;
    function Get_Fields(Index: Integer): ISRowField; safecall;
    function Get_FieldCount: Integer; safecall;
    function GetBindField(const AView: ISDataView; ADefCol: Integer): ISRowField; safecall;
    procedure SetEvent(const AIntf: ISClassEvent); safecall;
    function Get_EventIntf: ISClassEvent; safecall;
    function Get_FieldByName(const FldName: WideString): ISRowField; safecall;
    function Get_SortFieldList(Index: Integer): ISRowField; safecall;
    function Get_SortFieldCount: Integer; safecall;
    function Get_EditFields(Index: Integer): ISRowField; safecall;
    function Get_EditFieldCount: Integer; safecall;
    function Get_BlobFields(Index: Integer): ISRowField; safecall;
    function Get_BlobFieldCount: Integer; safecall;
    function Get_ObjCount: Integer; safecall;
    function Get_Active: WordBool; safecall;
    function Get_CustomId: Integer; safecall;
    procedure Set_CustomId(Value: Integer); safecall;
    function Get_DefName: WideString; safecall;
    procedure Set_DefName(const Value: WideString); safecall;
    function Get_Font: TxFontRec; safecall;
    procedure Set_Font(Value: TxFontRec); safecall;
    function Get_Color: Integer; safecall;
    procedure Set_Color(Value: Integer); safecall;
    function Get_Caption: WideString; safecall;
    procedure Set_Caption(const Value: WideString); safecall;
    function Get_ModuleId: Integer; safecall;
    procedure Set_ModuleId(Value: Integer); safecall;
    function Get_DataSet: ISDataSet; safecall;
    function Get_Tag: Integer; safecall;
    procedure Set_Tag(Value: Integer); safecall;
    function Get_StrTag: WideString; safecall;
    procedure Set_StrTag(const Value: WideString); safecall;
    function Get_SortFields: WideString; safecall;
    procedure Set_SortFields(const Value: WideString); safecall;
    function CreateField(AFldType: TxFieldType; AFldOption: TxFieldOption; 
                         const AFldName: WideString; const AFldCaption: WideString; AFldLen: Integer): ISRowField; safecall;
    function FieldTypeEnabled(AType: TxFieldType): WordBool; safecall;
    procedure SetDispFormat(AFormat: TxCellFormat); safecall;
    function GetDispFormat(const AFld: ISRowField; out AFormat: TxCellFormat): WordBool; safecall;
    procedure DeleteDispFormat(const AFld: ISRowField); safecall;
    procedure DeleteAllDispFormat; safecall;
    function Get_ClassId: Word; safecall;
    function Get_RowCount: Integer; safecall;
    function Get_DataFileName: WideString; safecall;
    function Get_SFClassType: TxSFClassType; safecall;
    procedure Set_SFClassType(Value: TxSFClassType); safecall;
    function Get_KeyField: WideString; safecall;
    procedure Set_KeyField(const Value: WideString); safecall;
    function Get_AutoFilterFields: WideString; safecall;
    procedure Set_AutoFilterFields(const Value: WideString); safecall;
    function Get_IsTaskRoot: WordBool; safecall;
    procedure Set_IsTaskRoot(Value: WordBool); safecall;
    function Get_DataSize: Word; safecall;
    function Get_ChunkCapacity: LongWord; safecall;
    procedure Set_ChunkCapacity(Value: LongWord); safecall;
    function Get_SkipLog: WordBool; safecall;
    procedure Set_SkipLog(Value: WordBool); safecall;
    function Get_SortOption: WideString; safecall;
    procedure Set_SortOption(const Value: WideString); safecall;
    function Get_ForeignKeyFields: WideString; safecall;
    procedure Set_ForeignKeyFields(const Value: WideString); safecall;
    procedure DeleteField(const AFieldName: WideString); safecall;
    function Get_TaskSequence: Word; safecall;
    procedure Set_TaskSequence(Value: Word); safecall;
    function Get_CachedAST: WordBool; safecall;
    procedure Set_CachedAST(Value: WordBool); safecall;
    function Get_GlobalChildrenOrderNo: WordBool; safecall;
    procedure Set_GlobalChildrenOrderNo(Value: WordBool); safecall;
    function Get_GCONSkipBlank: WordBool; safecall;
    procedure Set_GCONSkipBlank(Value: WordBool); safecall;
    property Fields[Index: Integer]: ISRowField read Get_Fields;
    property FieldCount: Integer read Get_FieldCount;
    property EventIntf: ISClassEvent read Get_EventIntf;
    property FieldByName[const FldName: WideString]: ISRowField read Get_FieldByName;
    property SortFieldList[Index: Integer]: ISRowField read Get_SortFieldList;
    property SortFieldCount: Integer read Get_SortFieldCount;
    property EditFields[Index: Integer]: ISRowField read Get_EditFields;
    property EditFieldCount: Integer read Get_EditFieldCount;
    property BlobFields[Index: Integer]: ISRowField read Get_BlobFields;
    property BlobFieldCount: Integer read Get_BlobFieldCount;
    property ObjCount: Integer read Get_ObjCount;
    property Active: WordBool read Get_Active;
    property CustomId: Integer read Get_CustomId write Set_CustomId;
    property DefName: WideString read Get_DefName write Set_DefName;
    property Font: TxFontRec read Get_Font write Set_Font;
    property Color: Integer read Get_Color write Set_Color;
    property Caption: WideString read Get_Caption write Set_Caption;
    property ModuleId: Integer read Get_ModuleId write Set_ModuleId;
    property DataSet: ISDataSet read Get_DataSet;
    property Tag: Integer read Get_Tag write Set_Tag;
    property StrTag: WideString read Get_StrTag write Set_StrTag;
    property SortFields: WideString read Get_SortFields write Set_SortFields;
    property ClassId: Word read Get_ClassId;
    property RowCount: Integer read Get_RowCount;
    property DataFileName: WideString read Get_DataFileName;
    property SFClassType: TxSFClassType read Get_SFClassType write Set_SFClassType;
    property KeyField: WideString read Get_KeyField write Set_KeyField;
    property AutoFilterFields: WideString read Get_AutoFilterFields write Set_AutoFilterFields;
    property IsTaskRoot: WordBool read Get_IsTaskRoot write Set_IsTaskRoot;
    property DataSize: Word read Get_DataSize;
    property ChunkCapacity: LongWord read Get_ChunkCapacity write Set_ChunkCapacity;
    property SkipLog: WordBool read Get_SkipLog write Set_SkipLog;
    property SortOption: WideString read Get_SortOption write Set_SortOption;
    property ForeignKeyFields: WideString read Get_ForeignKeyFields write Set_ForeignKeyFields;
    property TaskSequence: Word read Get_TaskSequence write Set_TaskSequence;
    property CachedAST: WordBool read Get_CachedAST write Set_CachedAST;
    property GlobalChildrenOrderNo: WordBool read Get_GlobalChildrenOrderNo write Set_GlobalChildrenOrderNo;
    property GCONSkipBlank: WordBool read Get_GCONSkipBlank write Set_GCONSkipBlank;
  end;

// *********************************************************************//
// DispIntf:  ISClassDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {0AC02BAB-C814-4D8A-B6DC-372F813588E2}
// *********************************************************************//
  ISClassDisp = dispinterface
    ['{0AC02BAB-C814-4D8A-B6DC-372F813588E2}']
    function IndexOfField(const AFieldName: WideString): Integer; dispid 101;
    property Fields[Index: Integer]: ISRowField readonly dispid 102;
    property FieldCount: Integer readonly dispid 104;
    function GetBindField(const AView: ISDataView; ADefCol: Integer): ISRowField; dispid 106;
    procedure SetEvent(const AIntf: ISClassEvent); dispid 107;
    property EventIntf: ISClassEvent readonly dispid 108;
    property FieldByName[const FldName: WideString]: ISRowField readonly dispid 109;
    property SortFieldList[Index: Integer]: ISRowField readonly dispid 110;
    property SortFieldCount: Integer readonly dispid 111;
    property EditFields[Index: Integer]: ISRowField readonly dispid 112;
    property EditFieldCount: Integer readonly dispid 113;
    property BlobFields[Index: Integer]: ISRowField readonly dispid 114;
    property BlobFieldCount: Integer readonly dispid 115;
    property ObjCount: Integer readonly dispid 116;
    property Active: WordBool readonly dispid 117;
    property CustomId: Integer dispid 118;
    property DefName: WideString dispid 103;
    property Font: {NOT_OLEAUTO(TxFontRec)}OleVariant dispid 119;
    property Color: Integer dispid 120;
    property Caption: WideString dispid 121;
    property ModuleId: Integer dispid 105;
    property DataSet: ISDataSet readonly dispid 122;
    property Tag: Integer dispid 123;
    property StrTag: WideString dispid 124;
    property SortFields: WideString dispid 125;
    function CreateField(AFldType: TxFieldType; AFldOption: TxFieldOption; 
                         const AFldName: WideString; const AFldCaption: WideString; AFldLen: Integer): ISRowField; dispid 126;
    function FieldTypeEnabled(AType: TxFieldType): WordBool; dispid 127;
    procedure SetDispFormat(AFormat: {NOT_OLEAUTO(TxCellFormat)}OleVariant); dispid 128;
    function GetDispFormat(const AFld: ISRowField; 
                           out AFormat: {NOT_OLEAUTO(TxCellFormat)}OleVariant): WordBool; dispid 129;
    procedure DeleteDispFormat(const AFld: ISRowField); dispid 130;
    procedure DeleteAllDispFormat; dispid 131;
    property ClassId: Word readonly dispid 132;
    property RowCount: Integer readonly dispid 133;
    property DataFileName: WideString readonly dispid 135;
    property SFClassType: TxSFClassType dispid 136;
    property KeyField: WideString dispid 137;
    property AutoFilterFields: WideString dispid 138;
    property IsTaskRoot: WordBool dispid 139;
    property DataSize: Word readonly dispid 140;
    property ChunkCapacity: LongWord dispid 141;
    property SkipLog: WordBool dispid 143;
    property SortOption: WideString dispid 142;
    property ForeignKeyFields: WideString dispid 145;
    procedure DeleteField(const AFieldName: WideString); dispid 144;
    property TaskSequence: Word dispid 134;
    property CachedAST: WordBool dispid 146;
    property GlobalChildrenOrderNo: WordBool dispid 147;
    property GCONSkipBlank: WordBool dispid 148;
  end;

// *********************************************************************//
// Interface: ISRowField
// Flags:     (320) Dual OleAutomation
// GUID:      {909C6EA8-FF27-45D6-AFFD-02AD3E10EA99}
// *********************************************************************//
  ISRowField = interface(IUnknown)
    ['{909C6EA8-FF27-45D6-AFFD-02AD3E10EA99}']
    function Get_DefClass: ISClass; safecall;
    function Get_CheckBoxItems: ICheckBoxItems; safecall;
    function Get_FieldKind: TxFieldKind; safecall;
    function Get_CheckBoxCentered: WordBool; safecall;
    procedure Set_CheckBoxCentered(Value: WordBool); safecall;
    function Get_CheckBoxVisible: WordBool; safecall;
    procedure Set_CheckBoxVisible(Value: WordBool); safecall;
    procedure SetEvent(const AIntf: ISRowFieldEvent); safecall;
    function IsValidValue(AValue: OleVariant): WordBool; safecall;
    function Get_EventIntf: ISRowFieldEvent; safecall;
    function Get_IsSortField: WordBool; safecall;
    function Get_EditIndex: Integer; safecall;
    function Get_Active: WordBool; safecall;
    function Get_CustomId: Integer; safecall;
    procedure Set_CustomId(Value: Integer); safecall;
    function Get_ModuleId: Word; safecall;
    procedure Set_ModuleId(Value: Word); safecall;
    function Get_Font: TxFontRec; safecall;
    procedure Set_Font(Value: TxFontRec); safecall;
    function Get_BackParam: TxDrawBackParam; safecall;
    procedure Set_BackParam(Value: TxDrawBackParam); safecall;
    function Get_FieldType: TxFieldType; safecall;
    procedure Set_FieldType(Value: TxFieldType); safecall;
    function Get_FieldOption: TxFieldOption; safecall;
    procedure Set_FieldOption(Value: TxFieldOption); safecall;
    function Get_EditStyle: TxEditStyle; safecall;
    procedure Set_EditStyle(Value: TxEditStyle); safecall;
    function Get_EditLimit: Word; safecall;
    procedure Set_EditLimit(Value: Word); safecall;
    function Get_NoDrawZeroValue: WordBool; safecall;
    procedure Set_NoDrawZeroValue(Value: WordBool); safecall;
    function Get_FieldName: WideString; safecall;
    procedure Set_FieldName(const Value: WideString); safecall;
    function Get_Caption: WideString; safecall;
    procedure Set_Caption(const Value: WideString); safecall;
    function Get_DisplayFormat: WideString; safecall;
    procedure Set_DisplayFormat(const Value: WideString); safecall;
    function Get_Tag: Integer; safecall;
    procedure Set_Tag(Value: Integer); safecall;
    function Get_StrTag: WideString; safecall;
    procedure Set_StrTag(const Value: WideString); safecall;
    function Get_WordWrap: WordBool; safecall;
    procedure Set_WordWrap(Value: WordBool); safecall;
    function Get_RadioCheckbox: WordBool; safecall;
    procedure Set_RadioCheckbox(Value: WordBool); safecall;
    function Get_IsKeyField: WordBool; safecall;
    function Get_IsAutoFilterField: WordBool; safecall;
    function Get_NullValue: OleVariant; safecall;
    function Get_Length: Word; safecall;
    procedure Set_Length(Value: Word); safecall;
    function Get_DataSize: Word; safecall;
    function Get_DefaultValue: OleVariant; safecall;
    procedure Set_DefaultValue(Value: OleVariant); safecall;
    function Get_LookupKeyField: WideString; safecall;
    procedure Set_LookupKeyField(const Value: WideString); safecall;
    function Get_LookupResultFields: WideString; safecall;
    procedure Set_LookupResultFields(const Value: WideString); safecall;
    function Get_IsNotifySender: WordBool; safecall;
    procedure Set_IsNotifySender(Value: WordBool); safecall;
    function Get_IsTaskSender: WordBool; safecall;
    procedure Set_IsTaskSender(Value: WordBool); safecall;
    function Get_IsTaskReceiver: WordBool; safecall;
    procedure Set_IsTaskReceiver(Value: WordBool); safecall;
    function Get_IsForeignKeyField: WordBool; safecall;
    function Get_TaskSequence: Word; safecall;
    procedure Set_TaskSequence(Value: Word); safecall;
    function Get_AggClassName: WideString; safecall;
    procedure Set_AggClassName(const Value: WideString); safecall;
    property DefClass: ISClass read Get_DefClass;
    property CheckBoxItems: ICheckBoxItems read Get_CheckBoxItems;
    property FieldKind: TxFieldKind read Get_FieldKind;
    property CheckBoxCentered: WordBool read Get_CheckBoxCentered write Set_CheckBoxCentered;
    property CheckBoxVisible: WordBool read Get_CheckBoxVisible write Set_CheckBoxVisible;
    property EventIntf: ISRowFieldEvent read Get_EventIntf;
    property IsSortField: WordBool read Get_IsSortField;
    property EditIndex: Integer read Get_EditIndex;
    property Active: WordBool read Get_Active;
    property CustomId: Integer read Get_CustomId write Set_CustomId;
    property ModuleId: Word read Get_ModuleId write Set_ModuleId;
    property Font: TxFontRec read Get_Font write Set_Font;
    property BackParam: TxDrawBackParam read Get_BackParam write Set_BackParam;
    property FieldType: TxFieldType read Get_FieldType write Set_FieldType;
    property FieldOption: TxFieldOption read Get_FieldOption write Set_FieldOption;
    property EditStyle: TxEditStyle read Get_EditStyle write Set_EditStyle;
    property EditLimit: Word read Get_EditLimit write Set_EditLimit;
    property NoDrawZeroValue: WordBool read Get_NoDrawZeroValue write Set_NoDrawZeroValue;
    property FieldName: WideString read Get_FieldName write Set_FieldName;
    property Caption: WideString read Get_Caption write Set_Caption;
    property DisplayFormat: WideString read Get_DisplayFormat write Set_DisplayFormat;
    property Tag: Integer read Get_Tag write Set_Tag;
    property StrTag: WideString read Get_StrTag write Set_StrTag;
    property WordWrap: WordBool read Get_WordWrap write Set_WordWrap;
    property RadioCheckbox: WordBool read Get_RadioCheckbox write Set_RadioCheckbox;
    property IsKeyField: WordBool read Get_IsKeyField;
    property IsAutoFilterField: WordBool read Get_IsAutoFilterField;
    property NullValue: OleVariant read Get_NullValue;
    property Length: Word read Get_Length write Set_Length;
    property DataSize: Word read Get_DataSize;
    property DefaultValue: OleVariant read Get_DefaultValue write Set_DefaultValue;
    property LookupKeyField: WideString read Get_LookupKeyField write Set_LookupKeyField;
    property LookupResultFields: WideString read Get_LookupResultFields write Set_LookupResultFields;
    property IsNotifySender: WordBool read Get_IsNotifySender write Set_IsNotifySender;
    property IsTaskSender: WordBool read Get_IsTaskSender write Set_IsTaskSender;
    property IsTaskReceiver: WordBool read Get_IsTaskReceiver write Set_IsTaskReceiver;
    property IsForeignKeyField: WordBool read Get_IsForeignKeyField;
    property TaskSequence: Word read Get_TaskSequence write Set_TaskSequence;
    property AggClassName: WideString read Get_AggClassName write Set_AggClassName;
  end;

// *********************************************************************//
// DispIntf:  ISRowFieldDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {909C6EA8-FF27-45D6-AFFD-02AD3E10EA99}
// *********************************************************************//
  ISRowFieldDisp = dispinterface
    ['{909C6EA8-FF27-45D6-AFFD-02AD3E10EA99}']
    property DefClass: ISClass readonly dispid 101;
    property CheckBoxItems: ICheckBoxItems readonly dispid 104;
    property FieldKind: TxFieldKind readonly dispid 108;
    property CheckBoxCentered: WordBool dispid 102;
    property CheckBoxVisible: WordBool dispid 112;
    procedure SetEvent(const AIntf: ISRowFieldEvent); dispid 114;
    function IsValidValue(AValue: OleVariant): WordBool; dispid 115;
    property EventIntf: ISRowFieldEvent readonly dispid 116;
    property IsSortField: WordBool readonly dispid 117;
    property EditIndex: Integer readonly dispid 118;
    property Active: WordBool readonly dispid 119;
    property CustomId: Integer dispid 120;
    property ModuleId: Word dispid 121;
    property Font: {NOT_OLEAUTO(TxFontRec)}OleVariant dispid 122;
    property BackParam: {NOT_OLEAUTO(TxDrawBackParam)}OleVariant dispid 123;
    property FieldType: TxFieldType dispid 124;
    property FieldOption: TxFieldOption dispid 126;
    property EditStyle: TxEditStyle dispid 127;
    property EditLimit: Word dispid 128;
    property NoDrawZeroValue: WordBool dispid 129;
    property FieldName: WideString dispid 103;
    property Caption: WideString dispid 105;
    property DisplayFormat: WideString dispid 107;
    property Tag: Integer dispid 109;
    property StrTag: WideString dispid 110;
    property WordWrap: WordBool dispid 106;
    property RadioCheckbox: WordBool dispid 111;
    property IsKeyField: WordBool readonly dispid 130;
    property IsAutoFilterField: WordBool readonly dispid 131;
    property NullValue: OleVariant readonly dispid 132;
    property Length: Word dispid 133;
    property DataSize: Word readonly dispid 134;
    property DefaultValue: OleVariant dispid 135;
    property LookupKeyField: WideString dispid 136;
    property LookupResultFields: WideString dispid 137;
    property IsNotifySender: WordBool dispid 138;
    property IsTaskSender: WordBool dispid 139;
    property IsTaskReceiver: WordBool dispid 140;
    property IsForeignKeyField: WordBool readonly dispid 113;
    property TaskSequence: Word dispid 141;
    property AggClassName: WideString dispid 125;
  end;

// *********************************************************************//
// Interface: ISClassList
// Flags:     (320) Dual OleAutomation
// GUID:      {85919436-06A4-4DAC-A97C-6E5CE91E21F6}
// *********************************************************************//
  ISClassList = interface(IUnknown)
    ['{85919436-06A4-4DAC-A97C-6E5CE91E21F6}']
    function Get_Items(Index: Integer): ISClass; safecall;
    function Get_Count: Integer; safecall;
    function IndexOfClassName(const AClassDefName: WideString): Integer; safecall;
    function IndexOfClass(const AClassDef: ISClass): Integer; safecall;
    property Items[Index: Integer]: ISClass read Get_Items;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  ISClassListDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {85919436-06A4-4DAC-A97C-6E5CE91E21F6}
// *********************************************************************//
  ISClassListDisp = dispinterface
    ['{85919436-06A4-4DAC-A97C-6E5CE91E21F6}']
    property Items[Index: Integer]: ISClass readonly dispid 101;
    property Count: Integer readonly dispid 102;
    function IndexOfClassName(const AClassDefName: WideString): Integer; dispid 103;
    function IndexOfClass(const AClassDef: ISClass): Integer; dispid 104;
  end;

// *********************************************************************//
// Interface: ICheckBoxItems
// Flags:     (320) Dual OleAutomation
// GUID:      {A45D1D64-F998-443B-B64C-D53422753996}
// *********************************************************************//
  ICheckBoxItems = interface(IUnknown)
    ['{A45D1D64-F998-443B-B64C-D53422753996}']
    function Get_Count: Integer; safecall;
    function Get_Enableds(const AItem: IBasicRow; Index: Integer): WordBool; safecall;
    function Get_Captions(Index: Integer): WideString; safecall;
    function Get_FontColors(Index: Integer): Integer; safecall;
    function Get_Values(Index: Integer; const AItem: IBasicRow): WordBool; safecall;
    procedure Set_Values(Index: Integer; const AItem: IBasicRow; Value: WordBool); safecall;
    function Get_Visible(const AItem: IBasicRow): WordBool; safecall;
    function AddItem: Integer; safecall;
    procedure InsertItem(AIndex: Integer); safecall;
    procedure DeleteItem(AIndex: Integer); safecall;
    property Count: Integer read Get_Count;
    property Enableds[const AItem: IBasicRow; Index: Integer]: WordBool read Get_Enableds;
    property Captions[Index: Integer]: WideString read Get_Captions;
    property FontColors[Index: Integer]: Integer read Get_FontColors;
    property Values[Index: Integer; const AItem: IBasicRow]: WordBool read Get_Values write Set_Values;
    property Visible[const AItem: IBasicRow]: WordBool read Get_Visible;
  end;

// *********************************************************************//
// DispIntf:  ICheckBoxItemsDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {A45D1D64-F998-443B-B64C-D53422753996}
// *********************************************************************//
  ICheckBoxItemsDisp = dispinterface
    ['{A45D1D64-F998-443B-B64C-D53422753996}']
    property Count: Integer readonly dispid 101;
    property Enableds[const AItem: IBasicRow; Index: Integer]: WordBool readonly dispid 102;
    property Captions[Index: Integer]: WideString readonly dispid 104;
    property FontColors[Index: Integer]: Integer readonly dispid 105;
    property Values[Index: Integer; const AItem: IBasicRow]: WordBool dispid 103;
    property Visible[const AItem: IBasicRow]: WordBool readonly dispid 106;
    function AddItem: Integer; dispid 107;
    procedure InsertItem(AIndex: Integer); dispid 108;
    procedure DeleteItem(AIndex: Integer); dispid 109;
  end;

// *********************************************************************//
// Interface: ISDataView
// Flags:     (320) Dual OleAutomation
// GUID:      {FF28D8F8-89CF-439B-9FAA-5DDCACD1A806}
// *********************************************************************//
  ISDataView = interface(IUnknown)
    ['{FF28D8F8-89CF-439B-9FAA-5DDCACD1A806}']
    function Get_LevelParent: IBasicRow; safecall;
    procedure Set_LevelParent(const Value: IBasicRow); safecall;
    function Get_DataSet: ISDataSet; safecall;
    procedure Set_DataSet(const Value: ISDataSet); safecall;
    function Get_AutoReFilter: WordBool; safecall;
    procedure Set_AutoReFilter(Value: WordBool); safecall;
    function Get_ViewList: IViewList; safecall;
    function Get_Grid: ISGrid; safecall;
    function Get_Index: Integer; safecall;
    function Get_Id: Int64; safecall;
    function Get_ColDefs: ISColDefs; safecall;
    function Get_Columns: ISColumns; safecall;
    function Get_HaveLevelParent: WordBool; safecall;
    procedure Set_HaveLevelParent(Value: WordBool); safecall;
    function Get_LevelParentAsRoot: WordBool; safecall;
    procedure Set_LevelParentAsRoot(Value: WordBool); safecall;
    procedure ClearView(ClearLevelParent: WordBool); safecall;
    function Get_LevelFrom: Integer; safecall;
    procedure ColWidthsChanged(ACol: Integer; AWidth: Integer; Interaction: WordBool); safecall;
    function Get_AutoAdjustRowHeight: WordBool; safecall;
    procedure Set_AutoAdjustRowHeight(Value: WordBool); safecall;
    function Locate(const AItem: IBasicRow; out Index: Integer): WordBool; safecall;
    function Get_Expanded(Index: Integer): WordBool; safecall;
    procedure ResetAllRowHeights; safecall;
    function Get_ShowOneLevel: WordBool; safecall;
    procedure Set_ShowOneLevel(Value: WordBool); safecall;
    function Get_ShowWithoutStruct: WordBool; safecall;
    procedure Set_ShowWithoutStruct(Value: WordBool); safecall;
    procedure RowNotify(const AObj: IBasicRow); safecall;
    procedure Refresh; safecall;
    function Get_ZoomRatio: Double; safecall;
    procedure Set_ZoomRatio(Value: Double); safecall;
    function GetZoomFontHeight(AHeight: Integer): Integer; safecall;
    property LevelParent: IBasicRow read Get_LevelParent write Set_LevelParent;
    property DataSet: ISDataSet read Get_DataSet write Set_DataSet;
    property AutoReFilter: WordBool read Get_AutoReFilter write Set_AutoReFilter;
    property ViewList: IViewList read Get_ViewList;
    property Grid: ISGrid read Get_Grid;
    property Index: Integer read Get_Index;
    property Id: Int64 read Get_Id;
    property ColDefs: ISColDefs read Get_ColDefs;
    property Columns: ISColumns read Get_Columns;
    property HaveLevelParent: WordBool read Get_HaveLevelParent write Set_HaveLevelParent;
    property LevelParentAsRoot: WordBool read Get_LevelParentAsRoot write Set_LevelParentAsRoot;
    property LevelFrom: Integer read Get_LevelFrom;
    property AutoAdjustRowHeight: WordBool read Get_AutoAdjustRowHeight write Set_AutoAdjustRowHeight;
    property Expanded[Index: Integer]: WordBool read Get_Expanded;
    property ShowOneLevel: WordBool read Get_ShowOneLevel write Set_ShowOneLevel;
    property ShowWithoutStruct: WordBool read Get_ShowWithoutStruct write Set_ShowWithoutStruct;
    property ZoomRatio: Double read Get_ZoomRatio write Set_ZoomRatio;
  end;

// *********************************************************************//
// DispIntf:  ISDataViewDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {FF28D8F8-89CF-439B-9FAA-5DDCACD1A806}
// *********************************************************************//
  ISDataViewDisp = dispinterface
    ['{FF28D8F8-89CF-439B-9FAA-5DDCACD1A806}']
    property LevelParent: IBasicRow dispid 101;
    property DataSet: ISDataSet dispid 102;
    property AutoReFilter: WordBool dispid 103;
    property ViewList: IViewList readonly dispid 104;
    property Grid: ISGrid readonly dispid 105;
    property Index: Integer readonly dispid 106;
    property Id: Int64 readonly dispid 107;
    property ColDefs: ISColDefs readonly dispid 108;
    property Columns: ISColumns readonly dispid 109;
    property HaveLevelParent: WordBool dispid 110;
    property LevelParentAsRoot: WordBool dispid 111;
    procedure ClearView(ClearLevelParent: WordBool); dispid 112;
    property LevelFrom: Integer readonly dispid 113;
    procedure ColWidthsChanged(ACol: Integer; AWidth: Integer; Interaction: WordBool); dispid 115;
    property AutoAdjustRowHeight: WordBool dispid 116;
    function Locate(const AItem: IBasicRow; out Index: Integer): WordBool; dispid 117;
    property Expanded[Index: Integer]: WordBool readonly dispid 118;
    procedure ResetAllRowHeights; dispid 119;
    property ShowOneLevel: WordBool dispid 120;
    property ShowWithoutStruct: WordBool dispid 121;
    procedure RowNotify(const AObj: IBasicRow); dispid 122;
    procedure Refresh; dispid 123;
    property ZoomRatio: Double dispid 114;
    function GetZoomFontHeight(AHeight: Integer): Integer; dispid 124;
  end;

// *********************************************************************//
// Interface: ISColumn
// Flags:     (320) Dual OleAutomation
// GUID:      {7D6E2860-F42D-4F4B-BFD9-9395B40ACFBD}
// *********************************************************************//
  ISColumn = interface(IUnknown)
    ['{7D6E2860-F42D-4F4B-BFD9-9395B40ACFBD}']
    function Get_DefCol: Integer; safecall;
    property DefCol: Integer read Get_DefCol;
  end;

// *********************************************************************//
// DispIntf:  ISColumnDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {7D6E2860-F42D-4F4B-BFD9-9395B40ACFBD}
// *********************************************************************//
  ISColumnDisp = dispinterface
    ['{7D6E2860-F42D-4F4B-BFD9-9395B40ACFBD}']
    property DefCol: Integer readonly dispid 101;
  end;

// *********************************************************************//
// Interface: ISColumns
// Flags:     (320) Dual OleAutomation
// GUID:      {604A84CD-B5B5-4440-BA14-4E66AE008F0D}
// *********************************************************************//
  ISColumns = interface(IUnknown)
    ['{604A84CD-B5B5-4440-BA14-4E66AE008F0D}']
    function Get_Count: Integer; safecall;
    function Get_Items(Index: Integer): ISColumn; safecall;
    function Get_IndexOfColDef(AColDef: Integer): Integer; safecall;
    property Count: Integer read Get_Count;
    property Items[Index: Integer]: ISColumn read Get_Items;
    property IndexOfColDef[AColDef: Integer]: Integer read Get_IndexOfColDef;
  end;

// *********************************************************************//
// DispIntf:  ISColumnsDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {604A84CD-B5B5-4440-BA14-4E66AE008F0D}
// *********************************************************************//
  ISColumnsDisp = dispinterface
    ['{604A84CD-B5B5-4440-BA14-4E66AE008F0D}']
    property Count: Integer readonly dispid 101;
    property Items[Index: Integer]: ISColumn readonly dispid 102;
    property IndexOfColDef[AColDef: Integer]: Integer readonly dispid 103;
  end;

// *********************************************************************//
// Interface: ISEditParam
// Flags:     (320) Dual OleAutomation
// GUID:      {C075A4BF-19CC-4404-9896-016DEAA32EE4}
// *********************************************************************//
  ISEditParam = interface(IUnknown)
    ['{C075A4BF-19CC-4404-9896-016DEAA32EE4}']
    procedure SetEditValue(const AObj: IBasicRow; const AField: ISRowField; const AValue: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  ISEditParamDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {C075A4BF-19CC-4404-9896-016DEAA32EE4}
// *********************************************************************//
  ISEditParamDisp = dispinterface
    ['{C075A4BF-19CC-4404-9896-016DEAA32EE4}']
    procedure SetEditValue(const AObj: IBasicRow; const AField: ISRowField; const AValue: WideString); dispid 101;
  end;

// *********************************************************************//
// Interface: ISCommandMgr
// Flags:     (320) Dual OleAutomation
// GUID:      {99C9FC55-9FED-4484-9D6B-2BB6368FCBEC}
// *********************************************************************//
  ISCommandMgr = interface(IUnknown)
    ['{99C9FC55-9FED-4484-9D6B-2BB6368FCBEC}']
    function CanUndo: WordBool; safecall;
    function CanRedo: WordBool; safecall;
    function Undo: WordBool; safecall;
    function Redo: WordBool; safecall;
    function StartCommand(const ACaption: WideString; const AParam: ISCommandParam; 
                          ExtData: OLE_HANDLE): WordBool; safecall;
    function Get_UndoRedoLimit: Integer; safecall;
    procedure SetEvent(const AIntf: ISCommandMgrEvent); safecall;
    function Execute(const AParam: ISCommandParam): WordBool; safecall;
    property UndoRedoLimit: Integer read Get_UndoRedoLimit;
  end;

// *********************************************************************//
// DispIntf:  ISCommandMgrDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {99C9FC55-9FED-4484-9D6B-2BB6368FCBEC}
// *********************************************************************//
  ISCommandMgrDisp = dispinterface
    ['{99C9FC55-9FED-4484-9D6B-2BB6368FCBEC}']
    function CanUndo: WordBool; dispid 101;
    function CanRedo: WordBool; dispid 102;
    function Undo: WordBool; dispid 103;
    function Redo: WordBool; dispid 104;
    function StartCommand(const ACaption: WideString; const AParam: ISCommandParam; 
                          ExtData: OLE_HANDLE): WordBool; dispid 105;
    property UndoRedoLimit: Integer readonly dispid 107;
    procedure SetEvent(const AIntf: ISCommandMgrEvent); dispid 106;
    function Execute(const AParam: ISCommandParam): WordBool; dispid 108;
  end;

// *********************************************************************//
// Interface: ISCommandParam
// Flags:     (320) Dual OleAutomation
// GUID:      {27EA027E-4FE7-4D91-9127-87BFC5E17824}
// *********************************************************************//
  ISCommandParam = interface(IUnknown)
    ['{27EA027E-4FE7-4D91-9127-87BFC5E17824}']
    procedure WriteBuffer(Buffer: OLE_HANDLE; Len: Integer); safecall;
    procedure ReadBuffer(Buffer: OLE_HANDLE; Len: Integer); safecall;
  end;

// *********************************************************************//
// DispIntf:  ISCommandParamDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {27EA027E-4FE7-4D91-9127-87BFC5E17824}
// *********************************************************************//
  ISCommandParamDisp = dispinterface
    ['{27EA027E-4FE7-4D91-9127-87BFC5E17824}']
    procedure WriteBuffer(Buffer: OLE_HANDLE; Len: Integer); dispid 101;
    procedure ReadBuffer(Buffer: OLE_HANDLE; Len: Integer); dispid 102;
  end;

// *********************************************************************//
// Interface: ISCommandMgrEvent
// Flags:     (320) Dual OleAutomation
// GUID:      {B06186EE-CD57-4FB6-B423-4E617C4A2F4E}
// *********************************************************************//
  ISCommandMgrEvent = interface(IUnknown)
    ['{B06186EE-CD57-4FB6-B423-4E617C4A2F4E}']
    procedure OnStartCommand(const ACaption: WideString; IsUndo: WordBool; IsRedo: WordBool; 
                             var ExtData: OLE_HANDLE); safecall;
    procedure OnUndoRedoProgress(APercent: Integer); safecall;
    procedure OnClearUndoRedo(IsUndo: WordBool); safecall;
    procedure OnFinishUndoRedo(ExtData: OLE_HANDLE); safecall;
  end;

// *********************************************************************//
// DispIntf:  ISCommandMgrEventDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {B06186EE-CD57-4FB6-B423-4E617C4A2F4E}
// *********************************************************************//
  ISCommandMgrEventDisp = dispinterface
    ['{B06186EE-CD57-4FB6-B423-4E617C4A2F4E}']
    procedure OnStartCommand(const ACaption: WideString; IsUndo: WordBool; IsRedo: WordBool; 
                             var ExtData: OLE_HANDLE); dispid 201;
    procedure OnUndoRedoProgress(APercent: Integer); dispid 202;
    procedure OnClearUndoRedo(IsUndo: WordBool); dispid 203;
    procedure OnFinishUndoRedo(ExtData: OLE_HANDLE); dispid 204;
  end;

// *********************************************************************//
// Interface: ISClassEvent
// Flags:     (320) Dual OleAutomation
// GUID:      {F87ACE2B-6B6C-4E31-9CAD-8E4B722CDAE6}
// *********************************************************************//
  ISClassEvent = interface(IUnknown)
    ['{F87ACE2B-6B6C-4E31-9CAD-8E4B722CDAE6}']
    procedure BeforeRemoveItem(const AItem: IBasicRow); safecall;
    procedure AfterInsertItem(const AItem: IBasicRow); safecall;
    procedure AfterRemoveItem(const AParent: IBasicRow; const AItem: IBasicRow); safecall;
    procedure BeforePost(const AObj: IBasicRow); safecall;
    procedure AfterPost(const AObj: IBasicRow); safecall;
    procedure BeforeUndoRedoPost(const AObj: IBasicRow; IsUndo: WordBool); safecall;
    procedure AfterUndoRedoPost(const AObj: IBasicRow; IsUndo: WordBool); safecall;
    function BeforeClone(const ASource: IBasicRow; const ADestParent: IBasicRow; 
                         var ExtData: OLE_HANDLE): WordBool; safecall;
    procedure AfterClone(const ASource: IBasicRow; const ADest: IBasicRow; ExtData: OLE_HANDLE); safecall;
    procedure OnNoRefer(const AObj: IBasicRow); safecall;
    procedure OnReferChange(const AObj: IBasicRow); safecall;
    procedure OnNodeAsyncTask(const DestObj: IBasicRow; TaskSequence: Word); safecall;
    procedure OnNeedForeignKeyObj(const AItem: IBasicRow; var RaiseExceptionOnFail: WordBool); safecall;
  end;

// *********************************************************************//
// DispIntf:  ISClassEventDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {F87ACE2B-6B6C-4E31-9CAD-8E4B722CDAE6}
// *********************************************************************//
  ISClassEventDisp = dispinterface
    ['{F87ACE2B-6B6C-4E31-9CAD-8E4B722CDAE6}']
    procedure BeforeRemoveItem(const AItem: IBasicRow); dispid 101;
    procedure AfterInsertItem(const AItem: IBasicRow); dispid 102;
    procedure AfterRemoveItem(const AParent: IBasicRow; const AItem: IBasicRow); dispid 103;
    procedure BeforePost(const AObj: IBasicRow); dispid 104;
    procedure AfterPost(const AObj: IBasicRow); dispid 105;
    procedure BeforeUndoRedoPost(const AObj: IBasicRow; IsUndo: WordBool); dispid 106;
    procedure AfterUndoRedoPost(const AObj: IBasicRow; IsUndo: WordBool); dispid 107;
    function BeforeClone(const ASource: IBasicRow; const ADestParent: IBasicRow; 
                         var ExtData: OLE_HANDLE): WordBool; dispid 111;
    procedure AfterClone(const ASource: IBasicRow; const ADest: IBasicRow; ExtData: OLE_HANDLE); dispid 112;
    procedure OnNoRefer(const AObj: IBasicRow); dispid 113;
    procedure OnReferChange(const AObj: IBasicRow); dispid 114;
    procedure OnNodeAsyncTask(const DestObj: IBasicRow; TaskSequence: Word); dispid 108;
    procedure OnNeedForeignKeyObj(const AItem: IBasicRow; var RaiseExceptionOnFail: WordBool); dispid 109;
  end;

// *********************************************************************//
// Interface: ISRowFieldEvent
// Flags:     (320) Dual OleAutomation
// GUID:      {766A5FC6-B97A-419E-A965-DEAA019AC56F}
// *********************************************************************//
  ISRowFieldEvent = interface(IUnknown)
    ['{766A5FC6-B97A-419E-A965-DEAA019AC56F}']
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
  end;

// *********************************************************************//
// DispIntf:  ISRowFieldEventDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {766A5FC6-B97A-419E-A965-DEAA019AC56F}
// *********************************************************************//
  ISRowFieldEventDisp = dispinterface
    ['{766A5FC6-B97A-419E-A965-DEAA019AC56F}']
    procedure OnGetEditText(const Sender: ISRowField; const AObj: IBasicRow; var Value: WideString); dispid 101;
    procedure OnGetDrawText(const Sender: ISRowField; const AObj: IBasicRow; var Value: WideString); dispid 102;
    procedure OnGetEditLimit(const Sender: ISRowField; const AObj: IBasicRow; var MaxLength: Word); dispid 103;
    function OnGetCheckBoxValue(const Sender: ISRowField; const AObj: IBasicRow; AIndex: Integer): WordBool; dispid 104;
    procedure OnSetCheckBoxValue(const Sender: ISRowField; const AObj: IBasicRow; Index: Integer; 
                                 Value: WordBool); dispid 105;
    function OnGetCheckBoxVisible(const Sender: ISRowField; const AObj: IBasicRow): WordBool; dispid 106;
    function OnGetCheckBoxEnabled(const Sender: ISRowField; const AObj: IBasicRow; Index: Integer): WordBool; dispid 107;
    function OnCalcField(const Sender: ISRowField; const AObj: IBasicRow): OleVariant; dispid 109;
    procedure OnFieldChange(const Sender: ISRowField; const AObj: IBasicRow); dispid 110;
  end;

// *********************************************************************//
// Interface: ISDataSetEvent
// Flags:     (320) Dual OleAutomation
// GUID:      {FDC49117-2C83-4FF4-A3D4-495940A2BA47}
// *********************************************************************//
  ISDataSetEvent = interface(IUnknown)
    ['{FDC49117-2C83-4FF4-A3D4-495940A2BA47}']
    procedure AfterInsertItem(const AObj: IBasicRow); safecall;
    procedure AfterRemoveItem(const AParent: IBasicRow; const AObj: IBasicRow); safecall;
    procedure BeforeRemoveItem(const AObj: IBasicRow); safecall;
    function OnDispatchTask(const AObj: IBasicRow; DispatchTag: Word; var PostTask: WordBool): WordBool; safecall;
    procedure OnSaveProgress(Percent: Integer); safecall;
    procedure OnOpenProgress(Percent: Integer); safecall;
    procedure OnPurgeProgress(Percent: Integer); safecall;
    procedure OnRebuildRefProgress(Percent: Integer); safecall;
    procedure OnWriteFileCustomId(var AFileId: Integer); safecall;
    function OnReadFileCustomId(AFileId: Integer): WordBool; safecall;
    procedure OnFinishTask; safecall;
    procedure OnRebuildKeyProgress(Percent: Integer); safecall;
    function OnGetExprValue(const Sender: IBasicRow; const Expr: WideString): Double; safecall;
    procedure OnGetPrintExpr(const Sender: IBasicRow; const Expr: WideString; 
                             var PrintExpr: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  ISDataSetEventDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {FDC49117-2C83-4FF4-A3D4-495940A2BA47}
// *********************************************************************//
  ISDataSetEventDisp = dispinterface
    ['{FDC49117-2C83-4FF4-A3D4-495940A2BA47}']
    procedure AfterInsertItem(const AObj: IBasicRow); dispid 101;
    procedure AfterRemoveItem(const AParent: IBasicRow; const AObj: IBasicRow); dispid 104;
    procedure BeforeRemoveItem(const AObj: IBasicRow); dispid 105;
    function OnDispatchTask(const AObj: IBasicRow; DispatchTag: Word; var PostTask: WordBool): WordBool; dispid 106;
    procedure OnSaveProgress(Percent: Integer); dispid 107;
    procedure OnOpenProgress(Percent: Integer); dispid 108;
    procedure OnPurgeProgress(Percent: Integer); dispid 109;
    procedure OnRebuildRefProgress(Percent: Integer); dispid 110;
    procedure OnWriteFileCustomId(var AFileId: Integer); dispid 111;
    function OnReadFileCustomId(AFileId: Integer): WordBool; dispid 112;
    procedure OnFinishTask; dispid 113;
    procedure OnRebuildKeyProgress(Percent: Integer); dispid 102;
    function OnGetExprValue(const Sender: IBasicRow; const Expr: WideString): Double; dispid 103;
    procedure OnGetPrintExpr(const Sender: IBasicRow; const Expr: WideString; 
                             var PrintExpr: WideString); dispid 114;
  end;

// *********************************************************************//
// Interface: IDualIntfList
// Flags:     (320) Dual OleAutomation
// GUID:      {F4885014-3121-4431-B822-2B9ED1A0EDE2}
// *********************************************************************//
  IDualIntfList = interface(IUnknown)
    ['{F4885014-3121-4431-B822-2B9ED1A0EDE2}']
    procedure DualAddItem(const Intf1: IUnknown; const Intf2: IUnknown); safecall;
    function Get_Items1(Index: Integer): IUnknown; safecall;
    function Get_Items2(const Item1: IUnknown): IUnknown; safecall;
    function Get_Items2ByIdx(Idx: Integer): IUnknown; safecall;
    function Get_Count: Integer; safecall;
    property Items1[Index: Integer]: IUnknown read Get_Items1;
    property Items2[const Item1: IUnknown]: IUnknown read Get_Items2;
    property Items2ByIdx[Idx: Integer]: IUnknown read Get_Items2ByIdx;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IDualIntfListDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {F4885014-3121-4431-B822-2B9ED1A0EDE2}
// *********************************************************************//
  IDualIntfListDisp = dispinterface
    ['{F4885014-3121-4431-B822-2B9ED1A0EDE2}']
    procedure DualAddItem(const Intf1: IUnknown; const Intf2: IUnknown); dispid 101;
    property Items1[Index: Integer]: IUnknown readonly dispid 102;
    property Items2[const Item1: IUnknown]: IUnknown readonly dispid 103;
    property Items2ByIdx[Idx: Integer]: IUnknown readonly dispid 104;
    property Count: Integer readonly dispid 105;
  end;

// *********************************************************************//
// Interface: IStream
// Flags:     (256) OleAutomation
// GUID:      {0000000C-0000-0000-C000-000000000046}
// *********************************************************************//
  IStream = interface(IUnknown)
    ['{0000000C-0000-0000-C000-000000000046}']
    function Read(pv: OLE_HANDLE; cb: Integer; out pcbRead: Integer): HResult; stdcall;
    function Write(pv: OLE_HANDLE; cb: Integer; out pcbWritten: Integer): HResult; stdcall;
    function Seek(dlibMove: Int64; dwOrigin: Integer; out libNewPosition: Int64): HResult; stdcall;
    function SetSize(libNewSize: Int64): HResult; stdcall;
    function CopyTo(const stm: IStream; cb: Int64; out cbRead: Int64; out cbWritten: Int64): HResult; stdcall;
    function Commit(grfCommitFlags: Integer): HResult; stdcall;
    function Revert: HResult; stdcall;
    function LockRegion(libOffset: Int64; cb: Int64; dwLockType: Integer): HResult; stdcall;
    function Stat(out statstg: OLE_HANDLE; grfStatFlag: Integer): HResult; stdcall;
    function Clone(out stm: IStream): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ISGridEvent
// Flags:     (320) Dual OleAutomation
// GUID:      {1D69F45A-48C1-4381-AC58-CDA5A48188FB}
// *********************************************************************//
  ISGridEvent = interface(IUnknown)
    ['{1D69F45A-48C1-4381-AC58-CDA5A48188FB}']
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
                                 var Value: WideString; var PostAsCommand: WordBool); safecall;
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
  end;

// *********************************************************************//
// DispIntf:  ISGridEventDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {1D69F45A-48C1-4381-AC58-CDA5A48188FB}
// *********************************************************************//
  ISGridEventDisp = dispinterface
    ['{1D69F45A-48C1-4381-AC58-CDA5A48188FB}']
    procedure OnFilterObj(const AObj: IBasicRow; var Accept: WordBool); dispid 101;
    procedure OnFilterObjFlat(const AObj: IBasicRow; var Accept: WordBool); dispid 102;
    procedure OnFilterChildren(const AParent: IBasicRow; var ChildrenAccept: WordBool); dispid 103;
    procedure OnSelectedCell(ACol: Integer; ARow: Integer; const PriorObj: IBasicRow); dispid 104;
    procedure OnCollapseNode(const Sender: ISGrid; const Obj: IBasicRow; Index: Integer; 
                             var CanDo: WordBool); dispid 105;
    procedure OnNodeExpandChanged(const Sender: ISGrid; const Obj: IBasicRow; Index: Integer; 
                                  Expanded: WordBool); dispid 106;
    function OnGetRowImageIndex(const Sender: ISGrid; const Obj: IBasicRow): Integer; dispid 107;
    function OnGetRowImage: IPicture; dispid 108;
    procedure OnCellDraw(const Sender: ISRowField; const Obj: IBasicRow; const ColDef: ISColDef; 
                         GridCol: Integer; GridRow: Integer; DC: OLE_HANDLE; 
                         Rect: {NOT_OLEAUTO(TxRect)}OleVariant; Selected: WordBool; 
                         var Drawn: WordBool); dispid 109;
    procedure OnAcceptKey(const Sender: ISRowField; const Obj: IBasicRow; AKey: Word; 
                          var Accept: WordBool); dispid 110;
    procedure OnGetFieldPickList(const Sender: ISRowField; const Obj: IBasicRow; 
                                 var Width: Integer; var SimpleText: WideString); dispid 111;
    procedure OnGetFieldPickValue(const Sender: ISRowField; const Obj: IBasicRow; 
                                  const ObjValue: IBasicRow; var TxtValue: WideString; 
                                  Accept: WordBool; var SetEditText: WordBool); dispid 112;
    procedure OnFieldEditChange(const Sender: ISRowField; const Obj: IBasicRow; 
                                const EditText: WideString); dispid 113;
    procedure OnFieldEditButtonClick(const Sender: ISRowField; const Obj: IBasicRow); dispid 114;
    procedure OnFieldClick(const Sender: ISRowField; const Obj: IBasicRow); dispid 115;
    procedure OnFieldDblClick(const Sender: ISRowField; const Obj: IBasicRow); dispid 116;
    procedure OnGetFieldEditParam(const Sender: ISRowField; const Obj: IBasicRow; 
                                  const ColDef: ISColDef; GridCol: Integer; GridRow: Integer; 
                                  var FontRec: {NOT_OLEAUTO(TxFontRec)}OleVariant; 
                                  var BackParam: {NOT_OLEAUTO(TxDrawBackParam)}OleVariant); dispid 117;
    procedure OnGetFieldDrawParam(const Sender: ISRowField; const Obj: IBasicRow; 
                                  const ColDef: ISColDef; GridCol: Integer; GridRow: Integer; 
                                  var FontRec: {NOT_OLEAUTO(TxFontRec)}OleVariant; 
                                  var BackParam: {NOT_OLEAUTO(TxDrawBackParam)}OleVariant); dispid 118;
    procedure OnGetFieldEditStyle(const Sender: ISRowField; const Obj: IBasicRow; 
                                  var EditStyle: TxEditStyle); dispid 119;
    procedure OnFieldCanEdit(const Sender: ISRowField; const Obj: IBasicRow; var AllowEdit: WordBool); dispid 120;
    procedure OnFieldMouseMove(const Sender: ISRowField; const Obj: IBasicRow; ShiftState: Integer); dispid 121;
    procedure OnGetFieldEditText(const Sender: ISRowField; const Obj: IBasicRow; 
                                 var Value: WideString); dispid 122;
    procedure OnSetFieldEditText(const Sender: ISRowField; const Obj: IBasicRow; 
                                 var Value: WideString; var PostAsCommand: WordBool); dispid 123;
    procedure OnGetFieldDrawText(const Sender: ISRowField; const Obj: IBasicRow; 
                                 const ColDef: ISColDef; GridCol: Integer; GridRow: Integer; 
                                 var Value: WideString); dispid 124;
    procedure OnTabNextStop(var DoIt: WordBool); dispid 125;
    procedure OnParentGridChangeRow(const Sender: ISGrid; const PriorRow: IBasicRow; 
                                    const CurrRow: IBasicRow); dispid 126;
    procedure OnGetCustomRowHeight(const Obj: IBasicRow; Row: Integer; var Height: Integer); dispid 127;
    procedure OnHint(const Sender: ISGrid; var HintText: WideString); dispid 128;
    procedure OnClick(const Sender: ISGrid); dispid 129;
    procedure OnDblClick(const Sender: ISGrid); dispid 130;
    procedure OnEnter(const Sender: ISGrid); dispid 131;
    procedure OnExit(const Sender: ISGrid); dispid 132;
  end;

// *********************************************************************//
// Interface: ISelectList
// Flags:     (320) Dual OleAutomation
// GUID:      {30806FEE-45E3-44F5-B482-AD4145DE8F6A}
// *********************************************************************//
  ISelectList = interface(IUnknown)
    ['{30806FEE-45E3-44F5-B482-AD4145DE8F6A}']
    procedure AddItem(const AObj: IBasicRow); safecall;
    procedure RemoveItem(const AObj: IBasicRow); safecall;
    function RemoveLast: WordBool; safecall;
    procedure Clear; safecall;
    function Get_Selected(const AObj: IBasicRow): WordBool; safecall;
    function Get_Items(Index: Integer): IBasicRow; safecall;
    function Get_Count: Integer; safecall;
    function Get_Owner: ISGrid; safecall;
    procedure Sort; safecall;
    property Selected[const AObj: IBasicRow]: WordBool read Get_Selected;
    property Items[Index: Integer]: IBasicRow read Get_Items;
    property Count: Integer read Get_Count;
    property Owner: ISGrid read Get_Owner;
  end;

// *********************************************************************//
// DispIntf:  ISelectListDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {30806FEE-45E3-44F5-B482-AD4145DE8F6A}
// *********************************************************************//
  ISelectListDisp = dispinterface
    ['{30806FEE-45E3-44F5-B482-AD4145DE8F6A}']
    procedure AddItem(const AObj: IBasicRow); dispid 101;
    procedure RemoveItem(const AObj: IBasicRow); dispid 102;
    function RemoveLast: WordBool; dispid 103;
    procedure Clear; dispid 104;
    property Selected[const AObj: IBasicRow]: WordBool readonly dispid 105;
    property Items[Index: Integer]: IBasicRow readonly dispid 106;
    property Count: Integer readonly dispid 107;
    property Owner: ISGrid readonly dispid 108;
    procedure Sort; dispid 109;
  end;

// *********************************************************************//
// Interface: IViewOption
// Flags:     (320) Dual OleAutomation
// GUID:      {4B90FA92-2AE9-4864-B2DB-77CF64354D53}
// *********************************************************************//
  IViewOption = interface(IUnknown)
    ['{4B90FA92-2AE9-4864-B2DB-77CF64354D53}']
    procedure SetPicture(const APic: IPicture); safecall;
    function Get_DefClassName: WideString; safecall;
    procedure Set_DefClassName(const Value: WideString); safecall;
    function Get_ImageIndex: Integer; safecall;
    procedure Set_ImageIndex(Value: Integer); safecall;
    function Get_Index: Integer; safecall;
    procedure Set_Index(Value: Integer); safecall;
    property DefClassName: WideString read Get_DefClassName write Set_DefClassName;
    property ImageIndex: Integer read Get_ImageIndex write Set_ImageIndex;
    property Index: Integer read Get_Index write Set_Index;
  end;

// *********************************************************************//
// DispIntf:  IViewOptionDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {4B90FA92-2AE9-4864-B2DB-77CF64354D53}
// *********************************************************************//
  IViewOptionDisp = dispinterface
    ['{4B90FA92-2AE9-4864-B2DB-77CF64354D53}']
    procedure SetPicture(const APic: IPicture); dispid 101;
    property DefClassName: WideString dispid 102;
    property ImageIndex: Integer dispid 103;
    property Index: Integer dispid 104;
  end;

// *********************************************************************//
// Interface: IViewOptions
// Flags:     (320) Dual OleAutomation
// GUID:      {384C0826-2C01-42D0-8A26-3B7635D318C9}
// *********************************************************************//
  IViewOptions = interface(IUnknown)
    ['{384C0826-2C01-42D0-8A26-3B7635D318C9}']
    function Get_Items(Index: Integer): IViewOption; safecall;
    function Add: IViewOption; safecall;
    procedure Delete(AIndex: Integer); safecall;
    property Items[Index: Integer]: IViewOption read Get_Items;
  end;

// *********************************************************************//
// DispIntf:  IViewOptionsDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {384C0826-2C01-42D0-8A26-3B7635D318C9}
// *********************************************************************//
  IViewOptionsDisp = dispinterface
    ['{384C0826-2C01-42D0-8A26-3B7635D318C9}']
    property Items[Index: Integer]: IViewOption readonly dispid 101;
    function Add: IViewOption; dispid 102;
    procedure Delete(AIndex: Integer); dispid 103;
  end;

// *********************************************************************//
// Interface: ISSCreator
// Flags:     (320) Dual OleAutomation
// GUID:      {03B02C38-9E0F-4EAA-892C-AB69E6F81B2E}
// *********************************************************************//
  ISSCreator = interface(IUnknown)
    ['{03B02C38-9E0F-4EAA-892C-AB69E6F81B2E}']
    function CreateDbObj: ISDataSet; safecall;
    procedure FreeDbObj(var ADb: ISDataSet); safecall;
    function CreateDualIntfList: IDualIntfList; safecall;
    function GetDbFileId(AFileName: PWideChar): Integer; safecall;
    function CreateSGrid(AHostWinH: Largeuint): ISGrid; safecall;
    procedure FreeSGrid(var AGrid: ISGrid); safecall;
    procedure ProcessAsyncTask; safecall;
  end;

// *********************************************************************//
// DispIntf:  ISSCreatorDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {03B02C38-9E0F-4EAA-892C-AB69E6F81B2E}
// *********************************************************************//
  ISSCreatorDisp = dispinterface
    ['{03B02C38-9E0F-4EAA-892C-AB69E6F81B2E}']
    function CreateDbObj: ISDataSet; dispid 101;
    procedure FreeDbObj(var ADb: ISDataSet); dispid 102;
    function CreateDualIntfList: IDualIntfList; dispid 103;
    function GetDbFileId(AFileName: {NOT_OLEAUTO(PWideChar)}OleVariant): Integer; dispid 104;
    function CreateSGrid(AHostWinH: Largeuint): ISGrid; dispid 105;
    procedure FreeSGrid(var AGrid: ISGrid); dispid 106;
    procedure ProcessAsyncTask; dispid 107;
  end;

// *********************************************************************//
// Interface: ISSCreatorEvent
// Flags:     (320) Dual OleAutomation
// GUID:      {77195328-B9FF-4F80-8964-C78E3D8A1069}
// *********************************************************************//
  ISSCreatorEvent = interface(IUnknown)
    ['{77195328-B9FF-4F80-8964-C78E3D8A1069}']
    procedure OnInformation(Info: PWideChar); safecall;
    procedure OnWarning(WarningInfo: PWideChar); safecall;
    function OnQuestion(QuestionInfo: PWideChar): Integer; safecall;
    procedure OnException(ErrorMsg: PWideChar; ErrorCode: Integer); safecall;
  end;

// *********************************************************************//
// DispIntf:  ISSCreatorEventDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {77195328-B9FF-4F80-8964-C78E3D8A1069}
// *********************************************************************//
  ISSCreatorEventDisp = dispinterface
    ['{77195328-B9FF-4F80-8964-C78E3D8A1069}']
    procedure OnInformation(Info: {NOT_OLEAUTO(PWideChar)}OleVariant); dispid 101;
    procedure OnWarning(WarningInfo: {NOT_OLEAUTO(PWideChar)}OleVariant); dispid 102;
    function OnQuestion(QuestionInfo: {NOT_OLEAUTO(PWideChar)}OleVariant): Integer; dispid 103;
    procedure OnException(ErrorMsg: {NOT_OLEAUTO(PWideChar)}OleVariant; ErrorCode: Integer); dispid 104;
  end;

implementation

uses System.Win.ComObj;

end.
