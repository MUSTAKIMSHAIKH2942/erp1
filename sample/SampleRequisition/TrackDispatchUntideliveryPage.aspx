<%@ Page Language="VB" Theme="BlueChip" AutoEventWireup="false" CodeFile="TrackDispatchUntideliveryPage.aspx.vb" Inherits="TrackDispatchUntideliveryPage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Track Dispatch Until Delivery</title>
   <link href="../Styles.css" type="text/css" rel="stylesheet">
    <!-- Include jQuery UI CSS -->
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <!-- Include jQuery and jQuery UI JavaScript -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#txtMaterialDeliveryDate").datepicker({ dateFormat: 'yy-mm-dd' });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <table class="mainTable" align="center">
            <tr>
                <td colspan="2" class="tableheader">
                    Track Dispatch Until Delivery & Material Delivery
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    SR Reference ID:
                </td>
                <td class="tabledata">
                    <asp:TextBox ID="txtSRRefID" runat="server" CssClass="form-control" />
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    Material Delivery Date:
                </td>
                <td class="tabledata">
                    <asp:TextBox ID="txtMaterialDeliveryDate" runat="server" CssClass="form-control" />
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    Material Handover To:
                </td>
                <td class="tabledata">
                    <asp:TextBox ID="txtMaterialHandoverTo" runat="server" CssClass="form-control" />
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    Upload POD Copy (URL):
                </td>
                <td class="tabledata">
                    <asp:TextBox ID="txtUploadPODCopy" runat="server" CssClass="form-control" />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center" class="button-row">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-secondary" OnClick="btnCancel_Click" />
                </td>
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