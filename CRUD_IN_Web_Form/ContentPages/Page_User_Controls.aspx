<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Page_User_Controls.aspx.cs" Inherits="CRUD_IN_Web_Form.ContentPages.Page_User_Controls" %>

<%@ Register Src="~/UserControls/MyFirstUserControl.ascx" TagPrefix="uc1" TagName="MyFirstUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:MyFirstUserControl runat="server" id="MyFirstUserControl" />
</asp:Content>
