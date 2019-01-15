<%@ Page Title="Search Results" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DataGrid.aspx.cs" Inherits="WebApplication1.DataGrid" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <asp:Panel ID="PanelGrid" runat="server" Style="margin-left: 92px; margin-top: 136px; margin-bottom: 135px" Width="805px">
            <div>
                <h4><asp:Label ID="Error" runat="server" Text=""></asp:Label></h4>
                <h3>Search Results</h3>
                <asp:Label ID="ErrorGrid" runat="server" Text=""></asp:Label>
                <div>
                    <asp:GridView ID="GridViewSearch" runat="server" AutoGenerateSelectButton="True" CellPadding="20" CellSpacing="10" ForeColor="#333333" GridLines="None" HorizontalAlign="Left" OnSelectedIndexChanging="GridViewSearch_SelectedIndexChanging" ShowHeaderWhenEmpty="True">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Wrap="False" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </div>
            </div>
        </asp:Panel>
    </div>

</asp:Content>
