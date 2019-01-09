using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChampionsGame2015.CODE.BLL;
using System.Data;
using ChampionsGame2015.CODE.Conexao;


namespace ChampionsGame2015
{
    public partial class Meu_Perfil : System.Web.UI.Page
    {
        JogadorBLL objJogador = new JogadorBLL();
        DAL objDAL = new DAL();
        LoginBLL objLogin = new LoginBLL();
        InscricaoBLL objInsc = new InscricaoBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            CarregarJogador();
        }

        protected void CarregarJogador()
        {
            string idJogador = Session["id_usuario_logado"].ToString();
            DataTable data = objJogador.CarregarMeuperfil(idJogador);
            lblnome.Text = data.Rows[0]["nome"].ToString();
            lblendereco.Text = data.Rows[0]["endereco"].ToString();
            lblemail.Text = data.Rows[0]["email"].ToString();
            lbllogin.Text = data.Rows[0]["login"].ToString();
            objDAL.Conectar();

            gridCampeonatos.DataSource = objDAL.RetDataTable("select inscricao.idInsc, campeonato.nomecamp from inscricao inner join campeonato on inscricao.id_Campeonato = campeonato.idcamp where inscricao.id_jogador like '" + idJogador + "'");
            gridCampeonatos.DataBind();
        
            

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtidcamp.Text = gridCampeonatos.SelectedRow.Cells[1].Text;
        }

        protected void btnexcluir_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtidcamp.Text != "")
                {
                    objInsc.Excluir(txtidcamp.Text);
                    CarregarGrid();
                }
                txtidcamp.Text = "";

                Response.Write("<script> alert('Sucesso ao excluir')</script>");
            }
            catch
            {
                Response.Write("<script> alert('Falha ao excluir')</script>");
            }
        }
        public void CarregarGrid()
        {
            string idJogador = Session["id_usuario_logado"].ToString();
            gridCampeonatos.DataSource = objDAL.RetDataTable("select inscricao.idInsc, campeonato.nomecamp from inscricao inner join campeonato on inscricao.id_Campeonato = campeonato.idcamp where inscricao.id_jogador like '" + idJogador + "'");
            gridCampeonatos.DataBind();
        }
    }
}