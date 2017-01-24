Public Class Users
    Inherits System.Web.UI.Page
    Dim proxy As New AppService()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (IsPostBack = False) Then
            Try
                Dim results = proxy.getUsers()
                If results.Tables.Count > 0 Then
                    If results.Tables(0).Rows.Count > 0 Then
                        gvUsers.DataSource = Nothing
                        gvUsers.DataBind()
                        gvUsers.DataSource = results
                        gvUsers.DataBind()
                    Else
                        gvUsers.DataSource = Nothing
                        gvUsers.EmptyDataText = "No Users"
                        gvUsers.DataBind()
                    End If
                End If


            Catch ex As Exception

            End Try
        End If
    End Sub

End Class