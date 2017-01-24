Public Class ListingDetails
    Inherits System.Web.UI.Page
    Dim proxy As New AppService()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If (IsPostBack = False) Then
            Try
                Dim lstngId = ""
                lstngId = Request.QueryString("ListingID").ToString()
                Dim results = proxy.getListingById(lstngId)

                lblMHeading.Text = results.MarketingHeading
                lblDescription.Text = results.Description
                lblNoOfBedrooms.Text = results.NoOfBedRooms
                lblPrice.Text = results.Price
                lblRefNO.Text = results.refNo
                lblSuburb.Text = results.Suburb
                imgListing.ImageUrl = "~\Images\" & results.listingImage

                imgAgent.ImageUrl = "~\Images\" & results.agentImage
                lblAgentsName.Text = results.agentsName
                lblCellphoneNo.Text = results.CellphoneNo
                lblEmailAddress.Text = results.EmailAddress
                Session("AgentId") = results.agentid


                txtFirstname.Text = ""
                txtLastname.Text = ""
                txtEmailAddress.Text = ""
                txtMessage.InnerHtml = ""
            Catch ex As Exception

            End Try
        End If



    End Sub


    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs)
        Dim AgentId = Session("AgentId")
        Dim Firstname = txtFirstname.Text
        Dim Lastname = txtLastname.Text
        Dim EmailAddress = txtEmailAddress.Text
        Dim Message = txtMessage.Value
        Dim lstngId = ""
        lstngId = Request.QueryString("ListingID").ToString()
        Dim AgentsInfor = proxy.getAgentById(AgentId)
        Dim Results = proxy.AddLead(Firstname, Lastname, Message, EmailAddress, lstngId)


        If (Results > 0) Then
            Dim Subject = "New Lead Has Posted"

            Message = "Hi, " & lblAgentsName.Text & " a message saying : " & Message & " was sent by " & Firstname & " " & Lastname & " for the listing " & lblMHeading.Text & "---  Reference No: " & lblRefNO.Text & ". Please make immediate contact on their emailaddress : " & EmailAddress & ". GOOD LUCK FELLOW AGENT!!! <br/><br/>Kind Regards Samkelisiwe Mbatha "
            SendMail(Message, AgentsInfor.EmailAddress, "mbathasamkelisiwe82@gmail.com", Subject)
            lblMessage.Text = "Information Submitted Successfully"
        Else
            lblMessage.Text = "Information UnSuccessful"
        End If

    End Sub

End Class