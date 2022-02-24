unit SSObjDb_TLB;

//*************************************************************************//
// 应用程序必须在 manifest中增加 “Enabling Visual Styles”的支持 ,（DragImage支持）
// c++示例代码如下：
//   #pragma comment(linker,"\"/manifestdependency:type='win32' \
//   name='Microsoft.Windows.Common-Controls' version='6.0.0.0' \
//   processorArchitecture='*' publicKeyToken='6595b64144ccf1df' language='*'\"")
/////////////////////////////////////////////////////////////////////////////
// ************************************************************************ //
// 关于32位版本的说明：
// 为了能使用2G以上内存地址，Host程序必需打开选项:
// c++
//   /LARGEADDRESSWARE  ，
// delphi
//   {$SetPEFlags IMAGE_FILE_LARGE_ADDRESS_AWARE}
//   {$SetPEOptFlags IMAGE_FILE_LARGE_ADDRESS_AWARE}
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
// File generated on 2021-12-14 15:43:56 from Type Library described below.

// ************************************************************************  //
// Type Lib: D:\WSH\SSDbObj\src\SSObjDb (1)
// LIBID: {A7370B72-B77E-4930-B17B-9EE84DD63055}
// LCID: 0
// Helpfile:
// HelpString: SSObjDb Library
// DepndLst:
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v1.0 COMSVCSLib, (comsvcs.dll)
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
  SSObjDbMajorVersion = 1;
  SSObjDbMinorVersion = 0;

  LIBID_SSObjDb: TGUID = '{A7370B72-B77E-4930-B17B-9EE84DD63055}';

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
  IID_ISCommandMgr: TGUID = '{99C9FC55-9FED-4484-9D6B-2BB6368FCBEC}';
  IID_ISCommandMgrEvent: TGUID = '{B06186EE-CD57-4FB6-B423-4E617C4A2F4E}';
  IID_ISClassEvent: TGUID = '{F87ACE2B-6B6C-4E31-9CAD-8E4B722CDAE6}';
  IID_ISRowFieldEvent: TGUID = '{766A5FC6-B97A-419E-A965-DEAA019AC56F}';
  IID_ISDataSetEvent: TGUID = '{FDC49117-2C83-4FF4-A3D4-495940A2BA47}';
  IID_IDualIntfList: TGUID = '{F4885014-3121-4431-B822-2B9ED1A0EDE2}';
  IID_ISGridEvent: TGUID = '{1D69F45A-48C1-4381-AC58-CDA5A48188FB}';
  IID_ISelectList: TGUID = '{30806FEE-45E3-44F5-B482-AD4145DE8F6A}';
  IID_IViewOption: TGUID = '{4B90FA92-2AE9-4864-B2DB-77CF64354D53}';
  IID_IViewOptions: TGUID = '{384C0826-2C01-42D0-8A26-3B7635D318C9}';
  IID_ISSCreator: TGUID = '{03B02C38-9E0F-4EAA-892C-AB69E6F81B2E}';
  IID_ISSCreatorEvent: TGUID = '{77195328-B9FF-4F80-8964-C78E3D8A1069}';
  IID_ISPasteData: TGUID = '{72A89716-55D1-43A9-980D-1AD963884287}';
  IID_ISFDWord: TGUID = '{C88253C4-BB64-43D2-B716-C1DFB6FCD380}';
  IID_ISFInteger: TGUID = '{7B73D894-A488-4766-8A4F-1ADEF08E6747}';
  IID_ISFSmallInt: TGUID = '{E8296AC3-2C5F-4157-B5C3-BD0D391FE5D2}';
  IID_ISFWord: TGUID = '{4BA634F5-AB90-47EE-8ED1-BB938507D8F4}';
  IID_ISFByte: TGUID = '{69A83672-6286-46D0-A78F-FA595FB8613D}';
  IID_ISFAnsiChar: TGUID = '{EA691296-7C99-4D9B-A691-AFC6305099CD}';
  IID_ISFBoolean: TGUID = '{22FCC73D-79B6-4A5A-910A-D9DD051363C8}';
  IID_ISFFloat: TGUID = '{6E43DCF5-1509-42D8-B174-C3AAEC22B17E}';
  IID_ISFInt64: TGUID = '{117A6A91-63A0-4A93-A327-1B1894448BF6}';
  IID_ISFShortString: TGUID = '{F7318024-DDE4-492C-9C78-7704EAFAC1DB}';
  IID_ISFAgg: TGUID = '{6A3B3C20-DD88-42C1-A41B-D52A466720F8}';
  IID_ISFBlob: TGUID = '{1BAC40CE-4150-4189-91C5-855AB7904A1B}';
  IID_ISFPoint3d: TGUID = '{8BF94E8B-5F03-4FCC-9595-A72BB87AB208}';
  IID_IFuncParams: TGUID = '{61CEA8A9-4A03-4BB7-B839-82D63C615558}';
  IID_IColGroup: TGUID = '{11461521-A805-46B8-82E0-A93FBBC67FBB}';
  IID_IReferHandler: TGUID = '{2E8161BB-2A9A-421F-B77A-6D00F53FF432}';
  IID_ISFString: TGUID = '{A4B137FA-FF84-4C09-B925-3EB28078DCE6}';

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
  fkdPoint3d = $00000005;

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

// Constants for enum TxRowState , 标识行对象（ISRow）的状态值
type
  TxRowState = TOleEnum;
const
  irsIsExtChild = $00000001;          // 是否是 AggField
  irsExpanded = $00000002;            // Expand or  Collapse
  irsIsSorted = $00000004;            // Children 是否是排序状态
  irsUtilityRow = $00000008;          // 内部使用行对象
  irsCachedObj = $00000010;           // Cache Edit 对象
  irsBlank = $00000020;               // 空行
  irsSkipLog = $00000040;             // Skip Log
  irsSkipChildrenLog = $00000080;     // Skip Children Log

// Constants for enum TxFieldType  , 字段（属性）类型
type
  TxFieldType = TOleEnum;
const
  isftInteger = $00000000;          // 32位整数
  isftDWord = $00000001;            //
  isftSmallInt = $00000002;         //  16位整数
  isftWord = $00000003;
  isftByte = $00000004;
  isftChar = $00000005;             //单字节字符
  isftBoolean = $00000006;          //
  isftFloat = $00000007;            // Double
  isftInt64 = $00000009;
  isftString = $0000000A;           // 动态长度字符串类型，最大4096
  isftShortString = $0000000B;      // 定长字符串类型，最大 1024
  isftAggField = $0000000C;         // 聚合字段（行对象）
  isftBlob = $0000000D;             // Blob
  isftPoint3d = $0000000E;          // 三维点

// Constants for enum TxFieldOption
type
  TxFieldOption = TOleEnum;
const
  irfoData = $00000000;            // 实体数据字段
  irfoLookup = $00000001;          // Lookup 字段（属性）
  irfoCalc = $00000002;            // 计算字段（代码实现）

// Constants for enum TxSFClassType
type
  TxSFClassType = TOleEnum;
const
  isfctGeneral = $00000000;              //常规类 （默认）
  isfctIndependentor = $00000001;        //独立体类

// Constants for enum TxSFDatasetSettings
type
  TxSFDatasetSettings = TOleEnum;
const
  idsNoReference = $00000001;           //弃用

// Constants for enum TxSFDataSetOptions
type
  TxSFDataSetOptions = TOleEnum;
const
  isfoUnExistsCreate = $00000001;       //  数据库打开操作时，如果文件不存在，则创建
  isfoMemory = $00000002;               // 内存类型的 Dataset
  isfoCreateEncrypted = $00000008;      // 加密保存所有数据

// Constants for enum TxSFDataSetFiledHashSize  , 数据库Hash索引的规模
type
  TxSFDataSetFiledHashSize = TOleEnum;
const
  ishsMini = $00000000;
  ishsSmall = $00000001;
  ishsMedium = $00000002; //默认值
  ishsLarge = $00000003;

// Constants for enum TxPurgeOnVoidSpace ，打开文件时自动清理选项
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
  igoEditing = $00000002;                     // 可编辑
  igoTabs = $00000004;                        // tab键切换单元格
  igoRowSelect = $00000008;                   // 默认行选状态
  igoThumbTracking = $00000010;               //
  igoOnlyF2Editing = $00000020;               // 只有F2键才能进入编辑状态
  igoOnlyDblClickEditing = $00000040;         // 只有DoubleClick才能进入编辑状态

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

// Constants for enum TxFullTextSearchMode
type
  TxFullTextSearchMode = TOleEnum;
const
  ftsIM = $00000000;
  ftsMaxMatch = $00000001;  //目前只能用这个值

// Constants for enum TxDragHitPos   ，拖动行时的位置信息
type
  TxDragHitPos = TOleEnum;
const
  idhpUp = $00000000;              // 行之上
  idhpDown = $00000001;            // 行之下
  idhpOn = $00000002;              // 在行上

// Constants for enum TxGridDragOp
type
  TxGridDragOp = TOleEnum;
const
  igdpCopy = $00000001;
  igdpClip = $00000002;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary
// *********************************************************************//
  IBasicRow = interface;
  ISDataSet = interface;
  ISGrid = interface;
  IViewList = interface;
  ISColDef = interface;
  ISColDefs = interface;
  IViewDataList = interface;
  ISClass = interface;
  ISRowField = interface;
  ISClassList = interface;
  ICheckBoxItems = interface;
  ISDataView = interface;
  ISColumn = interface;
  ISColumns = interface;
  ISCommandMgr = interface;
  ISCommandMgrEvent = interface;
  ISClassEvent = interface;
  ISRowFieldEvent = interface;
  ISDataSetEvent = interface;
  IDualIntfList = interface;
  ISGridEvent = interface;
  ISelectList = interface;
  IViewOption = interface;
  IViewOptions = interface;
  ISSCreator = interface;
  ISSCreatorEvent = interface;
  ISPasteData = interface;
  ISFDWord = interface;
  ISFInteger = interface;
  ISFSmallInt = interface;
  ISFWord = interface;
  ISFByte = interface;
  ISFAnsiChar = interface;
  ISFBoolean = interface;
  ISFFloat = interface;
  ISFInt64 = interface;
  ISFShortString = interface;
  ISFAgg = interface;
  ISFBlob = interface;
  ISFPoint3d = interface;
  IFuncParams = interface;
  IColGroup = interface;
  IReferHandler = interface;
  ISFString = interface;

// *********************************************************************//
// Declaration of structures, unions and aliases.
// *********************************************************************//
  ISRow = IBasicRow;
  POleVariant = ^OleVariant; {*}
  PBool = ^WordBool; {*}
  PRect = ^TxRect; {*}
  PPoint3d = ^TxPoint3d;
  PBSTR = ^WideString; {*}
  PShort = ^Shortint; {*}
  PUINT = ^ULONG_PTR; {*}


  TxRect = record
    Top: Integer;
    Left: Integer;
    Bottom: Integer;
    Right: Integer;
  end;


  TxPoint3d = record
    X: Double;
    Y: Double;
    Z: Double;
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

  TxDragOverPos = record
    HitRow: Integer;    //拖动过程中击中的Grid行
    HitPos: TxDragHitPos;
  end;

// 所有以 双下划线（__）打头的方法或属性，应用层***勿调用***

