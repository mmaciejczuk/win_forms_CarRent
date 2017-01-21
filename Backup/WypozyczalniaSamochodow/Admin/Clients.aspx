<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="Clients.aspx.cs" Inherits="WypozyczalniaSamochodow.Admin.Client" %>
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
                <b>KLIENCI</b></td>
        </tr>
        <tr>
            <td>
                <hr /></td>
        </tr>
        </table>
    <table class="style1">
        <tr>
            <td class="style2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
                <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                    CellPadding="4" PageSize="17" DataKeyNames="id_klienta" 
                    DataSourceID="SqlDataSource1" GridLines="Vertical"
                    AllowPaging="True" AllowSorting="True" 
                    onrowdeleted="GridView1_RowDeleted" 
                    onrowupdated="GridView1_RowUpdated" 
                    onrowdatabound="GridView1_RowDataBound" 
                    onsorting="GridView1_RowDataBound" Width="736px" ForeColor="Black" 
                    BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" >
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <%--<asp:ButtonField CommandName="Select" ButtonType="Button" DataTextField="id_klienta" />--%>
                        <asp:CommandField ShowSelectButton="True" SelectText="&gt;" />
                        <asp:BoundField DataField="id_klienta" HeaderText="Id" 
                            InsertVisible="False" ReadOnly="True" SortExpression="id_klienta" 
                            Visible="False" />
                        <asp:BoundField DataField="imie" HeaderText="Imię" SortExpression="imie" />
                        <asp:BoundField DataField="nazwisko" HeaderText="Nazwisko" 
                            SortExpression="nazwisko" />
                        <asp:BoundField DataField="miasto" HeaderText="Miasto" 
                            SortExpression="miasto" />
                        <asp:BoundField DataField="kod" HeaderText="Kod" SortExpression="kod" />
                        <asp:BoundField DataField="ulica" HeaderText="Ulica" SortExpression="ulica" />
                        <asp:BoundField DataField="nr_domu" HeaderText="Nr" 
                            SortExpression="nr_domu" />
                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                        <asp:CheckBoxField DataField="banned" HeaderText="Ban" 
                            SortExpression="banned" Visible="False" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerSettings Position="Bottom"
                    FirstPageText="Przejdź do pierwszej strony"
                    LastPageText="Przejdź do ostatniej strony" />
                    <PagerStyle HorizontalAlign="Center" BackColor="#666666" ForeColor="White" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
            </td>
            <td>
                <asp:DetailsView ID="DetailsView1" runat="server" CellPadding="3" 
                    GridLines="Vertical" Height="50px" Width="188px" 
                    DataSourceID="SqlDataSource2" AutoGenerateRows="False"
                    AutoGenerateInsertButton="True" 
                    DataKeyNames="id_klienta" onitemdeleted="DetailsView1_ItemDeleted" 
                    oniteminserted="DetailsView1_ItemInserted" 
                    onitemupdated="DetailsView1_ItemUpdated" BackColor="White" 
                    BorderColor="#999999" BorderStyle="None" BorderWidth="1px">
                    <Fields>
                        <asp:BoundField ReadOnly="true" HeaderText="id_klienta"
                        DataField="id_klienta" SortExpression="id_klienta" Visible="False" 
                            InsertVisible="False" />
                        <asp:BoundField ReadOnly="false" HeaderText="Imie"
                        DataField="imie" SortExpression="imie" Visible="true" />
                        <asp:BoundField ReadOnly="false" HeaderText="Nazwisko"
                        DataField="nazwisko" SortExpression="nazwisko" Visible="true" />
                        <asp:BoundField ReadOnly="false" HeaderText="Miasto"
                        DataField="miasto" SortExpression="miasto" Visible="true" />
                        <asp:BoundField ReadOnly="false" HeaderText="Kod"
                        DataField="kod" SortExpression="kod" Visible="true" />
                        <asp:BoundField ReadOnly="false" HeaderText="Ulica"
                        DataField="ulica" SortExpression="ulica" Visible="true" />
                        <asp:BoundField ReadOnly="false" HeaderText="Nr"
                        DataField="nr_domu" SortExpression="nr_domu" Visible="true" />
                        <asp:BoundField ReadOnly="false" HeaderText="Email"
                        DataField="email" SortExpression="email" Visible="true" />
                        <asp:CheckBoxField DataField="banned" HeaderText="Ban" 
                            SortExpression="banned" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    </Fields>
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                </asp:DetailsView>
            </td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:WypozyczalniaSamochodowConnectionString %>" 
                    SelectCommand="SELECT Clients.* FROM Clients" UpdateCommand="UPDATE [Clients] SET 
                    [imie] = @imie, [nazwisko] = @nazwisko, [pesel] = @pesel, [miasto] = @miasto, 
                    [kod] =@kod, [ulica] = @ulica, [nr_domu] = @nr_domu, [email] = @email, 
                    [banned] = @banned 
                    WHERE [id_klienta] = @id_klienta" 
                    InsertCommand="INSERT INTO [Clients] ([id_klienta], [imie], [nazwisko], 
                    [pesel], [miasto], [kod], [ulica], [nr_domu], [email], [banned])
                    VALUES (@id_klienta, @imie, @nazwisko, @pesel, @miasto, @kod, @ulica, @nr_domu, 
                    @email, @banned)" 
                    DeleteCommand="DELETE FROM [Clients] WHERE [id_klienta] = @id_klienta" 
                    ondeleted="SqlDataSource1_Deleted">
                    <DeleteParameters>
                        <asp:Parameter Name="id_klienta" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Type="Int32" Name="id_klienta" />
                        <asp:Parameter Type="String" Name="imie" />
                        <asp:Parameter Type="String" Name="nazwisko" />
                        <asp:Parameter Type="String" Name="miasto" />
                        <asp:Parameter Type="String" Name="kod" />
                        <asp:Parameter Type="String" Name="ulica" />
                        <asp:Parameter Type="Int32" Name="nr_domu" />
                        <asp:Parameter Type="String" Name="email" />
                        <asp:Parameter Type="String" Name="banned" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Type="String" Name="imie" />
                        <asp:Parameter Type="String" Name="nazwisko" />
                        <asp:Parameter Type="String" Name="miasto" />
                        <asp:Parameter Type="String" Name="kod" />
                        <asp:Parameter Type="String" Name="ulica" />
                        <asp:Parameter Type="Int32" Name="nr_domu" />
                        <asp:Parameter Type="String" Name="email" />
                        <asp:Parameter Type="String" Name="banned" />
                        <asp:Parameter Type="Int32" Name="id_klienta" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                    ConnectionString="<%$ ConnectionStrings:WypozyczalniaSamochodowConnectionString %>" 
                    SelectCommand="SELECT * FROM [Clients]"
                    FilterExpression="id_klienta='{0}'" 
                    DeleteCommand="DELETE FROM [Clients] WHERE [id_klienta] = @id_klienta" 
                    InsertCommand="INSERT INTO [Clients] ([id_klienta], [imie], [nazwisko], 
                    [miasto], [kod], [ulica], [nr_domu], [email], [banned])
                    VALUES (@id_klienta, @nazwisko, @miasto, @kod, @ulica, @nr_domu, @email, @banned)" 
                    UpdateCommand="UPDATE [Clients] SET 
                    [imie] = @imie, [nazwisko] = @nazwisko, [miasto] = @miasto, 
                    [kod] =@kod, [ulica] = @ulica, [nr_domu] = @nr_domu, [email] = @email, 
                    [banned] = @banned 
                    WHERE [id_klienta] = @id_klienta">
                    <DeleteParameters>
                        <asp:Parameter Name="id_klienta" />
                    </DeleteParameters>
                    <FilterParameters>
                        <asp:ControlParameter Name="id_klienta" ControlID="GridView1"
                        PropertyName="SelectedValue" />
                    </FilterParameters>
                    <InsertParameters>
                        <asp:Parameter Type="Int32" Name="id_klienta" />
                        <asp:Parameter Type="String" Name="imie" />
                        <asp:Parameter Type="String" Name="nazwisko" />
                        <asp:Parameter Type="String" Name="miasto" />
                        <asp:Parameter Type="String" Name="kod" />
                        <asp:Parameter Type="String" Name="ulica" />
                        <asp:Parameter Type="Int32" Name="nr_domu" />
                        <asp:Parameter Type="String" Name="email" />
                        <asp:Parameter Type="String" Name="banned" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Type="String" Name="imie" />
                        <asp:Parameter Type="String" Name="nazwisko" />
                        <asp:Parameter Type="String" Name="miasto" />
                        <asp:Parameter Type="String" Name="kod" />
                        <asp:Parameter Type="String" Name="ulica" />
                        <asp:Parameter Type="Int32" Name="nr_domu" />
                        <asp:Parameter Type="String" Name="email" />
                        <asp:Parameter Type="String" Name="banned" />
                        <asp:Parameter Type="Int32" Name="id_klienta" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
