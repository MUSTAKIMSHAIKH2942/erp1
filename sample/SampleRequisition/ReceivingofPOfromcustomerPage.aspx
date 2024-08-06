<%@ Page Language="VB" Theme="BlueChip" AutoEventWireup="false" CodeFile="ReceivingofPOfromcustomerPage.aspx.vb" Inherits="ReceivingofPOfromcustomerPage" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Receiving of PO from Customer</title>
    <link href="../Styles.css" type="text/css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" rel="stylesheet" />
    <script type="text/javascript">
        $(function () {
            $("#txtExpectedDeliveryDate").datepicker({ dateFormat: 'yy-mm-dd' });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <table class="formTable" align="center">
            <tr>
                <td colspan="2" class="tableheader">
                    Receiving of PO from Customer
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
                    PO Number:
                </td>
                <td class="tabledata">
                    <asp:TextBox ID="txtPONo" runat="server" CssClass="form-control" />
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    Product:
                </td>
                <td class="tabledata">
                    <asp:TextBox ID="txtProduct" runat="server" CssClass="form-control" />
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    Quantity (in Kg):
                </td>
                <td class="tabledata">
                    <asp:TextBox ID="txtQtyInKg" runat="server" CssClass="form-control" />
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    PO Amount:
                </td>
                <td class="tabledata">
                    <asp:TextBox ID="txtPOAmount" runat="server" CssClass="form-control" />
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    Expected Delivery Date:
                </td>
                <td class="tabledata">
                    <asp:TextBox ID="txtExpectedDeliveryDate" runat="server" CssClass="form-control" />
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    Remarks:
                </td>
                <td class="tabledata">
                    <asp:TextBox ID="txtRemarks" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4" />
                </td>
            </tr>
            <tr>
                <td colspan="2" class="button-group">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="btn-submit" />
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" CssClass="btn-cancel" />
                </td>
            </tr>
            <tr>
                <td colspan="2" class="form-message">
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
