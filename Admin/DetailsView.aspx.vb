
Partial Class Admin_DetailsView2
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted

        Dim DeletedGrocer As String = e.Values("GrocerName")

        lbl_deletedstore.Text = DeletedGrocer & " has been deleted from the database"

        Response.AddHeader("REFRESH", "3;URL=./ViewAll.aspx")
    End Sub


  
    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.AddHeader("REFRESH", "3;URL=./ViewAll.aspx")
    End Sub
End Class
