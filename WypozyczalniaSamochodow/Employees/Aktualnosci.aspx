<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Employee.Master" AutoEventWireup="true" CodeBehind="Aktualnosci.aspx.cs" Inherits="WypozyczalniaSamochodow.Employees.Aktualnosci" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent3" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent3" runat="server">
    <table class="style1">
        <tr>
            <td>
                <b></b></td>
        </tr>
        <tr>
            <td>
                <b>AKTUALNOŚCI</b></td>
        </tr>
        <tr>
            <td>
                <hr /></td>
        </tr>
        </table>
        <table>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:ListView ID="ListViewAktualnosci" runat="server" DataKeyNames="id_ogloszenia" 
                        DataSourceID="SqlDataSource1" InsertItemPosition="LastItem" 
                        style="margin-right: 68px" >
                        <%--OnItemCommand="ListViewAktualnosci_OnItemCommand"--%>

                        <AlternatingItemTemplate>
                            <tr style="background-color:#FFF8DC; width:auto" >
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                                        Text="Usuń" />
                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edytuj" />
                                </td>

                                <td>
                                    <asp:Label ID="trescLabel" runat="server" Text='<%# Eval("tresc") %>' Width="600" />
                                </td>
                                <td>
                                    <asp:CheckBox ID="aktualneCheckBox" runat="server" 
                                        Checked='<%# Eval("aktualne") %>' Enabled="false" />
                                </td>
                                <td>
                                    <asp:Label ID="pozycjaLabel" runat="server" Text='<%# Eval("pozycja_nr") %>' Width="50" />
                                </td>
                            </tr>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                                        Text="Aktualizuj" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                        Text="Anuluj" />
                                </td>

                                <td>
                                    <asp:TextBox ID="trescTextBox" runat="server" Text='<%# Bind("tresc") %>' Width="600" />
                                </td>
                                <td>
                                    <asp:CheckBox ID="aktualneCheckBox" runat="server" 
                                        Checked='<%# Bind("aktualne") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="pozycjaTextBox" runat="server" Text='<%# Bind("pozycja_nr") %>' Width="50" />
                                </td>
                            </tr>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table runat="server" style="">
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
                                        Text="Wstaw" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                        Text="Wyczyść" />
                                </td>
                                <td>
                                    <asp:TextBox ID="trescTextBox" runat="server" Text='<%# Bind("tresc") %>' Width="600" />
                                </td>
                                <td>
                                    <asp:CheckBox ID="aktualneCheckBox" runat="server" 
                                        Checked='<%# Bind("aktualne") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="pozycjaTextBox" runat="server" Text='<%# Bind("pozycja_nr") %>' Width="50" />
                                </td>
                            </tr>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                                        Text="Usuń" />
                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edytuj" />
                                </td>
                                <td>
                                    <asp:Label ID="trescLabel" runat="server" Text='<%# Eval("tresc") %>' Width="600" />
                                </td>
                                <td>
                                    <asp:CheckBox ID="aktualneCheckBox" runat="server" 
                                        Checked='<%# Eval("aktualne") %>' Enabled="false" />
                                </td>
                                <td>
                                    <asp:Label ID="pozycjaLabel" runat="server" Text='<%# Bind("pozycja_nr") %>' />
                                </td>
                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table style="border: solid 2px #336699;" cellspacing="0" cellpadding="3" rules="all">
                                        <tr style="background-color: #336699; color: White;">
                                                <th runat="server">
                                                </th>
                                                <th runat="server">
                                                    Tresc</th>
                                                <th runat="server">
                                                    Aktualne</th>
                                                <th id="Th1" runat="server">
                                                    Pozycja</th>
                                            </tr>
                                            <tr ID="itemPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="">
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                                        Text="Usuń" />
                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edytuj" />
                                </td>
                                <td>
                                    <asp:Label ID="trescLabel" runat="server" Text='<%# Eval("tresc") %>' />
                                </td>
                                <td>
                                    <asp:CheckBox ID="aktualneCheckBox" runat="server" 
                                        Checked='<%# Eval("aktualne") %>' Enabled="false" />
                                </td>
                                <td>
                                    <asp:Label ID="pozycjaLabel" runat="server" Text='<%# Bind("pozycja_nr") %>' Width="50" />
                                </td>
                            </tr>
                        </SelectedItemTemplate>
                    </asp:ListView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:WypozyczalniaSamochodowConnectionString %>" 
                        DeleteCommand="DELETE FROM [News] WHERE [id_ogloszenia] = @id_ogloszenia" 
                        InsertCommand="INSERT INTO [News] ([tresc], [pozycja_nr], [aktualne]) 
                        VALUES (@tresc, @pozycja_nr, @aktualne)" 
                        SelectCommand="SELECT [id_ogloszenia], [tresc], [pozycja_nr], [aktualne] FROM [News] ORDER BY [pozycja_nr]"                       
                        UpdateCommand="UPDATE [News] SET [tresc] = @tresc, [pozycja_nr] = @pozycja_nr,
                        [aktualne] = @aktualne WHERE [id_ogloszenia] = @id_ogloszenia">
                        <DeleteParameters>
                            <asp:Parameter Name="id_ogloszenia" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="id_pracownika" Type="Int32" />
                            <asp:Parameter Name="data_dodania" Type="DateTime" />
                            <asp:Parameter Name="tresc" Type="String" />
                            <asp:Parameter Name="pozycja_nr" Type="Int16" />
                            <asp:Parameter Name="aktualne" Type="Boolean" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="id_pracownika" Type="Int32" />
                            <asp:Parameter Name="data_dodania" Type="DateTime" />
                            <asp:Parameter Name="tresc" Type="String" />
                            <asp:Parameter Name="pozycja_nr" Type="Int16" />
                            <asp:Parameter Name="aktualne" Type="Boolean" />
                            <asp:Parameter Name="id_ogloszenia" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
</asp:Content>
