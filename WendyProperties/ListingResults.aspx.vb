Public Class ListingResults
    Inherits System.Web.UI.Page
    Dim proxy As New AppService()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (IsPostBack = False) Then
            Try

                Dim Suburb = Session("Suburb")
                Dim Price = Session("Price")
                Dim NoOfBedRooms = Session("NoOfBedRooms")
                If (Suburb <> "" Or Price <> "" Or NoOfBedRooms <> "") Then
                    Dim results = proxy.searchListing(Suburb, Price, NoOfBedRooms)

                    If results.Tables.Count > 0 Then
                        If results.Tables(0).Rows.Count > 0 Then
                            gvResults.DataSource = Nothing
                            gvResults.DataBind()
                            gvResults.DataSource = results
                            gvResults.DataBind()

                        Else
                            gvResults.DataSource = Nothing
                            gvResults.EmptyDataText = "No results"
                            gvResults.DataBind()
                        End If
                    End If

                End If

            Catch ex As Exception

            End Try
        End If

    End Sub

    Protected Sub gvResults_RowCommand(sender As Object, e As GridViewCommandEventArgs)
        Try
            Dim ListingID = ""
            If (e.CommandName = "SeeDetails") Then

                Dim row As GridViewRow = TryCast(DirectCast(e.CommandSource, ImageButton).NamingContainer, GridViewRow)

                Dim LId As HiddenField = TryCast(row.FindControl("hdnlistingId"), HiddenField)

                ListingID = LId.Value
            ElseIf (e.CommandName = "SeeMore") Then
                Dim row As GridViewRow = TryCast(DirectCast(e.CommandSource, LinkButton).NamingContainer, GridViewRow)

                Dim LId As HiddenField = TryCast(row.FindControl("hdnlistingId"), HiddenField)

                ListingID = LId.Value

            End If
            Response.Redirect("ListingDetails.aspx?listingID=" & ListingID)
        Catch ex As Exception

        End Try

    End Sub

    Protected Sub ImageButton1_Command(sender As Object, e As CommandEventArgs)

    End Sub

    Protected Sub gvResults_RowDataBound(sender As Object, e As GridViewRowEventArgs)
        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim ImageListing As ImageButton = DirectCast(e.Row.FindControl("ListingImage"), ImageButton)
            Dim lblPrice As Label = DirectCast(e.Row.FindControl("lblPrice"), Label)
            Dim hdnlistingId As HiddenField = DirectCast(e.Row.FindControl("hdnlistingId"), HiddenField)
            Dim ListingId = ""
            Dim Price = ""
            Price = "R " & lblPrice.Text
            ListingId = hdnlistingId.Value

            Dim results = proxy.getListingById(ListingId)
            ImageListing.ImageUrl = "~\Images\" & results.listingImage
        End If

    End Sub


End Class