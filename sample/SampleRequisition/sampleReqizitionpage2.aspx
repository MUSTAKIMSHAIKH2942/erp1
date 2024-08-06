<%@ Page Language="VB" Theme="BlueChip" AutoEventWireup="false" CodeFile="sampleReqizitionpage2.aspx.vb" Inherits="sampleReqizitionpage2" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Update Sample Request Status</title>
   <link href="../Styles.css" type="text/css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <table id="Table1" class="mainTable">
            <tr>
                <td class="tableheader" align="center" colspan="3">
                    Check whether material is available in Plant
                </td>
            </tr>
            <tr>
                <td class="linespace" colspan="3"></td>
            </tr>
            <tr>
                <td class="tableheader2" colspan="3">
                    Sample Status Update
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    Sample Request ID
                </td>
                <td class="tabledata" colspan="2">
                    <asp:TextBox ID="txtSampleRequestID" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    Is Sample Available In Plant
                </td>
                <td class="tabledata" colspan="2">
                    <asp:RadioButtonList ID="rblIsSampleAvailableInPlant" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Text="Yes" Value="Yes" />
                        <asp:ListItem Text="No" Value="No" />
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="rfvIsSampleAvailableInPlant" runat="server" 
                        ControlToValidate="rblIsSampleAvailableInPlant" 
                        InitialValue="" 
                        ErrorMessage="Selection is required." 
                        CssClass="error-message" 
                        Display="Dynamic" />
                </td>
            </tr>
            <tr>
                <td class="linespace" colspan="3"></td>
            </tr>
            <tr>
                <td colspan="3" align="center">
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn-submit" OnClick="btnUpdate_Click" />
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn-cancel" OnClick="btnCancel_Click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>