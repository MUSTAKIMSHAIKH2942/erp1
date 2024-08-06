﻿<%@ Page Language="VB" Theme="BlueChip" AutoEventWireup="false" CodeFile="DepartmentRequisitionDivpage.aspx.vb" Inherits="DepartmentRequisitionDivpage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Insert Department Requisition Div</title>
   <link href="../Styles.css" type="text/css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <table id="Table1" class="mainTable">
            <tr>
                <td class="tableheader" align="center" colspan="2">
                    R&D Department Requisition to Respective Division
                </td>
            </tr>
            <tr>
                <td class="linespace" colspan="2"></td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    SrRefId:
                </td>
                <td class="tabledata">
                    <asp:TextBox ID="txtSrRefId" runat="server" CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="rfvSrRefId" runat="server" ControlToValidate="txtSrRefId" 
                        ErrorMessage="SrRefId is required" CssClass="error-message" 
                        ForeColor="Red" />
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    Division:
                </td>
                <td class="tabledata">
                    <asp:DropDownList ID="ddlDivision" runat="server" CssClass="form-control">
                        <asp:ListItem Value="">-- Select Division --</asp:ListItem>
                        <asp:ListItem Value="Division A">Polymer</asp:ListItem>
                        <asp:ListItem Value="Division B">Bulk Drugs</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvDivision" runat="server" ControlToValidate="ddlDivision" 
                        InitialValue="" ErrorMessage="Division is required" CssClass="error-message" 
                        ForeColor="Red" />
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    Sample Request Sent:
                </td>
                <td class="tabledata">
                    <asp:DropDownList ID="ddlSampleRequestSent" runat="server" CssClass="form-control">
                        <asp:ListItem Value="Yes">Yes</asp:ListItem>
                        <asp:ListItem Value="No">No</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvSampleRequestSent" runat="server" ControlToValidate="ddlSampleRequestSent" 
                        InitialValue="" ErrorMessage="Sample Request Sent is required" CssClass="error-message" 
                        ForeColor="Red" />
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    Concerned Person Name:
                </td>
                <td class="tabledata">
                    <asp:TextBox ID="txtConcernedPersonName" runat="server" CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="rfvConcernedPersonName" runat="server" ControlToValidate="txtConcernedPersonName" 
                        ErrorMessage="Concerned Person Name is required" CssClass="error-message" 
                        ForeColor="Red" />
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    Material Ready Days:
                </td>
                <td class="tabledata">
                    <asp:TextBox ID="txtMaterialReadyDays" runat="server" CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="rfvMaterialReadyDays" runat="server" ControlToValidate="txtMaterialReadyDays" 
                        ErrorMessage="Material Ready Days are required" CssClass="error-message" 
                        ForeColor="Red" />
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    Remarks:
                </td>
                <td class="tabledata">
                    <asp:TextBox ID="txtRemarks" runat="server" CssClass="form-control" />
                </td>
            </tr>
            <tr>
                <td class="linespace" colspan="2"></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="btnSubmit" runat="server" Text="Insert" CssClass="btn-submit" OnClick="btnSubmit_Click" />
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn-cancel" OnClick="btnCancel_Click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>