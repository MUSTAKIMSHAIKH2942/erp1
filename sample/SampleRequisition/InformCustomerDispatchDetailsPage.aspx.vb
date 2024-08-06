Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports Microsoft.VisualBasic

Public Class InformCustomerDispatchDetailsPage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        ' Code to execute on page load, if needed
    End Sub

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As EventArgs)
        ' Create an instance of the class
        Dim details As New InformCustomerDispatchDetails()

        ' Set properties from form inputs
        details.SRRefID = txtSRRefID.Text.Trim()
        details.InformedByPhoneEmailWhatsapp = GetSelectedInformedBy()
        details.Remarks = txtRemarks.Text.Trim()
        details.InsertedDate = DateTime.Now ' Set current date/time
        details.SampleReqizitionID = 1 ' Hardcoded value

        ' Call the method to insert data
        Dim success As Boolean = InformCustomerDispatchDetails.InsertInformCustomerDispatchDetails(details)

        ' Display success or error message
        If success Then
            lblMessage.Text = "Record inserted successfully."
            lblMessage.ForeColor = System.Drawing.Color.Green
            ClearFormFields()
            Response.Redirect("SuccessResponse.aspx")

        Else
            lblMessage.Text = "Failed to insert record."
            lblMessage.ForeColor = System.Drawing.Color.Red
        End If
    End Sub

    Private Function GetSelectedInformedBy() As String
        If rblInformedBy.SelectedItem IsNot Nothing Then
            Return rblInformedBy.SelectedItem.Value
        Else
            Return Nothing
        End If
    End Function

    Private Sub ClearFormFields()
        ' Clear textboxes
        txtSRRefID.Text = String.Empty
        txtRemarks.Text = String.Empty

        ' Deselect radio buttons
        rblInformedBy.ClearSelection()

        ' Optionally, you can clear the message label
        lblMessage.Text = String.Empty
    End Sub

    Protected Sub btnCancel_Click(sender As Object, e As System.EventArgs) Handles btnCancel.Click
        ' Handle the cancel button click event
    End Sub
End Class
