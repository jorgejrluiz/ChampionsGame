using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace ChampionsGame2015
{
    public partial class Contato : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
       {
            name.Text = "";
            phone.Text = "";
            email.Text = "";
            message.Text = "";
            

            Response.Write("<script>alert('Menssagem enviada com sucesso, em breve retornaremos para você!')</script>");
            Response.Redirect("index.aspx");


        }
    }
}