unit uMain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  ComCtrls, StdCtrls, Buttons, DBGrids, DbCtrls, Calendar, EditBtn, types, db,
  ZConnection, ZDataset;

type

  { TfrmMain }

  TfrmMain = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    calChCreated: TCalendar;
    calChUpdated: TCalendar;
    cbProdCategories1: TComboBox;
    cbProdCategories2: TComboBox;
    cbProductsPublished: TCheckBox;
    cbProdCategories: TComboBox;
    cbChoicesGroup: TComboBox;
    cbchoicespublished: TCheckBox;
    cbCategoriesPublished: TCheckBox;
    cbProductsPublished1: TCheckBox;
    cbProductsPublished2: TCheckBox;
    DBGrid1: TDBGrid;
    DBGrid10: TDBGrid;
    DBGrid11: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    DBGrid6: TDBGrid;
    DBGrid7: TDBGrid;
    DBGrid8: TDBGrid;
    DBGrid9: TDBGrid;
    DBMemo1: TDBMemo;
    DBMemo10: TDBMemo;
    DBMemo11: TDBMemo;
    DBMemo12: TDBMemo;
    DBMemo13: TDBMemo;
    DBMemo14: TDBMemo;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    DBMemo4: TDBMemo;
    DBMemo5: TDBMemo;
    DBMemo6: TDBMemo;
    DBMemo7: TDBMemo;
    DBMemo8: TDBMemo;
    DBMemo9: TDBMemo;
    DBText1: TDBText;
    DBText2: TDBText;
    eOptionsFilter: TEdit;
    eProductFilter: TEdit;
    ePort: TLabeledEdit;
    eCategoriesFilter: TEdit;
    echoicesFilter: TEdit;
    eChoicecategoriesFilter: TEdit;
    eProductFilter1: TEdit;
    eProductFilter2: TEdit;
    GroupBox1: TGroupBox;
    eHost: TLabeledEdit;
    eDB: TLabeledEdit;
    eUN: TLabeledEdit;
    ePW: TLabeledEdit;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lchCreatTime: TLabel;
    lchUpdateTime: TLabel;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel2: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel28: TPanel;
    Panel29: TPanel;
    Panel3: TPanel;
    Panel30: TPanel;
    Panel31: TPanel;
    Panel32: TPanel;
    Panel33: TPanel;
    Panel34: TPanel;
    Panel35: TPanel;
    Panel36: TPanel;
    Panel37: TPanel;
    Panel38: TPanel;
    Panel39: TPanel;
    Panel4: TPanel;
    Panel40: TPanel;
    Panel41: TPanel;
    Panel42: TPanel;
    Panel43: TPanel;
    Panel44: TPanel;
    Panel45: TPanel;
    Panel46: TPanel;
    Panel47: TPanel;
    Panel48: TPanel;
    Panel49: TPanel;
    Panel5: TPanel;
    Panel50: TPanel;
    Panel51: TPanel;
    Panel52: TPanel;
    Panel53: TPanel;
    Panel54: TPanel;
    Panel55: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Splitter1: TSplitter;
    Splitter10: TSplitter;
    Splitter11: TSplitter;
    Splitter12: TSplitter;
    Splitter13: TSplitter;
    Splitter14: TSplitter;
    Splitter15: TSplitter;
    Splitter16: TSplitter;
    Splitter17: TSplitter;
    Splitter18: TSplitter;
    Splitter19: TSplitter;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    Splitter4: TSplitter;
    Splitter5: TSplitter;
    Splitter6: TSplitter;
    Splitter7: TSplitter;
    Splitter8: TSplitter;
    Splitter9: TSplitter;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    tbProdRefreshCategories1: TToolButton;
    tbProdRefreshCategories2: TToolButton;
    tbRefreshChoicesGroup: TToolButton;
    ToolBar1: TToolBar;
    tbProdRefreshCategories: TToolButton;
    ToolBar2: TToolBar;
    ToolBar3: TToolBar;
    ToolBar4: TToolBar;
    ToolBar5: TToolBar;
    ToolBar6: TToolBar;
    ToolBar7: TToolBar;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure calCreatedChange(Sender: TObject);
    procedure calCreatedDayChanged(Sender: TObject);
    procedure cbCategoriesPublishedChange(Sender: TObject);
    procedure cbChoicesGroupChange(Sender: TObject);
    procedure cbProdCategories1Change(Sender: TObject);
    procedure cbProdCategories2Change(Sender: TObject);
    procedure cbProdCategoriesChange(Sender: TObject);
    procedure cbchoicespublishedChange(Sender: TObject);
    procedure cbProductsPublished1Change(Sender: TObject);
    procedure cbProductsPublished2Change(Sender: TObject);
    procedure cbProductsPublishedChange(Sender: TObject);
    procedure DBGrid11TitleClick(Column: TColumn);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid2TitleClick(Column: TColumn);
    procedure DBGrid3TitleClick(Column: TColumn);
    procedure DBGrid4TitleClick(Column: TColumn);
    procedure DBGrid5TitleClick(Column: TColumn);
    procedure DBGrid6TitleClick(Column: TColumn);
    procedure DBGrid9TitleClick(Column: TColumn);
    procedure eCategoriesFilterChange(Sender: TObject);
    procedure eChoicecategoriesFilterChange(Sender: TObject);
    procedure echoicesFilterChange(Sender: TObject);
    procedure eOptionsFilterChange(Sender: TObject);
    procedure eProductFilter1Change(Sender: TObject);
    procedure eProductFilter2Change(Sender: TObject);
    procedure eProductFilterChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure PageControl1Enter(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure TabSheet3ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure TabSheet5Enter(Sender: TObject);
    procedure TabSheet7Enter(Sender: TObject);
    procedure tbProdRefreshCategories1Click(Sender: TObject);
    procedure tbProdRefreshCategories2Click(Sender: TObject);
    procedure tbProdRefreshCategoriesClick(Sender: TObject);
    procedure tbRefreshChoicesGroupClick(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
  private
    { private declarations }
    strorderingproducts : string;
    strorderingproducts1 : string;
    strorderingcategories : string;
    strorderingchoicecategories : string;
    strorderingchoices : string;
    strorderingoptions : string;
    strorderingproducts2 : string;
    strorderingchoices1 : string;
    procedure optionsfiltering;
    procedure productsfiltering;
    procedure productsfiltering1;
    procedure productsfiltering2;
    procedure categoriesfiltering;
    procedure choicecategoriesfiltering;
    procedure choicesFiltering;
  public
    { public declarations }
  end;

var
  frmMain: TfrmMain;

implementation
   uses uDM;
{$R *.lfm}

{ TfrmMain }

procedure TfrmMain.PageControl1Change(Sender: TObject);
begin

end;

procedure TfrmMain.PageControl1Enter(Sender: TObject);
begin
  tbProdRefreshCategories.Click;
end;

procedure TfrmMain.productsfiltering;
begin
 with dm.zROQ,SQL do
   begin
     Close;
     Clear;
     Add('SELECT id FROM categories');
     Add('WHERE name = '''+cbProdCategories.Text+'''');
     Open;
   end;


  with dm.zsqlProducts, SQL do
   begin
     Close;
     Clear;
     Add('SELECT p.*, c.id, c.name');
     Add('FROM products p, categories c');
     Add('WHERE (p.categoryid = c.id)');
     if cbProdCategories.ItemIndex>0 then Add(' and (c.id='+dm.zROQ.FieldByName('id').AsString+')');

     if eProductFilter.Text>'' then
        Add('and (p.name like ''%'+eProductFilter.Text+'%'')');

     if cbProductsPublished.State = cbChecked then
        Add('and (p.published = TRUE)');

     if cbProductsPublished.State = cbUnChecked then
        Add('and (p.published = FALSE)');

     Open;
   end;

 dm.zROQ.Close;
 dm.zROQ.SQL.Clear;
end;
procedure TfrmMain.productsfiltering1;
begin
 with dm.zROQ,SQL do
   begin
     Close;
     Clear;
     Add('SELECT id FROM categories');
     Add('WHERE name = '''+cbProdCategories1.Text+'''');
     Open;
   end;


  with dm.zsqlProducts1, SQL do
   begin
     Close;
     Clear;
     Add('SELECT p.*, c.id, c.name');
     Add('FROM products p, categories c');
     Add('WHERE (p.categoryid = c.id)');
     if cbProdCategories1.ItemIndex>0 then Add(' and (c.id='+dm.zROQ.FieldByName('id').AsString+')');

     if eProductFilter1.Text>'' then
        Add('and (p.name like ''%'+eProductFilter1.Text+'%'')');

     if cbProductsPublished1.State = cbChecked then
        Add('and (p.published = TRUE)');

     if cbProductsPublished1.State = cbUnChecked then
        Add('and (p.published = FALSE)');

     Open;
   end;

 dm.zROQ.Close;
 dm.zROQ.SQL.Clear;
end;

procedure TfrmMain.productsfiltering2;
begin
 with dm.zROQ,SQL do
   begin
     Close;
     Clear;
     Add('SELECT id FROM categories');
     Add('WHERE name = '''+cbProdCategories2.Text+'''');
     Open;
   end;


  with dm.zsqlProducts2, SQL do
   begin
     Close;
     Clear;
     Add('SELECT p.*, c.id, c.name');
     Add('FROM products p, categories c');
     Add('WHERE (p.categoryid = c.id)');
     if cbProdCategories2.ItemIndex>0 then Add(' and (c.id='+dm.zROQ.FieldByName('id').AsString+')');

     if eProductFilter2.Text>'' then
        Add('and (p.name like ''%'+eProductFilter2.Text+'%'')');

     if cbProductsPublished2.State = cbChecked then
        Add('and (p.published = TRUE)');

     if cbProductsPublished2.State = cbUnChecked then
        Add('and (p.published = FALSE)');

     Open;
   end;

 dm.zROQ.Close;
 dm.zROQ.SQL.Clear;
end;

procedure TfrmMain.choicesFiltering;
begin
 with dm.zROQ,SQL do
   begin
     Close;
     Clear;
     Add('SELECT id FROM choicecategories');
     Add('WHERE name = '''+cbChoicesGroup.Text+'''');
     Open;
   end;


  with dm.zsqlChoices, SQL do
   begin
     Close;
     Clear;
     Add('SELECT c.*, ch.id, ch.name');
     Add('FROM choices c, choicecategories ch');
     Add('WHERE (c.choicecategory_id = ch.id)');
     if cbChoicesGroup.ItemIndex>0 then Add(' and (ch.id='+dm.zROQ.FieldByName('id').AsString+')');

     if echoicesFilter.Text>'' then
        Add('and (c.name like ''%'+echoicesFilter.Text+'%'')');

     if cbchoicespublished.State = cbChecked then
        Add('and (c.published = TRUE)');

     if cbchoicespublished.State = cbUnChecked then
        Add('and (c.published = FALSE)');


     Open;
   end;

 dm.zROQ.Close;
 dm.zROQ.SQL.Clear;
end;

procedure TfrmMain.optionsfiltering;
begin
  with dm.zsqlOptions, SQL do
   begin
     Close;
     Clear;
     Add('SELECT *');
     Add('FROM options');


     if eOptionsFilter.Text>'' then begin
       Add('WHERE ');
       Add('((name like ''%'+eOptionsFilter.Text+'%'') or');
       Add('(usage_notes like ''%'+eOptionsFilter.Text+'%''))');
     end;
     Open;
   end;
end;



procedure TfrmMain.SpeedButton1Click(Sender: TObject);
begin

end;

procedure TfrmMain.categoriesfiltering;
begin
  with dm.zsqlCategories, SQL do
   begin
     Close;
     Clear;
     Add('SELECT *');
     Add('FROM categories');


     if eCategoriesFilter.Text>'' then begin
       Add('WHERE ');
       Add('((name like ''%'+eCategoriesFilter.Text+'%'') or');
       Add('(title like ''%'+eCategoriesFilter.Text+'%'') or');
       Add('(slug like ''%'+eCategoriesFilter.Text+'%''))');

       if cbCategoriesPublished.State = cbChecked then
          Add('and (published = TRUE)');

       if cbCategoriesPublished.State = cbUnChecked then
          Add('and (published = FALSE)');


     end
      else
        begin
          if cbCategoriesPublished.State = cbChecked then
             Add('WHERE (published = TRUE)');

          if cbCategoriesPublished.State = cbUnChecked then
             Add('WHERE (published = FALSE)');
        end;


     Open;
   end;
end;

procedure TfrmMain.choicecategoriesfiltering;
begin
  with dm.zsqlChoiceCategories, SQL do
   begin
     Close;
     Clear;
     Add('SELECT *');
     Add('FROM choicecategories');


     if eChoicecategoriesFilter.Text>'' then
       Add('WHERE (name like ''%'+eChoicecategoriesFilter.Text+'%'')');

     Open;
   end;
end;

procedure TfrmMain.TabSheet3ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin

end;

procedure TfrmMain.TabSheet5Enter(Sender: TObject);
begin
end;

procedure TfrmMain.TabSheet7Enter(Sender: TObject);
begin

end;

procedure TfrmMain.tbProdRefreshCategories1Click(Sender: TObject);
begin
   with dm.zROQ, SQL do
   begin
     Close;
     Clear;
     Add('SELECT * FROM categories');
     Open;
     First;

     cbProdCategories1.Items.Clear;
     cbProdCategories1.Items.Add('"ALL"');

     While not EOF do
      begin
       cbProdCategories1.Items.Add(Fieldbyname('name').AsString);
       Next;
      end;
     Close;
     Clear;
   end;
  cbProdCategories1.ItemIndex:=0;
  productsfiltering1;
end;

procedure TfrmMain.tbProdRefreshCategories2Click(Sender: TObject);
begin
   with dm.zROQ, SQL do
   begin
     Close;
     Clear;
     Add('SELECT * FROM categories');
     Open;
     First;

     cbProdCategories2.Items.Clear;
     cbProdCategories2.Items.Add('"ALL"');

     While not EOF do
      begin
       cbProdCategories2.Items.Add(Fieldbyname('name').AsString);
       Next;
      end;
     Close;
     Clear;
   end;
  cbProdCategories2.ItemIndex:=0;
  productsfiltering2;
end;

procedure TfrmMain.tbProdRefreshCategoriesClick(Sender: TObject);
begin
  with dm.zROQ, SQL do
   begin
     Close;
     Clear;
     Add('SELECT * FROM categories');
     Open;
     First;

     cbProdCategories.Items.Clear;
     cbProdCategories.Items.Add('"ALL"');

     While not EOF do
      begin
       cbProdCategories.Items.Add(Fieldbyname('name').AsString);
       Next;
      end;
     Close;
     Clear;
   end;
  cbProdCategories.ItemIndex:=0;
  productsfiltering;
end;

procedure TfrmMain.tbRefreshChoicesGroupClick(Sender: TObject);
begin
    with dm.zROQ, SQL do
   begin
     Close;
     Clear;
     Add('SELECT * FROM choicecategories');
     Open;
     First;

     cbChoicesGroup.Items.Clear;
     cbChoicesGroup.Items.Add('"ALL"');

     While not EOF do
      begin
       cbChoicesGroup.Items.Add(Fieldbyname('name').AsString);
       Next;
      end;
     Close;
     Clear;
   end;
  cbChoicesGroup.ItemIndex:=0;
 choicesFiltering;

end;

procedure TfrmMain.ToolButton4Click(Sender: TObject);
begin
end;

procedure TfrmMain.BitBtn1Click(Sender: TObject);
begin
 if not dm.zConn.Connected then begin
  dm.zConn.HostName:= eHost.Text;
  dm.zConn.Database:=edb.Text;
  dm.zConn.User:=eun.Text;
  dm.zConn.Password:=ePW.Text;
  dm.zConn.Connect;
  tbProdRefreshCategories1.Click;
  tbProdRefreshCategories2.Click;
  tbProdRefreshCategories.Click;
  tbRefreshChoicesGroup.Click;
 end
  else
   dm.zConn.Disconnect;

end;

procedure TfrmMain.Button1Click(Sender: TObject);
begin

end;

procedure TfrmMain.calCreatedChange(Sender: TObject);
begin

end;

procedure TfrmMain.calCreatedDayChanged(Sender: TObject);
begin

end;

procedure TfrmMain.cbCategoriesPublishedChange(Sender: TObject);
begin
  categoriesfiltering;
end;

procedure TfrmMain.cbChoicesGroupChange(Sender: TObject);
begin
  choicesFiltering;;
end;

procedure TfrmMain.cbProdCategories1Change(Sender: TObject);
begin
  productsfiltering1;
end;

procedure TfrmMain.cbProdCategories2Change(Sender: TObject);
begin
  productsfiltering2;
end;

procedure TfrmMain.cbProdCategoriesChange(Sender: TObject);
begin
productsfiltering;
end;

procedure TfrmMain.cbchoicespublishedChange(Sender: TObject);
begin
  choicesFiltering;
end;

procedure TfrmMain.cbProductsPublished1Change(Sender: TObject);
begin
  productsfiltering1;
end;

procedure TfrmMain.cbProductsPublished2Change(Sender: TObject);
begin
  productsfiltering2;
end;

procedure TfrmMain.cbProductsPublishedChange(Sender: TObject);
begin
  productsfiltering;
end;

procedure TfrmMain.DBGrid11TitleClick(Column: TColumn);
  var i : integer;
begin
 dm.zsqlChoices1.SortedFields:=column.FieldName;

 dm.zsqlChoices1.SortType:=dm.zsqlChoices1.SortType.stAscending;

 if (strorderingchoices1=column.FieldName) then
       begin
         dm.zsqlChoices1.SortType := dm.zsqlChoices1.SortType.stDescending;
         strorderingchoices1:='';
       end
        else
          strorderingchoices1 :=  dm.zsqlChoices1.SortedFields;



 for i:=0 to DBGrid11.Columns.Count-1 do
    dbgrid11.Columns.Items[i].Color:=clWindow;

 column.Color:=clMoneyGreen;
end;

procedure TfrmMain.DBGrid1TitleClick(Column: TColumn);
var i : integer;
begin
 dm.zsqlProducts.SortedFields:=column.FieldName;

 dm.zsqlProducts.SortType:=dm.zsqlProducts.SortType.stAscending;

 if (strorderingproducts=column.FieldName) then
       begin
         dm.zsqlProducts.SortType := dm.zsqlProducts.SortType.stDescending;
         strorderingproducts:='';
       end
        else
          strorderingproducts :=  dm.zsqlProducts.SortedFields;



 for i:=0 to DBGrid1.Columns.Count-1 do
    dbgrid1.Columns.Items[i].Color:=clWindow;

 column.Color:=clMoneyGreen;
end;

procedure TfrmMain.DBGrid2TitleClick(Column: TColumn);
var i : integer;
begin
 dm.zsqlCategories.SortedFields:=column.FieldName;

 dm.zsqlCategories.SortType:=dm.zsqlCategories.SortType.stAscending;

 if (strorderingcategories=column.FieldName) then
       begin
         dm.zsqlCategories.SortType := dm.zsqlCategories.SortType.stDescending;
         strorderingcategories:='';
       end
        else
          strorderingcategories :=  dm.zsqlCategories.SortedFields;



 for i:=0 to DBGrid2.Columns.Count-1 do
    dbgrid2.Columns.Items[i].Color:=clWindow;

 column.Color:=clMoneyGreen;


end;

procedure TfrmMain.DBGrid3TitleClick(Column: TColumn);
var i : integer;
begin
 dm.zsqlOptions.SortedFields:=column.FieldName;

 dm.zsqlOptions.SortType:=dm.zsqlOptions.SortType.stAscending;

 if (strorderingoptions=column.FieldName) then
       begin
         dm.zsqlOptions.SortType := dm.zsqlOptions.SortType.stDescending;
         strorderingoptions:='';
       end
        else
          strorderingoptions :=  dm.zsqlOptions.SortedFields;



 for i:=0 to DBGrid3.Columns.Count-1 do
    dbgrid3.Columns.Items[i].Color:=clWindow;

 column.Color:=clMoneyGreen;
end;

procedure TfrmMain.DBGrid4TitleClick(Column: TColumn);
var i : integer;
begin
 dm.zsqlProducts1.SortedFields:=column.FieldName;

 dm.zsqlProducts1.SortType:=dm.zsqlProducts1.SortType.stAscending;

 if (strorderingproducts1=column.FieldName) then
       begin
         dm.zsqlProducts1.SortType := dm.zsqlProducts1.SortType.stDescending;
         strorderingproducts1:='';
       end
        else
          strorderingproducts1 :=  dm.zsqlProducts1.SortedFields;



 for i:=0 to DBGrid4.Columns.Count-1 do
    dbgrid4.Columns.Items[i].Color:=clWindow;

 column.Color:=clMoneyGreen;
end;

procedure TfrmMain.DBGrid5TitleClick(Column: TColumn);
var i : integer;
begin
 dm.zsqlChoices.SortedFields:=column.FieldName;

 dm.zsqlChoices.SortType:=dm.zsqlChoices.SortType.stAscending;

 if (strorderingchoices=column.FieldName) then
       begin
         dm.zsqlChoices.SortType := dm.zsqlChoices.SortType.stDescending;
         strorderingchoices:='';
       end
        else
          strorderingchoices :=  dm.zsqlChoices.SortedFields;



 for i:=0 to DBGrid5.Columns.Count-1 do
    dbgrid5.Columns.Items[i].Color:=clWindow;

 column.Color:=clMoneyGreen;

end;

procedure TfrmMain.DBGrid6TitleClick(Column: TColumn);
var i : integer;
begin
 dm.zsqlChoiceCategories.SortedFields:=column.FieldName;

 dm.zsqlChoiceCategories.SortType:=dm.zsqlChoiceCategories.SortType.stAscending;

 if (strorderingchoicecategories=column.FieldName) then
       begin
         dm.zsqlChoiceCategories.SortType := dm.zsqlChoiceCategories.SortType.stDescending;
         strorderingchoicecategories:='';
       end
        else
          strorderingchoicecategories :=  dm.zsqlChoiceCategories.SortedFields;



 for i:=0 to DBGrid6.Columns.Count-1 do
    dbgrid6.Columns.Items[i].Color:=clWindow;

 column.Color:=clMoneyGreen;
end;

procedure TfrmMain.DBGrid9TitleClick(Column: TColumn);
  var i : integer;
begin
 dm.zsqlProducts1.SortedFields:=column.FieldName;

 dm.zsqlProducts1.SortType:=dm.zsqlProducts1.SortType.stAscending;

 if (strorderingproducts2=column.FieldName) then
       begin
         dm.zsqlProducts1.SortType := dm.zsqlProducts1.SortType.stDescending;
         strorderingproducts2:='';
       end
        else
          strorderingproducts2 :=  dm.zsqlProducts1.SortedFields;



 for i:=0 to DBGrid9.Columns.Count-1 do
    dbgrid9.Columns.Items[i].Color:=clWindow;

 column.Color:=clMoneyGreen;
end;

procedure TfrmMain.eCategoriesFilterChange(Sender: TObject);
begin
  categoriesfiltering;
end;

procedure TfrmMain.eChoicecategoriesFilterChange(Sender: TObject);
begin
  choicecategoriesfiltering;
end;

procedure TfrmMain.echoicesFilterChange(Sender: TObject);
begin
  choicesFiltering;
end;

procedure TfrmMain.eOptionsFilterChange(Sender: TObject);
begin
  optionsfiltering;
end;

procedure TfrmMain.eProductFilter1Change(Sender: TObject);
begin
  productsfiltering1;
end;

procedure TfrmMain.eProductFilter2Change(Sender: TObject);
begin
  productsfiltering2;
end;

procedure TfrmMain.eProductFilterChange(Sender: TObject);
begin
  productsfiltering;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
end;

end.

