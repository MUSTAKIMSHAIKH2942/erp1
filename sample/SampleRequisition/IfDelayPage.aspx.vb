Imports System.Data
Imports System.Data.SqlClient

Public Class IfDelayPage
    Inherits System.Web.UI.Page

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSubmit.Click
        Dim delayEntry As New IfDelay()
        Dim nextEstimateDateOfDispatch As DateTime

        ' Retrieve values from form fields
        delayEntry.SRID = txtSRID.Text
        delayEntry.ReasonForDelay = txtReasonForDelay.Text

        ' Attempt to parse the date
        If DateTime.TryParse(txtNextEstimateDateOfDispatch.Text, nextEstimateDateOfDispatch) Then
            delayEntry.NextEstimateDateOfDispatch = nextEstimateDateOfDispatch
        Else

            Return
        End If

        delayEntry.RemarksIfAny = txtRemarksIfAny.Text

        ' Set SampleReqizitionID to a default value or retrieve it as needed
        delayEntry.SampleReqizitionID = 1 ' Set default value or retrieve dynamically

        ' Call method to insert data into database
        Dim result As Boolean = IfDelay.AddIfDelay(delayEntry)

        ' Provide feedback to the user
        If result Then
            ' Clear the form fields after successful insertion
            ClearFormFields()
            lblMessage.Text = "Data inserted successfully."
            Response.Redirect("SuccessResponse.aspx")

        Else
            lblMessage.Text = "An error occurred while inserting data."
        End If
    End Sub

    Private Sub ClearFormFields()
        txtSRID.Text = String.Empty
        txtReasonForDelay.Text = String.Empty
        txtNextEstimateDateOfDispatch.Text = String.Empty
        txtRemarksIfAny.Text = String.Empty
    End Sub

    Protected Sub btnCancel_Click(sender As Object, e As System.EventArgs) Handles btnCancel.Click
        ' Redirect to another page or clear the form
        Response.Redirect("Default.aspx") ' Adjust the redirect URL as needed
    End Sub
End Class
