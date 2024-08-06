<%@ Page Language="VB" Theme="BlueChip" AutoEventWireup="false" CodeFile="InformCustomerDispatchDetailsPage.aspx.vb" Inherits="InformCustomerDispatchDetailsPage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Inform Customer Dispatch Details</title>
    <link href="../Styles.css" type="text/css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" rel="stylesheet" />
    <script type="text/javascript">
        // Include any necessary JavaScript for datepicker or other interactions here
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <table class="mainTable" align="center">
            <tr>
                <td colspan="2" class="tableheader">
                    Inform Customer on Dispatch Details
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    SR Reference ID:
                </td>
                <td class="tabledata">
                    <asp:TextBox ID="txtSRRefID" runat="server" CssClass="form-control" />
                    <asp:RequiredFieldValidator
                        ID="rfvSRRefID"
                        runat="server"
                        ControlToValidate="txtSRRefID"
                        ErrorMessage="SR Reference ID is required."
                        CssClass="form-error"
                        Display="Dynamic" />
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    Informed Dispatch Details by:
                </td>
                <td class="tabledata">
                    <asp:RadioButtonList ID="rblInformedBy" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Phone / Email / Whatsapp" Value="Yes" />
                        <asp:ListItem Text="Not Informed" Value="No" />
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator
                        ID="rfvInformedBy"
                        runat="server"
                        ControlToValidate="rblInformedBy"
                        InitialValue=""
                        ErrorMessage="Please select an option."
                        CssClass="form-error"
                        Display="Dynamic" />
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    Remarks:
                </td>
                <td class="tabledata">
                    <asp:TextBox ID="txtRemarks" runat="server" TextMode="MultiLine" CssClass="form-control" />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="btnSubmit" runat="server" Text="Insert" OnClick="btnSubmit_Click" CssClass="btn-submit" />
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-secondary" OnClick="btnCancel_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Label ID="lblMessage" runat="server" CssClass="form-message"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
