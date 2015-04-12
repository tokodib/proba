unit uDM;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, pqconnection, sqldb, db, FileUtil, Graphics, Dialogs,
  ExtCtrls, ComCtrls, StdCtrls, Buttons, Controls, ZConnection, ZDataset;

type

  { Tdm }

  Tdm = class(TDataModule)
    dsChoiceCategories: TDataSource;
    dsChoices1: TDataSource;
    dsOptions: TDataSource;
    dsProductopts: TDataSource;
    dsProductOptchoices: TDataSource;
    dsProductopts1: TDataSource;
    dsProducts: TDataSource;
    dsCategories: TDataSource;
    dsChoices: TDataSource;
    dsProducts1: TDataSource;
    dsProducts2: TDataSource;
    ImageList1: TImageList;
    sqlProductsbaseoptions: TStringField;
    sqlProductsbaseprice: TFloatField;
    sqlProductsblurb: TMemoField;
    sqlProductscategoryid: TLongintField;
    sqlProductscomments: TMemoField;
    sqlProductscost: TFloatField;
    sqlProductscreated: TDateTimeField;
    sqlProductsdescription: TMemoField;
    sqlProductsfeatures: TMemoField;
    sqlProductsid: TLongintField;
    sqlProductsimage: TStringField;
    sqlProductslink: TStringField;
    sqlProductsmultiplier: TLongintField;
    sqlProductsname: TStringField;
    sqlProductspublished: TBooleanField;
    sqlProductssku: TStringField;
    sqlProductssortorder: TLongintField;
    sqlProductstitle: TStringField;
    sqlProductsupdated: TDateTimeField;
    sqlProductsweight: TLongintField;
    StringField1: TStringField;
    tProductsbaseoptions: TStringField;
    tProductsbaseprice: TFloatField;
    tProductsblurb: TMemoField;
    tProductscategoryid: TLongintField;
    tProductscomments: TMemoField;
    tProductscost: TFloatField;
    tProductscreated: TDateTimeField;
    tProductsdescription: TMemoField;
    tProductsfeatures: TMemoField;
    tProductsid: TLongintField;
    tProductsimage: TStringField;
    tProductslink: TStringField;
    tProductsmultiplier: TLongintField;
    tProductsname: TStringField;
    tProductspublished: TBooleanField;
    tProductssku: TStringField;
    tProductssortorder: TLongintField;
    tProductstitle: TStringField;
    tProductsupdated: TDateTimeField;
    tProductsweight: TLongintField;
    zConn: TZConnection;
    tProducts: TZTable;
    zsqlCategories: TZQuery;
    zsqlCategoriesblurb: TMemoField;
    zsqlCategoriescomments: TMemoField;
    zsqlCategoriescreated: TDateTimeField;
    zsqlCategoriesdescription: TMemoField;
    zsqlCategoriesid: TLongintField;
    zsqlCategoriesimage: TStringField;
    zsqlCategoriesname: TStringField;
    zsqlCategoriespublished: TBooleanField;
    zsqlCategoriesslug: TStringField;
    zsqlCategoriessortorder: TLongintField;
    zsqlCategoriestitle: TStringField;
    zsqlCategoriesupdated: TDateTimeField;
    zsqlChoiceCategories: TZQuery;
    zsqlChoices1: TZQuery;
    zsqlOptions: TZQuery;
    zsqlProductOpts: TZQuery;
    zsqlProductOptChoices: TZQuery;
    zsqlProductOpts1: TZQuery;
    zsqlProducts: TZQuery;
    zROQ: TZReadOnlyQuery;
    zsqlChoices: TZQuery;
    zsqlProducts1: TZQuery;
    zsqlProducts2: TZQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure zConnAfterConnect(Sender: TObject);
    procedure zConnAfterDisconnect(Sender: TObject);
    procedure zsqlCategoriesAfterScroll(DataSet: TDataSet);
    procedure zsqlChoicesAfterScroll(DataSet: TDataSet);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  dm: Tdm;

implementation
 uses  uMain;
{$R *.lfm}

{ Tdm }


procedure Tdm.zConnAfterConnect(Sender: TObject);
var i : integer;
begin
 frmMain.BitBtn1.Caption:='Disconnect';
 zsqlCategories.Open;
 zsqlProducts.Open;
 zsqlChoices.Open;
 zsqlChoiceCategories.Open;
 zsqlOptions.Open;
 zsqlProductOpts.Open;
 zsqlProducts1.Open;
 zsqlProductOptChoices.Open;
 zsqlProducts2.Open;
 zsqlProductOpts1.Open;
 if zConn.Connected then begin
    for i:=1 to frmMain.PageControl1.PageCount-1 do
       frmMain.PageControl1.Pages[i].TabVisible:=true;

//   frmMain.tbProdRefreshCategories.Click;
  end;

end;

procedure Tdm.zConnAfterDisconnect(Sender: TObject);
var i : integer;
begin
 if not zConn.Connected then begin
   for i:=1 to frmMain.PageControl1.PageCount-1 do
       frmMain.PageControl1.Pages[i].TabVisible:=false;
 end;
  frmMain.BitBtn1.Caption:='Connect';
end;

procedure Tdm.zsqlCategoriesAfterScroll(DataSet: TDataSet);
begin

end;

procedure Tdm.zsqlChoicesAfterScroll(DataSet: TDataSet);
var year, month, day : word;
    hh, mm, ss, ms : word;
begin
  decodedate(dm.zsqlChoices.FieldByName('created').AsDateTime, year, month, day);
  frmMain.calChCreated.DateTime:=encodedate(year, month, day);

  decodedate(dm.zsqlChoices.FieldByName('updated').AsDateTime, year, month, day);
  frmMain.calChUpdated.DateTime:=encodedate(year, month, day);


  decodetime(dm.zsqlChoices.FieldByName('created').AsDateTime, hh, mm, ss, ms);
  frmMain.lchCreatTime.Caption:=inttostr(hh)+':'+inttostr(mm)+':'+inttostr(ss);

  decodetime(dm.zsqlChoices.FieldByName('updated').AsDateTime, hh, mm, ss, ms);
  frmMain.lchUpdateTime.Caption:=inttostr(hh)+':'+inttostr(mm)+':'+inttostr(ss);
end;

procedure Tdm.DataModuleCreate(Sender: TObject);
 var i : integer;
begin
  if not zConn.Connected then begin
    for i:=1 to frmMain.PageControl1.PageCount-1 do
        frmMain.PageControl1.Pages[i].TabVisible:=false;
  end;
end;

end.

