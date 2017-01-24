Public Class AdminMasterPager
    Inherits System.Web.UI.MasterPage
    Dim proxy As New AppService()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (IsPostBack = False) Then
            Try
                Dim Uid = ""
                Uid = Request.QueryString("Userid").ToString()
                If (Uid = "") Then
                    Uid = Session("Userid")
                End If
                Dim results = proxy.getUserById(Uid)
                lblFullName.InnerHtml = results.Firstname & " " & results.Lastname

            Catch ex As Exception

            End Try

        End If

    End Sub

    Protected Sub btnLogout_Click(sender As Object, e As EventArgs)
        Response.Redirect("HompePage.aspx")
    End Sub
End Class