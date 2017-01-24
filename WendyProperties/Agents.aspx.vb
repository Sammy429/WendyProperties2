Public Class Agents
    Inherits System.Web.UI.Page
    Dim proxy As New AppService()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (IsPostBack = False) Then
            Try
                Dim results = proxy.getAgents()
                If results.Tables.Count > 0 Then
                    If results.Tables(0).Rows.Count > 0 Then
                        gvAgents.DataSource = Nothing
                        gvAgents.DataBind()
                        gvAgents.DataSource = results
                        gvAgents.DataBind()
                    Else
                        gvAgents.DataSource = Nothing
                        gvAgents.EmptyDataText = "No Agents Available"
                        gvAgents.DataBind()
                    End If
                End If
            Catch ex As Exception

            End Try
        End If
    End Sub

    Protected Sub gvAgents_RowDataBound(sender As Object, e As GridViewRowEventArgs)
        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim AgentImage As ImageButton = DirectCast(e.Row.FindControl("AgentImage"), ImageButton)
            Dim hdnAgentId As HiddenField = DirectCast(e.Row.FindControl("hdnAgentId"), HiddenField)
            Dim AgentId = ""

            AgentId = hdnAgentId.Value
            Dim results = proxy.getAgentById(AgentId)
            AgentImage.ImageUrl = "~\Images\" & results.Image
        End If
    End Sub
End Class