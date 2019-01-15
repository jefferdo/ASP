<%@ Page Title="Update User" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UPU.aspx.cs" Inherits="WebApplication1.UPU" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <asp:Panel ID="PanelUPU" runat="server" Style="margin-left: 92px; margin-top: 136px; margin-bottom: 135px" Width="805px">
            <div>
                <h3>Update User</h3>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                <form id="form1">
                    <div>
                        <table width="400">
                            <tr>
                                <td>First Name</td>
                                <td>
                                    <asp:TextBox ID="txtfName" runat="server"></asp:TextBox><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>Last Name</td>
                                <td>
                                    <asp:TextBox ID="txtlName" runat="server"></asp:TextBox><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>Address</td>
                                <td>
                                    <asp:TextBox ID="txtAddr" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>Contact Number</td>
                                <td>
                                    <asp:TextBox ID="txtTel" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>Gender</td>
                                <td>
                                    <asp:RadioButtonList ID="rdpGender" runat="server">
                                        <asp:ListItem>Female</asp:ListItem>
                                        <asp:ListItem>Male</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td>Date of Birth</td>
                                <td>
                                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>

                                </td>
                            </tr>
                            <tr>
                                <td>Email</td>
                                <td>
                                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>NIC No</td>
                                <td>
                                    <asp:TextBox ID="txtNIC" runat="server"></asp:TextBox></td>
                            </tr>
                        </table>
                        <asp:Button ID="btnup" runat="server" Text="Update" OnClick="btnup_Click" />
                        <asp:Button ID="btnDel" runat="server" Text="Delete" />
                    </div>
                </form>
            </div>
        </asp:Panel>
    </div>

</asp:Content>
