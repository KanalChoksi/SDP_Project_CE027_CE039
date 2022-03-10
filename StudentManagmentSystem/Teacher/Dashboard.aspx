<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Site1.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="StudentManagmentSystem.Teacher.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        margin-left: 0px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDb)\MSSQLLocalDB;Initial Catalog=StudentInfo;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Teacher] WHERE ([firstname] = @firstname)">
    <SelectParameters>
        <asp:SessionParameter Name="firstname" SessionField="teacher" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CssClass="auto-style1" Height="284px" Width="460px">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
        <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
    </Columns>
</asp:GridView>

</asp:Content>
