<%@ Page Language="VB" Theme="BlueChip" AutoEventWireup="false" CodeFile="CustomerSampleReceiptCheckPage.aspx.vb" Inherits="CustomerSampleReceiptCheckPage" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Customer Sample Receipt Check</title>
   <link href="../Styles.css" type="text/css" rel="stylesheet">
    <!-- Include jQuery UI CSS -->
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <!-- Include jQuery and jQuery UI JavaScript -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#txtExpectedTestingDate").datepicker({ dateFormat: 'yy-mm-dd' });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <table id="Table1" class="mainTable">
            <tr>
                <td class="tableheader" align="center" colspan="2">
                    Customer Sample Receipt Check
                </td>
            </tr>
            <tr>
                <td class="linespace" colspan="2"></td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    Sample Request ID:
                </td>
                <td class="tabledata">
                    <asp:TextBox ID="txtSRRefID" runat="server" CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="rfvSRRefID" runat="server" ControlToValidate="txtSRRefID" 
                        ErrorMessage="Sample Request ID is required" CssClass="error-message" 
                        ForeColor="Red" />
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    Whether Material Received in good condition?
                </td>
                <td class="tabledata">
                    <asp:RadioButtonList ID="rblMaterialReceivedInGoodCondition" runat="server" CssClass="form-control">
                        <asp:ListItem Value="Yes">Yes</asp:ListItem>
                        <asp:ListItem Value="No">No</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="rfvMaterialReceivedInGoodCondition" runat="server" ControlToValidate="rblMaterialReceivedInGoodCondition" 
                        InitialValue="" ErrorMessage="Selection is required" CssClass="error-message" 
                        ForeColor="Red" />
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    Whether all supporting documentation received?
                </td>
                <td class="tabledata">
                    <asp:RadioButtonList ID="rblSupportingDocumentationReceived" runat="server" CssClass="form-control">
                        <asp:ListItem Value="Yes">Yes</asp:ListItem>
                        <asp:ListItem Value="No">No</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="rfvSupportingDocumentationReceived" runat="server" ControlToValidate="rblSupportingDocumentationReceived" 
                        InitialValue="" ErrorMessage="Selection is required" CssClass="error-message" 
                        ForeColor="Red" />
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    Expected testing date given by the customer:
                </td>
                <td class="tabledata">
                    <asp:TextBox ID="txtExpectedTestingDate" runat="server" CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="rfvExpectedTestingDate" runat="server" ControlToValidate="txtExpectedTestingDate" 
                        ErrorMessage="Expected testing date is required" CssClass="error-message" 
                        ForeColor="Red" />
                </td>
            </tr>
            <tr>
                <td class="fieldheaders">
                    Other Remarks if any:
                </td>
                <td class="tabledata">
                    <asp:TextBox ID="txtOtherRemarks" runat="server" CssClass="form-control" TextMode="MultiLine" />
                </td>
            </tr>
            <tr>
                <td class="linespace" colspan="2"></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-secondary" OnClick="btnCancel_Click" />
                </td>
            </tr>
        </table>
        <asp:Label ID="lblMessage" runat="server" CssClass="message"></asp:Label>
    </form>
</body>
</html>