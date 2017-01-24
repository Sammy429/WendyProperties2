Public Class Listings
    Inherits System.Web.UI.Page
    Dim proxy As New AppService()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (IsPostBack = False) Then
            Try
                Dim results = proxy.getListings()
                If results.Tables.Count > 0 Then
                    If results.Tables(0).Rows.Count > 0 Then
                        gvLstings.DataSource = Nothing
                        gvLstings.DataBind()
                        gvLstings.DataSource = results
                        gvLstings.DataBind()
                    Else
                        gvLstings.DataSource = Nothing
                        gvLstings.EmptyDataText = "No Listing Available"
                        gvLstings.DataBind()
                    End If
                End If
            Catch ex As Exception

            End Try
        End If
    End Sub

    Protected Sub gvLstings_RowDataBound(sender As Object, e As GridViewRowEventArgs)
        If e.Row.RowType = DataControlRowType.DataRow Then
            'On databinding, display information where price has an R sign infront and the file set image url

            Dim ImageListing As ImageButton = DirectCast(e.Row.FindControl("ListingImage"), ImageButton)
            Dim lblPrice As Label = DirectCast(e.Row.FindControl("lblPrice"), Label)
            Dim hdnlistingId As HiddenField = DirectCast(e.Row.FindControl("hdnlistingId"), HiddenField)
            Dim ListingId = ""

            ListingId = hdnlistingId.Value
            Dim results = proxy.getListingById(ListingId)
            ImageListing.ImageUrl = "~\Images\" & results.listingImage
            lblPrice.Text = "R " & results.Price
        End If
    End Sub


End Class