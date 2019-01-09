using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ChampionsGame2015.CODE.BLL;
using System.Web.Security;
namespace ChampionsGame2015
{
    public partial class Registro_de_Jogador : System.Web.UI.Page
    {
        JogadorBLL objJogador = new JogadorBLL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGravar_Click(object sender, EventArgs e)
        {

            try
            {
                objJogador.Nome = txtNome.Text;
                objJogador.Endereco = txtEndereco.Text;
                objJogador.Telefone = txtTelefone.Text;
                objJogador.Email = txtEmail.Text;
                objJogador.Login = txtLogin.Text;
                objJogador.Senha = txtSenha.Text;
                objJogador.Tipousu = txtusu.Text;

                objJogador.Registrar(objJogador);

                txtEmail.Text = "";
                txtNome.Text = "";
                txtEndereco.Text = "";
                txtTelefone.Text = "";
                txtLogin.Text = "";
                txtSenha.Text = "";

                

                Response.Redirect("Login.aspx");

            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('Falha ao registrar o jogador, Tente novamente!')</script> Response.Write(" + ex.Message.ToString());
            }
            
            
            }



        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            
            try
            {
                txtNome.Text = "";
                txtEmail.Text = "";
                txtEndereco.Text = "";
                txtTelefone.Text = "";
                txtLogin.Text = "";
                txtSenha.Text = "";

                Response.Redirect("index.aspx");
            }
            catch
            {
                Response.Redirect("index.aspx");
            }
            
        }
        
    }
}