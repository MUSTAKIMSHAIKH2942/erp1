<%@ Page Language="VB"  Theme="BlueChip"  AutoEventWireup="false" CodeFile="ViewSampleRequisition.aspx.vb"
    Inherits="SampleRequisition_ViewSampleRequisition" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="../Styles.css" type="text/css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
    <table id="Table1" class="mainTable" align="center">
        <tr>
            <td class="tableheader" align="center">
                Veiw Sample Requisition
            </td>
        </tr>
        <tr>
            <td class="tabledata" align="right">
                <b>RMCPL_REQUISITION</b>
                <asp:TextBox Style="border-color: SkyBlue" onfocus="textChange('txtSearch')" onblur="textChange('txtSearch')"
                    Text="search" ID="txtSearch" SkinID="SearchTextBox" runat="server"></asp:TextBox>
                <a id="a1" runat="server" causesvalidation="false" style="cursor: hand;" class="searchImage"
                    onserverclick="LoadData">
                    <img src="../Images/Search.gif" id="imgbtnSearch" border="0" runat="server" class="searchImage" /></a>
            </td>
        </tr>
    </table>
    <table id="Table2" align="center" width="860px">
        <tr>
            <td align="center">
                <asp:Label CssClass="searchtxt" ID="lblMessage" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <asp:DataGrid ID="dgRmcplRequisition" runat="server" HorizontalAlign="center" DataKeyField="RMCPL_TID">
        <Columns>
            <asp:TemplateColumn SortExpression="RMCPL_SR_NO" HeaderText="Sample No.">
                <ItemTemplate>
                    <asp:Label ID="lblRMCPL_SR_NO" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.RMCPL_SR_NO")%>'> </asp:Label>
                </ItemTemplate>
            </asp:TemplateColumn>
             <asp:TemplateColumn SortExpression="RMCPL_SAMPLE_NAME" HeaderText="Product">
                <ItemTemplate>
                    <asp:Label ID="lblRMCPL_SAMPLE_NAME" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.RMCPL_SAMPLE_NAME")%>'> </asp:Label>
                </ItemTemplate>
            </asp:TemplateColumn>

            <asp:TemplateColumn SortExpression="RMCPL_DATE" HeaderText="DATE">
                <ItemTemplate>
                    <asp:Label ID="lblRMCPL_DATE" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.RMCPL_DATE","{0:dd/MM/yyyy}")%>'> </asp:Label>
                </ItemTemplate>
            </asp:TemplateColumn>

            <asp:TemplateColumn SortExpression="RMCPL_PACK_SIZE" HeaderText="Packing Size">
                <ItemStyle></ItemStyle>
                <ItemTemplate>
                    <asp:Label ID="lblRMCPL_PACK_SIZE" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.RMCPL_PACK_SIZE")%>'> </asp:Label>
                </ItemTemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn SortExpression="RMCPL_QTY_REQUIRED" HeaderText="Qty">
                <ItemStyle></ItemStyle>
                <ItemTemplate>
                    <asp:Label ID="lblRMCPL_QTY_REQUIRED" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.RMCPL_QTY_REQUIRED")%>'> </asp:Label>
                </ItemTemplate>
            </asp:TemplateColumn>
           <%-- <asp:TemplateColumn SortExpression="RMCPL_SAMPLE_CD" HeaderText="Sample">
                <ItemStyle></ItemStyle>
                <ItemTemplate>
                    <asp:Label ID="lblRMCPL_SAMPLE_CD" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.RMCPL_SAMPLE_CD")%>'> </asp:Label>
                </ItemTemplate>
            </asp:TemplateColumn>--%>
            <asp:TemplateColumn SortExpression="remarks" HeaderText="remarks">
                <ItemStyle></ItemStyle>
                <ItemTemplate>
                    <asp:Label ID="lblremarks" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.remarks")%>'> </asp:Label>
                </ItemTemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn SortExpression="Department" HeaderText="Department">
                <ItemStyle></ItemStyle>
                <ItemTemplate>
                    <asp:Label ID="lblDepartment" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Department")%>'> </asp:Label>
                </ItemTemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn SortExpression="SalesManager" HeaderText="SalesManager">
                <ItemStyle></ItemStyle>
                <ItemTemplate>
                    <asp:Label ID="lblSalesManager" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.SalesManager")%>'> </asp:Label>
                </ItemTemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn SortExpression="IsHODApproved" HeaderText="IsHODApproved">
                <ItemStyle></ItemStyle>
                <ItemTemplate>
                    <asp:Label ID="lblIsHODApproved" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.IsHODApproved")%>'> </asp:Label>
                </ItemTemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Check whether material available in Stores">
                <ItemStyle></ItemStyle>
                <ItemTemplate>
                    <asp:LinkButton ID="lnkbtnAvailableStores" runat="server"    Text="Pending"   CausesValidation="false"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateColumn>

           
            
        </Columns>
    </asp:DataGrid>
                
    <asp:TextBox ID="txtSortField" runat="server" Visible="False"></asp:TextBox>
    </form>
</body>
</html>
