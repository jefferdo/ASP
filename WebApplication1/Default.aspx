<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <asp:Panel ID="Panel1" runat="server" Style="margin-left: 92px; margin-top: 136px; margin-bottom: 135px" Width="805px">
            <div>
                <h4><asp:Label ID="Error" runat="server" Text=""></asp:Label></h4>
                <h3>Search User</h3>
                <form>
                    <table>
                        <tr>
                            <td>
                                <asp:TextBox ID="txtSearch" runat="server" Width="200px" />
                            </td>
                            <td>
                                <asp:Button ID="btnSearch" runat="server" Text="search" OnClick="btnSearch_Click" />
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="rfvSearch" runat="server" ControlToValidate="txtSearch" ErrorMessage="Requied"></asp:RequiredFieldValidator></td>
                        </tr>
                    </table>
                </form>
            </div>
        </asp:Panel>
    </div>

</asp:Content>
