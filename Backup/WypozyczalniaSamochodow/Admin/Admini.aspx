<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="Admini.aspx.cs" Inherits="WypozyczalniaSamochodow.Admin.Admini" %>
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
                <b>ADMINI</b></td>
        </tr>
        <tr>
            <td>
                <hr /></td>
        </tr>
        </table>
    <table class="style1">
        <tr>
            <td>
                &nbsp;</tr>
        <tr>
            <td>
<asp:ListView ID="ListView1" runat="server" DataKeyNames="id_admina" 
                    DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                    <AlternatingItemTemplate>
                        <tr style="background-color:#FFF8DC;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                                    Text="Usuń" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edytuj" />
                            </td>
                            <td>
                                <asp:Label ID="id_adminaLabel" runat="server" Text='<%# Eval("id_admina") %>' />
                            </td>
                            <td>
                                <asp:Label ID="loginLabel" runat="server" Text='<%# Eval("login") %>' />
                            </td>
                            <td>
                                <asp:Label ID="hasloLabel" runat="server" Text='<%# Eval("haslo") %>' />
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
                                <asp:Label ID="id_adminaLabel1" runat="server" 
                                    Text='<%# Eval("id_admina") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="loginTextBox" runat="server" Text='<%# Bind("login") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="hasloTextBox" runat="server" Text='<%# Bind("haslo") %>' />
                            </td>
                        </tr>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table id="Table1" runat="server" 
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
                                <asp:TextBox ID="loginTextBox" runat="server" Text='<%# Bind("login") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="hasloTextBox" runat="server" Text='<%# Bind("haslo") %>' />
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
                                <asp:Label ID="id_adminaLabel" runat="server" Text='<%# Eval("id_admina") %>' />
                            </td>
                            <td>
                                <asp:Label ID="loginLabel" runat="server" Text='<%# Eval("login") %>' />
                            </td>
                            <td>
                                <asp:Label ID="hasloLabel" runat="server" Text='<%# Eval("haslo") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table id="Table2" runat="server">
                            <tr id="Tr1" runat="server">
                                <td id="Td1" runat="server">
                                    <table ID="itemPlaceholderContainer" runat="server" border="1" 
                                        style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                        <tr id="Tr2" runat="server" style="background-color:#DCDCDC;color: #000000;">
                                            <th id="Th1" runat="server">
                                            </th>
                                            <th id="Th2" runat="server">
                                                id_admina</th>
                                            <th id="Th3" runat="server">
                                                login</th>
                                            <th id="Th4" runat="server">
                                                haslo</th>
                                        </tr>
                                        <tr ID="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr id="Tr3" runat="server">
                                <td id="Td2" runat="server" 
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
                                <asp:Label ID="id_adminaLabel" runat="server" Text='<%# Eval("id_admina") %>' />
                            </td>
                            <td>
                                <asp:Label ID="loginLabel" runat="server" Text='<%# Eval("login") %>' />
                            </td>
                            <td>
                                <asp:Label ID="hasloLabel" runat="server" Text='<%# Eval("haslo") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:WypozyczalniaSamochodowConnectionString %>" 
                    DeleteCommand="DELETE FROM [Admins] WHERE [id_admina] = @id_admina" 
                    InsertCommand="INSERT INTO [Admins] ([login], [haslo]) VALUES (@login, @haslo)" 
                    SelectCommand="SELECT * FROM [Admins]" 
                    UpdateCommand="UPDATE [Admins] SET [login] = @login, [haslo] = @haslo WHERE [id_admina] = @id_admina">
                    <DeleteParameters>
                        <asp:Parameter Name="id_admina" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="login" Type="String" />
                        <asp:Parameter Name="haslo" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="login" Type="String" />
                        <asp:Parameter Name="haslo" Type="String" />
                        <asp:Parameter Name="id_admina" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
        </tr>
    </table>
</asp:Content>
