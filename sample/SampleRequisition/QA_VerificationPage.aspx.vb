Imports System
Imports System.Web.UI
Imports System.Data.SqlClient

Partial Public Class QA_VerificationPage
    Inherits System.Web.UI.Page

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        ' Create a new instance of QA_Verification
        Dim verification As New QA_Verification()

        ' Set properties from form fields
        verification.SRRefID = txtSRRefID.Text
        verification.LabelVerified = rblLabelVerified.SelectedValue
        verification.COAChecked = rblCOAChecked.SelectedValue
        verification.SampleRequestEntry = rblSampleRequestEntry.SelectedValue
        verification.CoveringLetterFilePath = txtCoveringLetterFilePath.Text
        verification.MSDSFilePath = txtMSDSFilePath.Text
        verification.COAFilePath = txtCOAFilePath.Text

        ' Set SampleReqizitionID to 1
        verification.SampleReqizitionID = 1

        ' Call the method to add the verification record
        Dim success As Boolean = QA_Verification.AddQA_Verification(verification)

        ' Notify the user of success or failure
        If success Then
            ' Display success message
            Response.Redirect("SuccessResponse.aspx")

            ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Record added successfully!');", True)

            ' Clear all inputs after successful insertion
            ClearInputs()
        Else
            ' Display error message
            ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Failed to add record.');", True)
        End If
    End Sub

    Private Sub ClearInputs()
        ' Clear textboxes
        txtSRRefID.Text = String.Empty
        txtCoveringLetterFilePath.Text = String.Empty
        txtMSDSFilePath.Text = String.Empty
        txtCOAFilePath.Text = String.Empty

        ' Reset radio button lists
        rblLabelVerified.ClearSelection()
        rblCOAChecked.ClearSelection()
        rblSampleRequestEntry.ClearSelection()
    End Sub

    Protected Sub btnCancel_Click(sender As Object, e As System.EventArgs) Handles btnCancel.Click
        ' Implement cancel functionality if needed
    End Sub
End Class
