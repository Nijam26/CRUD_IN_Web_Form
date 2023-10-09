<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MyFirstUserControl.ascx.cs" Inherits="CRUD_IN_Web_Form.UserControls.MyFirstUserControl" %>


        <h4>User Control </h4>
        <table class="w-100" style="width: 78%">
            <tr>
                <td colspan="3" style="font-size: medium" class="text-center"><strong>Trainee Information Table</strong></td>
            </tr>
            <tr>
                <td style="width: 201px">Name</td>
                <td style="width: 459px">
                    <asp:TextBox ID="txtBoxName" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBoxName" ErrorMessage="Name is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 201px; height: 23px">Email Address</td>
                <td style="width: 459px; height: 23px">
                    <asp:TextBox ID="txtBoxEmail" runat="server" Width="203px"></asp:TextBox>
                </td>
                <td style="height: 23px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtBoxEmail" ErrorMessage="Required" ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtBoxEmail" ErrorMessage="Required Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 201px">Gender</td>
                <td style="width: 459px">
                    <asp:DropDownList ID="ddlGender" runat="server" Height="22px" Width="208px">
                        <asp:ListItem>Select Gender</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 201px">Dob</td>
                <td style="width: 459px">
                    <asp:TextBox ID="txtBoxDob" runat="server" Width="202px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtBoxDob" ErrorMessage="Required" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 201px; height: 17px"></td>
                <td style="width: 459px; height: 17px">
                    <asp:CheckBox ID="chkBoxAgree" runat="server" Text="Yes, I'm Agree." />
                </td>
                <td style="height: 17px"></td>
            </tr>
            <tr>
                <td style="width: 201px; height: 17px">&nbsp;</td>
                <td style="width: 459px; height: 17px">&nbsp;</td>
                <td style="height: 17px">
                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 201px">&nbsp;</td>
                <td style="width: 459px">
                    <asp:Button ID="btnSave" runat="server" BackColor="#99CCFF" BorderColor="White" OnClick="btnSave_Click" Text="Save" Width="72px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 201px">&nbsp;</td>
                <td style="width: 459px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

        <p>&nbsp;</p>