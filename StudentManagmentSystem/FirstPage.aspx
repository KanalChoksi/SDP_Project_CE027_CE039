<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FirstPage.aspx.cs" Inherits="StudentManagmentSystem.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 3787px;
        }
        .auto-style2 {
            margin-left: 622px;
            margin-top: 205px;
        }
        .auto-style3 {
            margin-left: 622px;
            margin-top: 50px;
        }
        .auto-style4 {
            margin-left: 622px;
            margin-top: 42px;
        }
    </style>
</head>
<body >
    <form id="form1" runat="server">
        <div style=" background-image: url('https://localhost:44318/image/student1.jpg'); background-repeat: no-repeat;background-size:100% 20%;" class="auto-style1">
            <div>
            <asp:Button runat="server"
        Font-Bold="True" ForeColor="Black" ID="AdminLogin" 
                Text="Admin Login" CssClass="auto-style2" Font-Size="Larger" Height="105px" Width="268px" PostBackUrl="~/Admin/AdminLogin.aspx" />
                <asp:Button runat="server"
        Font-Bold="True" ForeColor="Black" ID="Button1" 
                Text="Teacher Login" CssClass="auto-style3" Font-Size="Larger" Height="105px" Width="268px" PostBackUrl="~/Teacher/Login.aspx" />
                <asp:Button runat="server"
        Font-Bold="True" ForeColor="Black" ID="Button2" 
                Text="Student Login" CssClass="auto-style4" Font-Size="Larger" Height="105px" Width="268px" PostBackUrl="~/Student/StudentLogin.aspx" />

            </div>

        </div>
    </form>
</body>
</html>
