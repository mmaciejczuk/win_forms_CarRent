<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="Cars.aspx.cs" Inherits="WypozyczalniaSamochodow.Admin.ControlPanel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent1" runat="server">
    <style type="text/css">
        .tabela
        {}
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
                <b>SAMOCHODY</b></td>
        </tr>
        <tr>
            <td>
                <hr /></td>
        </tr>
        </table>
    <table class="style1">
        <tr>
            <td class="style16">
                    &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                    <asp:GridView ID="GridViewCars" CssClass="tabela" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="id_samochodu" DataSourceID="SqlDataSourceCars" 
                        AllowSorting="True" CellPadding="4" 
                    ForeColor="Black" GridLines="Vertical" AllowPaging="True" 
                        BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" 
                        BorderWidth="1px" >
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <AlternatingRowStyle BackColor="White" />

                        <Columns>
                            <asp:CommandField ShowSelectButton="True" SelectText="&gt;" />
                            <asp:BoundField DataField="id_samochodu" HeaderText="id_samochodu" 
                                InsertVisible="False" ReadOnly="True" SortExpression="id_samochodu" 
                                Visible="False" HeaderStyle-Width="10px">
                                <HeaderStyle Width="10px"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="marka" HeaderText="Marka" SortExpression="marka" 
                                HeaderStyle-Width="150px">
                                <HeaderStyle Width="150px"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="model" HeaderText="Model" SortExpression="model" 
                                ItemStyle-Width="50px" >
                                <ItemStyle Width="50px"></ItemStyle>
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Nadwozie" SortExpression="rodzaj_nadwozia">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("rodzaj_nadwozia") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("rodzaj_nadwozia") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle Width="100px" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="rocznik" HeaderText="Rocznik" 
                                SortExpression="rocznik" HeaderStyle-Width="100px" >
                                <HeaderStyle Width="100px"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="pojemnosc_silnika" HeaderText="Silnik" 
                                SortExpression="pojemnosc_silnika" HeaderStyle-Width="50px" >
                                <HeaderStyle Width="50px"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="rodzaj_paliwa" HeaderText="Paliwo" 
                                SortExpression="rodzaj_paliwa" HeaderStyle-Width="80px" >
                                <HeaderStyle Width="80px"></HeaderStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="id_cennika" HeaderText="Cennik" 
                                SortExpression="id_cennika" HeaderStyle-Width="50px" Visible="False" >
                                <HeaderStyle Width="50px"></HeaderStyle>
                            </asp:BoundField>
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#666666" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>

            </td>
            <td class="style16">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style11">
                <asp:DetailsView ID="DetailsView2" CssClass="tabela" runat="server" AutoGenerateRows="False" 
                    DataKeyNames="id_samochodu" DataSourceID="SqlDataSource3" Height="50px" 
                    Width="426px" CellPadding="3" GridLines="Vertical" 
                    onitemdeleted="DetailsView1_ItemDeleted" 
                    oniteminserted="DetailsView1_ItemInserted" 
                    onitemupdated="DetailsView1_ItemUpdated" BackColor="White" 
                    BorderColor="#999999" BorderStyle="None" BorderWidth="1px">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <Fields>
                        <asp:BoundField DataField="id_samochodu" HeaderText="id_samochodu" 
                            InsertVisible="False" ReadOnly="True" SortExpression="id_samochodu" 
                            Visible="False" />
                        <asp:BoundField DataField="marka" HeaderText="Marka" SortExpression="marka" />
                        <asp:BoundField DataField="model" HeaderText="Model" SortExpression="model" />
                        <asp:TemplateField HeaderText="Nadwozie" SortExpression="rodzaj_nadwozia">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" 
                                    DataSourceID="SqlDataSource4" DataTextField="rodzaj_nadwozia" 
                                    DataValueField="id_nadwozia" SelectedValue='<%# Bind("rodzaj_nadwozia") %>'>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" 
                                    DataSourceID="SqlDataSource4" DataTextField="rodzaj_nadwozia" 
                                    DataValueField="id_nadwozia" SelectedValue='<%# Bind("rodzaj_nadwozia") %>'>
                                </asp:DropDownList>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("rodzaj_nadwozia") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="pojemnosc_silnika" HeaderText="Silnik" 
                            SortExpression="pojemnosc_silnika" />
                        <asp:TemplateField HeaderText="Paliwo" SortExpression="rodzaj_paliwa">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList2" runat="server" 
                                    DataSourceID="SqlDataSource5" DataTextField="rodzaj_paliwa" 
                                    DataValueField="id_paliwa" SelectedValue='<%# Bind("rodzaj_paliwa") %>'>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:DropDownList ID="DropDownList2" runat="server" 
                                    DataSourceID="SqlDataSource5" DataTextField="rodzaj_paliwa" 
                                    DataValueField="id_paliwa" SelectedValue='<%# Bind("rodzaj_paliwa") %>'>
                                </asp:DropDownList>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("rodzaj_paliwa") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="moc" HeaderText="Moc" SortExpression="moc" />
                        <asp:BoundField DataField="ladownosc" HeaderText="Ładowność" 
                            SortExpression="ladownosc" />
                        <asp:BoundField DataField="rocznik" HeaderText="Rok prod." 
                            SortExpression="rocznik" />
                        <asp:TemplateField HeaderText="Zdjęcie" SortExpression="zdjecie">
                            <EditItemTemplate>
                                <asp:FileUpload ID="FileUpload2" runat="server" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:FileUpload ID="FileUpload2" runat="server" />
