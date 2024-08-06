Imports System.Data
Imports System.Data.SqlClient

Partial Class DepartmentRequisitionDivpage
    Inherits System.Web.UI.Page

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSubmit.Click
        Try
            ' Create a new instance of the DepartmentRequisitionDiv class
            Dim div As New DepartmentRequisitionDiv()
            div.SrRefId = txtSrRefId.Text
            div.Division = ddlDivision.SelectedValue
            div.SampleRequestSent = ddlSampleRequestSent.SelectedValue
            div.ConcernedPersonName = txtConcernedPersonName.Text
            div.MaterialReadyDays = txtMaterialReadyDays.Text
            div.Remarks = txtRemarks.Text

            ' Set SampleReqizitionID to 1
            div.SampleReqizitionID = 1

            ' Insert the record using the InsertDepartmentRequisitionDiv method
            If DepartmentRequisitionDiv.InsertDepartmentRequisitionDiv(div) Then
                ClearForm()
                Response.Write("<script>alert('Record inserted successfully.');</script>")
                Response.Redirect("SuccessResponse.aspx")

            Else
                Response.Write("<script>alert('Failed to insert record.');</script>")
            End If
        Catch ex As Exception
            Response.Write("<script>alert('An error occurred: " & ex.Message & "');</script>")
        End Try
    End Sub

    Private Sub ClearForm()
        txtSrRefId.Text = ""
        ddlDivision.SelectedIndex = 0
        ddlSampleRequestSent.SelectedIndex = 0
        txtConcernedPersonName.Text = ""
        txtMaterialReadyDays.Text = ""
        txtRemarks.Text = ""
    End Sub

    Protected Sub btnCancel_Click(sender As Object, e As System.EventArgs) Handles btnCancel.Click
        Response.Redirect("Default.aspx")
    End Sub
End Class