// *********************************************************************//
// Interface: IBasicRow
// Flags:     (256) OleAutomation
// GUID:      {6F28F0EB-3A8A-491F-BF77-F4BB622B5E26}
// *********************************************************************//
// 数据行对象
  IBasicRow = interface(IUnknown)
    ['{6F28F0EB-3A8A-491F-BF77-F4BB622B5E26}']
    function Get_ClassDef: ISClass; safecall;
    function Get_Parent: IBasicRow; safecall;
    function Get_Children(Index: Integer): IBasicRow; safecall;
    function Get_Owner: ISDataSet; safecall;
    function Get_Count: Integer; safecall;
    function Get_Level: Integer; safecall;
    function Get_Visible: WordBool; safecall;
    // 是否是某个对象 AItem 的下级对象
    function ParentFrom(const AItem: IBasicRow): WordBool; safecall;
    // 得到某个Level的父对象（注：Dataset.DataRoot.Level = 1)
    function WrapGetAncestorOfLevel(ALevel: Integer): IBasicRow; safecall;
    // 获得一个字段的的绘制参数（字段和类中定义的）
    procedure WrapGetDrawParam(const AFieldDef: ISRowField; var AFontRec: TxFontRec;
                               var ABackParam: TxDrawBackParam); safecall;
    function Get_DrawText(const AFieldDef: ISRowField): WideString; safecall;
    function Get_ShowEditor(const AFieldDef: ISRowField): WordBool; safecall;
    function Get_EditText(const AFieldDef: ISRowField): WideString; safecall;
    // 获得一个字段的编辑框绘制参数
    procedure WrapGetEditParam(const AFieldDef: ISRowField; var AFontRec: TxFontRec;
                               var ABackParam: TxDrawBackParam; var AEditStyle: TxEditStyle); safecall;
    function Get_Id: Integer; safecall;
    function Get_EditLimit(const AFieldDef: ISRowField): Integer; safecall;
    // 提交一个字符串形式的字段值
    procedure PostAField(const AFieldDef: ISRowField; const AValue: WideString); safecall;
    function Get_Expanded: WordBool; safecall;
    procedure Set_Expanded(Value: WordBool); safecall;
    // 是否是某个对象 AItem 的 “Children”类型的下级对象，而不是“AggField”类型 ，要求所有层级的“父子”关系都是“Children”类型
    function DParentFrom(const AItem: IBasicRow): WordBool; safecall;
    function WrapGetEditStyle(const AField: ISRowField): TxEditStyle; safecall;
    function Get_Deleted: WordBool; safecall;
    function Get_Invalid: WordBool; safecall;
    //  获得对象的最终绘制参数（对象设定后）
    function GetObjDrawParam(const AFieldDef: ISRowField; var AFontRec: TxFontRec;
                             var ABackParam: TxDrawBackParam): WordBool; safecall;
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
    // 获得某个或某几个类类型的父（祖先）级对象，SClasses 参数 是数组类型的Variant，数组成员是ISClass类型
    function GetAncestorOfMulti(const SClasses: OleVariant; IncludeSelf: WordBool): IBasicRow; safecall;
    function GetAncestorOfSingle(const AClass: ISClass; IncludeSelf: WordBool): IBasicRow; safecall;
    function Get_TrunkParent: IBasicRow; safecall;
    // 是否是某个对象 AItem 的 “Children”类型的下级对象，而不是“AggField”类型 ，只要求AItem和它的下层对象关系是“Children”
    function DParentFrom2(const AItem: IBasicRow): WordBool; safecall;
    // 将Children重新排序,前提是已经设置了 ChildrenSortBy 属性。
    // 如果Resort成功，且参数KeepSorted=true,则此对象的 IsSorted 属性 为 true
    // 说明：如果参与排序的字段包含计算字段或Lookup字段，则需将参数KeepSorted置为false,因为在这种情况下，IsSorted状态是不准确的。
    //       如果参数KeepSorted=true, 则会维持正确的排序状态，即便在排序字段值更改或插入新行后。
    //       反之，后续的数据修改操作将不会自动调整行对象的排序位置。
    procedure Resort(KeepSorted: WordBool); safecall;
    function IndexOf(const AObj: IBasicRow): Integer; safecall;
    procedure ItemMoveTo(FromIndex: Integer; ToIndex: Integer); safecall;
    // 清除所有下级对象（Children)
    procedure ClearItems; safecall;
    // 删除AChild（AObj必须是当前对象的下层级行） ,返回值是AObj的索引号
    function RemoveItem(const AObj: IBasicRow): Integer; safecall;
    // 按索引号删除一Child
    procedure DeleteItem(Index: Integer); safecall;
    // 克隆对象，参数 RecurseOf 的值为 TxChildrenKind 类型的组合
    // 一般情况下，MappingList参数为空即可
    // 返回值为克隆的行数
    function CloneItemFrom(InsertPos: Integer; const SourceObj: IBasicRow; RecurseOf: Integer;
                           IncludeBlob: WordBool; const MappingList: IDualIntfList): Integer; safecall;
    function CloneAllChildrenFrom(const SourceParent: IBasicRow; RecurseOf: Integer;
                                  IncludeBlob: WordBool; const MappingList: IDualIntfList): Integer; safecall;
    // 此方法类似于：IndexOf
    function FindItem(const AObj: IBasicRow; out Index: Integer): WordBool; safecall;
    // 在排好序的下级列表中快速查找， SortKeyValues为Variant值类型或Variant值数组
    function FindItemBySortValues(const SortKeyValues: OleVariant; out Index: Integer): WordBool; safecall;
    // 按字段值查找 LocateFields由分号分割，
    // Handler 为回调函数，其C++定义如下:
    //  typedef void(CALLBACK* SSLocatePROC)(struct IBasicRow* LocateObj, bool* Break);
    function LocateItem(const LocateFields: WideString; const LocateValues: OleVariant;
                        Handler: ULONG_PTR): IBasicRow; safecall;
    // FieldNames由分号分割
    procedure AssignFrom(const Source: IBasicRow; IncludeBlob: WordBool;
                         const FieldNames: WideString); safecall;
    procedure AssignExcept(const Source: IBasicRow; IncludeBlob: WordBool;
                           const ExceptFieldNames: WideString); safecall;
    // 是否是空行
    function IsBlank: WordBool; safecall;
    function Get_Id64: Int64; safecall;
    function Get_HexId: WideString; safecall;
    function Get_RowState: Integer; safecall;
    function Get_IsSorted: WordBool; safecall;
    function Get_IsCachedObj: WordBool; safecall;
    function Get_IsExtChild: WordBool; safecall;
    // 清除所有字段值（不包括Blob字段）
    procedure ClearValues; safecall;
    // 添加下级对象（子行的个数最多MaxWord）
    function AddItem(const AClassDef: ISClass; Expanded: WordBool): IBasicRow; safecall;
    // 在一个排好序的（IsSorted)的状态下 添加下级对象，并保持排序状态。注：用其它方法添加或插入下级对象，则排序状态不再。
    function AddItemInSort(const AClassDef: ISClass; Expanded: WordBool; out AIndex: Integer): IBasicRow; safecall;
    // 在指定位置插入下级对象。
    function InsertItem(AIndex: Integer; const AClassDef: ISClass; Expanded: WordBool): IBasicRow; safecall;
    function InsertItemBeforeLast(const AClassDef: ISClass; Expanded: WordBool): IBasicRow; safecall;
    function InsertItemBefore(const AClassDef: ISClass; const AObj: IBasicRow; Expanded: WordBool): IBasicRow; safecall;
    function InsertItemAfter(const AClassDef: ISClass; const AObj: IBasicRow; Expanded: WordBool): IBasicRow; safecall;
    // 从流中载入下层级对象（的存根）。这个方法不必显式调用，数据库有LoadOnDemand机制。除非你确定需要预载入。
    // 注：行数据的对象化以及数据的读写基于存根机制和“ReadOnDemand”机制，应用层可不必关注。
    function Load(Recurse: WordBool): Integer; safecall;
    function LoadChildren(Recurse: WordBool): Integer; safecall;
    function LoadAggFields(Recurse: WordBool): Integer; safecall;
    function Get_Key: WideString; safecall;
    // 获得聚合字段对象（AggField），如果还不存在，则创建；相应的，如果不需要创建，则调用QueryAggObject
    // 说明: AggObject 的 Parent为当前行对象
    function GetAggObject(const AField: ISRowField): IBasicRow; safecall;
    function GetAggObjectByName(const AFldName: WideString): IBasicRow; safecall;
    function QueryAggObject(const AField: ISRowField): IBasicRow; safecall;
    function QueryAggObjectByName(const AFldName: WideString): IBasicRow; safecall;
    function Get_LookupKey(const AField: ISRowField): WideString; safecall;
    // 获得所有字段的Changed状态，此方法只在BeforePost事件中有效。参数DataP中返回的是Boolean值数组，
    // 参数DataSize 必须 >= 行类的属性EditFieldCount，返回值是行类的EditFieldCount。
    // 通过 DataP[AField.EditIndex] 获得某字段的Changed状态
    function GetFldChangedRawData(DataP: ULONG_PTR; DataSize: Integer): Integer; safecall;
    // 遍历此行对象的所有引用对象
    // ReferFrom: 某个行节点以下的引用对象列表，可以为空
    // 回调函数中要避免更改引用对象行的相应外键字段值 ，否则会导致错误的遍历结果。
    // 参数OnGetReferProc 为回调处理接口
    procedure ForEachRefer(const ReferFrom: IBasicRow; const OnGetReferProc: IReferHandler;
                           Info: ULONG_PTR); safecall;
    function GetReferCount: Integer; safecall;
    function Get_FieldByName(const FldName: WideString): ISRowField; safecall;
    // 此行对象是否有引用者
    function HaveRefer: WordBool; safecall;
    // 是否有某一类型的引用者，
    // ReferClass： 指定引用者的类，可以为空
    // ExcludeObj： 要排除的引用对象（及其下层级对象） ,可以为空
    // ExcludeAncestor： 是否排除ExcludeObj对象的上层（祖先）对象，即：判断是否只有 属于ExcludeObj的“旁支”的引用对象
    function HaveReferOf(const ReferClass: ISClass; const ExcludeObj: IBasicRow;
                         ExcludeAncestor: WordBool): WordBool; safecall;
    // 返回 "Cache Edit Obj"'s Origin Object
    function GetOrigObj: IBasicRow; safecall;
    // 提交此行的引用者通知，一般情况下，你不需要调用此方法. （如参数 TaskSender为True， 则只应在OnNodeTask事件中使用）
    // **为了避免任务循环触发，只会将通知提交给TaskSequence大于参数Sequence的目标对象，或者目标对象的TaskSequence=0的话，也提交。**
    procedure PostNotify(Sequence: Word; WordwrapSender: WordBool; TaskSender: WordBool); safecall;
    // 设置此行（字段）对象显示格式（字段的格式优先）. 如果 AFormat.Field = nil, 则设置行的格式
    // 说明：Grid中显示格式按如下次序确定
    //       1. Class或Field对象中定义的Font,Color属性（不保存于数据库）
    //       2. Class中调用SetDispFormat设定的显示格式（类格式）（保存于数据库）
    //       3. 回调事件中返回的格式（根据业务表达需要）
    //       4. 具体某行对象中调用SetDispFormat设定的显示格式（对象格式）（保存于数据库）
    // SetDispFormat方法只用于交互操作设定且需保存于数据库的格式设定
    procedure SetDispFormat(AFormat: TxCellFormat); safecall;
    // 如果 AFld = nil, 则返回行的格式
    function GetDispFormat(const AFld: ISRowField; out AFormat: TxCellFormat): WordBool; safecall;
    // 删除一个格式
    procedure DeleteDispFormat(const AFld: ISRowField); safecall;
    // 删除所有格式 ，恢复默认
    procedure DeleteAllDispFormat; safecall;
    // 刷新行高,一般情况下,你不需调用此方法
    procedure RefreshRowHeight; safecall;
    function Get_Changed(const AField: ISRowField): WordBool; safecall;
    function Get_Independentor: IBasicRow; safecall;
    function Get_OrderNo: LongWord; safecall;
    function Get_Index: LongWord; safecall;
    // 不再保持排序状态,即:当改变排序字段的值后,不重新排序. 如需要可调用Resort.
    procedure StopSort; safecall;
    function Get_ForeignKey(const AField: ISRowField): WideString; safecall;
    // 编辑字段(属性)值
    // 例: AObj.Edit;
    //     AObj.AsFloat[AField] := 123.45;
    //     AObj.Post;
    function Edit: WordBool; safecall;
    // 提交编辑的数据
    function Post: Integer; safecall;
    function Get_FieldHandle(const Field: ISRowField): TxFieldHandle; safecall;
    // 删除 AggField对象
    procedure DeleteAggObj(const AggField: ISRowField); safecall;
    function Get_GlobalOrderNo: Smallint; safecall;
    function Get_Handle: ULONG_PTR; safecall;
    function Get_Values(const Fields: OleVariant): OleVariant; safecall;
    procedure Set_Values(const Fields: OleVariant; AValues: OleVariant); safecall;
    // 删除当前对象行
    procedure Delete; safecall;
    function Get_AsPoint3d(const AField: ISRowField): TxPoint3d; safecall;
    procedure Set_AsPoint3d(const AField: ISRowField; Value: TxPoint3d); safecall;
    function Get_AsPoint3dByName(const AFieldName: WideString): TxPoint3d; safecall;
    procedure Set_AsPoint3dByName(const AFieldName: WideString; Value: TxPoint3d); safecall;
    function NextSibling: ISRow; safecall;
    function PriorSibling: ISRow; safecall;
    function Get_ChildrenSortBy: WideString; safecall;
    procedure Set_ChildrenSortBy(const Value: WideString); safecall;
    // 设置全局序号(自定义序号值)。同时参考：ISClass.GlobalChildrenOrderNo
    procedure SetGlobalOrderNo(AValue: Smallint); safecall;
    // 保持排序的情况下，插入指定字段值的行对象。
    // 参数Fields同 属性Values[const Fields: OleVariant]
    function AddInsortBy(const AClassDef: ISClass; Expanded: WordBool; const Fields: OleVariant;
                         const Values: OleVariant; out Index: Integer): IBasicRow; safecall;
    // 提交相关对象的异步任务（提交至父对象行或IsTaskReceiver对象）（应只在 OnNodeTask 事件中使用）
    procedure PostRelatedTask(TaskSequence: Word); safecall;
    property ClassDef: ISClass read Get_ClassDef;
    // 父对象
    property Parent: IBasicRow read Get_Parent;
    // 下级对象数组
    property Children[Index: Integer]: IBasicRow read Get_Children;
    // 对象所属的 ISDataset
    property Owner: ISDataSet read Get_Owner;
    // Children 的个数   ,Children个数最大为MaxWord
    property Count: Integer read Get_Count;
    // 对象的层级,根数据节点的 Level为 1 (说明：数据结构的层级不能超过255)
    property Level: Integer read Get_Level;
    // 不再使用, 永远为 True.
    property Visible: WordBool read Get_Visible;
    // 返回字段的绘制文本
    property DrawText[const AFieldDef: ISRowField]: WideString read Get_DrawText;
    // 在Grid中是否显示InplaceEditor
    property ShowEditor[const AFieldDef: ISRowField]: WordBool read Get_ShowEditor;
    // 返回字段的编辑文本
    property EditText[const AFieldDef: ISRowField]: WideString read Get_EditText;
    // 行对象的唯一标识
    property Id: Integer read Get_Id;
    // 编辑长度限制值
    property EditLimit[const AFieldDef: ISRowField]: Integer read Get_EditLimit;
    // 此属性的设置不会影响Grid视图中已经载入的行节点的状态
    property Expanded: WordBool read Get_Expanded write Set_Expanded;
    // 是否是已经删除(无效)的对象
    property Deleted: WordBool read Get_Deleted;
    // 是否是无效对象
    property Invalid: WordBool read Get_Invalid;
    // As...属性,存取字段值的方法
    // 说明：As...方法的效率优于 Value属性 ，优于 As...ByName的效率
    property AsBoolean[const AField: ISRowField]: WordBool read Get_AsBoolean write Set_AsBoolean;
    property AsInteger[const AField: ISRowField]: Integer read Get_AsInteger write Set_AsInteger;
    property Value[const AField: ISRowField]: OleVariant read Get_Value write Set_Value;
    property AsInt64[const AField: ISRowField]: Int64 read Get_AsInt64 write Set_AsInt64;
    property AsFloat[const AField: ISRowField]: Double read Get_AsFloat write Set_AsFloat;
    property AsString[const AField: ISRowField]: WideString read Get_AsString write Set_AsString;
    //As...ByName 均为按字段(属性)名称存取字段值的方法
    property AsBooleanByName[const AFieldName: WideString]: WordBool read Get_AsBooleanByName write Set_AsBooleanByName;
    property AsIntegerByName[const AFieldName: WideString]: Integer read Get_AsIntegerByName write Set_AsIntegerByName;
    property ValueByName[const AFieldName: WideString]: OleVariant read Get_ValueByName write Set_ValueByName;
    property AsInt64ByName[const AFieldName: WideString]: Int64 read Get_AsInt64ByName write Set_AsInt64ByName;
    property AsFloatByName[const AFieldName: WideString]: Double read Get_AsFloatByName write Set_AsFloatByName;
    property AsStringByName[const AFieldName: WideString]: WideString read Get_AsStringByName write Set_AsStringByName;
    // 主干父节点(某个AggField对象及其Children对象的父节点)
    property TrunkParent: IBasicRow read Get_TrunkParent;
    // 行对象的唯一标识. 和Id属性的区别: 当一个行对象(ObjA)被删除,然后又添加另一个行对象(ObjB)后,Id可能是同一个值,但Id64永远不会.
    // Id的效率略优于Id64
    property Id64: Int64 read Get_Id64;
    // Id的十六进制字符串
    property HexId: WideString read Get_HexId;
    // 行状态, TxRowState的组合
    property RowState: Integer read Get_RowState;
    // 是否是Children排序状态
    // 说明：如果参与排序的字段不是“实体字段”，则此状态不能保证是准确的
    property IsSorted: WordBool read Get_IsSorted;
    property IsCachedObj: WordBool read Get_IsCachedObj;
    // 是否是 AggField对象
    property IsExtChild: WordBool read Get_IsExtChild;
    // 行关键字值, 由 ISClass的 KeyField定义 ，Key值可以为空
    property Key: WideString read Get_Key;
    // Lookup字段的LookupKey值 ,参数AField为Lookup字段
    property LookupKey[const AField: ISRowField]: WideString read Get_LookupKey;
    // 返回 名称所对应的字段
    property FieldByName[const FldName: WideString]: ISRowField read Get_FieldByName;
    // 某个字段是否已经更改，只能在BeforePost事件中取得其正确状态
    property Changed[const AField: ISRowField]: WordBool read Get_Changed;
    //  此对象的上层级“独立体”对象，一般情况下，你不需要用到此属性
    property Independentor: IBasicRow read Get_Independentor;
    // 排序号，即 = Index +1
    property OrderNo: LongWord read Get_OrderNo;
    property Index: LongWord read Get_Index;
    // 如果此字段是“ForeignKey”字段，则返回此字段的值
    // ***如果外键值中包含Tab字符，则分割处理为不同的外键值引用 。也就是可以在一个字段中包含多个外键***
    property ForeignKey[const AField: ISRowField]: WideString read Get_ForeignKey;
    // 此行对象的某字段Handle，在ISDataset.CalcExpr 方法中用到此类型的参数
    property FieldHandle[const Field: ISRowField]: TxFieldHandle read Get_FieldHandle;
    // 全局序号(自定义序号）
    property GlobalOrderNo: Smallint read Get_GlobalOrderNo;
    property Handle: ULONG_PTR read Get_Handle;
    // 多字段赋值或取值，Fields为数组类型的Variant，其中每个元素为ISRowField或字符串类型
    // 返回值是数组类型的Variant。
    // 说明：
    property Values[const Fields: OleVariant]: OleVariant read Get_Values write Set_Values;
    property AsPoint3d[const AField: ISRowField]: TxPoint3d read Get_AsPoint3d write Set_AsPoint3d;
    property AsPoint3dByName[const AFieldName: WideString]: TxPoint3d read Get_AsPoint3dByName write Set_AsPoint3dByName;
    // 子行（下层级）对象的排序字段，形如： FldName1,desc;FldName2,desc;FldName3
    // tips: 如子行对象中包含不同的类定义，且排序的字段名称不一致，可采用定义计算字段的方法
    // 当设置此属性值后，且同时行对象的IsSorted=true, 子行对象会按所设排序字段重新排序。反之，如IsSorted=false, 则需要自行调用Resort方法。
    property ChildrenSortBy: WideString read Get_ChildrenSortBy write Set_ChildrenSortBy;
  end;