<%--                                <asp:button id="btnUploadImage" onclick="btnUploadImage_Click" 
                                    onclientclick="return validate();" runat="server" text="Upload to DataBase"/>--%>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("zdjecie") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="id_cennika" HeaderText="Cennik" 
                            SortExpression="id_cennika" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ShowInsertButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                </asp:DetailsView>
            </td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
    </table>
    <table class="style18">
        <tr>
            <td class="style3">
                <asp:SqlDataSource ID="SqlDataSourceCars" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:WypozyczalniaSamochodowConnectionString %>" 
                    SelectCommand="SELECT * FROM [Cars]" UpdateCommand="UPDATE [Cars] SET [marka] = @marka, 
                    [model] = @model, [miejsc_siedzacych] = @miejsc_siedzacych, [ladownosc] = @ladownosc, 
                    [pojemnosc_silnika] = @pojemnosc_silnika, [moc] = @moc, [zuzycie_paliwa] = @zuzycie_paliwa, 
                    [rocznik] = @rocznik, [zdjecie] = @zdjecie, [id_cennika] = @id_cennika, [rodzaj_nadwozia] = @rodzaj_nadwozia, 
                    [rodzaj_paliwa] = @rodzaj_paliwa
                    WHERE [id_samochodu] = @id_samochodu">
                    <UpdateParameters>
                        <asp:Parameter Type="String" Name="marka" />
                        <asp:Parameter Type="String" Name="model" />
                        <asp:Parameter Type="Int32" Name="miejsc_siedzacych" />
                        <asp:Parameter Type="Int32" Name="ladownosc" />
                        <asp:Parameter Type="Decimal" Name="pojemnosc_silnika" />
                        <asp:Parameter Type="Int32" Name="moc" />
                        <asp:Parameter Type="Decimal" Name="zuzycie_paliwa" />
                        <asp:Parameter Type="Int32" Name="rocznik" />
                        <asp:Parameter Type="String" Name="zdjecie" />
                        <asp:Parameter Type="Int32" Name="id_cennika" />
                        <asp:Parameter Type="Int32" Name="rodzaj_nadwozia" />
                        <asp:Parameter Type="Int32" Name="rodzaj_paliwa" />
                        <asp:Parameter Type="Int32" Name="id_samochodu" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:WypozyczalniaSamochodowConnectionString %>" 
                    DeleteCommand="DELETE FROM [Cars] WHERE [id_samochodu] = @id_samochodu" 
                    InsertCommand="INSERT INTO [Cars] ([id_samochodu], [marka], [model], [ladownosc], 
                    [pojemnosc_silnika], [moc], [rocznik], [zdjecie], [id_cennika], [rodzaj_nadwozia], [rodzaj_paliwa]) 
                    VALUES (@id_samochodu, @marka, @model, @ladownosc, @pojemnosc_silnika, @moc, @rocznik, @zdjecie, 
                    @id_cennika, @rodzaj_nadwozia, @rodzaj_paliwa)" 
                    SelectCommand="SELECT * FROM [Cars]" 
                    FilterExpression="id_samochodu='{0}'"
                    UpdateCommand="UPDATE [Cars] SET [marka] = @marka, 
                    [model] = @model, [miejsc_siedzacych] = @miejsc_siedzacych, [ladownosc] = @ladownosc, 
                    [pojemnosc_silnika] = @pojemnosc_silnika, [moc] = @moc, [zuzycie_paliwa] = @zuzycie_paliwa, 
                    [rocznik] = @rocznik, [zdjecie] = @zdjecie, [id_cennika] = @id_cennika, [rodzaj_nadwozia] = @rodzaj_nadwozia, 
                    [rodzaj_paliwa] = @rodzaj_paliwa
                    WHERE [id_samochodu] = @id_samochodu">
                    <FilterParameters>
                        <asp:ControlParameter Name="id_samochodu" ControlID="GridViewCars"
                        PropertyName="SelectedValue" />
                    </FilterParameters>
                    <DeleteParameters>
                        <asp:Parameter Name="id_samochodu" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="id_samochodu" />
                        <asp:Parameter Name="marka" />
                        <asp:Parameter Name="model" />
                        <asp:Parameter Name="ladownosc" />
                        <asp:Parameter Name="pojemnosc_silnika" />
                        <asp:Parameter Name="moc" />
                        <asp:Parameter Name="rocznik" />
                        <asp:Parameter Name="zdjecie" />
                        <asp:Parameter Name="id_cennika" />
                        <asp:Parameter Name="rodzaj_nadwozia" />
                        <asp:Parameter Name="rodzaj_paliwa" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="marka" />
                        <asp:Parameter Name="model" />
                        <asp:Parameter Name="miejsc_siedzacych" />
                        <asp:Parameter Name="ladownosc" />
                        <asp:Parameter Name="pojemnosc_silnika" />
                        <asp:Parameter Name="moc" />
                        <asp:Parameter Name="zuzycie_paliwa" />
                        <asp:Parameter Name="rocznik" />
                        <asp:Parameter Name="zdjecie" />
                        <asp:Parameter Name="id_cennika" />
                        <asp:Parameter Name="rodzaj_nadwozia" />
                        <asp:Parameter Name="rodzaj_paliwa" />
                        <asp:Parameter Name="id_samochodu" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:WypozyczalniaSamochodowConnectionString %>" 
                    SelectCommand="SELECT BodyTypes.* FROM BodyTypes"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:WypozyczalniaSamochodowConnectionString %>" 
                    SelectCommand="SELECT FuelTypes.* FROM FuelTypes"></asp:SqlDataSource>
            </td>
            <td class="style19">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        </table>

    <script language="javascript" type="text/javascript">
        function validate() {
            var result = false;
            var upfile = document.getElementById("FileUpload1").value;
            if (upfile != "") {
                var accept = "png,gif,jpg,jpeg".split(',');
                var getExtention = upfile.split('.');
                var extention = getExtention[getExtention.length - 1];
                for (i = 0; i < accept.length; i++) {
                    if (accept[i] == extention) {
                        result = true;
                        break;
                    }
                }
                if (!result) {
                    alert("allowed file extention are png,gif,jpg,jpeg");
                }
            }
            else {
                alert("select image to Upload");
            }
            return result;
        }
        
    </script>

</asp:Content>
