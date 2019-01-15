<%@ Page Title="Add new user" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ANU.aspx.cs" Inherits="WebApplication1.ANU" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <asp:Panel ID="Panel1" runat="server" Style="margin-left: 92px; margin-top: 136px; margin-bottom: 135px" Width="805px">
            <div>
                <h3>Add New User</h3>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        <form id="form1">
                    <div>
                        <table width="400">
                            <tr>
                                <td>First Name</td>
                                <td>
                                    <asp:TextBox ID="txtfName" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>Last Name</td>
                                <td>
                                    <asp:TextBox ID="txtlName" runat="server"></asp:TextBox></td>
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
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
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
                        <asp:Button ID="btnANU" runat="server" Text="Add New User" OnClick="btnANU_Click" />
                    </div>
                </form>
            </div>
        </asp:Panel>
    </div>

</asp:Content>
