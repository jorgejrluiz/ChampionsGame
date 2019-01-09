<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="DadosCampeonato.aspx.cs" Inherits="ChampionsGame2015.DadosCampeonato" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%
        try
        {
            var tipo_usuario_logado = Session["tipo_usuario_logado"].ToString(); //pega o tipo de usuario logado
            var id_usuario_logado = Session["id_usuario_logado"].ToString();

            if (Session["tipo_usuario_logado"].ToString() == "1")
            {
                btnEmitirRelatorio.Visible = true;
            }
            if (Session["tipo_usuario_logado"].ToString() == "0" || Session["tipo_usuario_logado"].ToString() == "1")
            {
                btnInscrever.Visible = true;
            }


        }
        catch
        {
            Session.Add("tipo_usuario_logado", 0); //Se não está logado então tipo é 0 (Usuário Comum)
            btnEmitirRelatorio.Visible = false;
        }

        
    %>
    <script language="javascript">
        function AbreGrid(titulo) {
            var Mleft = (screen.width / 2) - (760 / 2);
            var Mtop = (screen.height / 2) - (700 / 2);
            window.open('GridInscritos.aspx?titulo=' + titulo + '&id_Campeonato=' + document.getElementById("lblid").value, null, 'height=500,width=500,status=yes,toolbar=no,scrollbars=yes,menubar=no,location=no,top=\'+Mtop+\', left=\'+Mleft+\'');
        }
    </script>
    <br />
    <div style="height: 500px;">
        <div style="background-image: url('img/back.jpg'); position: static; height: 460px; width: 399px; margin-left: 34%; border-radius:5px">
            <br />
            <center><h3 style="margin-top:0px"><b>Informações</b></h3></center>
            <br />
            <div style="margin-top: 0px">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Nome:" Style="font-size: 15px; margin-left: 5%;"></asp:Label>
                <asp:Label ID="lblnome" Style="color: #333; margin-left: 16px; font-size: 15px" class="label" runat="server" Text="Label" Font-Bold="True"></asp:Label>
            </div>
            <div>
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Data:" Style="font-size: 15px; margin-left: 5%;"></asp:Label>
                &nbsp;<asp:Label ID="lbldata" Style="color: #333; margin-left: 21px; font-size: 15px" class="label" runat="server" Text="Label"></asp:Label>
            </div>
            <div>
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Horário:" Style="font-size: 15px; margin-left: 5%;"></asp:Label>
                    <asp:Label ID="lblhora" Style="color: #333; margin-left: 19px; font-size: 15px" class="label" runat="server" Text="Label"></asp:Label>
            </div>
            <div>
                
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Local:" Style="font-size: 15px; margin-left: 5%;"></asp:Label>
                <asp:Label ID="lbllocal" Style="color: #333; margin-left: 19px; font-size: 15px" class="label" runat="server" Text="Label"></asp:Label>
            </div>
            <div>
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Vagas:" Style="font-size: 15px; margin-left: 5%;"></asp:Label>
                <asp:Label ID="lblvagas" Style="color: #333; margin-left: 14px; font-size: 15px" class="label" runat="server" Text="Label"></asp:Label>
            </div>
            <div>
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Valor:" Style="font-size: 15px; margin-left: 5%;"></asp:Label>
                &nbsp;<asp:Label ID="lblvalor" Style="color: #333; margin-left: 17px; font-size: 15px" class="label" runat="server" Text="Label"></asp:Label>
            </div>
            <div>
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Prêmio:" Style="font-size: 15px; margin-left: 5%;"></asp:Label>
                <asp:Label ID="lblpremio" Style="color: #333; margin-left: 8px; font-size: 15px" class="label" runat="server" Text="Label"></asp:Label>

            </div>
            <div style="margin-top:10px">
                <asp:Button ID="btnInscrever" runat="server" class="btn btn-warning" style="text-align: center;font-weight:bold;width: 112px;position: static; margin-left: 18%" Text="Inscrever" OnClick="btnInscrever_Click" Font-Bold="True" Width="154px" Visible="False" />
                <asp:Button ID="btnEmitirRelatorio" runat="server" class="btn btn-warning" Style="position: static; margin-left: 6%" Text="Ver Inscritos" Visible="False" OnClick="btnEmitirRelatorio_Click" Font-Bold="True" />
                <asp:Label ID="lblid" runat="server" Style="color: #fff" Text="Label" Visible="false"></asp:Label>

            </div>
            <div style="margin-top: 15px">
                <asp:GridView ID="gridinscritos" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" OnPageIndexChanging="gridinscritos_PageIndexChanging" AllowPaging="True" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="375px" PageSize="6" style="margin-left: 10px" OnSelectedIndexChanged="gridinscritos_SelectedIndexChanged1">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                <asp:Button ID="btnExcluir" CssClass="btn btn-danger" Visible="false" runat="server" Text="Excluir Jogador" OnClick="btnExcluir_Click" />
                <asp:SqlDataSource ID="championsgame" runat="server"></asp:SqlDataSource>
            </div>

        </div>
    </div>
    <br />
    </form>
</asp:Content>
