<%@ Page Title="Formularz" Language="C#" MasterPageFile="~/MasterPages/ClientLog.Master" AutoEventWireup="true" CodeBehind="Formularz.aspx.cs" Inherits="WypozyczalniaSamochodow.Clients.Formularz" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style5
        {
            text-align: center;
        }
        .style14
        {
            width: 35px;
        }
        .style21
        {
            text-align: center;
        }
        .style22
        {
            width: 93px;
            text-align: right;
        }
        .style25
        {
            width: 226px;
        }
        .style29
        {
            text-align: center;
            width: 93px;
        }
        .style32
        {
            width: 68px;
        }
        .style34
        {
            text-align: center;
            width: 135px;
        }
        .style35
        {
            width: 135px;
            text-align: right;
        }
        .style36
        {
            text-align: right;
        }
        .style37
        {
            width: 26px;
        }
        .style38
        {
            text-align: left;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent2" runat="server">

    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <strong>FORMULARZ REZERWACYJNY</strong></td>
        </tr>
        <tr>
            <td>
                <hr /></td>
        </tr>
        </table>
    <table>
            <tr>
            <td class="style21" colspan="6">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LabelError" runat="server" ForeColor="Red"></asp:Label>
                </td>
        </tr>
            <td class="style21" rowspan="1">
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" 
                    style="text-align: center">
                    <ItemTemplate>
                        <tr style="">
                            <td>
                            <asp:Label ID="markaLabel" runat="server" Text='<%# Eval("auto") %>' ForeColor="#666699" Font-Bold="False" Font-Size="Medium" />
                            <br />
                            <br />
                                <asp:Image ID="zdjecieLabel" runat="server" ImageUrl='<%# Eval("zdjecie") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table ID="itemPlaceholderContainer" runat="server" border="0" style="">
                                        <tr runat="server" style="">
                                            <th runat="server">
                                            </th>
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
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:WypozyczalniaSamochodowConnectionString %>" 
                    
                    SelectCommand="SELECT 'Rezerwujesz: ' + [marka] + ' ' + [model] As auto, [zdjecie] FROM [Cars] WHERE ([id_samochodu] = @id_samochodu)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="id_samochodu" QueryStringField="id" 
                            Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style34">
                &nbsp;</td>
            <td class="style29">
                <div class="style38">
            Data wypożyczenia:
            <br />
                </div>
                <asp:Calendar ID="Calendar1" runat="server" Width="183px" DateFormat="MM-dd-yyyy hh:mm:ss">
                <TitleStyle BackColor="LightBlue"/>
                <WeekendDayStyle BackColor="#FFFFCC" />
                </asp:Calendar>
            </td>
            <td class="style32">
            </td>
            <td class="style5" colspan="2">
                <div class="style38">
            Data zwrotu:
            <br />
                    </div>
                    <asp:Calendar ID="Calendar2" runat="server" Width="183px" DateFormat="MM-dd-yyyy hh:mm:ss">
                    <TitleStyle BackColor="LightBlue"/>
                    <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
            </td>
            <td class="style14">
            Płatność:
            <br />
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="sposob_platnosci" 
                    DataValueField="id_platnosci" Font-Size="Small" Height="28px" 
                    style="margin-top: 0px" Width="139px">
                </asp:DropDownList>
                <br />
                <br />
                <asp:Button ID="ButtonRezerwuj" runat="server" Text="Rezerwuj" Width="81px" 
                    onclick="ButtonRezerwuj_Click" style="text-align: center" 
                    BackColor="LightBlue" />
                </td>
        </tr>
        <tr>
            <td class="style36">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:WypozyczalniaSamochodowConnectionString %>" 
                    SelectCommand="SELECT * FROM [Payments]"></asp:SqlDataSource>
            </td>
            <td class="style35">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style32">
                &nbsp;</td>
            <td class="style25">
                &nbsp;</td>
            <td class="style37">
                &nbsp;</td>
        </tr>
    </table>

        <table class="style1">
        <tr>
            <td>
            
                &nbsp;</td>
        </tr>
        <tr>
            <td>
            
            <asp:Chart ID="Chart1" runat="server" Height="198px" Width="915px" 
                    style="margin-top: 0px" >
                    <Series>
                        <asp:Series ChartType="StackedBar" Name="Series1" Color="Transparent">
                        </asp:Series>
                        <asp:Series ChartType="StackedBar" Name="Series2" Color="Red">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
            
            </td>
        </tr>
    </table>

    </asp:Content>
