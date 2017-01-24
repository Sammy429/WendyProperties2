Public Class Leads
    Inherits System.Web.UI.Page
    Dim proxy As New AppService()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (IsPostBack = False) Then
            Try
                Dim results = proxy.getLeads()
                If results.Tables.Count > 0 Then
                    If results.Tables(0).Rows.Count > 0 Then
                        gvLeads.DataSource = Nothing
                        gvLeads.DataBind()
                        gvLeads.DataSource = results
                        gvLeads.DataBind()
                    Else
                        gvLeads.DataSource = Nothing
                        gvLeads.EmptyDataText = "No Leads Available"
                        gvLeads.DataBind()
                    End If
                End If
            Catch ex As Exception

            End Try
        End If
    End Sub
    Protected Sub gvLeads_RowDataBound(sender As Object, e As GridViewRowEventArgs)
        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim lblRefNo As Label = DirectCast(e.Row.FindControl("lblRefNo"), Label)
            Dim lblPrice As Label = DirectCast(e.Row.FindControl("lblPrice"), Label)
            Dim lblSuburb As Label = DirectCast(e.Row.FindControl("lblSuburb"), Label)
            Dim lblMarketingHeading As Label = DirectCast(e.Row.FindControl("lblMarketHeading"), Label)
            Dim hdnlistingId As HiddenField = DirectCast(e.Row.FindControl("hdnlistingId"), HiddenField)
            Dim ListingId = ""


            ListingId = hdnlistingId.Value
            Dim results = proxy.getListingById(ListingId)
            lblRefNo.Text = results.refNo
            lblPrice.Text = results.Price
            lblSuburb.Text = results.Suburb
            lblMarketingHeading.Text = results.MarketingHeading

        End If
    End Sub

End Class