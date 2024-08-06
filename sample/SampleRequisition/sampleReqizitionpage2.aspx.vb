Imports System
Imports System.Web.UI

Public Class sampleReqizitionpage2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            ' Optionally, load record details if needed
            ' For example, populate the form fields based on the current record.
            ' This is where you'd fetch data based on SampleReqizitionID if needed.
        End If
    End Sub

    Protected Sub btnUpdate_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnUpdate.Click
        ' Create an instance of SampleReqiziationStock
        Dim sampleReq As New SampleReqiziationStock()

        ' Set the properties from form inputs
        sampleReq.SR_Ref_ID = txtSampleRequestID.Text
        sampleReq.IsSampleAvailableInPlant = rblIsSampleAvailableInPlant.SelectedValue

        ' Call the method to update the record
        If SampleReqiziationStock.UpdateSampleReqiziationStock(sampleReq) Then
            ' Notify user of success
            Response.Redirect("SuccessResponse.aspx")
        Else
            ' Notify user of failure
            ' Optionally, you could show a message to the user about the failure
        End If
    End Sub

    Protected Sub btnCancel_Click(sender As Object, e As System.EventArgs) Handles btnCancel.Click
        Response.Redirect("Default.aspx")
    End Sub
End Class
