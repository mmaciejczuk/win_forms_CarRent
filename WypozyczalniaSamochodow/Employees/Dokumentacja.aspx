<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Employee.Master" AutoEventWireup="true" CodeBehind="Dokumentacja.aspx.cs" Inherits="WypozyczalniaSamochodow.Employees.Dokumentacja" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent3" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 909px;
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
                <b>DOKUMENTACJA</b></td>
        </tr>
        <tr>
            <td>
                <hr /></td>
        </tr>
        </table>
        <table>
            <tr>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:ListView ID="ListView1" runat="server" DataKeyNames="id_samochodu" 
                        DataSourceID="SqlDataSource1">
                        <AlternatingItemTemplate>
                            <tr style="background-color:#FFF8DC;">
                                <td>
                                    <asp:Button ID="SelectButton" runat="server" CommandName="Select" 
                                    Text="Wybierz" />
                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit"
                                    Text="Edytuj" />
                                </td>
                                <td>
                                    <asp:Label ID="markaLabel" runat="server" Text='<%# Eval("marka") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="modelLabel" runat="server" Text='<%# Eval("model") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="rodzaj_nadwoziaLabel" runat="server" 
                                        Text='<%# Eval("rodzaj_nadwozia") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="rodzaj_paliwaLabel" runat="server" 
                                        Text='<%# Eval("rodzaj_paliwa") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="nr_rejestracyjnyLabel" runat="server" 
                                        Text='<%# Eval("nr_rejestracyjny") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="data_kolejnego_przegladuLabel" runat="server" 
                                        Text='<%# Eval("data_kolejnego_przegladu") %>' />
                                </td>
                            </tr>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                                <td>
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                                        Text="Aktualizuj" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                        Text="Anuluj" />
                                </td>
                                <td>
                                    <asp:Label ID="markaLabel" runat="server" Text='<%# Eval("marka") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="modelLabel" runat="server" Text='<%# Eval("model") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="rodzaj_nadwoziaLabel" runat="server" 
                                        Text='<%# Eval("rodzaj_nadwozia") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="rodzaj_paliwaLabel" runat="server" 
                                        Text='<%# Eval("rodzaj_paliwa") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="nr_rejestracyjnyTextBox" runat="server" 
                                        Text='<%# Bind("nr_rejestracyjny") %>' />
                                </td>
                                <td>
                                    <asp:Calendar ID="Calendar1" runat="server" 
                                    SelectedDate ='<%# Bind("data_kolejnego_przegladu") %>' />
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
                                        Text="Nowy" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                        Text="Wyczyść" />
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:Label ID="markaLabel" runat="server" Text='<%# Eval("marka") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="modelLabel" runat="server" Text='<%# Eval("model") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="rodzaj_nadwoziaLabel" runat="server" 
                                        Text='<%# Eval("rodzaj_nadwozia") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="rodzaj_paliwaLabel" runat="server" 
                                        Text='<%# Eval("rodzaj_paliwa") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="nr_rejestracyjnyTextBox" runat="server" 
                                        Text='<%# Bind("nr_rejestracyjny") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="data_kolejnego_przegladuTextBox" runat="server" 
                                        Text='<%# Bind("data_kolejnego_przegladu") %>' />
                                </td>
                            </tr>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <tr style="background-color:#DCDCDC;color: #000000;">
                                <td>
                                    <asp:Button ID="SelectButton" runat="server" CommandName="Select" 
                                    Text="Wybierz" />
                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit"
                                    Text="Edytuj" />
                                </td>
                                <td>
                                    <asp:Label ID="markaLabel" runat="server" Text='<%# Eval("marka") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="modelLabel" runat="server" Text='<%# Eval("model") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="rodzaj_nadwoziaLabel" runat="server" 
                                        Text='<%# Eval("rodzaj_nadwozia") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="rodzaj_paliwaLabel" runat="server" 
                                        Text='<%# Eval("rodzaj_paliwa") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="nr_rejestracyjnyLabel" runat="server" 
                                        Text='<%# Eval("nr_rejestracyjny") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="data_kolejnego_przegladuLabel" runat="server" 
                                        Text='<%# Eval("data_kolejnego_przegladu") %>' />
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
                                                    Marka</th>
                                                <th runat="server">
                                                    Model</th>
                                                <th runat="server">
                                                    Nadwozie</th>
                                                <th runat="server">
                                                    Paliwo</th>
                                                <th runat="server">
                                                    Nr rejestracyjny</th>
                                                <th runat="server">
                                                    Data kolejnego przeglądu</th>
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
                            <asp:DataPager ID="EmployeesDataPager" runat="server" PageSize="15">
                                <Fields>
                                    <asp:NumericPagerField />
                                </Fields>
                            </asp:DataPager>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Label ID="markaLabel" runat="server" Text='<%# Eval("marka") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="modelLabel" runat="server" Text='<%# Eval("model") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="rodzaj_nadwoziaLabel" runat="server" 
                                        Text='<%# Eval("rodzaj_nadwozia") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="rodzaj_paliwaLabel" runat="server" 
                                        Text='<%# Eval("rodzaj_paliwa") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="nr_rejestracyjnyLabel" runat="server" 
                                        Text='<%# Eval("nr_rejestracyjny") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="data_kolejnego_przegladuLabel" runat="server" 
                                        Text='<%# Eval("data_kolejnego_przegladu") %>' />
                                </td>
                            </tr>
                        </SelectedItemTemplate>
                    </asp:ListView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:WypozyczalniaSamochodowConnectionString %>" 
                        SelectCommand="SELECT Cars.id_samochodu, Cars.marka, Cars.model, BodyTypes.rodzaj_nadwozia, 
                        FuelTypes.rodzaj_paliwa, CarDocumentations.nr_rejestracyjny, CarDocumentations.data_kolejnego_przegladu 
                        FROM Cars INNER JOIN BodyTypes ON Cars.rodzaj_nadwozia = BodyTypes.id_nadwozia INNER JOIN 
                        FuelTypes ON Cars.rodzaj_paliwa = FuelTypes.id_paliwa INNER JOIN 
                        CarDocumentations ON Cars.id_samochodu = CarDocumentations.id_samochodu"

                        DeleteCommand="DELETE FROM [CarDocumentations] WHERE [id_dokumentacji] = @id_dokumentacji" 
                        InsertCommand="INSERT INTO [CarDocumentations] ([id_samochodu], [nr_rejestracyjny], 
                        [data_kolejnego_przegladu]) VALUES (@id_samochodu, @nr_rejestracyjny, @data_kolejnego_przegladu)" 
                        
                        UpdateCommand="UPDATE [CarDocumentations] SET [id_samochodu] = @id_samochodu, 
                        [nr_rejestracyjny] = @nr_rejestracyjny, [data_kolejnego_przegladu] = @data_kolejnego_przegladu">

                        <DeleteParameters>
                            <asp:Parameter Name="id_dokumentacji" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="id_samochodu" Type="Int32" />
                            <asp:Parameter Name="nr_rejestracyjny" Type="String" />
                            <asp:Parameter Name="data_kolejnego_przegladu" Type="DateTime" />
                        </InsertParameters>
<%--                        <SelectParameters>
                            <asp:ControlParameter ControlID="Label2" Name="id_dokumentacji" PropertyName="Text" 
                                Type="Int32" />
                        </SelectParameters>--%>
                        <UpdateParameters>
                            <asp:Parameter Name="id_samochodu" Type="Int32" />
                            <asp:Parameter Name="nr_rejestracyjny" Type="String" />
                            <asp:Parameter Name="data_kolejnego_przegladu" Type="DateTime" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
</asp:Content>
