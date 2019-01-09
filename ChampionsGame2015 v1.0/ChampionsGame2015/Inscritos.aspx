<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inscritos.aspx.cs" Inherits="ChampionsGame2015.Inscritos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Relatório de Inscritos</title>
    <style type="text/css">
        .auto-style1 {
            width: 134px;
            height: 60px;
        }
        #form1 {
            width: 439px;
            height: 275px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <img alt="" class="auto-style1" src="img/logo.jpg" />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="30px" Text="Relatório de Inscritos"></asp:Label>
    
        <br />
    
    </div>
        <asp:GridView ID="gridInscritos" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="180px" Width="420px">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
    </form>
</body>
</html>
