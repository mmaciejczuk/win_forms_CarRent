<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Employee.Master" AutoEventWireup="true" CodeBehind="WykresDostepnosci.aspx.cs" Inherits="WypozyczalniaSamochodow.Employees.WykresDostepnosci" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent3" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 2px;
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
                <b>WYKRES DOSTEPNOSCI</b><strong>:</strong></td>
        </tr>
        <tr>
            <td>
                <hr /></td>
        </tr>
        </table>
        <table>
            <tr>
                <td style="text-align: center" class="style2">
                    <asp:Label ID="LabelError" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: left">
                    Wybierz samochodód:&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="marka" 
                        DataValueField="id_samochodu" Height="30px" Width="193px">
                    </asp:DropDownList>
                        &nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Wyświetl" 
                        Width="126px" onclick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="LabelAuto" runat="server" ForeColor="#993300"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Chart ID="Chart1" runat="server" Height="452px" Width="915px" 
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:WypozyczalniaSamochodowConnectionString %>" 
                        SelectCommand="SELECT [id_samochodu], marka + ' ' + model As marka FROM [Cars]">
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
</asp:Content>
