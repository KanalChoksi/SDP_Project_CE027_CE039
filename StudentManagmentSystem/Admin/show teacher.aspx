<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="show teacher.aspx.cs" Inherits="StudentManagmentSystem.Admin.show_teacher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDb)\MSSQLLocalDB;Initial Catalog=StudentInfo;Integrated Security=True" DeleteCommand="DELETE FROM [Teacher] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Teacher] ([firstname], [lastname], [email], [address], [password]) VALUES (@firstname, @lastname, @email, @address, @password)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Teacher]" UpdateCommand="UPDATE [Teacher] SET [firstname] = @firstname, [lastname] = @lastname, [email] = @email, [address] = @address, [password] = @password WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="firstname" Type="String" />
            <asp:Parameter Name="lastname" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="password" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="firstname" Type="String" />
            <asp:Parameter Name="lastname" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
            <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>

</asp:Content>