// *********************************************************************//
// Interface: ISDataSet
// Flags:     (256) OleAutomation
// GUID:      {11E82B07-187E-4804-925A-816DC8E18D1F}
// *********************************************************************//
// 数据库对象
  ISDataSet = interface(IUnknown)
    ['{11E82B07-187E-4804-925A-816DC8E18D1F}']
    function Get_Classes: ISClassList; safecall;
    function Get_DataRoot: IBasicRow; safecall;
    function Get_NormalState: Integer; safecall;
    function Get_InitingState: Integer; safecall;
    function Get_FinalingState: Integer; safecall;
    // 内部使用（勿调用）
    function WrapLinkNotify(const AView: ISDataView; Op: TxGridLinkOP): Integer; safecall;
    function Get_State: SYSINT; safecall;
    function Get_Active: WordBool; safecall;
    function Get_Handle: ULONG_PTR; safecall;
    function Get_TaskState: WordBool; safecall;
    // 已废止使用
    procedure LoadModuleDefines(AModuleId: Word); safecall;
    // 打开数据库 或 创建数据库 (一般情况下，需在创建好类定义(CreateClass)和字段定义(CreateField)后调用)
    // 说明：
    //      1. 如果设置了文件名 DatabaseName, 且文件存在，则打开数据库文件
    //      2. 如果文件不存在 或者 DatabaseName=''，且 isfoUnExistsCreate 包含在 Options 中，则创建。
    //      3. 数据库（类以及字段定义）升级策略
    //         3.1 新增的类或字段会自动更新到数据库文件中 ,在ISDataset中增加ISClass定义或在Class中增加ISRowField定义即可
    //         3.2 如果需要Drop掉字段或类 ，除删除类或字段的定义之外，还需调用DropClass 或 DropField方法
    //         3.3 如果将 irfoData类型的字段更改成 irfoCalc或irfoLookup类型的，同样需要调用DropField方法
    //         3.4 如果需要缩减定长字符串类型的字段长度，除设置字段的Length属性，同样需要调用DropField方法
    //         3.5 在Drop掉Class之前，必须让数据库中已不存在此类型的行数据，不然会导致致命错误
    //         3.6 在Drop掉AggField之前，必须删除数据库中的此AggField对应的所有行数据，不然会导致致命错误
    //         3.7 在Drop掉Blob字段之前，必须删除所有此字段所有Blob数据，不然会遗留下“僵尸”数据
    //      4. 如果Dataset中缺少了Class或Field的显式定义，同样也可以打开文件，只不过缺失的类和字段的定义会动态从文件中载入。
    //         所以，原则上，在应用软件中，你可以打开“高版本”的数据库文件，但并不建议这么做，在复杂的业务场景中，可能会导致
    //         不可预见的bug,更多的建议是结合 ISSCreator.GetDbFileId方法或使用其他业务层面的数据标识，处理不同版本的数据库文件升级兼容的问题。
    //      5. Class或Field的其他属性的更改会覆盖写入数据库文件中（可能会导致数据库需要重建Key或重建ForeigKey及其引用关系
    //      6. *** 非PackedMode的ReadOnly 状态下，数据库打开速度是最快的。
    function Open: WordBool; safecall;
    // 从一个模板数据库中新建数据库文件
    function OpenFromTemplate(const ATemplateFile: WideString): WordBool; safecall;
    // 关闭数据库，释放资源
    // 当前不需要使用的数据库应及时关闭。
    function Close: WordBool; safecall;
    function Get_ViewZoomRatio: Double; safecall;
    procedure Set_ViewZoomRatio(Value: Double); safecall;
    function Get_CmdMgr: ISCommandMgr; safecall;
    function Get_OwnerHandle: ULONG_PTR; safecall;
    // 内部使用
    function ValidForLog(const AObj: IBasicRow): WordBool; safecall;
    // 创建类定义
    // 注：数据库中允许创建的类个数上限是499。
    // AClassName 正则规则：^[a-zA-Z_][a-zA-Z0-9_()|]{0,31}$
    function CreateClass(const AClassName: WideString; const AClassCaption: WideString): ISClass; safecall;
    // 重新过滤AObj对象在Grid中的显示，一般情况下，你不需要调用此方法，参考 ISDataView.AutoReFilter 以及 ISClass.AutoFilterFields
    procedure ReFilterAObj(const AObj: IBasicRow); safecall;
    function Get_ClassByName(const AClsName: WideString): ISClass; safecall;
    function Get_ObjCount: Integer; safecall;
    function Get_Id: Integer; safecall;
    // 挂接回调事件
    procedure SetEvent(const AIntf: ISDataSetEvent); safecall;
    function Get_EventIntf: ISDataSetEvent; safecall;
    // 删除数据库
    procedure DeleteDataSet; safecall;
    // 编辑一行数据
    function Edit(const AObj: IBasicRow): WordBool; safecall;
    procedure CancelEdit; safecall;
    // 提交编辑的数据行。和 Edit方法成对使用。
    function Post: Integer; safecall;
    // 提交数据，但不抛出异常，根据返回值确定是否成功，=0 post成功。
    function TryPost: Integer; safecall;
    // 数据库是否编辑过数据
    function Edited: WordBool; safecall;
    function Get_EditingObj: IBasicRow; safecall;
    // 保存数据库,参数 Strict 如果为 false, 则允许脏数据。一般情况下，此参数应该为True
    function SaveDataSet(Strict: WordBool): WordBool; safecall;
    // 将流中的数据存为Blob数据(Blob最大值为2G）
    function SaveBlobFrom(const SoureStream: IStream; const AObj: IBasicRow;
                          const ABlobField: ISRowField): WordBool; safecall;
    // 将Blob数据读入流中
    function ReadBlobTo(const DestStream: IStream; const AObj: IBasicRow;
                        const ABlobField: ISRowField): WordBool; safecall;
    // 将一个大的String存为Blob
    function SaveBlobString(const AStr: WideString; const AObj: IBasicRow;
                            const ABlobField: ISRowField): WordBool; safecall;
    // 从Blob数据中读String
    function ReadBlobString(out AStr: WideString; const AObj: IBasicRow;
                            const ABlobField: ISRowField): WordBool; safecall;
    // 添加根数据对象，此方法只需在数据库创建后调用一次。
    function AddDataRoot(const AClass: ISClass): IBasicRow; safecall;
    // 从数据库文件中载入类和字段的定义。只在当前Dataset中没有Class定义的情况下有效。
    function LoadDefinitions: WordBool; safecall;
    // 根据唯一标识查找对象
    function ObjById(AId: Integer): IBasicRow; safecall;
    // 根据64位唯一标识返回对象
    // 注：ObjById方法是可靠的快速查询方法，只要在数据库中有此Id记录存在的话，总能返回正确的对象。
    //     ObjById64方法只能返回已载入(已对象化)的数据记录。（由于LoadOnDemond机制，在记录尚未载入的情况下，只会返回空）
    function ObjById64(AId64: Int64): IBasicRow; safecall;
    // 提交异步任务。一般情况下，你只应该在 OnNodeTask事件中调用此方法，不然可能会导致UndoRedo后数据不正确。
    // 参考 ISRowField.IsTaskSender, ISRowField.TaskSequence
    // 注：TaskSequence 必须小于 MaxWord
    procedure PostTask(const AObj: IBasicRow; TaskSequence: Word); safecall;
    // 派遣（分发）异步任务，提交任务至所有“叶子”节点。参考 OnDispatchTask
    procedure DispatchTask(const AObj: IBasicRow; DispatchTag: Word); safecall;
    // 按Key快速查找对象
    function FindObjByKey(const AKey: WideString): IBasicRow; safecall;
    // 队列中是否有任务
    function HavePendingTask: WordBool; safecall;
    // 等待任务结束
    function WaitForProcessTasks: LongWord; safecall;
    // 暂停处理所有任务
    procedure SuspendAllTask; safecall;
    // 恢复处理任务
    procedure ResumeAllTask; safecall;
    // 返回任务队列里的的待执行任务数
    function GetTaskCount: Integer; safecall;
    // 重建AObj的外键引用关系
    function BuildAddRef(const AObj: IBasicRow): WordBool; safecall;
    // 重建数据库中所有对象的外键引用关系，
    // 在以下情况下，在打开数据库后，需要调用此方法，以保证数据关系的正确：
    //     1. 改变类的Key定义
    //     2. 改变类中ForeigKey的定义
    //     3. 改变ISClass.SFClassType 属性值
    // 对于Debug版本的dll，在打开数据库的时候，如检查到相应更改，会有提示。
    function ReBuildRef: WordBool; safecall;
    // 在Cache方式下编辑数据，主要用于 允许放弃编辑的模态窗口模式下，返回值是Cached对象。
    // BeginCache...方法必须要和ApplyCache...方法或CancelCacheUpdate方法成对使用。
    // **ObjById，FindObjByKey 等方法不能用于“CachedObject”
    function BeginCacheUpdate(const AObj: IBasicRow): IBasicRow; safecall;
    function BeginCacheAdd(const AClass: ISClass): IBasicRow; safecall;
    // 应用缓冲更新，返回值是提交的行数
    function ApplyCacheUpdate(const ACachedObj: IBasicRow): Integer; safecall;
    function ApplyCacheAdd(const ACachedObj: IBasicRow; const ApplyTo: IBasicRow): Integer; safecall;
    function CancelCacheUpdate(const ACachedObj: IBasicRow): WordBool; safecall;
    // 将一个“Packed”数据库解包至一目录， 条件：Active and not Edited
    function DatabaseUnpackTo(const ToDir: WideString): WordBool; safecall;
    // 将一个“UnPacked”数据库打包至文件 , 条件：Active and not Edited
    function DatabasePackAs(const AFileName: WideString): WordBool; safecall;
    // 清除数据库中无效空间，缩小文件体积增加操作效率
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
    // 预载入Hash索引，一定程度上增加内存使用，后续操作过程中一定程度上会提升效率 。一般应用场景下，无需使用。
    procedure PreLoadHash; safecall;
    function Get_ReadOnly: WordBool; safecall;
    procedure Set_ReadOnly(Value: WordBool); safecall;
    // 删除一个类定义,删除之前需确保无接口变量引用
    procedure DeleteClass(const AClassName: WideString); safecall;
    // 放弃所有待处理的异步任务。注：可能会导致Grid界面刷新问题
    procedure AbortAllTask; safecall;
    // 双精度值的四舍五入，非银行家算法
    function SimpleRoundTo(Value: Double; Digit: Integer): Double; safecall;
    // 计算表达式,参数FieldHandle指定某一字段值为计算表达式。举例：CalcExpr(ObjA, ObjB.FieldHandle[FieldC])
    //     其中，ObjA为计算参数实例，ObjB一般为包含计算表达式的“模板类”
    // 参数：Sender会作为参数回传至回调事件方法OnGetExprValue和OnGetFuncValue
    // 参考：ISRowField.CachedAST以及ISDatasetEvent.OnGetExprValue
    // 支持的操作符 + - * / % ^{幂} ~{与} !{not} > >= < <= != == &{Logic AND} |{Logic OR}
    // 内置的函数 SUM AVG IF LOG LN SIN COS TAN EXP SQRT
    // e.g.
    // IF(1<2,10^2.1,(1+2*(3+4%))/SUM(1,2,3,COS(10.123)))
    // 其中计算表达式中回调（参数）表达式的最大长度是12,回调函数名最大长度是4.
    // 说明：表达式后面跟随括弧的作为回调函数（如：FunA(A,b)），否则为回调表达式（如：ExprA ），
    // 返回值如为Null，则是非法值
    function CalcExpr(const Sender: IBasicRow; FieldHandle: TxFieldHandle): OleVariant; safecall;
    // 计算参数Expr中的表达式值，可为逻辑值
    function CalcExpress(const Sender: IBasicRow; const Expr: WideString): OleVariant; safecall;
    // 校验表达式是否合法，参数RetExpr是返回的打印（显示）表达式，
    // UsedItem是表达式中的回调参数,形如 "VarA=1,VarB=10" ，VarA,VarB为回调参数，1,10是参数在计算表达式中的位置
    function VerifyExpress(const Sender: IBasicRow; const Expr: WideString;
                           out RetExpr: WideString; out UsedItem: WideString): WordBool; safecall;
    // 对象行刷新，一般情况下，你无需使用到此方法
    procedure RowInvalidate(const ARow: IBasicRow); safecall;
    // 清除整个数据库的所有数据
    procedure ClearDataSet; safecall;
    // 建全文索引，用于模糊查询
    // IndexName 索引名称
    // AFields 需建立索引的字段名称 ,形如：ClassA,FieldA,FieldB;ClassB,FieldC;ClassC,FieldD
    // AObj 指定某节点以下的所有数据建立索引，如为空，则是所有。
    // 说明：对于一行对象，某一全文索引的字段值长度总和不能超过512字
    // 使用场景：需要模糊匹配的查询，e.g. 典型的使用场景--按名称规格等模糊查询材料价格。
    //  BuildFullTextIndex 不是动态的，在数据构建完成后调用。
    // 建立的全文索引总个数<=255
    procedure BuildFullTextIndex(const IndexName: WideString; const AFields: WideString;
                                 const AObj: IBasicRow); safecall;
    // 按参数AText模糊匹配查询
    // 参数：MatchMode，目前仅支持ftsMaxMatch。
    //       MinMatch, 结果集中的最小匹配度，完全匹配就是100
    //       MaxResultCount, 结果集中返回的最大行数。
    // 返回值：返回包含所有结果行的父节点对象。此结果集是“临时”数据，
    //         所以在结束使用后，需调用ReleaseObject施放资源,此返回值即为传入ReleaseObject的参数。
    function FullTextSearch(const IndexName: WideString; const AText: WideString;
                            MatchMode: TxFullTextSearchMode; MinMatch: Word; MaxResultCount: Word): IBasicRow; safecall;
    // 释放 FullTextSearch方法 返回的对象资源。
    function ReleaseObject(const AObj: IBasicRow): WordBool; safecall;
    // 删除一全文索引
    procedure DeleteFulltextIndex(const IndexName: WideString); safecall;
    // 清除所有全文索引
    procedure ResetFulltextIndex; safecall;
    // 返回所有全文索引的名称
    function GetFulltextIndexNames: WideString; safecall;
    // 导出数据库至参数AStream中 ，仅对于PackedMode = true的数据库有效。
    function Export(const AStream: IStream): WordBool; safecall;
    // 从Xml中读取数据至数据库
    // 说明：数据库中需已定义好相关的类以及字段，元素名称或属性名称对应于ISClass.caption or ISRowField.Caption
    //       如果有超长的，则定义在StrTag属性中
    function ReadXml(const AXmlFileName: WideString; OnlyGetRootCaption: WordBool;
                     out Info: WideString; out RootCaption: WideString): WordBool; safecall;
    // 将数据库中数据写入Xml，规则同ReadXml
    function WriteXml(const AXmlFileName: WideString; const AVersion: WideString; Indent: Integer;
                      Wrap: WordBool; out Info: WideString): WordBool; safecall;
    function SaveBlobBin(SourceP: ULONG_PTR; DataLen: Integer; const AObj: IBasicRow;
                         const AField: ISRowField): WordBool; safecall;
    function ReadBlobBin(DestP: ULONG_PTR; DataLen: Integer; const AObj: IBasicRow;
                         const AField: ISRowField): Integer; safecall;
    function ReadBlobLength(const AObj: IBasicRow; const AField: ISRowField; out DataLen: Integer): WordBool; safecall;
    function Get_GridDefaultEditCommand: WordBool; safecall;
    procedure Set_GridDefaultEditCommand(Value: WordBool); safecall;
    function Get_Tag: Integer; safecall;
    procedure Set_Tag(Value: Integer); safecall;
    function Get_StrTag: WideString; safecall;
    procedure Set_StrTag(const Value: WideString); safecall;
    // 创建临时流文件，此文件在流对象释放时自动删除。
    // 注：仅在数据库打开时有效
    function CreateTempFileStream: IStream; safecall;
    // Drop类，此方法须在 设置Databasename之后以及调用Open方法或LoadDefinition方法之前调用
    procedure DropClass(const ClassNames: WideString); safecall;
    // Drop字段，此方法须在 设置Databasename之后以及调用Open方法或LoadDefinition方法之前调用
    procedure DropField(const FieldNames: WideString); safecall;
    // 重置数据库所有行对象的的Key。 在打开数据库后调用。
    // 在你改变相关数据库结构定义后（改变Key字段的定义，或删除Key字段定义），需要调用
    // 此方法调用后，需要调用 RebuildRef，
    // 对于Debug版本的dll，在打开数据库的时候，如检查到相应更改，会有提示。
    function ReBuildKey: WordBool; safecall;
    function Get_TaskContextCount: LongWord; safecall;
    procedure Set_TaskContextCount(Value: LongWord); safecall;
    // 返回当前Command状态。注：Rollback时，也是 cdsUndo 状态
    function GetCmdState: TxCommandState; safecall;
    function Get_DisableTask: WordBool; safecall;
    procedure Set_DisableTask(Value: WordBool); safecall;
    // 此方法回调OnGetTaskSequence
    function GetTaskSequence(const AObj: IBasicRow; OrigSeq: Word): Word; safecall;
    // 执行刷新所有待刷新的数据行（一般情况下，无需使用）
    procedure UpdateAll; safecall;
    property Classes: ISClassList read Get_Classes;
    // 数据库的根数据行
    property DataRoot: IBasicRow read Get_DataRoot;
    property NormalState: Integer read Get_NormalState;
    property InitingState: Integer read Get_InitingState;
    property FinalingState: Integer read Get_FinalingState;
    // 数据库状态，值为 TxDataSetState类型
    property State: SYSINT read Get_State;
    // 是否是活动的（已打开的）
    property Active: WordBool read Get_Active;
    // 数据库句柄
    property Handle: ULONG_PTR read Get_Handle;
    // 当前是否在异步任务状态
    property TaskState: WordBool read Get_TaskState;
    // Dataset的所有Grid视图缩放比例，1为原比例
    property ViewZoomRatio: Double read Get_ViewZoomRatio write Set_ViewZoomRatio;
    // Command管理接口
    property CmdMgr: ISCommandMgr read Get_CmdMgr;
    property OwnerHandle: ULONG_PTR read Get_OwnerHandle;
    property ClassByName[const AClsName: WideString]: ISClass read Get_ClassByName;
    // 行对象总数
    property ObjCount: Integer read Get_ObjCount;
    property Id: Integer read Get_Id;
    // 回调事件接口
    property EventIntf: ISDataSetEvent read Get_EventIntf;
    // 当前正在编辑的对象。可用此判断数据库是否正在编辑对象
    property EditingObj: IBasicRow read Get_EditingObj;
    // 废止使用，无需设置
    property Settings: TxSFDatasetSettings read Get_Settings write Set_Settings;
    // 书库中的总行数，  >= ObjCount
    property RowCount: Integer read Get_RowCount;
    property ErrorMsgOfTask: WideString read Get_ErrorMsgOfTask;
    property ErrorMsgOfUnknown: WideString read Get_ErrorMsgOfUnknown;
    // 是否有日志，为True时，数据库的任何增删改操作都会记录修改日志
    // 只有在此属性为True的情况下才能有Undo Redo功能，应该在数据库打开后改变此属性
    // 设置为false，则关闭UndoRedo功能，清除UndoRedo栈。大批量数据维护修改操作时应置为False，有助于效率提升。
    // 同时参考 StartCommand方法
    property EnableLog: WordBool read Get_EnableLog write Set_EnableLog;
    // 工作路径
    property WorkPath: WideString read Get_WorkPath;
    // 数据库文件名（全路径）
    // 在一个已打开的数据库中改变此属性，然后再保存，相当于“SaveAs”
    property DatabaseName: WideString read Get_DatabaseName write Set_DatabaseName;
    property Options: TxSFDataSetOptions read Get_Options write Set_Options;
    // 文件Hash索引的大小，根据数据库数量级（关键字多少）的大小设置 ,默认是ishsMedium,  数据库创建时按此创建。
    // 注：在需要创建“临时”数据库或“微小”数据库的情景下，设置FiledHashSizes为ishsMini，可提高数据库创建的速度。
    // 在数据库Open之前设置此值
    property FiledHashSize: TxSFDataSetFiledHashSize read Get_FiledHashSize write Set_FiledHashSize;
    // 数据库是否是“打包”的形式 ，一般说来，“用户文件”为打包形式（单一文件），“系统数据”为目录形式（非打包形式）
    property PackedMode: WordBool read Get_PackedMode write Set_PackedMode;
    property PurgeOnVoidSpace: TxPurgeOnVoidSpace read Get_PurgeOnVoidSpace write Set_PurgeOnVoidSpace;
    // 是否是只读模式打开数据库（对于数据库结构需要升级更改且PackedMode=false的情况下，不能以只读方式打开）
    property ReadOnly: WordBool read Get_ReadOnly write Set_ReadOnly;
    // 在Grid中默认方式编辑数据时或调用ISGrid.PostText方法时，是否提交为一次单独的Command
    // 对当前数据库关联的所有Grid有效。
    property GridDefaultEditCommand: WordBool read Get_GridDefaultEditCommand write Set_GridDefaultEditCommand;
    // 标签 随便使用
    property Tag: Integer read Get_Tag write Set_Tag;
    // 文本标签
    property StrTag: WideString read Get_StrTag write Set_StrTag;
    // 已完成执行的异步任务数，为可读写的属性，一任务项执行完成后递增，任务全部完成后归零。
    // 注： TaskContextCount 不一定等于 GetTaskCount , GetTaskCount包含内部的通知任务。
    property TaskContextCount: LongWord read Get_TaskContextCount write Set_TaskContextCount;
    // 异步任务的禁止状态
    property DisableTask: WordBool read Get_DisableTask write Set_DisableTask;
  end;

