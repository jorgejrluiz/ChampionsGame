<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ChampionsGame2015.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%
        try
        {

            if (Session["tipo_usuario_logado"].ToString() == "1" || Session["tipo_usuario_logado"].ToString() == "0")
            {
                btnChama.Visible = true;
                btnIncricao.Visible = false;
            }


        }
        catch
        { }
    %>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Header Carousel -->
    <header id="myCarousel" class="carousel slide">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <div class="fill" style="background-image: url('img/slide1.jpg');">
                    <br /><br /><br /><br /><br /><br /><br />
                    <h2 style="text-align:center;color:white">Raça!</h2>
                </div>

            </div>
            <div class="item">
                <div class="fill" style="background-image: url('img/slide2.png');">
                     <br /><br /><br /><br /><br /><br /><br />
                    <h2 style="text-align:center;color:white">União!</h2>
                </div>

            </div>
            <div class="item">
                <div class="fill" style="background-image: url('img/slide3.jpg');">
                     <br /><br /><br /><br /><br /><br /><br />
                    <h2 style="text-align:center;color:white">Champions Game!</h2>
                </div>

            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>
    </header>

    <div style="background-color: white">

        <div style="margin-left: 1%; width: 98%; border-bottom-style: inset; border-bottom-width: thin; border-bottom-color: #C0C0C0;">
            <div style="background-color: white;">
                <br />
                <br />
                <h3 style="text-align: center; margin-top: 0px; background-color: white"><b>Já tem uma conta no site? Não?</b></h3>
            </div>
            <div align="center">
                <asp:Button ID="btnChama" runat="server" class="btn btn-warning" Style="position: static; width: 350px" Height="38px" Text="Inscreva em um Campeonato" Visible="False" OnClick="btnChama_Click" />
                <asp:Button ID="btnIncricao" runat="server" Text="Registrar-se" class="btn btn-warning" Style="position: static; width: 350px" OnClick="btnIncricao_Click" />
            </div>
            <br />
        </div>
    </div>
    <div style="background-color: white; border-radius: 1px; margin-left: 0px; margin-right: 0px; margin-top: 0px; border-bottom-style: groove; border-bottom-width: 1px; border-bottom-color: #999999">
        <div class="row" style="margin-top: 0px">
            <div class="col-md-12">
                <div>
                    <div>
                        <h3 style="margin-bottom: 0px; margin-top: 40px; margin-left: 26px;"><b>Como eu faço para participar?</b></h3>
                        <h3 style="border-bottom: 4px solid #f0ad4e; width: 360px; margin-top: 3px; margin-left: 8px;"><b></b></h3>
                    </div>
                    <div class="container" style="align-items: center; display: flex; flex-direction: row; flex-wrap: wrap; justify-content: center;">

                        <div style="float: left; padding: 25px; margin-right: 0px;">
                            <img src="../img/need.jpg" alt="Generic placeholder image" width="400" height="250">
                            <h2 style="margin-top: 10px; margin-left: 0px;">Cadastre-se</h2>
                            <p style="margin-left: 0px;">
                                Faça uma conta no nosso site para poder participar dos campeonatos!
                            </p>
                            <p style="margin-left: 0px;">
                                <a class="btn btn-default" href="Registro_de_Jogador.aspx" role="button">Primeiro Passo &raquo;</a>
                            </p>
                        </div>
                        <div style="float: left; padding: 25px;">

                            <img src="../img/background.jpg" alt="Generic placeholder image" width="400" height="250">
                            <h2 style="margin-top: 10px; margin-left: 0px;">Crie ou Participe</h2>
                            <p style="margin-left: 0px;">
                                Crie campeonatos ou participe de um já existente!
                            </p>
                            <p style="margin-left: 0px;">
                                <a class="btn btn-default" href="Campeonatos.aspx" role="button">Segundo Passo &raquo;</a>
                            </p>
                        </div>
                    </div>

                </div>
                <!-- /.row -->
            </div>
            <!-- /.row -->
        </div>
        <div>
            <div>
                <h3 style="margin-bottom: 0px; margin-top: 50px; margin-left: 26px;"><b>Campeonatos em destaque</b></h3>
                <h3 style="border-bottom: 4px solid #f0ad4e; width: 333px; margin-top: 3px; margin-left: 8px;"><b></b></h3>
            </div>
            <div class="panel-body">
                <%
                    try
                    {
                        ChampionsGame2015.CODE.CampeonatoBLL.CampeonatoBLL campeonato = new ChampionsGame2015.CODE.CampeonatoBLL.CampeonatoBLL();
                    System.Data.DataTable data = campeonato.ListarCampeonatoIndex();

                    int contador = 0;

                    for (int i = 0; i < data.Rows.Count; i++)
                    {

                        Response.Write("<div style='float:left; margin-left:15px; width:300px; height:300px;'>");
                        Response.Write("<a href='DadosCampeonato.aspx?idCampeonato=" + data.Rows[i]["idcamp"].ToString() + "'>");
                        Response.Write("<img style='width:300px; height:230px;' src='" + data.Rows[i]["imagem"].ToString() + "'alt=''/>");
                        Response.Write("<h3>" + data.Rows[i]["nomecamp"].ToString() + "</h3></div>");


                    }
                    }
                    catch { }
                
                %>
            </div>

        </div>

    </div>

    </body>
</asp:Content>
