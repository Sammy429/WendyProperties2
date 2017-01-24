Public Class Login
    Inherits System.Web.UI.Page
    Dim proxy As New AppService()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs)
        Dim emailAddress = txtEmailAddress.Text
        Dim password = txtPassword.Text
        Dim results = proxy.Login(emailAddress, password)

        If (results.Tables.Count > 0) Then
            If (results.Tables(0).Rows.Count > 0) Then
                Dim Userid = ""

                Userid = results.Tables(0).Rows(0)("UserId").ToString()
                Session("Userid") = Userid
                Response.Redirect("Users.aspx?=" & Userid)
            Else
                lblMessage.Text = "Invalid Credentials"
            End If

        Else
            lblMessage.Text = "Invalid Credentials"
        End If

    End Sub

    Protected Sub btnBack_Click(sender As Object, e As EventArgs)
        Response.Redirect("HompePage.aspx")
    End Sub
End Class