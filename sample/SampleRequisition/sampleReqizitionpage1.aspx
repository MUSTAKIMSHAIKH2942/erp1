﻿<%@ Page Language="VB" Theme="BlueChip" AutoEventWireup="false" CodeFile="sampleReqizitionpage1.aspx.vb" Inherits="sampleReqizitionpage1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Sample Requisition Page</title>
    <link href="../Styles.css" type="text/css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <table id="Table1" align="center" class="mainTable7">
            <tr>
                <td class="tableheader" align="center" colspan="2">
                    Check whether material is available in stores
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    Sample Request ID
                </td>
                <td class="tabledata">
                    <asp:TextBox ID="txtSampleRequestID" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    Is Available In Stores
                </td>
                <td class="tabledata">
                    <asp:RadioButtonList ID="rblIsAvailableInStores" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Text="Yes" Value="Yes" />
                        <asp:ListItem Text="No" Value="No" />
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="rfvIsAvailableInStores" runat="server"
                        ControlToValidate="rblIsAvailableInStores"
                        InitialValue=""
                        ErrorMessage="Selection is required."
                        CssClass="error-message"
                        Display="Dynamic" />
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    &nbsp;</td>
                <td class="tabledata">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn-submit" OnClick="btnSubmit_Click" />
                    <asp:Button ID="btnCancel" CausesValidation="False" runat="server" Text="Cancel" CssClass="btn-cancel" OnClick="btnCancel_Click" />
                </td>
            </tr>
            <tr>
                <td class="linespace" colspan="2"></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    &nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>