// *********************************************************************//
// Interface: ISGrid
// Flags:     (256) OleAutomation
// GUID:      {A43488B9-B6BA-4663-8190-8EA2B3881041}
// *********************************************************************//
  ISGrid = interface(IUnknown)
    ['{A43488B9-B6BA-4663-8190-8EA2B3881041}']
    // 刷新Grid，一般情况下，你不需要调用
    procedure InvalidateGrid; safecall;
    // 刷新一Grid行
    procedure InvalidRow(AGridRow: Integer); safecall;
    // 所有以 双下划线（__）打头的方法，应用层***切勿调用***
    procedure __ZoomRatioChanged; safecall;
    procedure __ClearColumn; safecall;
    procedure __BeforeNodeCollapsing(Index: Integer); safecall;
    procedure __AfterNodeCollapsing(Index: Integer; Count: Integer); safecall;
    procedure __BeforeNodeExpanding(Index: Integer); safecall;
    procedure __AfterNodeExpanding(Index: Integer; Count: Integer); safecall;
    procedure __AfterSetColTabStop(Col: Integer; Value: WordBool); safecall;
    procedure __OnSetColLayout(var CanSet: WordBool); safecall;
    procedure __OnSetColVisible(var CanSet: WordBool); safecall;
    procedure __OnSetColWidth(var CanSet: WordBool); safecall;
    procedure __AfterSetColumns; safecall;
    procedure __BeforeBatchAdding; safecall;
    procedure __AfterBatchAdding; safecall;
    function Get_VisibleRowCount: Integer; safecall;
    // 更新一行高，一般情况下，你不需要用到此方法
    procedure UpdateRowHeight(ARow: Integer); safecall;
    procedure __OnRowHeightsChanged; safecall;
    // 隐藏在位编辑状态
    procedure HideInplaceEditor; safecall;
    procedure __BeforeClearingView; safecall;
    procedure __AfterClearingView; safecall;
    procedure __BeforeItemDeleting(const AObj: IBasicRow); safecall;
    procedure __AfterDeleteItem(DelIdx: Integer; DelCount: Integer; OrigRow: Integer;
                                DrawParentNodeBtn: WordBool); safecall;
    procedure __AfterAddItem(OrigIdx: Integer; AddCount: Integer); safecall;
    procedure __AfterUnBind; safecall;
    procedure __AfterBind; safecall;
    procedure __AfterSetDataSet; safecall;
    function Get_IsDelphiControl: WordBool; safecall;
    function Get_IsDelphiDesignState: WordBool; safecall;
    function Get_IsDelphiLoadingState: WordBool; safecall;
    function Get_EventIntf: ISGridEvent; safecall;
    // 设置事件回调接口
    procedure SetEvent(const AEventIntf: ISGridEvent); safecall;
    // 注册Grid之间的“Master-Detail”关系, 参考 ISGrid.OnParentGridChangeRow
    procedure RegisterChildGrid(const AGrid: ISGrid); safecall;
    procedure UnRegisterChildGrid(const AGrid: ISGrid); safecall;
    // 获得参数中指定的单元格的绘制参数
    procedure GetDrawParam(const FieldDef: ISRowField; const Obj: IBasicRow;
                           const ColDef: ISColDef; GridCol: Integer; GridRow: Integer;
                           out FontRec: TxFontRec; out BackParam: TxDrawBackParam); safecall;
    function Get_SelectList: ISelectList; safecall;
    function Get_Selected: IBasicRow; safecall;
    function Get_SelectedField: ISRowField; safecall;
    procedure Set_SelectedField(const Value: ISRowField); safecall;
    procedure Set_SelFieldByName(const AFieldName: WideString); safecall;
    function Get_SelColumn: Integer; safecall;
    procedure Set_SelColumn(Value: Integer); safecall;
    function Get_LockUpdate: WordBool; safecall;
    procedure Set_LockUpdate(Value: WordBool); safecall;
    // 定位焦点行
    function Locate(const AObj: IBasicRow): WordBool; safecall;
    function Get_DataView: ISDataView; safecall;
    function Get_PopupGrid: ISGrid; safecall;
    function Get_FocusRectColor: OLE_COLOR; safecall;
    procedure Set_FocusRectColor(Value: OLE_COLOR); safecall;
    function Get_ViewOptions: IViewOptions; safecall;
    function Get_Indent: Integer; safecall;
    procedure Set_Indent(Value: Integer); safecall;
    // 设置 "ImageList"句柄，参考 IViewOption.ImageIndex以及ISGrid.OnGetRowImageIndex
    procedure SetImageListHandle(AHandle: ULONG_PTR; Shared: WordBool); safecall;
    function GetImageListHandle: ULONG_PTR; safecall;
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
    // 显示当前单元格的在位编辑状态，参考EditorMode属性
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
    // 设置焦点
    procedure SetFocus; safecall;
    function Get_Handle: ULONG_PTR; safecall;
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
    function Get_RootRow: IBasicRow; safecall;
    procedure Set_RootRow(const Value: IBasicRow); safecall;
    function Get_ShowRootRow: WordBool; safecall;
    procedure Set_ShowRootRow(Value: WordBool); safecall;
    // 获得指定单元格的绘制文本
    function GetDrawText(const AObj: IBasicRow; const AField: ISRowField; const AColDef: ISColDef;
                         AGridCol: Integer; AGridRow: Integer): WideString; safecall;
    function Get_Focused: WordBool; safecall;
    // 拷贝选择的数据（行或区域）至剪切板，参考 ISSCreator.GetPasteDataFromClipboard 和 ISPasteData
    procedure CopySelectedDataToClipboard(CurRowAsSelected: WordBool; AsCut: WordBool); safecall;
    // 刷新列，一般情况下，你不需要用到此方法
    procedure InvalidCol(AGridCol: Integer); safecall;
    // 刷新行，一般情况下，你不需要用到此方法
    procedure InvalidRowByObj(const AObj: IBasicRow); safecall;
    // 刷新列定义，一般情况下，你不需要用到此方法
    procedure InvalidColByColDef(const AColDef: ISColDef); safecall;
    // 刷新字段定义，一般情况下，你不需要用到此方法
    procedure InvalidColByFieldDef(const AObj: IBasicRow; const AField: ISRowField); safecall;
    function Get_ScaleFactor: Single; safecall;
    function Get_ZoomRatio: Single; safecall;
    procedure Set_ZoomRatio(Value: Single); safecall;
    function Get_Width: Integer; safecall;
    function Get_Height: Integer; safecall;
    function Get_HideTitleRow: WordBool; safecall;
    procedure Set_HideTitleRow(Value: WordBool); safecall;
    function Get_DefaultDragOp: TxGridDragOp; safecall;
    procedure Set_DefaultDragOp(Value: TxGridDragOp); safecall;
    function Get_DrawFocusRect: WordBool; safecall;
    procedure Set_DrawFocusRect(Value: WordBool); safecall;
    function Get_HotCellEnabled: WordBool; safecall;
    procedure Set_HotCellEnabled(Value: WordBool); safecall;
    //在 AsPropView模式下定位行
    function LocatePropView(const AField: ISRowField): WordBool; safecall;
    // 重新绑定HostWindow，参考 ISSCreator.CreateSGrid 以及 FreeSGrid
    procedure ReBindHost(AHostWinH: ULONG_PTR; PPI: Integer); safecall;
    // 提交一字段文本值. 根据ISDataset.GridDefaultEditCommand的设定，确定是否提交为一独立的Command
    procedure PostText(const AObj: IBasicRow; const AField: ISRowField; const AValue: WideString); safecall;
    function Get_DrawLinkLine: WordBool; safecall;
    procedure Set_DrawLinkLine(Value: WordBool); safecall;
    function PasteFromClipboard: WordBool; safecall;
    property VisibleRowCount: Integer read Get_VisibleRowCount;
    property IsDelphiControl: WordBool read Get_IsDelphiControl;
    property IsDelphiDesignState: WordBool read Get_IsDelphiDesignState;
    property IsDelphiLoadingState: WordBool read Get_IsDelphiLoadingState;
    // 回调事件接口
    property EventIntf: ISGridEvent read Get_EventIntf;
    // 当前被选中的行列表
    property SelectList: ISelectList read Get_SelectList;
    // 当前选中的行对象
    property Selected: IBasicRow read Get_Selected;
    // 当前列
    property SelectedField: ISRowField read Get_SelectedField write Set_SelectedField;
    property SelFieldByName: WideString write Set_SelFieldByName;
    // 按列索引号定位当前列
    property SelColumn: Integer read Get_SelColumn write Set_SelColumn;
    // 锁定刷新，此属性在批量增删数据操作时，设为True可减少闪烁，提高效率。
    // 说明：最后必须设为False.
    property LockUpdate: WordBool read Get_LockUpdate write Set_LockUpdate;
    // 数据视图接口
    // Grid中的主要数据类关系：
    //   Grid-->DataView(ISDataView)-->ViewList（IViewList)-->DataList(IViewDataList)-->Branches[](IViewDataList)
    //                                                    |                         |
    //                                                     -->Items[](ISRow)         -->Items[](ISRowS)
    property DataView: ISDataView read Get_DataView;
    // 编辑下拉窗口，参考 ISGridEvent.OnGetFieldPickList 以及 ISGridEvent.OnGetFieldPickValue
    property PopupGrid: ISGrid read Get_PopupGrid;
    // 焦点框颜色
    property FocusRectColor: OLE_COLOR read Get_FocusRectColor write Set_FocusRectColor;
    property ViewOptions: IViewOptions read Get_ViewOptions;
    // 行缩进量
    property Indent: Integer read Get_Indent write Set_Indent;
    // 已废除使用
    property SelectedColor: Integer read Get_SelectedColor write Set_SelectedColor;
    // ReadOnly=True,则不可编辑
    property ReadOnly: WordBool read Get_ReadOnly write Set_ReadOnly;
    // 回车键 同 Tab键
    property ReturnAsTab: WordBool read Get_ReturnAsTab write Set_ReturnAsTab;
    // 是否自动调整列宽，依赖于AutoAdjColFields的设置
    property AutoAdjColWidth: WordBool read Get_AutoAdjColWidth write Set_AutoAdjColWidth;
    // 在窗口宽度变化后，自动按比例调整列宽以排满窗口，可指定多个字段列按比例调整。
    // 形式：以逗号分割的字段名，同ISColDef.BindFields中的定义
    property AutoAdjColFields: WideString read Get_AutoAdjColFields write Set_AutoAdjColFields;
    property AutoAdjColMinWidth: Word read Get_AutoAdjColMinWidth write Set_AutoAdjColMinWidth;
    // 是否自动调整行高，默认True。在设置WordWrap字段值后以及改变单元格字体等后，会调整行高
    property AutoAdjustRowHeight: WordBool read Get_AutoAdjustRowHeight write Set_AutoAdjustRowHeight;
    // Grid中只显示一个层级的行数据
    property ShowOneLevel: WordBool read Get_ShowOneLevel write Set_ShowOneLevel;
    // 是否按“平铺”形式显示行数据。也就是说不显示行层次关系，
    // 使用场景举例：只需要平铺显示某些“叶子”节点，而不需要显示这些“叶子”节点的父结构。
    // FlatShow状态下，Grid不会刷新增删行。所以，此Grid是某种“只读临时状态”
    // FlatShow状态下，使用ISGrid.OnFilterObjFlat过滤不需要显示的行，ISGrid.OnFilterChildren 事件仍有效，ISGrid.OnFilterObj无效
    property FlatShow: WordBool read Get_FlatShow write Set_FlatShow;
    // 无需绑定字段的简单视图显示。
    // 定义好一定数量（列数）的IColDef即可，Grid按类中字段的物理次序显示字段值。一般用于调试窗口等。
    property SimpleFieldShow: WordBool read Get_SimpleFieldShow write Set_SimpleFieldShow;
    // 是否可行多选
    property MultiSelect: WordBool read Get_MultiSelect write Set_MultiSelect;
    property IsEditing: WordBool read Get_IsEditing;
    // 选项，其值为TxGridOption类型的组合
    property Options: LongWord read Get_Options write Set_Options;
    // 当前列
    property Col: Integer read Get_Col write Set_Col;
    // 当前行
    property Row: Integer read Get_Row write Set_Row;
    // 最左列（除固定列）
    property LeftCol: Integer read Get_LeftCol write Set_LeftCol;
    // 最上行（除固定行）
    property TopRow: Integer read Get_TopRow write Set_TopRow;
    // 当前单元格是否在编辑状态
    property EditorMode: WordBool read Get_EditorMode;
    // 固定数据列，即除了最左列以外的固定列（不向左滚动）
    property FixedDataCols: Integer read Get_FixedDataCols write Set_FixedDataCols;
    property Handle: ULONG_PTR read Get_Handle;
    property Name: WideString read Get_Name write Set_Name;
    property Tag: Integer read Get_Tag write Set_Tag;
    property FixedCellColor: Integer read Get_FixedCellColor write Set_FixedCellColor;
    property GridLineColor: Integer read Get_GridLineColor write Set_GridLineColor;
    property NodeBtnStyle: TxNodeBtnKind read Get_NodeBtnStyle write Set_NodeBtnStyle;
    // 设置Grid的根行。Grid中将显示根行及以下层级的数据行。
    property RootRow: IBasicRow read Get_RootRow write Set_RootRow;
    // Grid中是否显示根行
    property ShowRootRow: WordBool read Get_ShowRootRow write Set_ShowRootRow;
    property Focused: WordBool read Get_Focused;
    property ScaleFactor: Single read Get_ScaleFactor;
    // Grid的字体缩放比例
    property ZoomRatio: Single read Get_ZoomRatio write Set_ZoomRatio;
    property Width: Integer read Get_Width;
    property Height: Integer read Get_Height;
    property HideTitleRow: WordBool read Get_HideTitleRow write Set_HideTitleRow;
    property DefaultDragOp: TxGridDragOp read Get_DefaultDragOp write Set_DefaultDragOp;
    // 是否绘制焦点框
    property DrawFocusRect: WordBool read Get_DrawFocusRect write Set_DrawFocusRect;
    // 是否绘制“HotCell”
    property HotCellEnabled: WordBool read Get_HotCellEnabled write Set_HotCellEnabled;
    property DrawLinkLine: WordBool read Get_DrawLinkLine write Set_DrawLinkLine;
  end;

