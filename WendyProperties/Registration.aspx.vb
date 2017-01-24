Public Class Registration
    Inherits System.Web.UI.Page
    Dim proxy As New AppService()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs)
        Dim results = proxy.AddUser(txtPassword.Text, txtFirstname.Text, txtLastname.Text, txtEmailAddress.Text)
        If (results > 0) Then
            If (results <> 2) Then
                Dim EmailMsg = ""
                Dim Subject = ""
                EmailMsg = "Thanks for signing up with us, Your Username is " & txtEmailAddress.Text & " and your password is " & txtPassword.Text

                Subject = "Administration Registration"
                SendMail(EmailMsg, txtEmailAddress.Text, "mbathasamkelisiwe82@gmail.com", Subject)
                txtFirstname.Text = ""
                txtLastname.Text = ""
                txtEmailAddress.Text = ""

                lblMessage.Text = "User Details Saved Successfully"
            Else
                lblMessage.Text = "Email Address already exists"
            End If

        Else
            lblMessage.Text = "Sorry, information can not be saved"
        End If
    End Sub
End Class