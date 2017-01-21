<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="Pracownicy.aspx.cs" Inherits="WypozyczalniaSamochodow.Admin.Pracownicy" %>
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
                <b>PRACOWNICY</b></td>
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
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:ListView ID="ListView2" runat="server" DataKeyNames="id_pracownika" 
                    DataSourceID="SqlDataSource2" InsertItemPosition="LastItem">
                    <AlternatingItemTemplate>
                        <tr style="background-color:#FFF8DC;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                                    Text="Usuń" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edytuj" />
                            </td>
                            <td>
                                <asp:Label ID="id_pracownikaLabel" runat="server" 
                                    Text='<%# Eval("id_pracownika") %>' />
                            </td>
                            <td>
                                <asp:Label ID="imieLabel" runat="server" Text='<%# Eval("imie") %>' />
                            </td>
                            <td>
                                <asp:Label ID="nazwiskoLabel" runat="server" Text='<%# Eval("nazwisko") %>' />
                            </td>
                            <td>
                                <asp:Label ID="data_zatrudnieniaLabel" runat="server" 
                                    Text='<%# Eval("data_zatrudnienia") %>' />
                            </td>
                            <td>
                                <asp:Label ID="data_wypowiedzeniaLabel" runat="server" 
                                    Text='<%# Eval("data_wypowiedzenia") %>' />
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
                                <asp:Label ID="id_pracownikaLabel1" runat="server" 
                                    Text='<%# Eval("id_pracownika") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="imieTextBox" runat="server" Text='<%# Bind("imie") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="nazwiskoTextBox" runat="server" 
                                    Text='<%# Bind("nazwisko") %>' />
                            </td>
                            <td>
                                <asp:Calendar ID="Calendar1" runat="server" SelectedDate='<%# Bind("data_zatrudnienia") %>'>
                                </asp:Calendar>
                            </td>
                            <td>
                                <asp:Calendar ID="Calendar2" runat="server" SelectedDate='<%# Bind("data_wypowiedzenia") %>'>
                                </asp:Calendar>
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
                                <asp:TextBox ID="imieTextBox" runat="server" Text='<%# Bind("imie") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="nazwiskoTextBox" runat="server" 
                                    Text='<%# Bind("nazwisko") %>' />
                            </td>
                            <td>
                                <asp:Calendar ID="Calendar3" runat="server" SelectedDate='<%# Bind("data_zatrudnienia") %>'>
                                </asp:Calendar>
                            </td>
                            <td>
                                <asp:Calendar ID="Calendar4" runat="server" SelectedDate='<%# Bind("data_wypowiedzenia") %>'>
                                </asp:Calendar>
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
                                <asp:Label ID="id_pracownikaLabel" runat="server" 
                                    Text='<%# Eval("id_pracownika") %>' />
                            </td>
                            <td>
                                <asp:Label ID="imieLabel" runat="server" Text='<%# Eval("imie") %>' />
                            </td>
                            <td>
                                <asp:Label ID="nazwiskoLabel" runat="server" Text='<%# Eval("nazwisko") %>' />
                            </td>
                            <td>
                                <asp:Label ID="data_zatrudnieniaLabel" runat="server" 
                                    Text='<%# Eval("data_zatrudnienia") %>' />
                            </td>
                            <td>
                                <asp:Label ID="data_wypowiedzeniaLabel" runat="server" 
                                    Text='<%# Eval("data_wypowiedzenia") %>' />
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
                                                id_pracownika</th>
                                            <th runat="server">
                                                imie</th>
                                            <th runat="server">
                                                nazwisko</th>
                                            <th runat="server">
                                                data_zatrudnienia</th>
                                            <th runat="server">
                                                data_wypowiedzenia</th>
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
                                <asp:Label ID="id_pracownikaLabel" runat="server" 
                                    Text='<%# Eval("id_pracownika") %>' />
                            </td>
                            <td>
                                <asp:Label ID="imieLabel" runat="server" Text='<%# Eval("imie") %>' />
                            </td>
                            <td>
                                <asp:Label ID="nazwiskoLabel" runat="server" Text='<%# Eval("nazwisko") %>' />
                            </td>
                            <td>
                                <asp:Label ID="data_zatrudnieniaLabel" runat="server" 
                                    Text='<%# Eval("data_zatrudnienia") %>' />
                            </td>
                            <td>
                                <asp:Label ID="data_wypowiedzeniaLabel" runat="server" 
                                    Text='<%# Eval("data_wypowiedzenia") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:WypozyczalniaSamochodowConnectionString %>" 
                    DeleteCommand="DELETE FROM [Employees] WHERE [id_pracownika] = @id_pracownika" 
                    InsertCommand="INSERT INTO [Employees] ([imie], [nazwisko], [data_zatrudnienia], [data_wypowiedzenia]) VALUES (@imie, @nazwisko, @data_zatrudnienia, @data_wypowiedzenia)" 
                    SelectCommand="SELECT * FROM [Employees]" 
                    UpdateCommand="UPDATE [Employees] SET [imie] = @imie, [nazwisko] = @nazwisko, [data_zatrudnienia] = @data_zatrudnienia, [data_wypowiedzenia] = @data_wypowiedzenia WHERE [id_pracownika] = @id_pracownika">
                    <DeleteParameters>
                        <asp:Parameter Name="id_pracownika" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="imie" Type="String" />
                        <asp:Parameter Name="nazwisko" Type="String" />
                        <asp:Parameter DbType="Date" Name="data_zatrudnienia" />
                        <asp:Parameter DbType="Date" Name="data_wypowiedzenia" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="imie" Type="String" />
                        <asp:Parameter Name="nazwisko" Type="String" />
                        <asp:Parameter DbType="Date" Name="data_zatrudnienia" />
                        <asp:Parameter DbType="Date" Name="data_wypowiedzenia" />
                        <asp:Parameter Name="id_pracownika" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
