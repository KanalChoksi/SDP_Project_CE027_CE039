<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Site1.Master" AutoEventWireup="true" CodeBehind="files_11.aspx.cs" Inherits="StudentManagmentSystem.Teacher.files_11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
        .auto-style2 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDb)\MSSQLLocalDB;Initial Catalog=StudentInfo;Integrated Security=True" DeleteCommand="DELETE FROM [Material] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Material] ([std], [file]) VALUES (@std, @file)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Material] WHERE ([std] = @std)" UpdateCommand="UPDATE [Material] SET [std] = @std, [file] = @file WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="std" Type="String" />
        <asp:Parameter Name="file" Type="String" />
    </InsertParameters>
    <SelectParameters>
        <asp:ControlParameter ControlID="GridView1" DefaultValue="class11" Name="std" PropertyName="SelectedValue" Type="String" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="std" Type="String" />
        <asp:Parameter Name="file" Type="String" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="Vertical" CssClass="auto-style2" Height="276px" Width="383px">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="std" HeaderText="std" SortExpression="std" />
            <asp:HyperLinkField DataNavigateUrlFields="file" HeaderText="File" Text="View and Download" />
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
</p>

</asp:Content>
