<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="Campeonatos.aspx.cs" Inherits="ChampionsGame2015.Campeonatos" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%
        try
        {
            var tipo_usuario_logado = Session["tipo_usuario_logado"].ToString();
            if (Session["tipo_usuario_logado"].ToString() == "1")
            {
                btnCrie.Visible = true;
            }
        }
        catch { }
    %>
    <div style="height: 440px;">
        <div>
            <h3 style="margin-bottom: 0px; margin-top: 40px; margin-left: 26px;"><b>Campeonatos</b></h3>
            <h3 style="border-bottom: 4px solid #f0ad4e; width: 180px; margin-top: 3px; margin-left: 8px;"><b></b></h3>
        </div>
        <div style="margin-left: 0px">
            <p style="background-image:url('img/back.jpg'); height: 43px; margin-top: 20px; width: 502px;">

                &nbsp; <b><asp:Label ID="Label1" runat="server" Text="Pesquisa: " Style="font-size: 15px; margin-top: 12px"></asp:Label></b>

                <asp:TextBox ID="txtPesquisa" runat="server" Height="25px" Width="267px" Style="margin-top: 8px"></asp:TextBox>
                <asp:Button ID="btnPesquisar" runat="server" Style="margin-top: 3px" Text="Pesquisar" class="btn btn-warning" Width="119px" OnClick="btnPesquisar_Click1" />
            </p>
        </div>



        <div style="margin-left: 10px">
            <asp:Button ID="btnCrie" runat="server" class="btn btn-warning" Text="Crie um Campeonato" Style="position: static; width: 259px" OnClick="btnCrie_Click" Visible="False" />


        </div>




        <div class="panel-body">
            <%
                try
                {
                    ChampionsGame2015.CODE.CampeonatoBLL.CampeonatoBLL campeonato = new ChampionsGame2015.CODE.CampeonatoBLL.CampeonatoBLL();
                    System.Data.DataTable data = campeonato.ListarCampeonato();

                    int contador = 5;

                    for (int i = 0; i < data.Rows.Count; i++)
                    {

                        Response.Write("<div style='float:left; margin-left:15px; width:300px; height:300px;'>");
                        Response.Write("<a href='DadosCampeonato.aspx?idCampeonato=" + data.Rows[i]["idcamp"].ToString() + "'>");
                        Response.Write("<img style='width:300px; height:230px;' src='" + data.Rows[i]["imagem"].ToString() + "'alt=''/>");
                        Response.Write("<h3>" + data.Rows[i]["nomecamp"].ToString() + "</h3></div>");


                    }
                    if (contador == 5)
                    {
                        contador = 0;
                        Response.Write("<br></br>");
                    }

                    contador++;
                }
                catch
                {
                    
                }
                
                    %>
        </div>
    </div>
</asp:Content>

