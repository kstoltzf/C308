Imports System.Web.Security
Public Class Logout
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        FormsAuthentication.SignOut()
        Roles.DeleteCookie()
        Session.Abandon()
        Response.Redirect("~/Default.aspx")
    End Sub
End Class