// *********************************************************************//
// Interface: IViewList
// Flags:     (256) OleAutomation
// GUID:      {D9660F2E-C60D-49EA-B8C0-644F1DAAF43C}
// *********************************************************************//
// Grid中的可见行（展开行）列表
  IViewList = interface(IUnknown)
    ['{D9660F2E-C60D-49EA-B8C0-644F1DAAF43C}']
    // 所有以 双下划线（__）打头的方法，应用层***切勿调用***
    procedure __AddItem(const AParent: IBasicRow; Index: Integer); safecall;
    function __DeleteItem(const AParent: IBasicRow; const AItem: IBasicRow; const LP: IBasicRow;
                          IsMoveItem: WordBool): Integer; safecall;
    function Get_Items(Index: Integer): IBasicRow; safecall;
    function Get_DataList: IViewDataList; safecall;
    // 无需调用
    procedure UpdateRowHeight(const AList: IViewDataList; Index: Integer); safecall;
    // 无需调用
    procedure UpdateClassRowHeight(const AClassDef: ISClass; const AList: IViewDataList); safecall;
    function __ClearChildren(const AParent: IBasicRow; IsMoveItem: WordBool): Integer; safecall;
    procedure __AddAllChildren(const AParent: IBasicRow); safecall;
    // 重新过滤显示一行对象。
    procedure ReFilterAItem(const AItem: IBasicRow); safecall;
    function Get_Count: Integer; safecall;
    function IndexOfVisibleItem(const AItem: IBasicRow): Integer; safecall;
    // 折叠一节点。参数Index为Grid行索引值
    function Collapse(Index: Integer; Recurse: WordBool): Integer; safecall;
    // 展开一节点
    function Expand(Index: Integer; Recurse: WordBool): Integer; safecall;
    property Items[Index: Integer]: IBasicRow read Get_Items;
    property DataList: IViewDataList read Get_DataList;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// Interface: ISColDef
// Flags:     (256) OleAutomation
// GUID:      {D281FCAA-A430-4DDC-86DE-EEC7EA7C4C10}
// *********************************************************************//
// 列定义
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
    function Get_ColCountInGroup: Integer; safecall;
    function Get_GroupColumnNo: Integer; safecall;
    function Get_Collection: ISColDefs; safecall;
    function Get_GroupHeight: Word; safecall;
    procedure __SetGroupHeight(Value: Word); safecall;
    function Get_Group: IColGroup; safecall;
    procedure Set_Group(const Value: IColGroup); safecall;
    property TabStop: WordBool read Get_TabStop write Set_TabStop;
    property LayoutCount: Integer read Get_LayoutCount;
    property SubLayoutCount[Index: Integer]: Integer read Get_SubLayoutCount;
    property Caption: WideString read Get_Caption write Set_Caption;
    property Font: TxFontRec read Get_Font write Set_Font;
    property Index: Integer read Get_Index write Set_Index;
    // 列所绑定的字段。形如：ClassA.FieldA,ClassB.FieldB,FieldMutual1,FieldMutual2
    property BindFields: WideString read Get_BindFields write Set_BindFields;
    // 目前禁用此属性
    property LayOut: WideString read Get_LayOut write Set_LayOut;
    // 列是否在Grid中可见
    property Visible: WordBool read Get_Visible write Set_Visible;
    property Color: LongWord read Get_Color write Set_Color;
    property Width: Integer read Get_Width write Set_Width;
    property ColCountInGroup: Integer read Get_ColCountInGroup;
    property GroupColumnNo: Integer read Get_GroupColumnNo;
    property Collection: ISColDefs read Get_Collection;
    property GroupHeight: Word read Get_GroupHeight;
    property Group: IColGroup read Get_Group write Set_Group; //设置此值即可分组列
  end;

// *********************************************************************//
// Interface: ISColDefs
// Flags:     (256) OleAutomation
// GUID:      {EF260F8E-3587-4D4A-84B7-355296885BF1}
// *********************************************************************//
// 列定义集合
  ISColDefs = interface(IUnknown)
    ['{EF260F8E-3587-4D4A-84B7-355296885BF1}']
    function Get_Items(Index: Integer): ISColDef; safecall;
    function Get_Count: Integer; safecall;
    function IndexOfBindFields(const BindF: WideString): Integer; safecall;
    function Add: ISColDef; safecall;
    function Insert(Index: Integer): ISColDef; safecall;
    procedure Delete(Index: Integer); safecall;
    procedure Remove(const AColDef: ISColDef); safecall;
    // 批量改变ISColDef（IColGroup）属性，或增减（创建）ISColDef（IColGroup）对象时，需调用BeginUpdateItem和EndUpdateItem
    procedure BeginUpdateItem; safecall;
    procedure EndUpdateItem; safecall;
    procedure Clear; safecall;
    property Items[Index: Integer]: ISColDef read Get_Items;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// Interface: IViewDataList
// Flags:     (256) OleAutomation
// GUID:      {BE205DA5-8D5D-4A81-A11C-A72EF617898D}
// *********************************************************************//
  IViewDataList = interface(IUnknown)
    ['{BE205DA5-8D5D-4A81-A11C-A72EF617898D}']
    function Get___Heights(Index: Integer): Integer; safecall;
    procedure Set___Heights(Index: Integer; Value: Integer); safecall;
    function Get_Items(Index: Integer): IBasicRow; safecall;
    function Get_Branchs(Index: Integer): IViewDataList; safecall;
    function Get_Count: Integer; safecall;
    function Get_CountOfInheritors(Index: Integer): Integer; safecall;
    function Get_Props(Index: Integer): ISRowField; safecall;
    function Get_PropViewLvl(Index: Integer): Integer; safecall;
    function Get_NextSiblings(Index: Integer): IBasicRow; safecall;
    function Get_PriorSiblings(Index: Integer): IBasicRow; safecall;
    function Get_LastChildren(Index: Integer): IBasicRow; safecall;
    function Get_Handles(Index: Integer): ULONG_PTR; safecall;
    function IsLastSibling(AHandle: ULONG_PTR): WordBool; safecall;
    function GetParentHandle(AHandle: ULONG_PTR): ULONG_PTR; safecall;
    function ObjFromHandle(AHandle: ULONG_PTR): IBasicRow; safecall;
    //  行高。***应用层勿设置此属性值***，参考 ISGridEvent.OnGetCustomRowHeight
    property __Heights[Index: Integer]: Integer read Get___Heights write Set___Heights;
    property Items[Index: Integer]: IBasicRow read Get_Items;
    // 折叠的行
    property Branchs[Index: Integer]: IViewDataList read Get_Branchs;
    property Count: Integer read Get_Count;
    property CountOfInheritors[Index: Integer]: Integer read Get_CountOfInheritors;
    // 仅对 "AsPropView"的Grid有效
    property Props[Index: Integer]: ISRowField read Get_Props;
    // 仅对 "AsPropView"的Grid有效
    property PropViewLvl[Index: Integer]: Integer read Get_PropViewLvl;
    property NextSiblings[Index: Integer]: IBasicRow read Get_NextSiblings;
    property PriorSiblings[Index: Integer]: IBasicRow read Get_PriorSiblings;
    property LastChildren[Index: Integer]: IBasicRow read Get_LastChildren;
    property Handles[Index: Integer]: ULONG_PTR read Get_Handles;
  end;

// *********************************************************************//
// Interface: ISClass
// Flags:     (256) OleAutomation
// GUID:      {0AC02BAB-C814-4D8A-B6DC-372F813588E2}
// *********************************************************************//
// 类定义
  ISClass = interface(IUnknown)
    ['{0AC02BAB-C814-4D8A-B6DC-372F813588E2}']
    function IndexOfField(const AFieldName: WideString): Integer; safecall;
    function Get_Fields(Index: Integer): ISRowField; safecall;
    function Get_FieldCount: Integer; safecall;
    function GetBindField(const AView: ISDataView; ADefCol: Integer): ISRowField; safecall;
    procedure SetEvent(const AIntf: ISClassEvent); safecall;
    function Get_EventIntf: ISClassEvent; safecall;
    function Get_FieldByName(const FldName: WideString): ISRowField; safecall;
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
    // 创建字段。 当AFldType=isftShortString ，AFldLen必需>0, 最大1024. AFldLen是UniCode长度
    //              AFldType=isftBlob,AFldLen意味着“Native”的长度，没有特别要求的话，此参数应该为0,“Native”的长度最大2048
    //                       出于效率与对文件大小的平衡，创建字段时可斟酌使用AFldLen参数
    //                       此时，AFldLen是字节长度。 (***非“Native”的Blob数据存储分段最小的128Byte，最大的是64K***)
    // 说明：isftShortString类型的字段为“定长”字符串字段，其长度定义影响内存使用以及文件大小。
    //       isftString 为 动态长度字符串。最大4096
    //       区别：isftShortString 效率优化，而 isftString内存优化
    //       isftString 类型的字段不能为关键字，外键，排序字段，自动过滤字段，Lookup的Key字段，TaskSender或NotifySender字段。且不能设置字段默认值。
    // 注：原则上，类大小（DataSize）不超过64K都允许，但建议字段个数不超过256.
    // AFieldName 正则规则：^[a-zA-Z_][a-zA-Z0-9_()|]{0,31}$
    function CreateField(AFldType: TxFieldType; AFldOption: TxFieldOption;
                         const AFldName: WideString; const AFldCaption: WideString; AFldLen: Integer): ISRowField; safecall;
    function FieldTypeEnabled(AType: TxFieldType): WordBool; safecall;
    // 设置所有此类行（字段）对象显示格式（字段的格式优先）. 如果 AFormat.Field = nil, 则设置类的格式
    // 此设置会刷新所有此类行对象的格式
    // 参考 ISBasicRow.SetDispFormat
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
    function Get_ForeignKeyFields: WideString; safecall;
    procedure Set_ForeignKeyFields(const Value: WideString); safecall;
    //删除一个字段定义，删除之前确保无接口变量引用
    procedure DeleteField(const AFieldName: WideString); safecall;
    function Get_TaskSequence: Word; safecall;
    procedure Set_TaskSequence(Value: Word); safecall;
    function Get_GlobalChildrenOrderNo: WordBool; safecall;
    procedure Set_GlobalChildrenOrderNo(Value: WordBool); safecall;
    function Get_GCONSkipBlank: WordBool; safecall;
    procedure Set_GCONSkipBlank(Value: WordBool); safecall;
    function Get___Object: ULONG_PTR; safecall;
    function Get_AggFieldCount: Integer; safecall;
    function Get_AggFields(Index: Integer): ISFAgg; safecall;
    // 遍历所有此类对象
    // AProc：procedure(const AId:Integer; var ABreak:Boolean; Info:Pointer) stdcall;
    // 说明：用于遍历某一类的所有对象行，其效率只在拥有大数据量的数据库中有少量此类对象时，可能表现得效率较高。
    // 约束：在文件保存之前，返回的数据可能不准确
    //       返回的数据是无序的。
    procedure ForEach(AProc: ULONG_PTR; AInfo: ULONG_PTR); safecall;
    function Get_ForeignKeyFieldList(Index: Integer): ISRowField; safecall;
    function Get_ForeignKeyFieldCount: Integer; safecall;
    function Get_RawDataSize: Integer; safecall;
    // 此类的所有字段定义
    property Fields[Index: Integer]: ISRowField read Get_Fields;
    property FieldCount: Integer read Get_FieldCount;
    property EventIntf: ISClassEvent read Get_EventIntf;
    // 按字段名称获得字段定义
    property FieldByName[const FldName: WideString]: ISRowField read Get_FieldByName;
    // 可编辑的字段(除了 Calc,Lookup,Agg,Blob之外的字段）
    property EditFields[Index: Integer]: ISRowField read Get_EditFields;
    property EditFieldCount: Integer read Get_EditFieldCount;
    // Blob字段
    property BlobFields[Index: Integer]: ISRowField read Get_BlobFields;
    property BlobFieldCount: Integer read Get_BlobFieldCount;
    // 当前会话中，此类对象的个数，其值 <= RowCount
    property ObjCount: Integer read Get_ObjCount;
    property Active: WordBool read Get_Active;
    property CustomId: Integer read Get_CustomId write Set_CustomId;
    // 类定义名称
    property DefName: WideString read Get_DefName write Set_DefName;
    property Font: TxFontRec read Get_Font write Set_Font;
    property Color: Integer read Get_Color write Set_Color;
    property Caption: WideString read Get_Caption write Set_Caption;
    // 已废止使用
    property ModuleId: Integer read Get_ModuleId write Set_ModuleId;
    property DataSet: ISDataSet read Get_DataSet;
    property Tag: Integer read Get_Tag write Set_Tag;
    property StrTag: WideString read Get_StrTag write Set_StrTag;
    property ClassId: Word read Get_ClassId;
    property RowCount: Integer read Get_RowCount;
    property DataFileName: WideString read Get_DataFileName;
    // 在大数据量的数据库中，此属性的设定可能影响整体效率表现。 对于此属性的更改，可能需要重建数据关系。参考RebuildRef
    // 典型应用场景：在造价工程文件中，应将 “单位工程”，“单项工程”等，这些类的 SFClassType属性值设置为isfctIndependentor较为合适
    property SFClassType: TxSFClassType read Get_SFClassType write Set_SFClassType;
    // 类的关键字字段
    // 说明：
    //      1. 关键字整个数据库唯一（不同于关系数据库的表唯一）
    //      2. 调用 ISDataSet.FindObjByKey 方法快速查询关键字对象
    //      3. 关键字值可以为空，即：空关键字值的行对象不建立关键字索引。
    //      4. KeyField属性也可为空，即此类不建立关键字索引。
    //      5. 只在必要有关键字的类，设定KeyField属性。
    //      6. 关键字只可一个字段。
    //      7. 关键字值长度上限为32字节.
    property KeyField: WideString read Get_KeyField write Set_KeyField;
    // Grid中自动过滤的字段。此属性中的字段值更改后，Grid会重新过滤是否显示，即会重新触发ISGridEvent.OnFilterObj
    // 属性形式：FieldA;FieldB;FieldC
    property AutoFilterFields: WideString read Get_AutoFilterFields write Set_AutoFilterFields;
    // IsTaskRoot = true,意味着异步任务提交到此节点为止,不再继续提交父层级的任务。
    property IsTaskRoot: WordBool read Get_IsTaskRoot write Set_IsTaskRoot;
    //类定义的行数据大小
    property DataSize: Word read Get_DataSize;
    // 类对象的数据缓冲行大小。根据数据量、行数据大小(RawDataSize) 以及 对性能的要求等，综合评估设定。默认值256。
    // 注：行数据对象的数据缓冲基于ReadOnDemand机制，应用层不必关注
    // 参考：大部分时候，可以不必修改此值。有大量运算以及大数据量频繁提交的应用场景下，需修改此值。
    // e.g.
    //    工程造价文件中，“定额行”的 ChunkCapacity 可能设为几千~几万，“工料分析行”的ChunkCapacity可能设为几万。
    //    "系统"数据，如定额库等则不必修改ChunkCapability
    // ChunkCapacity 的最小值为64。ChunkCapacity的值只能是64的倍数。
    // **修改 ChunkCapacity影响内存使用。
    // **一般情况下，多实例共享同一个ChunkCapacity内存空间(类名，类大小，可编辑字段个数，ChunkCapacity值均相同）。
    property ChunkCapacity: LongWord read Get_ChunkCapacity write Set_ChunkCapacity;
    // 是否忽略数据日志。此属性与UndoRedo机制相关。
    // 设置此属性为True后，则此类节点以及其下层节点对象不记录操作数据日志，即不参与UndoRedo
    // 说明：
    //      1. 一般情况下，将异步任务中涉及增删的类行设为SkipLog类型的
    //      2. 在异步任务中新增的行，行对象的RowState即为irsSkipLog类型的，无需另外设定
    //      3. 异步任务中提交修改的数据，也不会记录修改日志，既没有UndoRedo。UndoRedo过程中，异步任务的执行会再次触发。
    //      4. "SkipLog"机制的设计，是考虑了常用的业务场景，优化了UndoRedo机制，在异步任务中提交的大量数据不再记录日志，只记录交互操作部分。
    //      5. irsSkipLog类型的行对象与非irsSkipLog类型的行对象不允许在同一个父节点下存在。
    property SkipLog: WordBool read Get_SkipLog write Set_SkipLog;
    // 指定哪些是外键字段 ，形式：FieldNameA;FieldNameB;FieldNameC，每个字段指定一个外关键字
    // 说明：
    //      1. 有效的外键值必需是其他行对象的关键字值
    //      2. 允许先赋值外键字段值（即：先有Refer），后建立外键行对象
    //      3. 通过外键机制建立起不具有“层级拥有”关系的行对象之间的数据关系
    //      4. 通过 ISRow.ForEachRefer方法遍历某一行对象的外键引用对象
    //      5. 关键字行数据提交后（IsNotifySender字段），会触发引用对象的ISClassEvent.OnRowNotify，会刷新引用对象，
    //         如果提交数据修改的字段包含IsTaskSender字段，则会间接触发引用对象的异步任务事件(ISClassEvent.OnNodeTask)
    //      6. 不同于 LookupKeyField （Lookup字段的LookupKeyField不必是ForeignKey字段)
    property ForeignKeyFields: WideString read Get_ForeignKeyFields write Set_ForeignKeyFields;
    // 任务序列值。字段定义中也有同样的属性，用于标识提交修改数据的行或者列（多个字段取其最小值）。
    // 在 OnRowNotify和OnNodeTask事件方法中，作为参数传递。
    // 设置的其最大值必须小于MaxWord
    property TaskSequence: Word read Get_TaskSequence write Set_TaskSequence;
    // 生成此类节点行的下层节点全局序号，此属性针对某一特定的业务模式（如：所有分部下，清单统一全局序号）
    // 另：用IBasicRow.SetGlobalOrderNo方法，应用层自行维护某些业务需要的自定义序号
    property GlobalChildrenOrderNo: WordBool read Get_GlobalChildrenOrderNo write Set_GlobalChildrenOrderNo;
    // 依赖属性GlobalChildrenOrderNo所维护的全局序号忽略空行
    property GCONSkipBlank: WordBool read Get_GCONSkipBlank write Set_GCONSkipBlank;
    property __Object: ULONG_PTR read Get___Object;
    property AggFieldCount: Integer read Get_AggFieldCount;
    property AggFields[Index: Integer]: ISFAgg read Get_AggFields;
    property ForeignKeyFieldList[Index: Integer]: ISRowField read Get_ForeignKeyFieldList;
    property ForeignKeyFieldCount: Integer read Get_ForeignKeyFieldCount;
    //类行数据实例大小
    property RawDataSize: Integer read Get_RawDataSize;
  end;

