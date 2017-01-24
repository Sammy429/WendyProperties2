Imports System.Data.SqlClient
Imports System.Net.Mail

Module GlobalFunctions
    Public Function GetConnection()
        Dim con As String = ""

        con = "Data Source=(local);Initial Catalog=dbsProperties;Persist Security Info=True;User ID=sa;Password=Password01"

        Return con
    End Function

    Public Sub SendMail(ByVal msg As String, ByVal ToEmailAddress As String, ByVal FromEmailAddress As String, ByVal Subject As String)
        'Function to send mail

        Try
            Dim Smtp_Server As New SmtpClient
            Dim Email As New MailMessage
            Smtp_Server.UseDefaultCredentials = False
            Smtp_Server.Credentials = New Net.NetworkCredential("mbathasamkelisiwe82@gmail.com", "Mbatha01")
            Smtp_Server.Port = 25
            Smtp_Server.EnableSsl = True
            Smtp_Server.DeliveryMethod = SmtpDeliveryMethod.PickupDirectoryFromIis
            Smtp_Server.DeliveryMethod = SmtpDeliveryMethod.Network
            Smtp_Server.Host = "smtp.gmail.com"

            Dim MailMsg As New MailMessage()
            Dim mSC As New SmtpClient
            MailMsg.From = New MailAddress(FromEmailAddress)

            MailMsg.To.Add(New MailAddress(ToEmailAddress))
            MailMsg.Subject = Subject
            MailMsg.IsBodyHtml = True
            MailMsg.Priority = MailPriority.High
            MailMsg.Body = msg & "<br/> Date Sent : " & FormatDateTime(Now, DateFormat.LongDate) & " " & FormatDateTime(Now, DateFormat.LongTime) & ""

            If MailMsg.Body <> "" Then
                Smtp_Server.Send(MailMsg)
            End If


        Catch ex As Exception

        End Try

    End Sub


End Module
