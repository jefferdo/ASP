<%@ Page Title="Search Results" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DataGrid.aspx.cs" Inherits="WebApplication1.DataGrid" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <asp:Panel ID="PanelGrid" runat="server" Style="margin-left: 92px; margin-top: 136px; margin-bottom: 135px" Width="805px">
            <div>
                <h4><asp:Label ID="Error" runat="server" Text=""></asp:Label></h4>
                <h3>Search Results</h3>
                <div>
                    <asp:GridView ID="GridViewSearch" runat="server"></asp:GridView>
                </div>
            </div>
        </asp:Panel>
    </div>

</asp:Content>
