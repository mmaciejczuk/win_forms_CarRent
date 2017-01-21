<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Client.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WypozyczalniaSamochodow.Clients.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent2" runat="server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
        .style2
        {
            width: 326px;
        }
        .style3
        {
            width: 300px;
            height: 451px;
        }
        .style4
        {
            width: 112px;
        }
        .style5
        {
            width: 397px;
            font-size: large;
            color: #993333;
        }
        .style6
        {
            width: 397px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent2" runat="server">
    <table class="style1">
        <tr>
            <td>
                <b></b></td>
        </tr>
        <tr>
            <td>
                <b>HOME</b></td>
        </tr>
        <tr>
            <td>
                <hr /></td>
        </tr>
        </table>
        <table>
            <tr>
                <td class="style5">
                    <strong>Zapraszamy do skorzystania z naszych usług!<br />
                    </strong></td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style2" rowspan="2">
                    <img alt="image" class="style3" 
                        img src="../Images/rentacar.png" alt="obrazek" /></td>
            </tr>
            <tr>
                <td class="style6">
                    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" 
                        style="color: #993300">
                        <AlternatingItemTemplate>
                            <li style="background-color: #FFF8DC;">
                                <asp:Label ID="trescLabel" runat="server" Text='<%# Eval("tresc") %>' />
                                <br />
                            </li>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <li style="background-color: #008A8C;color: #FFFFFF;">
                                <asp:TextBox ID="trescTextBox" runat="server" Text='<%# Bind("tresc") %>' />
                                <br />
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                                    Text="Update" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                    Text="Cancel" />
                            </li>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            No data was returned.
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <li style="">
                                <asp:TextBox ID="trescTextBox" runat="server" Text='<%# Bind("tresc") %>' />
                                <br />
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                                    Text="Insert" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                    Text="Clear" />
                            </li>
                        </InsertItemTemplate>
                        <ItemSeparatorTemplate>
                       <br />
                        </ItemSeparatorTemplate>
                        <ItemTemplate>
                            <li style="background-color: #DCDCDC; color: #000000;">
                                <asp:Label ID="trescLabel" runat="server" Text='<%# Eval("tresc") %>' />
                                <br />
                            </li>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <ul ID="itemPlaceholderContainer" runat="server" 
                                style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <li runat="server" id="itemPlaceholder" />
                            </ul>
                            <div style="text-align: center;background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                            </div>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">
                                <asp:Label ID="trescLabel" runat="server" Text='<%# Eval("tresc") %>' />
                                <br />
                            </li>
                        </SelectedItemTemplate>
                    </asp:ListView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:WypozyczalniaSamochodowConnectionString %>" 
                        SelectCommand="SELECT [tresc] FROM [News] ORDER BY [pozycja_nr]"></asp:SqlDataSource>
                </td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
        </table>
</asp:Content>
