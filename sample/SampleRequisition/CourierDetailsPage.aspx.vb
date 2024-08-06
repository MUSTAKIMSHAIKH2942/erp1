Imports System
Imports System.Web.UI

Partial Class CourierDetailsPage
    Inherits System.Web.UI.Page

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSubmit.Click
        Dim courierDetails As New CourierDetails()

        Try
            ' Set SampleReqizitionID to default value
            courierDetails.SampleReqizitionID = 1

            ' Retrieve values from the form
            courierDetails.SRRefID = txtSRRefID.Text
            courierDetails.CourierServiceName = txtCourierServiceName.Text
            courierDetails.CourierTrackingNo = txtCourierTrackingNo.Text

            ' Parse dates from TextBoxes
            Dim courierDate As DateTime
            If DateTime.TryParse(txtCourierDate.Text, courierDate) AndAlso IsValidDate(courierDate) Then
                courierDetails.CourierDate = courierDate
            Else
                courierDetails.CourierDate = Nothing
            End If

            Dim courierCharges As Decimal
            If Decimal.TryParse(txtCourierCharges.Text, courierCharges) Then
                courierDetails.CourierCharges = courierCharges
            Else
                courierDetails.CourierCharges = Nothing
            End If

            Dim estimatedDateOfDelivery As DateTime
            If DateTime.TryParse(txtEstimatedDateOfDelivery.Text, estimatedDateOfDelivery) AndAlso IsValidDate(estimatedDateOfDelivery) Then
                courierDetails.EstimatedDateOfDelivery = estimatedDateOfDelivery
            Else
                courierDetails.EstimatedDateOfDelivery = Nothing
            End If

            ' Retrieve and validate UploadOfCOA
            courierDetails.UploadOfCOA = txtUploadOfCOA.Text

            ' Call the method to insert data into the database
            Dim result As Boolean = CourierDetails.InsertCourierDetails(courierDetails)

            ' Check the result of the insertion operation
            If result Then
                ' Data was inserted successfully
                Response.Write("<script>alert('Data inserted successfully.');</script>")
                ' Clear form fields after successful insertion
                ClearFormFields()
                Response.Redirect("SuccessResponse.aspx")
            Else
                ' Data insertion failed
                Response.Write("<script>alert('Failed to insert data.');</script>")
            End If
        Catch ex As Exception
            ' Handle exceptions by showing an error message
            Response.Write("<script>alert('An error occurred: " & ex.Message & "');</script>")
        End Try
    End Sub

    ' Method to clear form fields
    Private Sub ClearFormFields()
        txtSRRefID.Text = String.Empty
        txtCourierServiceName.Text = String.Empty
        txtCourierTrackingNo.Text = String.Empty
        txtCourierDate.Text = String.Empty
        txtCourierCharges.Text = String.Empty
        txtEstimatedDateOfDelivery.Text = String.Empty
        txtUploadOfCOA.Text = String.Empty
    End Sub

    ' Method to check if a date is within SQL Server's valid range
    Private Function IsValidDate(ByVal dateValue As DateTime) As Boolean
        Return dateValue >= New DateTime(1753, 1, 1) AndAlso dateValue <= New DateTime(9999, 12, 31)
    End Function

    Protected Sub btnCancel_Click(sender As Object, e As System.EventArgs) Handles btnCancel.Click
        ' Optionally, add code here to handle cancel button click
    End Sub
End Class