// *********************************************************************//
// Interface: ISRowField
// Flags:     (256) OleAutomation
// GUID:      {909C6EA8-FF27-45D6-AFFD-02AD3E10EA99}
// *********************************************************************//
// 类的字段定义
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
    function Get_FieldOption: TxFieldOption; safecall;
    procedure Set_FieldOption(Value: TxFieldOption); safecall;
    function Get_EditStyle: TxEditStyle; safecall;
    procedure Set_EditStyle(Value: TxEditStyle); safecall;
    function Get_EditLimit: Word; safecall;
    procedure Set_EditLimit(Value: Word); safecall;
    function Get_NoDrawZeroValue: WordBool; safecall;
    procedure Set_NoDrawZeroValue(Value: WordBool); safecall;
    function Get_FieldName: WideString; safecall;
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
    function Get_LookupResultField: WideString; safecall;
    procedure Set_LookupResultField(const Value: WideString); safecall;
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
    function Get___Object: ULONG_PTR; safecall;
    function Get_ShiftField: ISRowField; safecall;
    // 设置 当前字段的ShiftField（转移字段） ,参考 ShiftField属性
    // 需在数据库打开后才能修改此“Runtime”属性
    function SetShiftField(const Value: ISRowField): WordBool; safecall;
    function Get_CachedAST: WordBool; safecall;
    procedure Set_CachedAST(Value: WordBool); safecall;
    // 字段所在的类
    property DefClass: ISClass read Get_DefClass;
    // Grid中的CheckBox显示项目
    property CheckBoxItems: ICheckBoxItems read Get_CheckBoxItems;
    property FieldKind: TxFieldKind read Get_FieldKind;
    // Checkbox是否居中显示
    property CheckBoxCentered: WordBool read Get_CheckBoxCentered write Set_CheckBoxCentered;
    // Checkbox 是否可见
    property CheckBoxVisible: WordBool read Get_CheckBoxVisible write Set_CheckBoxVisible;
    property EventIntf: ISRowFieldEvent read Get_EventIntf;
    property EditIndex: Integer read Get_EditIndex;
    property Active: WordBool read Get_Active;
    property CustomId: Integer read Get_CustomId write Set_CustomId;
    property ModuleId: Word read Get_ModuleId write Set_ModuleId;
    // 字体
    property Font: TxFontRec read Get_Font write Set_Font;
    // 背景参数
    property BackParam: TxDrawBackParam read Get_BackParam write Set_BackParam;
    // 字段类型
    property FieldType: TxFieldType read Get_FieldType;
    // 字段选项
    // 其中：irfoLookup,从其他有关键字的行Lookup值。属于虚拟字段。相应的,要设置LookupKeyField，LookupResultField
    //                  Lookup字段不同于外键字段，默认并不建立外键引用关系。除非另指定LookupKeyField包含在外键字段中
    //                  注：Lookup类型的AggField无需设置LookupResultField。
    //       irfoCalc,计算字段，用回调代码实现的虚拟字段，需实现OnCalcField
    property FieldOption: TxFieldOption read Get_FieldOption write Set_FieldOption;
    // Grid中的编辑风格
    property EditStyle: TxEditStyle read Get_EditStyle write Set_EditStyle;
    // 编辑长度限制
    property EditLimit: Word read Get_EditLimit write Set_EditLimit;
    // Grid中零值是否绘制
    property NoDrawZeroValue: WordBool read Get_NoDrawZeroValue write Set_NoDrawZeroValue;
    // 字段名称
    property FieldName: WideString read Get_FieldName;
    // 字段标题（在Xml导入导出时，作为元素名）
    property Caption: WideString read Get_Caption write Set_Caption;
    property DisplayFormat: WideString read Get_DisplayFormat write Set_DisplayFormat;
    property Tag: Integer read Get_Tag write Set_Tag;
    // 字符串标签（在Xml导入导出时，如元素名超长，则用此）
    property StrTag: WideString read Get_StrTag write Set_StrTag;
    // 显示是否自动换行
    property WordWrap: WordBool read Get_WordWrap write Set_WordWrap;
    property RadioCheckbox: WordBool read Get_RadioCheckbox write Set_RadioCheckbox;
    property IsKeyField: WordBool read Get_IsKeyField;
    property IsAutoFilterField: WordBool read Get_IsAutoFilterField;
    // 字段的“空值”
    property NullValue: OleVariant read Get_NullValue;
    // 字符串类型的长度
    property Length: Word read Get_Length write Set_Length;
    // 数据大小
    property DataSize: Word read Get_DataSize;
    //字段默认值
    property DefaultValue: OleVariant read Get_DefaultValue write Set_DefaultValue;
    // 当前字段的Lookup关键字字段
    // 由于是全局的Key机制，允许“Lookup”不同的类。
    property LookupKeyField: WideString read Get_LookupKeyField write Set_LookupKeyField;
    // Lookup目标对象的结果字段名，
    // 如果需要“Lookup”不同类中的不同字段，则可以通过定义Calc字段的方法统一LookupResultField字段名
    property LookupResultField: WideString read Get_LookupResultField write Set_LookupResultField;
    // IsNotifySender意味着此字段提交更改后，如此行对象有关键字“引用者” ，则会触发通知消息给“引用者” （Edit字段有效）
    property IsNotifySender: WordBool read Get_IsNotifySender write Set_IsNotifySender;
    // IsTaskSender意味着此字段提交更改后，则会触发此对象的异步任务。 （Edit字段有效）
    property IsTaskSender: WordBool read Get_IsTaskSender write Set_IsTaskSender;
    // 在IsTaskSender字段提交后，会触发IsTaskReceiver字段相对应行对象的异步任务
    // IsTaskReceiver只针对外键字段有效 （***局限：此外键字段值如包含Tab字符会导致问题）
    property IsTaskReceiver: WordBool read Get_IsTaskReceiver write Set_IsTaskReceiver;
    // 是否是外键字段
    property IsForeignKeyField: WordBool read Get_IsForeignKeyField;
    // 任务序列，在异步任务回调方法中，作为参数（如多字段一次提交，取其最小TaskSequence）
    property TaskSequence: Word read Get_TaskSequence write Set_TaskSequence;
    // 如果此字段是Agg字段，指定Agg对象创建时的类。（在调用GetAggObject时）
    property AggClassName: WideString read Get_AggClassName write Set_AggClassName;
    property __Object: ULONG_PTR read Get___Object;
    // 转移字段
    // 存取字段值的操作转移到此类中的另一个相同类型的字段
    // 必须都是可编辑字段（非isftString类型）,都不能是Key字段，必须同为外键字段或均不是外键字段。
    // 需在数据库打开后才能修改此“Runtime”属性
    property ShiftField: ISRowField read Get_ShiftField;
    // 缓冲抽象语法树，此属性会提高表达式计算的效率
    // 设置CachedAST的字段，常用于包含计算表达式字段的“费用计算模板”，注：语法树的内部缓冲机制依赖于此类行的ChunkCapacity缓冲机制
    // 在形如 CalcExpr(ObjA, ObjB.FieldHandle[FieldC]) 的语句中，FieldC可为Lookup字段，只要Lookup的目标字段为CachedAST即可。
    // 此设置只针对ShortString并且是 irfoData 字段
    // 注：只针对CalcExpr方法， 如用CalcExpress方法计算表达式，则不会利用到缓冲的AST 。
    property CachedAST: WordBool read Get_CachedAST write Set_CachedAST;
  end;

// *********************************************************************//
// Interface: ISClassList
// Flags:     (256) OleAutomation
// GUID:      {85919436-06A4-4DAC-A97C-6E5CE91E21F6}
// *********************************************************************//
  ISClassList = interface(IUnknown)
    ['{85919436-06A4-4DAC-A97C-6E5CE91E21F6}']
    function Get_Items(Index: Integer): ISClass; safecall;
    function Get_Count: Integer; safecall;
    function IndexOfClassName(const AClassDefName: WideString): Integer; safecall;
    function IndexOfClass(const AClassDef: ISClass): Integer; safecall;
    function HaveBindWordWrapField(const AView: ISDataView; ADefCol: Integer): WordBool; safecall;
    property Items[Index: Integer]: ISClass read Get_Items;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// Interface: ICheckBoxItems
// Flags:     (256) OleAutomation
// GUID:      {A45D1D64-F998-443B-B64C-D53422753996}
// *********************************************************************//
  ICheckBoxItems = interface(IUnknown)
    ['{A45D1D64-F998-443B-B64C-D53422753996}']
    function Get_Count: Integer; safecall;
    function Get_Enables(const AItem: IBasicRow; Index: Integer): WordBool; safecall;
    function Get_Values(Index: Integer; const AItem: IBasicRow): WordBool; safecall;
    procedure Set_Values(Index: Integer; const AItem: IBasicRow; Value: WordBool); safecall;
    function Get_Visible(const AItem: IBasicRow): WordBool; safecall;
    function AddItem: Integer; safecall;
    procedure InsertItem(AIndex: Integer); safecall;
    procedure DeleteItem(AIndex: Integer); safecall;
    function Get_Captions(Index: Integer): WideString; safecall;
    procedure Set_Captions(Index: Integer; const Value: WideString); safecall;
    function Get_FontColors(Index: Integer): Integer; safecall;
    procedure Set_FontColors(Index: Integer; Value: Integer); safecall;
    property Count: Integer read Get_Count;
    // 参考 OnGetCheckBoxEnabled
    property Enables[const AItem: IBasicRow; Index: Integer]: WordBool read Get_Enables;
    // 参考 OnGetCheckBoxValue OnSetCheckBoxValue
    property Values[Index: Integer; const AItem: IBasicRow]: WordBool read Get_Values write Set_Values;
    // 参考 OnGetCheckBoxVisible
    property Visible[const AItem: IBasicRow]: WordBool read Get_Visible;
    property Captions[Index: Integer]: WideString read Get_Captions write Set_Captions;
    property FontColors[Index: Integer]: Integer read Get_FontColors write Set_FontColors;
  end;

// *********************************************************************//
// Interface: ISDataView
// Flags:     (256) OleAutomation
// GUID:      {FF28D8F8-89CF-439B-9FAA-5DDCACD1A806}
// *********************************************************************//
  ISDataView = interface(IUnknown)
    ['{FF28D8F8-89CF-439B-9FAA-5DDCACD1A806}']
    function Get_RootRow: IBasicRow; safecall;
    procedure Set_RootRow(const Value: IBasicRow); safecall;
    function Get_AutoReFilter: WordBool; safecall;
    procedure Set_AutoReFilter(Value: WordBool); safecall;
    function Get_ViewList: IViewList; safecall;
    function Get_Grid: ISGrid; safecall;
    function Get_Index: Integer; safecall;
    function Get_Id: Int64; safecall;
    function Get_ColDefs: ISColDefs; safecall;
    function Get_Columns: ISColumns; safecall;
    function Get_ShowRootRow: WordBool; safecall;
    procedure Set_ShowRootRow(Value: WordBool); safecall;
    function Get_LevelFrom: Integer; safecall;
    procedure __ColWidthsChanged(ACol: Integer; AWidth: Integer; Interaction: WordBool); safecall;
    function Get_AutoAdjustRowHeight: WordBool; safecall;
    procedure Set_AutoAdjustRowHeight(Value: WordBool); safecall;
    // 同Grid中Locate方法的区别：此处不移动Grid中当前行
    function Locate(const AItem: IBasicRow; out Index: Integer; OnlyVisible: WordBool): WordBool; safecall;
    function Get_Expanded(Index: Integer): WordBool; safecall;
    // 重置所有行高。一般情况下，你不需要调用此方法
    procedure ResetAllRowHeights; safecall;
    function Get_ShowOneLevel: WordBool; safecall;
    procedure Set_ShowOneLevel(Value: WordBool); safecall;
    // 行刷新。一般情况下，你不需要调用此方法
    procedure RowInvalidate(const AObj: IBasicRow); safecall;
    // 刷新数据视图。重新载入所有行数据
    procedure Refresh; safecall;
    function Get_SimpleFieldShow: WordBool; safecall;
    procedure Set_SimpleFieldShow(Value: WordBool); safecall;
    function Get_BindField(const AObj: IBasicRow; const AProp: ISRowField; AGridCol: Integer): ISRowField; safecall;
    function Get_DataSet: ISDataSet; safecall;
    function Get_BindColDef(AGridCol: Integer): ISColDef; safecall;
    function Get_FlatShow: WordBool; safecall;
    procedure Set_FlatShow(Value: WordBool); safecall;
    // 一般情况下，应通过设置Grid的RootRow属性，绑定需要显示的数据。
    // 在极少数的场景下，可通过此方法显示多个"不相邻"的数据(相互不具有包含关系的行)在同一Grid中，但此时Grid添加的多个RootRow有限制，最多不超过16个.
    // *不推荐使用此模式显示数据
    function AddRootRow(const ARow: IBasicRow): WordBool; safecall;
    function Get_AsPropView: WordBool; safecall;
    procedure Set_AsPropView(Value: WordBool); safecall;
    function Get_ViewPropNames: WideString; safecall;
    procedure Set_ViewPropNames(const Value: WideString); safecall;
    // 定位于AsPropView类型的视图
    function LocatePropView(const AField: ISRowField; out Index: Integer): WordBool; safecall;
    function Get_ColGroups(Index: Integer): IColGroup; safecall;
    function Get_ColGroupCount: Integer; safecall;
    function AddColGroup: IColGroup; safecall;       //增加列分组对象
    function RemoveColGroup(const AGroup: IColGroup): WordBool; safecall;
    function DeleteColGroup(Index: Integer): WordBool; safecall;
    procedure ClearColGroup; safecall;  //清理所有列分组对象
    // 同Grid中的属性设置
    property RootRow: IBasicRow read Get_RootRow write Set_RootRow;
    property AutoReFilter: WordBool read Get_AutoReFilter write Set_AutoReFilter;
    property ViewList: IViewList read Get_ViewList;
    property Grid: ISGrid read Get_Grid;
    property Index: Integer read Get_Index;
    property Id: Int64 read Get_Id;
    // 视图中的列定义集合
    property ColDefs: ISColDefs read Get_ColDefs;
    // 对应于Grid中显示的列
    property Columns: ISColumns read Get_Columns;
    // 是否显示“根行”
    property ShowRootRow: WordBool read Get_ShowRootRow write Set_ShowRootRow;
    property LevelFrom: Integer read Get_LevelFrom;   //在单个RootRow的情况下有效
    property AutoAdjustRowHeight: WordBool read Get_AutoAdjustRowHeight write Set_AutoAdjustRowHeight;
    property Expanded[Index: Integer]: WordBool read Get_Expanded;
    // 只显示一个层级的数据
    property ShowOneLevel: WordBool read Get_ShowOneLevel write Set_ShowOneLevel;
    // 同Grid中的属性
    property SimpleFieldShow: WordBool read Get_SimpleFieldShow write Set_SimpleFieldShow;
    // 获得Grid中的绑定字段
    property BindField[const AObj: IBasicRow; const AProp: ISRowField; AGridCol: Integer]: ISRowField read Get_BindField;
    property DataSet: ISDataSet read Get_DataSet;
    // 绑定的列定义
    property BindColDef[AGridCol: Integer]: ISColDef read Get_BindColDef;
    // 同Grid中的属性
    property FlatShow: WordBool read Get_FlatShow write Set_FlatShow;
    // 作为属性视图显示。即每行显示一个字段名称以及字段值。此种方式下，第一列第二列绑定的显示内容是固定的，第一列字段的Caption，第二列字段的值
    property AsPropView: WordBool read Get_AsPropView write Set_AsPropView;
    // 属性视图中，需要显示的属性字段。
    // 格式： FieldName1;FieldName2,1;FieldName3,2;FieldName4,1
    //        其中字段名后面的数字意味着显示的层级， 可以不写。
    //        也就是说，如果下一个字段后面跟随的数字大于前一个字段，则意味着后一个字段属性显示为前一个字段的下层级属性
    property ViewPropNames: WideString read Get_ViewPropNames write Set_ViewPropNames;
    property ColGroups[Index: Integer]: IColGroup read Get_ColGroups;
    property ColGroupCount: Integer read Get_ColGroupCount;
  end;

// *********************************************************************//
// Interface: ISColumn
// Flags:     (256) OleAutomation
// GUID:      {7D6E2860-F42D-4F4B-BFD9-9395B40ACFBD}
// *********************************************************************//
  ISColumn = interface(IUnknown)
    ['{7D6E2860-F42D-4F4B-BFD9-9395B40ACFBD}']
    function Get_DefCol: Integer; safecall;
    property DefCol: Integer read Get_DefCol;
  end;

