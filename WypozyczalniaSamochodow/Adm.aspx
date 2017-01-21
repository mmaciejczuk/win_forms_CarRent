<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Client.Master" AutoEventWireup="true" CodeBehind="Adm.aspx.cs" Inherits="WypozyczalniaSamochodow.Adm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent2" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
        }
        .style4
        {
            width: 364px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent2" runat="server">
<table class="style1">
        <tr>
            <td class="style4">
                <strong>LOGOWANIE</strong></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
                <hr /></td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:Label ID="LabelError" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                </td>
            <td>&nbsp;<asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="24px" 
                    Width="153px">
                    <asp:ListItem>Administrator</asp:ListItem>
                    <asp:ListItem>Pracownik</asp:ListItem>
                </asp:RadioButtonList>
                &nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="RadioButtonList1" ErrorMessage="Wybierz klienta" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4" style="text-align: right">
                                        &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" style="text-align: right">
                                        Login:&nbsp;</td>
            <td>
                <asp:TextBox ID="TextBoxLogin" runat="server" Width="148px" MaxLength="15"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxLogin" ErrorMessage="Wprowadź login" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                    runat="server" ControlToValidate="TextBoxLogin" 
                    ErrorMessage="Wprowadź poprawny format danych" ForeColor="Red" 
                    ValidationExpression="[\w| ]*">
                    </asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style4" style="text-align: right">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" style="text-align: right">
                Hasło:</td>
            <td>
                <asp:TextBox ID="TextBoxHaslo" runat="server" TextMode="Password" Width="148px" 
                    MaxLength="50"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxHaslo" ErrorMessage="Wprowadź hasło" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                    runat="server" ControlToValidate="TextBoxHaslo" 
                    ErrorMessage="Wprowadź poprawny format danych" ForeColor="Red" 
                    ValidationExpression='[\w| !"§$%&amp;/()=\-?\*]*'>
                    </asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Zapamiętaj moje dane" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
            &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Zaloguj" Width="112px" 
                    onclick="Button1_Click" />
            </td>
        </tr>
        </table>
</asp:Content>
