<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/ClientLog.Master" AutoEventWireup="true" CodeBehind="Poczta_wyslane.aspx.cs" Inherits="WypozyczalniaSamochodow.Clients.Poczta_wyslane" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 232px;
        }
        .style3
        {
            width: 333px;
        }
        .style4
        {
            color: #993300;
        }
        .style6
        {
            width: 333px;
            color: #993300;
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
                <b>SKRZYNKA POCZTOWA</b></td>
        </tr>
        <tr>
            <td>
                <hr /></td>
        </tr>
        </table>
    <table class="style1">
        <tr>
            <td class="style2">
                <span class="style4"></td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Menu ID="Menu1" runat="server" BackColor="#E3EAEB" 
                    DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Small" 
                    ForeColor="#666666" StaticSubMenuIndent="10px">
                    <DynamicHoverStyle BackColor="#666666" ForeColor="White" />
                    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <DynamicMenuStyle BackColor="#E3EAEB" />
                    <DynamicSelectedStyle BackColor="#1C5E55" />
                    <Items>
                        <asp:MenuItem Text="Nowa wiadomość" Value="Nowa wiadomość" 
                            NavigateUrl="~/Clients/Poczta_wiadomosc.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Wiadomości odebrane" Value="Wiadomości odebrane" 
                            NavigateUrl="~/Clients/Poczta_odebrane.aspx">
                        </asp:MenuItem>
                        <asp:MenuItem Text="Wiadomości wysłane" Value="Wiadomości wysłane" 
                            NavigateUrl="~/Clients/Poczta_wyslane.aspx">
                        </asp:MenuItem>
                    </Items>
                    <StaticHoverStyle BackColor="#666666" ForeColor="White" />
                    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <StaticSelectedStyle BackColor="#1C5E55" />
                </asp:Menu>
            </td>
            <td class="style3">
                &nbsp;</td>
            <td>
            </td>
        </tr>
        <tr>
            <td class="style2">
                </span></td>
            <td class="style6">
                Wiadomości:&nbsp;</td>
            <td class="style4">           
                Szczegóły wiadomości:</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="id_wiadomosci" 
                    DataSourceID="SqlDataSource1" >
                    <AlternatingItemTemplate>
                        <tr style="">
                            <td>
                                <asp:LinkButton ID="lnkSelect" Text="Select" CommandName="Select" runat="server"
                                ForeColor="#996600" />
                            </td>
                            <td>
                                <asp:Label ID="data_wyslaniaLabel" runat="server" 
                                    Text='<%# Eval("data_wyslania") %>' />
                            </td>
                            <td>
                                <asp:Label ID="temat_wyslanejLabel" runat="server" 
                                    Text='<%# Eval("temat_wyslanej") %>' />
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" 
                            style="">
                            <tr>
                                <td>
                                    Nie masz żadnych wysłanych wiadomości.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <ItemTemplate>
                        <tr style="">
                            <td>
                                <asp:LinkButton ID="lnkSelect" Text="Select" CommandName="Select" runat="server"
                                ForeColor="#996600" />
                            </td>
                            <td>
                                <asp:Label ID="data_wyslaniaLabel" runat="server" 
                                    Text='<%# Eval("data_wyslania") %>' />
                            </td>
                            <td>
                                <asp:Label ID="temat_wyslanejLabel" runat="server" 
                                    Text='<%# Eval("temat_wyslanej") %>' />
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
                                                Wybierz</th>
                                            <th runat="server">
                                                Data wysłania</th>
                                            <th runat="server">
                                                Temat wiadomości</th>
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
                        <tr style="background-color: #336699; color: White;">
                            <td>
                                <asp:LinkButton ID="lnkSelect" Text="Select" CommandName="Select" runat="server"
                                ForeColor="White" />
                            </td>
                            <td>
                                <asp:Label ID="data_wyslaniaLabel" runat="server" 
                                    Text='<%# Eval("data_wyslania") %>' />
                            </td>
                            <td>
                                <asp:Label ID="temat_wyslanejLabel" runat="server" 
                                    Text='<%# Eval("temat_wyslanej") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
            </td>
            <td>           
                <asp:DetailsView ID="DetailsView1" runat="server" 
                    Height="120px" Width="294px" AutoGenerateRows="False" 
                    DataSourceID="SqlDataSource2" CellPadding="2" ForeColor="Black" 
                    GridLines="None" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                    BorderWidth="1px">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <Fields>
                        <asp:BoundField DataField="tresc_wyslanej" 
                            SortExpression="tresc_wyslanej" />
                    </Fields>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                        HorizontalAlign="Center" />
                </asp:DetailsView>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
            
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:WypozyczalniaSamochodowConnectionString %>" 
                    
                    
                    SelectCommand="SELECT [id_wiadomosci], [id_klienta], [data_wyslania], [temat_wyslanej] FROM [Emails]" 
                    DeleteCommand="DELETE FROM [Emails] WHERE [id_wiadomosci] = @id_wiadomosci" 
                    InsertCommand="INSERT INTO [Emails] ([id_klienta], [data_wyslania], [temat_wyslanej]) VALUES (@id_klienta, @data_wyslania, @temat_wyslanej)" 
                    UpdateCommand="UPDATE [Emails] SET [id_klienta] = @id_klienta, [data_wyslania] = @data_wyslania, [temat_wyslanej] = @temat_wyslanej WHERE [id_wiadomosci] = @id_wiadomosci">
                    <DeleteParameters>
                        <asp:Parameter Name="id_wiadomosci" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="id_klienta" Type="Int32" />
                        <asp:Parameter Name="data_wyslania" Type="DateTime" />
                        <asp:Parameter Name="temat_wyslanej" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="id_klienta" Type="Int32" />
                        <asp:Parameter Name="data_wyslania" Type="DateTime" />
                        <asp:Parameter Name="temat_wyslanej" Type="String" />
                        <asp:Parameter Name="id_wiadomosci" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:WypozyczalniaSamochodowConnectionString %>" 
                    SelectCommand="SELECT [id_wiadomosci], [tresc_wyslanej] FROM [Emails]" 
                    FilterExpression="id_wiadomosci='{0}'" 
                    DeleteCommand="DELETE FROM [Emails] WHERE [id_wiadomosci] = @id_wiadomosci" 
                    InsertCommand="INSERT INTO [Emails] ([tresc_wyslanej]) VALUES (@tresc_wyslanej)" 
                    UpdateCommand="UPDATE [Emails] SET [tresc_wyslanej] = @tresc_wyslanej WHERE [id_wiadomosci] = @id_wiadomosci">
                    <DeleteParameters>
                        <asp:Parameter Name="id_wiadomosci" Type="Int32" />
                    </DeleteParameters>
                    <FilterParameters>
                        <asp:ControlParameter Name="id_wiadomosci" ControlID="ListView1"
                        PropertyName="SelectedValue" />
                    </FilterParameters>
                    <InsertParameters>
                        <asp:Parameter Name="tresc_wyslanej" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="tresc_wyslanej" Type="String" />
                        <asp:Parameter Name="id_wiadomosci" Type="Int32" />
                    </UpdateParameters>
                    </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
     </table> 
</asp:Content>
