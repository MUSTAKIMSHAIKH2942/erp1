<%@ Page Language="VB" Theme="BlueChip" AutoEventWireup="false" CodeFile="CourierDetailsPage.aspx.vb" Inherits="CourierDetailsPage" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Courier Details Entry</title>
      <link href="../Styles.css" type="text/css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" rel="stylesheet" />
    <script type="text/javascript">
        $(function () {
            $("#txtCourierDate").datepicker({ dateFormat: 'yy-mm-dd' });
            $("#txtEstimatedDateOfDelivery").datepicker({ dateFormat: 'yy-mm-dd' });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <table class="formTable" align="center">
            <tr>
                <td colspan="2" class="tableheader">
                    Courier Details Entry Form
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
                    Courier Service Name:
                </td>
                <td class="tabledata">
                    <asp:TextBox ID="txtCourierServiceName" runat="server" CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="rfvCourierServiceName" runat="server" ControlToValidate="txtCourierServiceName" 
                        ErrorMessage="Courier Service Name is required." CssClass="form-error"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    Courier Tracking No:
                </td>
                <td class="tabledata">
                    <asp:TextBox ID="txtCourierTrackingNo" runat="server" CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="rfvCourierTrackingNo" runat="server" ControlToValidate="txtCourierTrackingNo" 
                        ErrorMessage="Courier Tracking No. is required." CssClass="form-error"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    Courier Date:
                </td>
                <td class="tabledata">
                    <asp:TextBox ID="txtCourierDate" runat="server" CssClass="form-control" />
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    Courier Charges:
                </td>
                <td class="tabledata">
                    <asp:TextBox ID="txtCourierCharges" runat="server" CssClass="form-control" />
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    Estimated Date of Delivery:
                </td>
                <td class="tabledata">
                    <asp:TextBox ID="txtEstimatedDateOfDelivery" runat="server" CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="rfvEstimatedDateOfDelivery" runat="server" ControlToValidate="txtEstimatedDateOfDelivery" 
                        ErrorMessage="Estimated Date Of Delivery Required*" CssClass="form-error"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    Upload COA:
                </td>
                <td class="tabledata">
                    <asp:TextBox ID="txtUploadOfCOA" runat="server" CssClass="form-control" />
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    &nbsp;</td>
                <td class="tabledata">
                    <asp:Button ID="btnSubmit" runat="server" Text="Insert" OnClick="btnSubmit_Click" CssClass="btn-submit" />
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-secondary" OnClick="btnCancel_Click" />
               
                </td>
            </tr>
            <tr>
                <td colspan="2" class="button-group">
                    &nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
