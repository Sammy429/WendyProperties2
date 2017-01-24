Public Class FindListings
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (IsPostBack = False) Then
            Try
                txtSuburb.Text = ""
                ddlNoOfBedRooms.SelectedValue = "0"
                ddlNoOfBedRooms.SelectedIndex = -1
                ddlPrice.SelectedValue = "0"
                ddlPrice.SelectedIndex = -1
            Catch ex As Exception

            End Try

        End If
    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs)
        Try

            Dim Suburb = txtSuburb.Text

            Dim NoOfBedRooms = ddlNoOfBedRooms.SelectedValue
            Dim Price = ddlPrice.SelectedValue

            If (Price.Contains("and") = False) Then
                If (Price = "4000000") Then
                    Price = "<= 4000000"
                Else
                    Price = "Any"
                End If

            Else
                    Price = "between " & Price
            End If

            Suburb = Suburb.ToUpper()
            If (Suburb.Contains("ANY")) Then
                Suburb = "Any"
            End If


            Session("Suburb") = Suburb
            Session("Price") = Price
            Session("NoOfBedRooms") = NoOfBedRooms

            Response.Redirect("ListingResults.aspx")


        Catch ex As Exception

        End Try

    End Sub


End Class