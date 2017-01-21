<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Rezerwacja.aspx.cs" Inherits="WypozyczalniaSamochodow.About" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            width: 944px;
        }
        .style14
        {            height: 21px;
        }
        .style15
        {
            height: 11px;
        }
        .style19
        {
            width: 118px;
        }
        .style21
        {
            width: 100%;
        }
        .style25
        {
            width: 117px;
        }
        .style30
        {
            width: 207px;
        }
        .style32
        {
            width: 166px;
        }
        .style33
        {
            width: 223px;
        }
        .style36
        {
            width: 42px;
        }
        .style37
        {
            width: 53px;
        }
        .style38
        {
            width: 211px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
       REZERWACJA.
    </h2>
    <br />
    <table class="style1">
        <tr>
            <td class="style14" colspan="7">
        Wybierz dogodny termin i zarezerwuj auto.
    </td>
        </tr>
        <tr>
            <td class="style25">
                &nbsp;</td>
            <td class="style36">
                &nbsp;</td>
            <td class="style30">
                &nbsp;</td>
            <td class="style37">
                &nbsp;</td>
            <td class="style38">
                &nbsp;</td>
            <td class="style33">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style25">
                Data wypożyczenia:</td>
            <td class="style36">
                &nbsp;</td>
            <td class="style30">
                Data zwrotu:</td>
            <td class="style37">
                &nbsp;</td>
            <td class="style38">
                Typ nadwozia:</td>
            <td class="style33">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32" rowspan="4">
    <asp:Calendar ID="Calendar1" runat="server" BackColor="White"
        BorderColor="#999999" DayNameFormat="Shortest" 
        Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px" 
                    CellPadding="4">
        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
        <NextPrevStyle VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#808080" />
        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
        <SelectorStyle BackColor="#CCCCCC" />
        <TitleStyle BackColor="#999999" Font-Bold="True" BorderColor="Black" />
        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
        <WeekendDayStyle BackColor="#FFFFCC" />
    </asp:Calendar>
            </td>
            <td class="style36" rowspan="4">
                &nbsp;</td>
            <td class="style30" rowspan="4">
    <asp:Calendar ID="Calendar2" runat="server" BackColor="White"
        BorderColor="#999999" DayNameFormat="Shortest" 
        Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px" 
                    CellPadding="4" style="margin-left: 0px">
        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
        <NextPrevStyle VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#808080" />
        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
        <SelectorStyle BackColor="#CCCCCC" />
        <TitleStyle BackColor="#999999" Font-Bold="True" BorderColor="Black" />
        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
        <WeekendDayStyle BackColor="#FFFFCC" />
    </asp:Calendar>
            </td>
            <td class="style37" rowspan="4">
                &nbsp;</td>
            <td class="style38" rowspan="4">
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" 
                    DataSourceID="AccessDataSource1" DataTextField="rodzaj_nadwozia" 
                    DataValueField="rodzaj_nadwozia">
                </asp:CheckBoxList>
            </td>
            <td class="style33">
                &nbsp;</td>
            <td class="style19" rowspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style33">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style33">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style33">
    <asp:Button ID="Button1" runat="server" Text="Wyświetl" BackColor="#FFCC66" Height="32px" 
                    onclick="Button1_Click" Width="94px" />
            </td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15" colspan="7">
                <br />
                <br />
            </td>
        </tr>
        </table>
    <table class="style21">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" Visible="False" Width="914px" 
                    CellPadding="2" Font-Overline="False" Font-Size="Small" ForeColor="Black" 
                    HorizontalAlign="Left" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                    BorderWidth="1px">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:ImageField ReadOnly="True">
                        </asp:ImageField>
                        <asp:CommandField SelectText="rezerwuj" ShowSelectButton="True">
                        <FooterStyle BackColor="#FFFFCC" />
                        </asp:CommandField>
                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                        HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                    DataFile="~/App_Data/WypozyczalniaSamochodow.mdb" 
                    SelectCommand="SELECT [rodzaj_nadwozia] FROM [RodzajNadwozia]">
                </asp:AccessDataSource>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
    <br />
<p>
    &nbsp;</p>
</asp:Content>
