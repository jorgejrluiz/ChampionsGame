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
    public partial class GridInscritos : System.Web.UI.Page
    {
        CampeonatoBLL camp = new CampeonatoBLL();
        InscricaoBLL objInsc = new InscricaoBLL();
        LoginBLL objLogin = new LoginBLL();
        DAL objDAL = new DAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            lblTitulo.Text = Request.QueryString["titulo"];
            string id_Campeonato = Request.QueryString["id_Campeonato"];
            objDAL.Conectar();
            gridInscritos.DataSource = objDAL.RetDataTable("SELECT * FROM INSCRICAO WHERE id_Campeonato = '" + id_Campeonato + "'");
            gridInscritos.DataBind();
        }

        protected void gridInscritos_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}