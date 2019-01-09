using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChampionsGame2015.CODE.CampeonatoBLL;
using ChampionsGame2015.CODE.BLL;
using System.Data;
using ChampionsGame2015.CODE.Conexao;



namespace ChampionsGame2015
{
    public partial class DadosCampeonato : System.Web.UI.Page
    {
        CampeonatoBLL camp = new CampeonatoBLL();
        InscricaoBLL objInsc = new InscricaoBLL();
        LoginBLL objLogin = new LoginBLL();
        JogadorBLL objJog = new JogadorBLL();
        DAL objDAL = new DAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            string idCampeonato = Request.QueryString["idCampeonato"].ToString();

            CarregarCampeonato();
        }

        protected void btnInscrever_Click(object sender, EventArgs e)
        {
            objDAL.Conectar();
            string idCampeonato = Request.QueryString["idCampeonato"].ToString();
            string idJogador = Session["id_usuario_logado"].ToString();
            DataTable dt = camp.VerificaInscricao(idJogador, idCampeonato);

            if (dt.Rows.Count == 0)  //To verificando se retornou algum dado, se for igual a 0 é porque o cara não ta inscrito, se não for é porque ta ai cai no else
            {
                try
                {

                    DateTime data1 = DateTime.Now;
                    objDAL.Conectar();
                    string comando = String.Format("INSERT INTO INSCRICAO VALUES (null, '" + idJogador + "','" + idCampeonato + "','" + data1.ToString("yyyy/MM/dd") + "')");
                    objDAL.ExecutarComandoSQL(comando);
                    Response.Write("<script> alert('Inscrição realizada com sucesso');window.location='index.aspx';</script>");


                }
                catch
                {
                    Response.Write(@"<script> alert('Falha ao se inscrever, Tente Novamente')</script>");
                }
            }

            else
            {
                Response.Write("<script> alert('Você  já está inscrito no campeonato');window.location='Campeonatos.aspx';</script>");
            }

        }
        protected void CarregarCampeonato()
        {
            string idCampeonato = Request.QueryString["idCampeonato"].ToString();
            DataTable data = camp.CarregarDetalheCampeonato(idCampeonato);
            //Response.Write("<img style='margin-left:40%' src='" + data.Rows[0]["imagem"].ToString() + "'alt=''/>");
            lblnome.Text = data.Rows[0]["nomecamp"].ToString();
            lbldata.Text = DateTime.Parse(data.Rows[0]["data"].ToString()).ToShortDateString();
            lblhora.Text = data.Rows[0]["horario"].ToString();
            lbllocal.Text = data.Rows[0]["local"].ToString();
            lblvagas.Text = data.Rows[0]["vagas"].ToString();
            lblvalor.Text = decimal.Parse(data.Rows[0]["valor"].ToString()).ToString("c");
            lblpremio.Text = data.Rows[0]["premio"].ToString();
        }

        protected void btnEmitirRelatorio_Click(object sender, EventArgs e)
        {
            CarregarGrid();
            btnExcluir.Visible = true;
        }


        protected void gridinscritos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            string id_Campeonato = Request.QueryString["idCampeonato"];
            objDAL.Conectar();
            gridinscritos.PageIndex = e.NewPageIndex;

            gridinscritos.DataSource = objDAL.RetDataTable("select jogador.nome, inscricao.id_jogador from jogador join inscricao on id_jogador = id where id_Campeonato = " + id_Campeonato);

            gridinscritos.DataBind();

        }

        protected void gridinscritos_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnExcluir_Click(object sender, EventArgs e)
        {

            try
            {
                if (lblid.Text != "0")
                {
                    objInsc.Excluir(lblid.Text);
                    CarregarGrid();

                }


                Response.Write("<script>alert('Excluido com sucesso!')</script>");
            }
            catch
            {

                Response.Write("<script>alert('Falha ao excluir')</script>");

            }
        }
        public void CarregarGrid()
        {
            string id_Campeonato = Request.QueryString["idCampeonato"];
            objDAL.Conectar();

            gridinscritos.DataSource = objDAL.RetDataTable("select inscricao.idInsc, jogador.nome from jogador join inscricao on id_jogador = id where id_Campeonato =" + id_Campeonato);
            gridinscritos.DataBind();

        }

        protected void gridinscritos_SelectedIndexChanged1(object sender, EventArgs e)
        {
            lblid.Text = gridinscritos.SelectedRow.Cells[1].Text;
        }
    }
}