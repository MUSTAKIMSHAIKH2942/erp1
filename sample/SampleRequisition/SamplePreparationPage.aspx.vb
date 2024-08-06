Imports System.Data
Imports System.Data.SqlClient

Public Class SamplePreparationPage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        ' Static dropdown values are set in the ASPX file, so no need to bind here
    End Sub

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSubmit.Click
        Dim samplePreparation As New SamplePreparation()

        ' Populate the SamplePreparation object with data from the form
        samplePreparation.SR_Ref_ID = txtSRRefID.Text
        samplePreparation.Division = ddlDivision.SelectedValue
        samplePreparation.PreparedAsPerRequirement = ddlPreparedAsPerRequirement.SelectedValue
        samplePreparation.SampleQualityChecked = ddlSampleQualityChecked.SelectedValue
        samplePreparation.PackedSampleSentToQC = ddlPackedSampleSentToQC.SelectedValue
        samplePreparation.SampleReqizitionID = 1

        ' Call the method to insert data into the database
        If samplePreparation.AddSamplePreparation(samplePreparation) Then
            ClearForm()
            Response.Redirect("SuccessResponse.aspx")

        Else

        End If
    End Sub
    Private Sub ClearForm()
        ' Clear text boxes
        txtSRRefID.Text = String.Empty

        ' Reset dropdowns to default (first item or empty)
        ddlDivision.SelectedIndex = 0
        ddlPreparedAsPerRequirement.SelectedIndex = 0
        ddlSampleQualityChecked.SelectedIndex = 0
        ddlPackedSampleSentToQC.SelectedIndex = 0
    End Sub

    Protected Sub btnCancel_Click(sender As Object, e As System.EventArgs) Handles btnCancel.Click

    End Sub
End Class
