Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.ComponentModel
Imports System.Data.SqlClient

' To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line.
<System.Web.Script.Services.ScriptService()>
<System.Web.Services.WebService(Namespace:="http://tempuri.org/")>
<System.Web.Services.WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)>
<ToolboxItem(False)>
Public Class AppService
    Inherits System.Web.Services.WebService

    <WebMethod()>
    Public Function HelloWorld() As String
        Return "Hello World"
    End Function

    <WebMethod()>
    Public Function IsCellValid(ByVal CellNum As String)
        Try
            IsCellValid = False
            Dim val As Int16 = CellNum.Length()
            If val < 10 Then
                IsCellValid = False
                Exit Function
            End If

            Dim CellStr = "082|083|084|072|073|076|079|078|071|074|081|060|061|062|063|064"

            Dim InStrInt = 0

            InStrInt = InStr(CellStr, Microsoft.VisualBasic.Left(CellNum, 3))

            If InStrInt > 0 Then
                IsCellValid = True
            End If
        Catch ex As Exception
        End Try
    End Function

    'Add New Agent
    <WebMethod()>
    Public Function AddAgent(ByVal Image As String, ByVal Firstname As String, ByVal Lastname As String, ByVal Cellphone As String, ByVal EmailAdd As String)
        Dim Result = 0
        Try
            Dim Con As SqlConnection = New SqlConnection(GetConnection())


            Dim bol = 0
            Dim chkEmail As SqlCommand = New SqlCommand("select COUNT(*) from Agents where Emailaddress ='" & EmailAdd & "' and isactive='1'", Con)


            Con.Open()

            bol = chkEmail.ExecuteScalar()

            Con.Close()
            If (bol > 0) Then
                Result = 2
            Else

                Dim InsertQuery As SqlCommand = New SqlCommand("Insert into Agents (Firstname, Lastname, Cellphone, Emailaddress, image, isactive)values('" & Firstname & "','" & Lastname & "','" & Cellphone & "','" & EmailAdd & "','" & Image & "', '1')", Con)


                Con.Open()
                Try
                    Result = InsertQuery.ExecuteNonQuery
                Catch ex As Exception

                End Try

                Con.Close()
            End If

        Catch ex As Exception

        End Try

        Return Result
    End Function

    'Add New Admin User
    <WebMethod()>
    Public Function AddUser(ByVal Password As String, ByVal Firstname As String, ByVal Lastname As String, ByVal EmailAdd As String)
        Dim Result = 0
        Try
            Dim Con As SqlConnection = New SqlConnection(GetConnection())
            Dim bol = 0
            Dim chkEmail As SqlCommand = New SqlCommand("select COUNT(*) from Agents where Emailaddress ='" & EmailAdd & "' and isactive='1'", Con)


            Con.Open()

            bol = chkEmail.ExecuteScalar()

            Con.Close()
            If (bol > 0) Then
                Result = 2
            Else

                Dim InsertQuery As SqlCommand = New SqlCommand("Insert into Users (Firstname, Lastname, Emailaddress, Password, isactive)values('" & Firstname & "','" & Lastname & "','" & EmailAdd & "','" & Password & "', '1')", Con)

                Con.Open()
                Try
                    Result = InsertQuery.ExecuteNonQuery


                Catch ex As Exception

                End Try

                Con.Close()

                If (Result > 0) Then

                    Dim FindUserid As SqlCommand = New SqlCommand("Select MAX(Userid) from Users", Con)

                    Con.Open()
                    Try
                        Result = FindUserid.ExecuteScalar
                    Catch ex As Exception

                    End Try

                End If
            End If



        Catch ex As Exception

        End Try

        Return Result
    End Function

    'Add New Listing
    <WebMethod()>
    Public Function AddListing(ByVal Image As String, ByVal Price As String, ByVal NoOfBedRooms As String, ByVal RefNo As String, ByVal mrkHeading As String, ByVal Description As String, ByVal Suburb As String, ByVal AgentId As String)
        Dim Result = 0
        Try

            Dim Con As SqlConnection = New SqlConnection(GetConnection())

            Dim InsertQuery As SqlCommand = New SqlCommand("Insert into Listings (price, noOfBedrooms, refno, mrketheading,description,suburb,agentid ,image, isactive)values('" & Price & "','" & NoOfBedRooms & "','" & RefNo & "','" & mrkHeading & "', '" & Description & "', '" & Suburb & "','" & AgentId & "','" & Image & "','1')", Con)


            Con.Open()
            Try
                Result = InsertQuery.ExecuteNonQuery
            Catch ex As Exception

            End Try

            Con.Close()
        Catch ex As Exception

        End Try

        Return Result
    End Function

    'Add New Lead
    <WebMethod()>
    Public Function AddLead(ByVal Firstname As String, ByVal Lastname As String, ByVal Message As String, ByVal EmailAdd As String, ByVal ListingId As String)
        Dim Result = 0
        Try
            Dim Con As SqlConnection = New SqlConnection(GetConnection())

            Try


                Dim InsertQuery As SqlCommand = New SqlCommand("Insert into Leads (Firstname, Lastname, Emailaddress, Message, listingid,isactive)values('" & Firstname & "','" & Lastname & "','" & EmailAdd & "','" & Message & "','" & ListingId & "','1')", Con)

                Con.Open()
                Try
                    Result = InsertQuery.ExecuteNonQuery
                Catch ex As Exception

                End Try

                Con.Close()


            Catch ex As Exception

            End Try


        Catch ex As Exception

        End Try

        Return Result
    End Function

    'Search For A Specific Listing
    <WebMethod()>
    Public Function searchListing(ByVal Suburb As String, ByVal Price As String, ByVal noOfBedRooms As String) As DataSet

        Dim dsListings As New DataSet
        Dim SelectQuery
        Dim Con As SqlConnection = New SqlConnection(GetConnection())
        Try

            If (Suburb = "Any" And Price = "Any" And noOfBedRooms = "Any") Then
                SelectQuery = New SqlDataAdapter("Select * from listings", Con)

            ElseIf (Suburb = "Any" And Price <> "Any" And noOfBedRooms <> "Any") Then
                SelectQuery = New SqlDataAdapter("Select * from listings where price " & Price & " and noOfbedrooms='" & noOfBedRooms & "' and isactive = '1'", Con)

            ElseIf (Suburb <> "Any" And Price <> "Any" And noOfBedRooms = "Any") Then
                SelectQuery = New SqlDataAdapter("Select * from listings where suburb = '" & Suburb & "' and price " & Price & " and  isactive = '1'", Con)

            ElseIf (Suburb <> "Any" And Price = "Any" And noOfBedRooms = "Any") Then
                SelectQuery = New SqlDataAdapter("Select * from listings where suburb = '" & Suburb & "'and  isactive = '1'", Con)

            ElseIf (Suburb = "Any" And Price <> "Any" And noOfBedRooms = "Any") Then
                SelectQuery = New SqlDataAdapter("Select * from listings where price  " & Price & " and isactive = '1'", Con)

            ElseIf (Suburb = "Any" And Price = "Any" And noOfBedRooms <> "Any") Then
                SelectQuery = New SqlDataAdapter("Select * from listings where noOfbedrooms='" & noOfBedRooms & "' and isactive = '1'", Con)

            ElseIf (Suburb <> "Any" And Price = "Any" And noOfBedRooms <> "Any") Then
                SelectQuery = New SqlDataAdapter("Select * from listings where noOfbedrooms='" & noOfBedRooms & "' and suburb='" & Suburb & "' and isactive = '1'", Con)

            Else
                SelectQuery = New SqlDataAdapter("Select * from listings where suburb = '" & Suburb & "' and price " & Price & " and noofbedrooms = '" & noOfBedRooms & "' and isactive = '1'", Con)
            End If


            Con.Open()

            SelectQuery.Fill(dsListings)
        Catch ex As Exception

        End Try
        Con.Close()

        Return dsListings
    End Function

    'Find Listing 
    <WebMethod()>
    Public Function getListingById(ByVal ListingId As String) As Properties.Listings
        Dim listing As New Properties.Listings

        Dim Con As SqlConnection = New SqlConnection(GetConnection())
        Dim SelectQuery As SqlDataAdapter = New SqlDataAdapter("Select Agents.Image as agentimage , listings.image as propimage ,* from listings inner join agents on listings.agentid = agents.agentid and  listingid = '" & ListingId & "'", Con)
        Dim dsListings As New DataSet
        Con.Open()

        SelectQuery.Fill(dsListings)

        Con.Close()

        If dsListings.Tables.Count > 0 Then
            If dsListings.Tables(0).Rows.Count > 0 Then
                Dim mHeading = ""
                Dim price = ""
                Dim suburb = ""
                Dim description = ""
                Dim noOfBedrooms = ""
                Dim firstname = ""
                Dim lastname = ""
                Dim emailAddress = ""
                Dim cellphoneNo = ""
                Dim agentsImage = ""
                Dim propImage = ""
                Dim refNo = ""
                Dim agentid = ""

                mHeading = dsListings.Tables(0).Rows(0)("mrketHeading").ToString()
                price = dsListings.Tables(0).Rows(0)("price").ToString()
                suburb = dsListings.Tables(0).Rows(0)("Suburb").ToString()
                description = dsListings.Tables(0).Rows(0)("description").ToString()
                noOfBedrooms = dsListings.Tables(0).Rows(0)("NoOfBedrooms").ToString()
                firstname = dsListings.Tables(0).Rows(0)("Firstname").ToString()
                lastname = dsListings.Tables(0).Rows(0)("Lastname").ToString()
                emailAddress = dsListings.Tables(0).Rows(0)("emailaddress").ToString()
                cellphoneNo = dsListings.Tables(0).Rows(0)("cellphone").ToString()
                propImage = dsListings.Tables(0).Rows(0)("propImage").ToString()
                agentsImage = dsListings.Tables(0).Rows(0)("AgentImage").ToString()
                refNo = dsListings.Tables(0).Rows(0)("refNo").ToString()
                agentid = dsListings.Tables(0).Rows(0)("agentid").ToString()

                listing.agentImage = agentsImage
                listing.Price = price
                listing.Suburb = suburb
                listing.Description = description
                listing.NoOfBedRooms = noOfBedrooms
                listing.agentsName = firstname & " " & lastname
                listing.CellphoneNo = cellphoneNo
                listing.EmailAddress = emailAddress
                listing.MarketingHeading = mHeading
                listing.listingImage = propImage
                listing.refNo = refNo
                listing.agentid = agentid
            End If
        End If
        Return listing
    End Function

    'Get All Listings
    <WebMethod()>
    Public Function getListings() As DataSet

        Dim Con As SqlConnection = New SqlConnection(GetConnection())
        Dim SelectQuery As SqlDataAdapter = New SqlDataAdapter("Select * from listings where isactive = '1'", Con)
        Dim dsListings As New DataSet
        Con.Open()

        SelectQuery.Fill(dsListings)

        Con.Close()
        Return dsListings
    End Function

    'Get All Users
    <WebMethod()>
    Public Function getUsers() As DataSet

        Dim Con As SqlConnection = New SqlConnection(GetConnection())
        Dim SelectQuery As SqlDataAdapter = New SqlDataAdapter("Select * from users where isactive = '1'", Con)
        Dim dsUsers As New DataSet
        Con.Open()

        SelectQuery.Fill(dsUsers)

        Con.Close()
        Return dsUsers
    End Function
    'Get All Leads
    <WebMethod()>
    Public Function getLeads() As DataSet

        Dim Con As SqlConnection = New SqlConnection(GetConnection())
        Dim SelectQuery As SqlDataAdapter = New SqlDataAdapter("Select * from Leads where isactive = '1'", Con)
        Dim dsLeads As New DataSet
        Con.Open()

        SelectQuery.Fill(dsLeads)

        Con.Close()
        Return dsLeads
    End Function

    'Get All Agents
    <WebMethod()>
    Public Function getAgents() As DataSet

        Dim Con As SqlConnection = New SqlConnection(GetConnection())
        Dim SelectQuery As SqlDataAdapter = New SqlDataAdapter("Select * from Agents where isactive = '1'", Con)
        Dim dsAgents As New DataSet
        Con.Open()

        SelectQuery.Fill(dsAgents)

        Con.Close()
        Return dsAgents
    End Function

    'Login
    <WebMethod()>
    Public Function Login(ByVal emailaddress As String, ByVal password As String) As DataSet

        Dim Con As SqlConnection = New SqlConnection(GetConnection())
        Dim SelectQuery As SqlDataAdapter = New SqlDataAdapter("Select * from Users where emailaddress= '" & emailaddress & "' and password='" & password & "' and isactive = '1'", Con)
        Dim dsUser As New DataSet
        Con.Open()

        SelectQuery.Fill(dsUser)

        Con.Close()

        Return dsUser
    End Function

    'Find Agent
    <WebMethod()>
    Public Function getAgentById(ByVal AgentId As String) As Properties.Agent
        Dim agent As New Properties.Agent

        Dim Con As SqlConnection = New SqlConnection(GetConnection())
        Dim SelectQuery As SqlDataAdapter = New SqlDataAdapter("Select * from  agents where agentid = '" & AgentId & "'", Con)
        Dim dsAgent As New DataSet
        Con.Open()

        SelectQuery.Fill(dsAgent)

        Con.Close()

        If dsAgent.Tables.Count > 0 Then
            If dsAgent.Tables(0).Rows.Count > 0 Then

                Dim firstname = ""
                Dim lastname = ""
                Dim emailAddress = ""
                Dim cellphoneNo = ""
                Dim agentsImage = ""


                firstname = dsAgent.Tables(0).Rows(0)("Firstname").ToString()
                lastname = dsAgent.Tables(0).Rows(0)("Lastname").ToString()
                emailAddress = dsAgent.Tables(0).Rows(0)("emailaddress").ToString()
                cellphoneNo = dsAgent.Tables(0).Rows(0)("cellphone").ToString()
                agentsImage = dsAgent.Tables(0).Rows(0)("Image").ToString()

                agent.CellphoneNo = cellphoneNo
                agent.EmailAddress = emailAddress
                agent.Image = agentsImage
                agent.Firstname = firstname
                agent.Lastname = lastname

            End If
        End If
        Return agent
    End Function

    'Find A User
    <WebMethod()>
    Public Function getUserById(ByVal UserId As String) As Properties.User
        Dim User As New Properties.User

        Dim Con As SqlConnection = New SqlConnection(GetConnection())
        Dim SelectQuery As SqlDataAdapter = New SqlDataAdapter("Select * from  Users where userid = '" & UserId & "'", Con)
        Dim dsUser As New DataSet
        Con.Open()

        SelectQuery.Fill(dsUser)

        Con.Close()

        If dsUser.Tables.Count > 0 Then
            If dsUser.Tables(0).Rows.Count > 0 Then

                Dim firstname = ""
                Dim lastname = ""
                Dim emailAddress = ""
                Dim Password = ""


                firstname = dsUser.Tables(0).Rows(0)("Firstname").ToString()
                lastname = dsUser.Tables(0).Rows(0)("Lastname").ToString()
                emailAddress = dsUser.Tables(0).Rows(0)("emailaddress").ToString()
                Password = dsUser.Tables(0).Rows(0)("password").ToString()

                User.Password = Password
                User.EmailAddress = emailAddress
                User.Firstname = firstname
                User.Lastname = lastname

            End If
        End If
        Return User
    End Function
End Class