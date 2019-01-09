using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChampionsGame2015.CODE.CampeonatoBLL;
using ChampionsGame2015.CODE.Conexao;

namespace ChampionsGame2015
{
    public partial class Campeonatos : System.Web.UI.Page
    {
        CampeonatoBLL objPesquisar = new CampeonatoBLL();
        DAL objDAL = new DAL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCrie_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro_de_Campeonato.aspx");
        }

        protected void btnVisualiza_Click(object sender, EventArgs e)
        {
            Response.Redirect("Grid.aspx");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            string pesquisa = "";
            System.Data.DataTable data = objPesquisar.Pesquisar(pesquisa);
        }

        protected void btnShow_Click(object sender, EventArgs e)
        {

        }

        protected void btnPesquisar_Click1(object sender, EventArgs e)
        {
            objDAL.Conectar();
            string pesquisa = "";
            objPesquisar.Pesquisar(pesquisa);
        }



    }
}