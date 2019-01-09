<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="Meu_Perfil.aspx.cs" Inherits="ChampionsGame2015.Meu_Perfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%
        try
        {

            var id_usuario_logado = Session["id_usuario_logado"].ToString();


        }
        catch
        {

        }

         
    %>


    <div class="container">



        <div style="height: 411px;">
            <div class="row" style="margin: 3% 10%; background-image: url('img/back.jpg'); border-radius: 5px; height: 400px;">
                <div class="col-md-6" style="margin-top: 10px">
                    <h1 style="color: #ff6a00; margin-left: 5%">Dados:</h1>
                    <h1>
                        <asp:Label class="label" ID="Label1" runat="server" Style="color: #000; margin-left: 5%" Font-Size="Large" Text="Usuario:"></asp:Label>
                        <asp:Label class="" ID="lbllogin" runat="server" Style="color: #000; margin-left: 0%" Font-Size="Large" Text="Usuario"></asp:Label></h1>
                    <h4>
                        <asp:Label class="label" ID="Label2" runat="server" Style="color: #000; margin-left: 5%" Font-Size="Large" Text="Nome:"></asp:Label>
                        <asp:Label class="" ID="lblnome" runat="server" Style="color: #000; margin-left: 0%" Font-Size="Large" Text="Nome"></asp:Label></h4>
                    <h4>
                        <asp:Label class="label" ID="Label3" runat="server" Style="color: #000; margin-left: 5%" Font-Size="Large" Text="Email:" TextMode="Email"></asp:Label>
                        <asp:Label class="" ID="lblemail" runat="server" Style="color: #000; margin-left: 0%" Font-Size="Large" Text="Email" TextMode="Email"></asp:Label>
                    </h4>
                    <h4>
                        <asp:Label class="label" ID="Label4" runat="server" Style="color: #000; margin-left: 5%" Font-Size="Large" Text="Endereco:"></asp:Label>
                        <asp:Label class="" ID="lblendereco" runat="server" Style="color: #000; margin-left: 0%" Font-Size="Large" Text="Endereco"></asp:Label></h4>
                </div>
                <div class="col-md-6">
                    <div style="margin-top: 7%">
                        <h1 style="color: #ff6a00;">Campeonato:</h1>
                        <asp:GridView ID="gridCampeonatos" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Height="99px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="377px">
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                            </Columns>
                            <FooterStyle BackColor="Tan" />
                            <HeaderStyle BackColor="Tan" Font-Bold="True" />
                            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                            <SortedAscendingCellStyle BackColor="#FAFAE7" />
                            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                            <SortedDescendingCellStyle BackColor="#E1DB9C" />
                            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                        </asp:GridView>
                    </div>

                    <asp:TextBox ID="txtidcamp" runat="server" ReadOnly="True" Visible="False"></asp:TextBox>
                    <asp:Button class="btn btn-warning" ID="btnexcluir" runat="server" OnClick="btnexcluir_Click" Text="Excluir" />




                </div>
            </div>
        </div>
    </div>


</asp:Content>
