using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChampionsGame2015
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIncricao_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro_de_Jogador.aspx");  
        }

        protected void btnperfil_Click(object sender, EventArgs e)
        {
            Response.Redirect("Meu_Perfil.aspx");
        }

        protected void btnChama_Click(object sender, EventArgs e)
        {
            Response.Redirect("Campeonatos.aspx");
        }
    }
}