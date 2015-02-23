Public Class LoanInfo
    Inherits System.Web.UI.Page
 

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim time As Integer
        Dim rate As Double
        Dim principle As Integer
        Dim payment As Double
        Dim problem As Boolean
        problem = False


        If Not Int32.TryParse(TextBox1.Text, time) Then
            TextBox1.Text = ""
            problem = True
        End If
        If Not Double.TryParse(TextBox2.Text, rate) Then
            TextBox2.Text = ""
            problem = True
        End If
        If Not Int32.TryParse(TextBox3.Text, principle) Then
            TextBox3.Text = ""
            problem = True
        End If
        rate = rate / 1200
        time = time * 12

        If Not problem Then
            payment = (rate + (rate / (((1 + rate) ^ time) - 1))) * principle
            TextBox4.Text = FormatCurrency(payment)
        Else
            TextBox4.Text = ""
        End If
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
    End Sub
End Class