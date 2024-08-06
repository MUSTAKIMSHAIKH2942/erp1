Imports System.Data
Imports System.Data.SqlClient

Partial Class ReceivingofPOfromcustomerPage
    Inherits System.Web.UI.Page

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSubmit.Click
        ' Create an instance of the ReceivingofPOfromcustomer class
        Dim receivingDetails As New ReceivingofPOfromcustomer()

        ' Assign values from form controls to the properties of the class
        receivingDetails.SRRefID = txtSRRefID.Text.Trim()
        receivingDetails.PONo = txtPONo.Text.Trim()
        receivingDetails.Product = txtProduct.Text.Trim()
        receivingDetails.QtyInKg = Convert.ToDecimal(txtQtyInKg.Text.Trim())
        receivingDetails.POAmount = Convert.ToDecimal(txtPOAmount.Text.Trim())
        receivingDetails.ExpectedDeliveryDate = Convert.ToDateTime(txtExpectedDeliveryDate.Text.Trim())
        receivingDetails.Remarks = txtRemarks.Text.Trim()
        receivingDetails.SampleReqizitionID = 1


        ' Call the method to insert the record into the database
        Dim success As Boolean = ReceivingofPOfromcustomer.InsertReceivingOfPOFromCustomer(receivingDetails)

        ' Display a message and redirect based on the success of the operation
        If success Then
            ClearForm()
            lblMessage.Text = "Record inserted successfully."
            lblMessage.ForeColor = System.Drawing.Color.Green
            Response.Redirect("SuccessResponse.aspx")
        Else
            lblMessage.Text = "Error occurred while inserting the record."
            lblMessage.ForeColor = System.Drawing.Color.Red
        End If
    End Sub

    ' Method to clear the form fields
    Private Sub ClearForm()
        txtSRRefID.Text = String.Empty
        txtPONo.Text = String.Empty
        txtProduct.Text = String.Empty
        txtQtyInKg.Text = String.Empty
        txtPOAmount.Text = String.Empty
        txtExpectedDeliveryDate.Text = String.Empty
        txtRemarks.Text = String.Empty
    End Sub

    Protected Sub btnCancel_Click(sender As Object, e As EventArgs) Handles btnCancel.Click
        ' Implement cancel logic if needed
    End Sub
End Class