// *********************************************************************//
// Interface: ISColumns
// Flags:     (256) OleAutomation
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
// Interface: ISCommandMgr
// Flags:     (256) OleAutomation
// GUID:      {99C9FC55-9FED-4484-9D6B-2BB6368FCBEC}
// *********************************************************************//
  ISCommandMgr = interface(IUnknown)
    ['{99C9FC55-9FED-4484-9D6B-2BB6368FCBEC}']
    function CanUndo: WordBool; safecall;
    function CanRedo: WordBool; safecall;
    function Undo: WordBool; safecall;
    function Redo: WordBool; safecall;
    // 开始一个命令。
    // 参数 Param = nil 即可
    // 参数 ExtData为“CustomData”地址，ExtDataSize必须 <= 256
    // 说明：如需支持Undoredo功能，则所有操作命令都要以StartCommand开始。
    //       每次UndoRedo操作就是回滚一个StartCommand之后与下一个StartCommand之间的所有已提交数据。
    // ***第一次调用StartCommand之前的数据提交没有UndoRedo。
    // 参考：EnableLog SkipLog
    function StartCommand(const APrompt: WideString; const Param: IUnknown; ExtData: ULONG_PTR;
                          ExtDataSize: Byte): WordBool; safecall;
    function Get_UndoRedoLimit: Integer; safecall;
    procedure SetEvent(const AIntf: ISCommandMgrEvent); safecall;
    function Get_Handle: ULONG_PTR; safecall;
    // 操作回滚 ，不同于Undo。
    function Rollback: WordBool; safecall;
    // 当前命令下是否有已提交的数据（即便无数据提交，也可以是一次UndoRedo操作）
    function HaveCommitData: WordBool; safecall;
    // UndoRedo的限制次数，目前是32.
    property UndoRedoLimit: Integer read Get_UndoRedoLimit;
    property Handle: ULONG_PTR read Get_Handle;
  end;

// *********************************************************************//
// Interface: ISCommandMgrEvent
// Flags:     (256) OleAutomation
// GUID:      {B06186EE-CD57-4FB6-B423-4E617C4A2F4E}
// *********************************************************************//
  ISCommandMgrEvent = interface(IUnknown)
    ['{B06186EE-CD57-4FB6-B423-4E617C4A2F4E}']
    // 当一个命令开始时触发此过程
    // 说明： StartCommand Undo Redo Rollback 均会触发
    procedure OnStartCommand(const DataSet: ISDataSet; const APrompt: WideString; IsUndo: WordBool;
                             IsRedo: WordBool; IsRollback: WordBool; ExtData: ULONG_PTR;
                             ExtDataSize: Byte); safecall;
    // 如需要，一般在此过程中提供进度条显示
    procedure OnUndoRedoProgress(const DataSet: ISDataSet; APercent: Integer); safecall;
    // 在清理掉UndoRedo栈时
    procedure OnClearUndoRedo(const DataSet: ISDataSet; IsUndo: WordBool); safecall;
    // 结束一次UndoRedo操作
    procedure OnFinishUndoRedo(const DataSet: ISDataSet; ExtData: ULONG_PTR; ExtDataSize: Word); safecall;
  end;

// *********************************************************************//
// Interface: ISClassEvent
// Flags:     (256) OleAutomation
// GUID:      {F87ACE2B-6B6C-4E31-9CAD-8E4B722CDAE6}
// *********************************************************************//
  ISClassEvent = interface(IUnknown)
    ['{F87ACE2B-6B6C-4E31-9CAD-8E4B722CDAE6}']
    procedure BeforeRemoveItem(const AItem: IBasicRow); safecall;
    procedure AfterInsertItem(const AItem: IBasicRow); safecall;
    // 此过程中，参数 AItem已经是Invalid
    procedure AfterRemoveItem(const AParent: IBasicRow; const AItem: IBasicRow); safecall;
    procedure BeforePost(const AObj: IBasicRow); safecall;
    procedure AfterPost(const AObj: IBasicRow); safecall;
    // 此函数返回False，则不执行当前对象的Clone
    function BeforeClone(const ASource: IBasicRow; const ADestParent: IBasicRow;
                         var ExtData: ULONG_PTR): WordBool; safecall;
    procedure AfterClone(const ASource: IBasicRow; const ADest: IBasicRow; ExtData: ULONG_PTR); safecall;
    // 不再有“引用者”时触发。
    procedure OnNoRefer(const AObj: IBasicRow); safecall;
    // refer对象增减时触发
    procedure OnReferChange(const AObj: IBasicRow); safecall;
    // 行节点的异步任务事件
    // 说明：
    //      1. 非异步任务中提交IsTaskSender字段修改后，会触发当前对象的异步任务
    //      2. 在OnNodeTask事件中提交修改后，会触发所提交修改对象（参数DestObj的下层级对象除外）的父层级对象的异步任务
    //      3. 在OnNodeTask事件中提交修改后，会触发IsTaskReceiver类型的字段所对应行对象
    //                                            IsTaskReceiver类型的字段只能是IsForeignKeyField
    //      4. 提交IsTaskSender字段修改后，如同时也是IsNotifySender，则会间接触发所有引用对象的异步任务
    //      5. 如同一目标对象有多个异步任务，则 TaskSequence 值小的先执行。注：对于较为复杂的计算关系情境下，需统筹规划
    //         所有类以及字段的TaskSequence属性。
    //      6. 在复杂的业务场景下，要通过TaskSequence的设置避免掉任务的循环触发（如：外键引用对象为当前行的下层级对象时）
    //      7. 在此事件过程中提交修改的数据，不会记录修改日志
    //      8. 如果异步任务中没有提交任何数据的修改，需要的话，可以用PostRelatedTask方法，提交相关的任务。
    //      9. 提交数据后自动触发的任务,其参数序列值一定是大于等于参数TaskSequence
    //        （如在此事件中，主动调用了PostRelatedTask或PostTask，应注意参数TaskSequence的取值，避免循环触发）
    procedure OnNodeTask(const DestObj: IBasicRow; TaskSequence: Word); safecall;
    // 当一个“ForeignKey”字段提交数据时，且外键对象行还不存在，触发此过程
    // 你可以在此过程中增加相应关键字行，或者你也可以不在此处理
    procedure OnNeedForeignKeyObj(const AItem: IBasicRow); safecall;
    // OnRowNotify的触发是异步的。
    procedure OnRowNotify(const AObj: IBasicRow; Sequence: Word; var RefreshRow: WordBool;
                          var TaskSender: WordBool); safecall;
    // 在复杂业务场景下，可在此回调中，根据业务规则确定TaskSequence
    // ASequence 必须小于 MaxWord
    procedure OnGetSequence(const AObj: IBasicRow; var ASequence: Word); safecall;
  end;

// *********************************************************************//
// Interface: ISRowFieldEvent
// Flags:     (256) OleAutomation
// GUID:      {766A5FC6-B97A-419E-A965-DEAA019AC56F}
// *********************************************************************//
  ISRowFieldEvent = interface(IUnknown)
    ['{766A5FC6-B97A-419E-A965-DEAA019AC56F}']
    procedure OnGetEditText(const Sender: ISRowField; const AObj: IBasicRow; var Value: WideString); safecall;
    procedure OnGetDrawText(const Sender: ISRowField; const AObj: IBasicRow; var Value: WideString); safecall;
    procedure OnGetEditLimit(const Sender: ISRowField; const AObj: IBasicRow;
                             var MaxLength: Smallint); safecall;
    function OnGetCheckBoxValue(const Sender: ISRowField; const AObj: IBasicRow; AIndex: Integer): WordBool; safecall;
    procedure OnSetCheckBoxValue(const Sender: ISRowField; const AObj: IBasicRow; Index: Integer;
                                 Value: WordBool); safecall;
    procedure OnGetCheckBoxVisible(const Sender: ISRowField; const AObj: IBasicRow;
                                   var Visible: WordBool); safecall;
    procedure OnGetCheckBoxEnabled(const Sender: ISRowField; const AObj: IBasicRow; Index: Integer;
                                   var Enabled: WordBool); safecall;
    // 只对计算字段有效，返回值即为字段值
    function OnCalcField(const Sender: ISRowField; const AObj: IBasicRow): OleVariant; safecall;
    // 在改变字段值后触发
    procedure OnFieldChange(const Sender: ISRowField; const AObj: IBasicRow); safecall;
  end;

// *********************************************************************//
// Interface: ISDataSetEvent
// Flags:     (256) OleAutomation
// GUID:      {FDC49117-2C83-4FF4-A3D4-495940A2BA47}
// *********************************************************************//
  ISDataSetEvent = interface(IUnknown)
    ['{FDC49117-2C83-4FF4-A3D4-495940A2BA47}']
    procedure AfterInsertItem(const AObj: IBasicRow); safecall;
    procedure AfterRemoveItem(const AParent: IBasicRow; const AObj: IBasicRow); safecall;
    procedure BeforeRemoveItem(const AObj: IBasicRow); safecall;
    // 返回值为False的话，即不再往下层级节点分发异步任务
    function OnDispatchTask(const AObj: IBasicRow; DispatchTag: Word; var PostTask: WordBool): WordBool; safecall;
    // 保存进度
    procedure OnSaveProgress(const DataSet: ISDataSet; Percent: Integer); safecall;
    // 打开进度
    procedure OnOpenProgress(const DataSet: ISDataSet; Percent: Integer); safecall;
    // 数据库清理进度
    procedure OnPurgeProgress(const DataSet: ISDataSet; Percent: Integer); safecall;
    // 重建外键数据关系进度
    procedure OnRebuildRefProgress(const DataSet: ISDataSet; Percent: Integer); safecall;
    // 在保存数据库文件时触发。此过程中应用层指定数据库文件的标识以及版本号
    procedure OnWriteFileCustomId(const DataSet: ISDataSet; var AFileId: Integer;
                                  var AFileVersion: Word); safecall;
    // 在打开数据库时，触发。同时参考GetDbFileId
    function OnReadFileCustomId(const DataSet: ISDataSet; AFileId: Integer; AFileVersion: Word): WordBool; safecall;
    // 异步任务完成时触发
    procedure OnFinishTask(const DataSet: ISDataSet; const ErrorMsg: WideString); safecall;
    // 重建关键字的进度
    procedure OnRebuildKeyProgress(const DataSet: ISDataSet; Percent: Integer); safecall;
    // 表达式计算时触发，以获取表达式（应用层自定义变量）值
    function OnGetExprValue(const Sender: IBasicRow; const Expr: WideString): Double; safecall;
    // 校验表达式(VerifyExpress)时触发。 参数：PrintExpr即是需返回的参数Expr表达式所对应的打印表达式
    procedure OnGetPrintExpr(const Sender: IBasicRow; const Expr: WideString;
                             var PrintExpr: WideString); safecall;
    // 构建全文索引时进度，参数Count是已完成数
    procedure OnBuildFullTextIndexProgress(const AObj: IBasicRow; Count: Integer;
                                           UnDictTermCount: Integer; var Break: WordBool); safecall;
    // 数据库已编辑状态的改变时触发
    procedure OnEditStateChange(const DataSet: ISDataSet); safecall;
    // 任务队列中有任务时触发
    procedure OnStartTask(const DataSet: ISDataSet); safecall;
    // Xml读取进度
    procedure OnReadXmlProgress(const ADataSet: ISDataSet; Percent: Integer); safecall;
    // Xml写进度
    procedure OnWriteXmlProgress(const ADataSet: ISDataSet; Percent: Integer); safecall;
    //表达式计算时触发，以获得回调函数的值，回调函数形如： XFun(100,200,CallbackExpr)
    //*你可以在表达式中包含任何自定义的函数，在回调时解析函数结果值
    function OnGetFuncValue(const Sender: IBasicRow; const FuncName: WideString;
                            const Params: IFuncParams): Double; safecall;
  end;

// *********************************************************************//
// Interface: IDualIntfList
// Flags:     (256) OleAutomation
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
// Interface: ISGridEvent
// Flags:     (256) OleAutomation
// GUID:      {1D69F45A-48C1-4381-AC58-CDA5A48188FB}
// *********************************************************************//
  ISGridEvent = interface(IUnknown)
    ['{1D69F45A-48C1-4381-AC58-CDA5A48188FB}']
    // 用于显示过滤。在 FlatShow状态时不触发。
    procedure OnFilterObj(const Grid: ISGrid; const AObj: IBasicRow; var Accept: WordBool); safecall;
    // 用于显示过滤。只在 FlatShow状态时触发。
    procedure OnFilterObjFlat(const Grid: ISGrid; const AObj: IBasicRow; var Accept: WordBool); safecall;
    // 用于显示过滤。恰当使用此过滤过程，会提高Grid过滤显示效率
    procedure OnFilterChildren(const Grid: ISGrid; const AParent: IBasicRow;
                               var ChildrenAccept: WordBool); safecall;
    // 当前单元格变化时触发
    procedure OnSelectedCell(const Grid: ISGrid; AGridCol: Integer; AGridRow: Integer;
                             const PriorObj: IBasicRow); safecall;
    // 折叠节点时触发。参数CanDo指示是否允许折叠
    procedure OnCollapseNode(const Sender: ISGrid; const Obj: IBasicRow; Index: Integer;
                             var CanDo: WordBool); safecall;
    // 在行折叠状态改变时触发
    procedure OnNodeExpandChanged(const Sender: ISGrid; const Obj: IBasicRow; Index: Integer;
                                  Expanded: WordBool); safecall;
    // 返回值为行显示的在ImageList中的Image索引
    function OnGetRowImageIndex(const Sender: ISGrid; const Obj: IBasicRow): Integer; safecall;
    // 返回行显示所需Image，返回标准接口类IPicture
    function OnGetRowImage(const Grid: ISGrid; const Obj: IBasicRow): IPicture; safecall;
    // 自行绘制单元格（不常用）
    procedure OnCellDraw(const Grid: ISGrid; const Sender: ISRowField; const Obj: IBasicRow;
                         const ColDef: ISColDef; GridCol: Integer; GridRow: Integer; DC: ULONG_PTR;
                         var Rect: TxRect; const Text: WideString; var Drawn: WordBool); safecall;
    // 是否接受键盘输入
    procedure OnAcceptKey(const Grid: ISGrid; const Sender: ISRowField; const Obj: IBasicRow;
                          AKey: Word; var Accept: WordBool); safecall;
    // 当编辑类型为iesPickList时，下拉列表时，触发
    // 下拉列表有两种类型，ValueList不为空时，下拉列表即为ValueList所提供的StringList
    //                     ValueList为空时，下拉窗口为PopupGrid
    // ValueList不为空时,ValueList的格式如下：
    //    ListItemA,3,2;ListItemB,2;ListItemC,1
    //    其中 ListItemA，ListItemB，ListItemC为显示的三项列表
    //    举例说明：ListItemA,3,2
    //              其中第二项数字3为ListItemA所对应的值内容 ，在OnGetFieldPickValue过程中，参数ListValue=ListItemA,3
    //                  如忽略此值，在OnGetFieldPickValue过程中将添加返回下拉选择的索引号，即，参数ListValue=ListItemA,0
    //              其中第三项数字2为默认的下拉当前行索引号。如忽略，则为0
    procedure OnGetFieldPickList(const Grid: ISGrid; const Sender: ISRowField;
                                 const Obj: IBasicRow; var Width: Integer; var ValueList: WideString); safecall;
    // 当编辑类型为iesPickList，已从下拉中选择时，触发
    // 参数Accept为是否已选择
    // 参数SetEditText为是否改变InplaceEditor的编辑值
    procedure OnGetFieldPickValue(const Grid: ISGrid; const Sender: ISRowField;
                                  const Obj: IBasicRow; const ObjValue: IBasicRow;
                                  var ListValue: WideString; Accept: WordBool;
                                  var SetEditText: WordBool); safecall;
    // 在InplaceEditor改变编辑值时触发
    procedure OnFieldEditChange(const Grid: ISGrid; const Sender: ISRowField; const Obj: IBasicRow;
                                const EditText: WideString); safecall;
    // 在“...”按钮按下时触发
    procedure OnFieldEditButtonClick(const Grid: ISGrid; const Sender: ISRowField;
                                     const Obj: IBasicRow); safecall;
    procedure OnFieldClick(const Grid: ISGrid; const Sender: ISRowField; const Obj: IBasicRow); safecall;
    procedure OnFieldDblClick(const Grid: ISGrid; const Sender: ISRowField; const Obj: IBasicRow); safecall;
    // 编辑参数
    procedure OnGetFieldEditParam(const Grid: ISGrid; const Sender: ISRowField;
                                  const Obj: IBasicRow; const ColDef: ISColDef; GridCol: Integer;
                                  GridRow: Integer; var FontRec: TxFontRec;
                                  var BackParam: TxDrawBackParam); safecall;
    // 绘制参数
    procedure OnGetFieldDrawParam(const Grid: ISGrid; const Sender: ISRowField;
                                  const Obj: IBasicRow; const ColDef: ISColDef; GridCol: Integer;
                                  GridRow: Integer; var FontRec: TxFontRec;
                                  var BackParam: TxDrawBackParam); safecall;
    procedure OnGetFieldEditStyle(const Grid: ISGrid; const Sender: ISRowField;
                                  const Obj: IBasicRow; var EditStyle: TxEditStyle); safecall;
    procedure OnFieldCanEdit(const Grid: ISGrid; const Sender: ISRowField; const Obj: IBasicRow;
                             var AllowEdit: WordBool); safecall;
    procedure OnFieldMouseMove(const Grid: ISGrid; const Sender: ISRowField; const Obj: IBasicRow;
                               ShiftState: Integer); safecall;
    // 显示编辑文本时触发
    procedure OnGetFieldEditText(const Grid: ISGrid; const Sender: ISRowField;
                                 const Obj: IBasicRow; var Value: WideString); safecall;
    // 提交编辑文本时触发
    // 参数DefaultPost默认为false。如果你要按Grid默认方式提交数据修改，DefaultPost置为True,
    // 则系统会调用PostText方法提交编辑数据（参数Value），参考：PostText  GridDefaultEditCommand
    // 注：一般较为复杂的业务场景下，都需要自行提交编辑数据。
    procedure OnSetFieldEditText(const Grid: ISGrid; const Sender: ISRowField;
                                 const Obj: IBasicRow; var Value: WideString;
                                 var DefaultPost: WordBool); safecall;
    // 单元格绘制文本
    procedure OnGetFieldDrawText(const Grid: ISGrid; const Sender: ISRowField;
                                 const Obj: IBasicRow; const ColDef: ISColDef; GridCol: Integer;
                                 GridRow: Integer; var Value: WideString); safecall;
    // 是否定位当前列到下一个TabStop列。如参数DoIt为False，则不按默认定位，应用层自行定位。
    procedure OnTabNextStop(const Grid: ISGrid; var DoIt: WordBool); safecall;
    // 当父Grid改变行时触发，适用于有“Master-Detail”关系的Grid之间
    // 参数Sender为当前Grid，PriorRow为“MasterGrid”中的上一个当前行，CurrRow为“MasterGrid”中的当前行
    procedure OnParentGridChangeRow(const Sender: ISGrid; const PriorRow: IBasicRow;
                                    const CurrRow: IBasicRow); safecall;
    // 设置Custom行高
    procedure OnGetCustomRowHeight(const Grid: ISGrid; const Obj: IBasicRow; Row: Integer;
                                   var Height: Integer); safecall;
    procedure OnHint(const Sender: ISGrid; var HintText: WideString); safecall;
    procedure OnEnter(const Sender: ISGrid); safecall;
    procedure OnExit(const Sender: ISGrid); safecall;
    procedure OnPaste(const Grid: ISGrid; const Data: ISPasteData; AsCut: WordBool;
                      var Succeed: WordBool); safecall;
    // 适用于Grid之间的“Drag”
    procedure OnDragDrop(const Source: ISGrid; const Sender: ISGrid; DropPos: TxDragOverPos;
                         DragOp: TxGridDragOp); safecall;
    // 适用于Grid之间的“Drag”
    procedure OnDragOver(const Source: ISGrid; const Sender: ISGrid; var Accept: WordBool); safecall;
  end;

