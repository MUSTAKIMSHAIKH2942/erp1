Imports System.Data
Imports System.Data.SqlClient

Partial Class CustomerSampleApprovalPage
    Inherits System.Web.UI.Page

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSubmit.Click
        Dim approval As New CustomerSampleApproval()

        ' Set default SampleReqizitionID
        approval.SampleReqizitionID = 1

        ' Assign values from form controls
        approval.SRRefID = txtSRRefID.Text.Trim()
        approval.SampleApprovedByCustomer = rblSampleApprovedByCustomer.SelectedValue
        approval.CustomerReportFilePath = txtCustomerReportFilePath.Text.Trim()
        approval.OnTrackForSaleToCustomer = rblOnTrackForSaleToCustomer.SelectedValue
        approval.ReasonForNotOnTrack = txtReasonForNotOnTrack.Text.Trim()
        approval.NextStepToTrackForSale = txtNextStepToTrackForSale.Text.Trim()

        ' Convert ExpectedOrderDate to DateTime
        Dim expectedOrderDate As Date
        If Date.TryParse(txtExpectedOrderDate.Text.Trim(), expectedOrderDate) Then
            approval.ExpectedOrderDate = expectedOrderDate
        Else
            ' Handle the error if date parsing fails
            
            Return
        End If

        ' Insert data
        Dim success As Boolean = CustomerSampleApproval.InsertCustomerSampleApproval(approval)

        ' Provide feedback
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

    Private Sub ClearForm()
        txtSRRefID.Text = String.Empty
        rblSampleApprovedByCustomer.SelectedIndex = -1
        txtCustomerReportFilePath.Text = String.Empty
        rblOnTrackForSaleToCustomer.SelectedIndex = -1
        txtReasonForNotOnTrack.Text = String.Empty
        txtNextStepToTrackForSale.Text = String.Empty
        txtExpectedOrderDate.Text = String.Empty
    End Sub

    Protected Sub btnCancel_Click(sender As Object, e As System.EventArgs) Handles btnCancel.Click
        ' Optionally, handle cancel logic
    End Sub
End Class
