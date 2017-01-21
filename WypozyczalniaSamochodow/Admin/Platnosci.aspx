<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="Platnosci.aspx.cs" Inherits="WypozyczalniaSamochodow.Admin.Platnosci" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent1" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent1" runat="server">
    <table class="style1">
        <tr>
            <td>
                <b></b></td>
        </tr>
        <tr>
            <td>
                <b>PLATNOŚCI</b></td>
        </tr>
        <tr>
            <td>
                <hr /></td>
        </tr>
        </table>
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="id_platnosci" 
                    DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                    <AlternatingItemTemplate>
                        <tr style="background-color:#FFF8DC;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                                    Text="Usuń" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edytuj" />
                            </td>
                            <td>
                                <asp:Label ID="id_platnosciLabel" runat="server"
                                    Text='<%# Eval("id_platnosci") %>' />
                            </td>
                            <td>
                                <asp:Label ID="sposob_platnosciLabel" runat="server" 
                                    Text='<%# Eval("sposob_platnosci") %>' />
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <tr style="background-color:#008A8C;color: #FFFFFF;">
                            <td>
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                                    Text="Aktualizuj" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                    Text="Anuluj" />
                            </td>
                            <td>
                                <asp:Label ID="id_platnosciLabel1" runat="server" 
                                    Text='<%# Eval("id_platnosci") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="sposob_platnosciTextBox" runat="server" 
                                    Text='<%# Bind("sposob_platnosci") %>' />
                            </td>
                        </tr>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" 
                            style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                            <tr>
                                <td>
                                    No data was returned.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                                    Text="Nowy" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                    Text="Wyczyść" />
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:TextBox ID="sposob_platnosciTextBox" runat="server" 
                                    Text='<%# Bind("sposob_platnosci") %>' />
                            </td>
                        </tr>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <tr style="background-color:#DCDCDC;color: #000000;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                                    Text="Usuń" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edytuj" />
                            </td>
                            <td>
                                <asp:Label ID="id_platnosciLabel" runat="server" 
                                    Text='<%# Eval("id_platnosci") %>' />
                            </td>
                            <td>
                                <asp:Label ID="sposob_platnosciLabel" runat="server" 
                                    Text='<%# Eval("sposob_platnosci") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table ID="itemPlaceholderContainer" runat="server" border="1" 
                                        style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                        <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                            <th runat="server">
                                            </th>
                                            <th runat="server">
                                                id_platnosci</th>
                                            <th runat="server">
                                                sposob_platnosci</th>
                                        </tr>
                                        <tr ID="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" 
                                    style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                                    Text="Usuń" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edytuj" />
                            </td>
                            <td>
                                <asp:Label ID="id_platnosciLabel" runat="server" 
                                    Text='<%# Eval("id_platnosci") %>' />
                            </td>
                            <td>
                                <asp:Label ID="sposob_platnosciLabel" runat="server" 
                                    Text='<%# Eval("sposob_platnosci") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:WypozyczalniaSamochodowConnectionString %>" 
                    DeleteCommand="DELETE FROM [Payments] WHERE [id_platnosci] = @id_platnosci" 
                    InsertCommand="INSERT INTO [Payments] ([sposob_platnosci]) VALUES (@sposob_platnosci)" 
                    SelectCommand="SELECT * FROM [Payments]" 
                    UpdateCommand="UPDATE [Payments] SET [sposob_platnosci] = @sposob_platnosci WHERE [id_platnosci] = @id_platnosci">
                    <DeleteParameters>
                        <asp:Parameter Name="id_platnosci" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="sposob_platnosci" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="sposob_platnosci" Type="String" />
                        <asp:Parameter Name="id_platnosci" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
