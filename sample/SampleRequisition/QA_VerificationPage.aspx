<%@ Page Language="VB" Theme="BlueChip" AutoEventWireup="false" CodeFile="QA_VerificationPage.aspx.vb" Inherits="QA_VerificationPage" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>QA Verification</title>
    <link href="../Styles.css" type="text/css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <table class="formTable" align="center">
            <tr>
                <td colspan="2" class="tableheader">
                    QA Verification Form
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    SRRefID:
                </td>
                <td class="tabledata">
                    <asp:TextBox ID="txtSRRefID" runat="server" CssClass="form-control" />
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    Label Verified:
                </td>
                <td class="tabledata">
                    <asp:RadioButtonList ID="rblLabelVerified" runat="server" CssClass="form-radio">
                        <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    COA Checked:
                </td>
                <td class="tabledata">
                    <asp:RadioButtonList ID="rblCOAChecked" runat="server" CssClass="form-radio">
                        <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    Sample Request Entry:
                </td>
                <td class="tabledata">
                    <asp:RadioButtonList ID="rblSampleRequestEntry" runat="server" CssClass="form-radio">
                        <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    Covering Letter File Path:
                </td>
                <td class="tabledata">
                    <asp:TextBox ID="txtCoveringLetterFilePath" runat="server" CssClass="form-control" />
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    MSDS File Path:
                </td>
                <td class="tabledata">
                    <asp:TextBox ID="txtMSDSFilePath" runat="server" CssClass="form-control" />
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    COA File Path:
                </td>
                <td class="tabledata">
                    <asp:TextBox ID="txtCOAFilePath" runat="server" CssClass="form-control" />
                </td>
            </tr>
            <tr>
                <td colspan="2" class="button-group">
                    <asp:Button ID="btnSubmit" runat="server" Text="Insert" OnClick="btnSubmit_Click" CssClass="btn-submit" />
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-secondary" OnClick="btnCancel_Click" />

                </td>
            </tr>
        </table>
    </form>
</body>
</html>
