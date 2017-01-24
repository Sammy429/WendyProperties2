Public Class AddListing
    Inherits System.Web.UI.Page
    Dim proxy As New AppService()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            If (IsPostBack = False) Then
                Dim ds1 As DataSet = New DataSet()

                ds1 = proxy.getAgents()

                If ds1.Tables(0).Rows.Count > 0 Then
                    ddlAgents.DataSource = Nothing
                    ddlAgents.DataSource = ds1
                    ddlAgents.DataTextField = "Firstname"
                    ddlAgents.DataValueField = "AgentId"
                    ddlAgents.DataBind()
                End If

                txtPrice.Text = ""
                txtReferenceNo.Text = ""
                txtNoOfBedrooms.Text = ""
                txtMarkHeading.Text = ""
                txtDescription.Text = ""
                txtSuburb.Text = ""
                ddlAgents.SelectedValue = "0"
                imgProp.ImageUrl = Nothing
                imgProp.Visible = False

            End If
        Catch ex As Exception

        End Try

    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs)
        Dim Price = txtPrice.Text
        Dim RefNo = txtReferenceNo.Text
        Dim NoOfBedrooms = txtNoOfBedrooms.Text
        Dim MarketingHeading = txtMarkHeading.Text
        Dim Description = txtDescription.Text
        Dim Suburb = txtSuburb.Text
        Dim Agent = ddlAgents.SelectedValue
        Dim Image = ""


        'Check if  fields that 
        If (IsNumeric(NoOfBedrooms) = False) Then
            lblMessage.Text = "No of bedrooms field needs to be a number"
        ElseIf (IsNumeric(Price) = False) Then
            lblMessage.Text = "Price field needs to be a number"
        ElseIf (Price < 100000) Then
            lblMessage.Text = "Price cannot be lower than  R100 000"
        Else

            If imgUpload.HasFile Then
                Dim tmpFileName = imgUpload.FileName
                Dim Extension = tmpFileName.Substring(tmpFileName.LastIndexOf(".") + 1)
                If checkFileType(Extension) Then
                    Dim ImgName = Now.Ticks.ToString()
                    Dim FilePath = Server.MapPath("~\Images\")

                    Dim tmpFullImagePath = FilePath + ImgName + "." + Extension

                    imgUpload.PostedFile.SaveAs(tmpFullImagePath)
                    Image = ImgName + "." + Extension
                End If
            End If

            Dim results = proxy.AddListing(Image, Price, NoOfBedrooms, RefNo, MarketingHeading, Description, Suburb, Agent)

            If (results > 0) Then
                imgProp.Visible = True
                imgProp.ImageUrl = "~\Images\" & Image

                txtPrice.Text = ""
                txtReferenceNo.Text = ""
                txtNoOfBedrooms.Text = ""
                txtMarkHeading.Text = ""
                txtDescription.Text = ""
                txtSuburb.Text = ""
                ddlAgents.SelectedValue = "0"
                lblMessage.Text = "New listing information saved successfully"
            Else
                lblMessage.Text = "New listing information unsuccessful"
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