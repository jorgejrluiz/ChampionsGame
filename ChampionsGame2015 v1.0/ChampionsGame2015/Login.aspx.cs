using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChampionsGame2015.CODE.BLL;
using System.Data;

namespace ChampionsGame2015
{
    public partial class Login : System.Web.UI.Page
    {
        LoginBLL objUsu = new LoginBLL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            if (objUsu.ValidarLogin(txtLogin.Text, txtSenha.Text))
            {
                Session.Add("LoginUsuarioLogado", txtLogin.Text);
                Response.Redirect("index.aspx");
            }
            else
            {
                Response.Write("<script>alert('Dados Inválidos !')</script>");
                txtLogin.Text = "";
                txtSenha.Text = "";
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro_de_Jogador.aspx");
        }
    }
}