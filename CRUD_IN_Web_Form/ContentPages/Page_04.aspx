<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MyFirstMasterPage.Master" AutoEventWireup="true" CodeBehind="Page_04.aspx.cs" Inherits="CRUD_IN_Web_Form.ContentPages.Page_04" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h4>Trainee Information</h4>

    <p id="gridTable">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TraineeID" DataSourceID="SqlDataSource1" Width="535px">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="TraineeID" HeaderText="TraineeID" InsertVisible="False" ReadOnly="True" SortExpression="TraineeID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="Dob" HeaderText="Dob" SortExpression="Dob" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Dbcon %>" DeleteCommand="DELETE FROM [Trainee] WHERE [TraineeID] = @TraineeID" InsertCommand="INSERT INTO [Trainee] ([Name], [Email], [Gender], [Dob]) VALUES (@Name, @Email, @Gender, @Dob)" SelectCommand="SELECT * FROM [Trainee]" UpdateCommand="UPDATE [Trainee] SET [Name] = @Name, [Email] = @Email, [Gender] = @Gender, [Dob] = @Dob WHERE [TraineeID] = @TraineeID">
                <DeleteParameters>
                    <asp:Parameter Name="TraineeID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter DbType="Date" Name="Dob" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter DbType="Date" Name="Dob" />
                    <asp:Parameter Name="TraineeID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p>&nbsp;</p>

</asp:Content>
