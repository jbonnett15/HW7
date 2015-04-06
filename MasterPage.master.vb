
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage


    Protected Sub LBL_date_Load(sender As Object, e As EventArgs) Handles LBL_date.Load

    LBL_date.Text = Format(Now, "MM/dd/yyyy h:mm:ss tt")
    End Sub
End Class