// *********************************************************************//
// Interface: ISelectList
// Flags:     (256) OleAutomation
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
    // 按Grid中的上下行次序排序
    procedure Sort; safecall;
    property Selected[const AObj: IBasicRow]: WordBool read Get_Selected;
    property Items[Index: Integer]: IBasicRow read Get_Items;
    property Count: Integer read Get_Count;
    property Owner: ISGrid read Get_Owner;
  end;

// *********************************************************************//
// Interface: IViewOption
// Flags:     (256) OleAutomation
// GUID:      {4B90FA92-2AE9-4864-B2DB-77CF64354D53}
// *********************************************************************//
  IViewOption = interface(IUnknown)
    ['{4B90FA92-2AE9-4864-B2DB-77CF64354D53}']
    // 设置行显示所需Picture
    procedure SetPicture(const APic: IPicture); safecall;
    function Get_DefClassName: WideString; safecall;
    procedure Set_DefClassName(const Value: WideString); safecall;
    function Get_ImageIndex: Integer; safecall;
    procedure Set_ImageIndex(Value: Integer); safecall;
    function Get_Index: Integer; safecall;
    procedure Set_Index(Value: Integer); safecall;
    // 类名
    property DefClassName: WideString read Get_DefClassName write Set_DefClassName;
    // ImageList中的索引号
    property ImageIndex: Integer read Get_ImageIndex write Set_ImageIndex;
    property Index: Integer read Get_Index write Set_Index;
  end;

// *********************************************************************//
// Interface: IViewOptions
// Flags:     (256) OleAutomation
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
// Interface: ISSCreator
// Flags:     (256) OleAutomation
// GUID:      {03B02C38-9E0F-4EAA-892C-AB69E6F81B2E}
// *********************************************************************//
// Dataset以及Grid的构造器
// 全局唯一的构造器通过标准Dll函数获得。会话结束时，你需要释放构造器。
// C++示例：
// typedef void(__stdcall* SSCreatorPROC)(struct ISSCreatorEvent*,const wchar_t*, struct ISSCreator**);
// typedef void(__stdcall* SSReleasePROC)(struct ISSCreator**);
// SSCreatorPROC SSCreatorProc;
// SSReleasePROC SSRelease;
// SSCreatorProc = (SSCreatorPROC)GetProcAddress(hDllInst, "GetSSCreator");
// SSRelease = (SSReleasePROC)GetProcAddress(hDllInst, "ReleaseSSCreator");
// SSCreatorProc(pCreatorEvent, L"xxxxxxx", &pSSCreator);
// SSRelease(&pSSCreator);

  ISSCreator = interface(IUnknown)
    ['{03B02C38-9E0F-4EAA-892C-AB69E6F81B2E}']
    // 创建数据库对象
    function CreateDbObj: ISDataSet; safecall;
    // 释放数据库对象
    // 说明：在释放之前，需确保ADb相关的接口对象都已不存在指针引用，包括ISRowField，ISClass等
    //       也就是说确保ADb是最后一个此数据库相关的接口对象指针
    procedure FreeDbObj(var ADb: ISDataSet); safecall;
    function CreateDualIntfList: IDualIntfList; safecall;
    // 此工具方法，用于读取数据库文件的标识Id以及版本Id。如是不可识别的文件，则返回值小于零
    function GetDbFileId(AFileName: PWideChar; out CustomVersion: Word): Integer; safecall;
    // 创建Grid控件。AHostWin是宿主窗口句柄， PPI是当前窗口的PPI(pixels per inch)
    function CreateSGrid(AHostWinH: ULONG_PTR; PPI: Integer): ISGrid; safecall;
    // 释放一个Grid控件。
    // 说明：在释放之前，却确保AGrid相关的接口其他引用已不存在，包括IColDef，IColumn等。
    //       也就是确保AGrid是最后一个此Grid相关的接口指针。
    procedure FreeSGrid(var AGrid: ISGrid); safecall;
    // 处理异步任务，意味着会按照任务优先级处理任务队列中的任务（异步计算，异步通知，异步写数据...）
    // 注：一般情况下，应用层必需在适当时机调用此方法。
    // 两种方法调用此方法：
    //   1. 在当前进程的Idle事件中调用此方法。(建议)
    //   2. 创建一个Timer，在Dataset.OnStartTask事件中“SetTimer”,在Datset.OnFinishTask中“KillTimer”，
    //                     在TimerProc中调用ProcessAsyncTask，
    //      注意事项：由于可能有多个Dataset触发异步任务，所以Timer须有“引用计数”机制
    procedure ProcessAsyncTask; safecall;
    // 应用程序处理异常处理时，如为EOleException类型的，且ErrorCode=-12345，即为此Dll抛出的异常
    // 用GetLastError获得异常错误信息
    procedure GetLastError(out ErrorStr: WideString; out ErrorCode: Integer); safecall;
    // 剪贴板上是否有ISBasicRow对象
    function HaveObjOnClipboard: WordBool; safecall;
    // 在窗口的PPI改变后，需调用，以调整字体，列宽等。
    // 监控顶层窗口的WM_DPIChange消息即可（或依赖于开发平台的事件回调），
    // 参数 ARootWin 指定Grid所在的顶层父窗口即可，即意味着不必针对Grid的Host窗口一一调用。
    procedure SetGridsNewPPI(ARootWin: ULONG_PTR; Value: Word); safecall;
    function Get___GlobRowObjCount: Integer; safecall;
    property __GlobRowObjCount: Integer read Get___GlobRowObjCount;
  end;

// *********************************************************************//
// Interface: ISSCreatorEvent
// Flags:     (256) OleAutomation
// GUID:      {77195328-B9FF-4F80-8964-C78E3D8A1069}
// *********************************************************************//
  ISSCreatorEvent = interface(IUnknown)
    ['{77195328-B9FF-4F80-8964-C78E3D8A1069}']
    procedure OnInformation(Info: PWideChar); safecall;
    procedure OnWarning(WarningInfo: PWideChar); safecall;
    function OnQuestion(QuestionInfo: PWideChar): Integer; safecall;
    procedure OnShortcut(HWin: ULONG_PTR; CharCode: Word; KeyData: Integer; var Handled: WordBool); safecall;
    procedure OnSupportedClipFormatChanged(Format: Integer; IsObjOnClip: WordBool); safecall;
  end;

// *********************************************************************//
// Interface: ISPasteData
// Flags:     (256) OleAutomation
// GUID:      {72A89716-55D1-43A9-980D-1AD963884287}
// *********************************************************************//
  ISPasteData = interface(IUnknown)
    ['{72A89716-55D1-43A9-980D-1AD963884287}']
    function Get_TextRowCount: Integer; safecall;
    function Get_TextColCount(RowIndex: Integer): Integer; safecall;
    function Get_CellText(ColIndex: Integer; RowIndex: Integer): WideString; safecall;
    function Get_ObjCount: Integer; safecall;
    function Get_AsCut: WordBool; safecall;
    function Get_Text: WideString; safecall;
    function Get_Objs(Index: Integer): IBasicRow; safecall;
    property TextRowCount: Integer read Get_TextRowCount;
    property TextColCount[RowIndex: Integer]: Integer read Get_TextColCount;
    property CellText[ColIndex: Integer; RowIndex: Integer]: WideString read Get_CellText;
    property ObjCount: Integer read Get_ObjCount;
    property AsCut: WordBool read Get_AsCut;
    property Text: WideString read Get_Text;
    property Objs[Index: Integer]: IBasicRow read Get_Objs;
  end;

// *********************************************************************//
// Interface: ISFDWord
// Flags:     (256) OleAutomation
// GUID:      {C88253C4-BB64-43D2-B716-C1DFB6FCD380}
// *********************************************************************//
//
  ISFDWord = interface(ISRowField)
    ['{C88253C4-BB64-43D2-B716-C1DFB6FCD380}']
  end;

// *********************************************************************//
// Interface: ISFInteger
// Flags:     (256) OleAutomation
// GUID:      {7B73D894-A488-4766-8A4F-1ADEF08E6747}
// *********************************************************************//
// 四位整数
  ISFInteger = interface(ISRowField)
    ['{7B73D894-A488-4766-8A4F-1ADEF08E6747}']
  end;

// *********************************************************************//
// Interface: ISFSmallInt
// Flags:     (256) OleAutomation
// GUID:      {E8296AC3-2C5F-4157-B5C3-BD0D391FE5D2}
// *********************************************************************//
// 两位整数
  ISFSmallInt = interface(ISRowField)
    ['{E8296AC3-2C5F-4157-B5C3-BD0D391FE5D2}']
  end;

// *********************************************************************//
// Interface: ISFWord
// Flags:     (256) OleAutomation
// GUID:      {4BA634F5-AB90-47EE-8ED1-BB938507D8F4}
// *********************************************************************//
  ISFWord = interface(ISRowField)
    ['{4BA634F5-AB90-47EE-8ED1-BB938507D8F4}']
  end;

// *********************************************************************//
// Interface: ISFByte
// Flags:     (256) OleAutomation
// GUID:      {69A83672-6286-46D0-A78F-FA595FB8613D}
// *********************************************************************//
  ISFByte = interface(ISRowField)
    ['{69A83672-6286-46D0-A78F-FA595FB8613D}']
  end;

// *********************************************************************//
// Interface: ISFAnsiChar
// Flags:     (256) OleAutomation
// GUID:      {EA691296-7C99-4D9B-A691-AFC6305099CD}
// *********************************************************************//
  ISFAnsiChar = interface(ISRowField)
    ['{EA691296-7C99-4D9B-A691-AFC6305099CD}']
  end;

// *********************************************************************//
// Interface: ISFBoolean
// Flags:     (256) OleAutomation
// GUID:      {22FCC73D-79B6-4A5A-910A-D9DD051363C8}
// *********************************************************************//
  ISFBoolean = interface(ISRowField)
    ['{22FCC73D-79B6-4A5A-910A-D9DD051363C8}']
  end;

// *********************************************************************//
// Interface: ISFFloat
// Flags:     (256) OleAutomation
// GUID:      {6E43DCF5-1509-42D8-B174-C3AAEC22B17E}
// *********************************************************************//
// 双精度
  ISFFloat = interface(ISRowField)
    ['{6E43DCF5-1509-42D8-B174-C3AAEC22B17E}']
  end;

// *********************************************************************//
// Interface: ISFInt64
// Flags:     (256) OleAutomation
// GUID:      {117A6A91-63A0-4A93-A327-1B1894448BF6}
// *********************************************************************//
  ISFInt64 = interface(ISRowField)
    ['{117A6A91-63A0-4A93-A327-1B1894448BF6}']
  end;

// *********************************************************************//
// Interface: ISFShortString
// Flags:     (256) OleAutomation
// GUID:      {F7318024-DDE4-492C-9C78-7704EAFAC1DB}
// *********************************************************************//
// 定长字符串
  ISFShortString = interface(ISRowField)
    ['{F7318024-DDE4-492C-9C78-7704EAFAC1DB}']
  end;

// *********************************************************************//
// Interface: ISFAgg
// Flags:     (256) OleAutomation
// GUID:      {6A3B3C20-DD88-42C1-A41B-D52A466720F8}
// *********************************************************************//
// 聚合字段
  ISFAgg = interface(ISRowField)
    ['{6A3B3C20-DD88-42C1-A41B-D52A466720F8}']
  end;

// *********************************************************************//
// Interface: ISFBlob
// Flags:     (256) OleAutomation
// GUID:      {1BAC40CE-4150-4189-91C5-855AB7904A1B}
// *********************************************************************//
// 二进制，任意大小
  ISFBlob = interface(ISRowField)
    ['{1BAC40CE-4150-4189-91C5-855AB7904A1B}']
  end;

// *********************************************************************//
// Interface: ISFPoint3d
// Flags:     (256) OleAutomation
// GUID:      {8BF94E8B-5F03-4FCC-9595-A72BB87AB208}
// *********************************************************************//
// 三维点
  ISFPoint3d = interface(ISRowField)
    ['{8BF94E8B-5F03-4FCC-9595-A72BB87AB208}']
  end;

// *********************************************************************//
// Interface: IFuncParams
// Flags:     (256) OleAutomation
// GUID:      {61CEA8A9-4A03-4BB7-B839-82D63C615558}
// *********************************************************************//
// 回调函数的参数
  IFuncParams = interface(IUnknown)
    ['{61CEA8A9-4A03-4BB7-B839-82D63C615558}']
    function Get_AsOrd(Index: Integer): Integer; safecall;
    function Get_AsFloat(Index: Integer): Double; safecall;
    function Get_Count: Integer; safecall;
    property AsOrd[Index: Integer]: Integer read Get_AsOrd;
    property AsFloat[Index: Integer]: Double read Get_AsFloat;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// Interface: IColGroup
// Flags:     (256) OleAutomation
// GUID:      {11461521-A805-46B8-82E0-A93FBBC67FBB}
// *********************************************************************//
// 显示列的分组定义接口
  IColGroup = interface(IUnknown)
    ['{11461521-A805-46B8-82E0-A93FBBC67FBB}']
    function Get_Color: Integer; safecall;
    procedure Set_Color(Value: Integer); safecall;
    function Get_Font: TxFontRec; safecall;
    procedure Set_Font(Value: TxFontRec); safecall;
    function Get_Caption: WideString; safecall;
    procedure Set_Caption(const Value: WideString); safecall;
    property Color: Integer read Get_Color write Set_Color;
    property Font: TxFontRec read Get_Font write Set_Font;
    property Caption: WideString read Get_Caption write Set_Caption;
  end;

// *********************************************************************//
// Interface: IReferHandler
// Flags:     (256) OleAutomation
// GUID:      {2E8161BB-2A9A-421F-B77A-6D00F53FF432}
// *********************************************************************//
// 遍历引用对象时作为参数的回调接口
  IReferHandler = interface(IUnknown)
    ['{2E8161BB-2A9A-421F-B77A-6D00F53FF432}']
    // 回调处理
    procedure Handler(const ARefer: IBasicRow; var Break: WordBool; ExtInfo: ULONG_PTR); safecall;
  end;

// *********************************************************************//
// Interface: ISFString
// Flags:     (256) OleAutomation
// GUID:      {A4B137FA-FF84-4C09-B925-3EB28078DCE6}
// *********************************************************************//
// 长字符串
// 只有 AsString 和 Value 属性。
  ISFString = interface(ISRowField)
    ['{A4B137FA-FF84-4C09-B925-3EB28078DCE6}']
  end;

implementation

uses System.Win.ComObj;

end.

