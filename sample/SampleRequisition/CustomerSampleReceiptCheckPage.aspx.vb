Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class CustomerSampleReceiptCheckPage
    Inherits System.Web.UI.Page

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSubmit.Click
        ' Assuming you have a method to get the SampleReqizitionID, e.g., from another control or session
        Dim sampleReqizitionID As Integer = GetSampleReqizitionID() ' Placeholder method to get the ID

        ' Create an instance of CustomerSampleReceiptCheck with the SampleReqizitionID
        Dim receiptCheck As New CustomerSampleReceiptCheck(sampleReqizitionID)

        ' Set properties
        receiptCheck.SRRefID = txtSRRefID.Text
        receiptCheck.MaterialReceivedInGoodCondition = rblMaterialReceivedInGoodCondition.SelectedValue
        receiptCheck.SupportingDocumentationReceived = rblSupportingDocumentationReceived.SelectedValue

        ' Parse ExpectedTestingDate from TextBox to Date?
        Dim expectedDate As DateTime
        If DateTime.TryParse(txtExpectedTestingDate.Text, expectedDate) Then
            receiptCheck.ExpectedTestingDate = expectedDate
        Else
            receiptCheck.ExpectedTestingDate = Nothing
        End If

        receiptCheck.OtherRemarks = txtOtherRemarks.Text

        ' Insert record
        Dim result As Boolean = receiptCheck.InsertCustomerSampleReceiptCheck()

        ' Show result
        If result Then
            ClearForm()
            Response.Write("<script>alert('Record inserted successfully.');</script>")
            Response.Redirect("SuccessResponse.aspx")

        Else
            Response.Write("<script>alert('Failed to insert record.');</script>")
        End If
    End Sub

    Private Sub ClearForm()
        ' Clear text boxes
        txtSRRefID.Text = String.Empty
        txtExpectedTestingDate.Text = String.Empty
        txtOtherRemarks.Text = String.Empty

        ' Clear radio button lists
        rblMaterialReceivedInGoodCondition.ClearSelection()
        rblSupportingDocumentationReceived.ClearSelection()
    End Sub

    Protected Sub btnCancel_Click(sender As Object, e As System.EventArgs) Handles btnCancel.Click
        ' Optionally clear form or redirect
    End Sub

    ' Placeholder method to get SampleReqizitionID, implement as needed
    Private Function GetSampleReqizitionID() As Integer
        ' Logic to get the SampleReqizitionID, e.g., from session, database, or hidden field
        Return 1 ' Replace with actual logic
    End Function
End Class
