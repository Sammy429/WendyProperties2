Public Class AddNewAgent
    Inherits System.Web.UI.Page
    Dim proxy As New AppService()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (IsPostBack = False) Then
            Try
                txtFirstname.Text = ""
                txtLastname.Text = ""
                txtEmailAddress.Text = ""
                txtCellphoneNo.Text = ""
                Image1.ImageUrl = Nothing
                Image1.Visible = False
                txtFirstname.Focus()
            Catch ex As Exception

            End Try
        End If
    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs)
        Dim Firstname = txtFirstname.Text
        Dim Lastname = txtLastname.Text
        Dim Emailaddress = txtEmailAddress.Text
        Dim Cellphone = txtCellphoneNo.Text
        Dim Image = ""

        Dim isvalidNo = proxy.IsCellValid(Cellphone)

        If (isvalidNo = False) Then
            txtCellphoneNo.Text = ""
            txtCellphoneNo.Focus()
            lblMessage.Text = "Cellphone No is invalid Please re-enter a valid cellphone no"
        Else


            If imgUpload.HasFile Then
                Dim tmpFileName = imgUpload.FileName
                Dim Extension = tmpFileName.Substring(tmpFileName.LastIndexOf(".") + 1)
                If checkFileType(Extension) Then
                    Dim ImgName = Now.Ticks.ToString()
                    Dim FilePath = Server.MapPath("~\Images\")

                    Dim tmpFullImagePath = FilePath + ImgName + "." + Extension

                    imgUpload.PostedFile.SaveAs(tmpFullImagePath)
                    Image = ImgName + ".jpg"
                End If
            End If

            Dim Results = proxy.AddAgent(Image, Firstname, Lastname, Cellphone, Emailaddress)

            If (Results > 0) Then
                If (Results = 1) Then
                    Image1.Visible = True
                    Image1.ImageUrl = "~\Images\" & Image

                    lblMessage.Text = "New Agent Information Saved!"
                Else
                    lblMessage.Text = "Email Address is already in use"
                End If

            Else
                lblMessage.Text = " New Agent Information Unsuccessful!"
            End If
        End If


    End Sub

    Private Function checkFileType(FileExtension As String) As Boolean
        Select Case FileExtension.ToLower()
            Case "gif"
                Return True
            Case "png"
                Return True
            Case "jpg"
                Return True
            Case "jpeg"
                Return True
            Case Else
                Return False
        End Select
        Return False
    End Function

End Class