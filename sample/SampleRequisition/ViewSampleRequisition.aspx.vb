Imports System.Data
Partial Class SampleRequisition_ViewSampleRequisition
    Inherits System.Web.UI.Page
    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        If Not IsPostBack Then
            LoadData(sender, e)
            lblMessage.Text = ""
        End If
    End Sub

    Public Sub LoadData(ByVal sender As System.Object, ByVal e As System.EventArgs)

        Dim dv As Data.DataView = New Data.DataView(SampleRequisition.GetRmcplRequisition().Tables(0))
        dv.Sort = txtSortField.Text
        Try
            With dgRmcplRequisition
                .ShowFooter = True
                .DataSource = dv
                .DataBind()
            End With
        Catch
            With dgRmcplRequisition
                .CurrentPageIndex = .PageCount - 1
                .ShowFooter = True
                .SelectedIndex = -1
                .DataSource = dv
                .DataBind()
            End With
        End Try
    End Sub
  

    Protected Sub dgRmcplRequisition_ItemDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DataGridItemEventArgs) Handles dgRmcplRequisition.ItemDataBound
        If e.Item.ItemType = ListItemType.Item Or e.Item.ItemType = ListItemType.AlternatingItem Then
            CType(e.Item.FindControl("lnkbtnAvailableStores"), LinkButton).Attributes.Add("target", "_blank")

            Dim RmcplRequisitionID As Integer = dgRmcplRequisition.DataKeys(e.Item.ItemIndex)
            Dim SampleRequiNo As String = CType(e.Item.FindControl("lblRMCPL_SR_NO"), Label).Text.Trim()

            CType(e.Item.FindControl("lnkbtnAvailableStores"), LinkButton).Attributes.Add("href", "sampleReqizitionpage1.aspx?id=" & RmcplRequisitionID & "&No=" & SampleRequiNo)
        End If
    End Sub
End Class
