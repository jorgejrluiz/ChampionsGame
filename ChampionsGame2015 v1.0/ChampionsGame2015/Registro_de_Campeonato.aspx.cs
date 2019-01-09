using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChampionsGame2015.CODE.CampeonatoBLL;
using MySql.Data.MySqlClient;
using System.Data;
using ChampionsGame2015.CODE.Conexao;
using System.IO;

namespace ChampionsGame2015
{
    public partial class Registro_de_Campeonato : System.Web.UI.Page
    {
        CampeonatoBLL ObjCamp = new CampeonatoBLL();
        DAL objDAL = new DAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnGravar_Click(object sender, EventArgs e)
        {


            //try
            //{
                objDAL.Conectar();
                string filePath = Path.GetFileName(fuImagem.FileName);
                string nome_arquivo = Path.GetFileName(filePath);
                string ext = Path.GetExtension(nome_arquivo);
                string type = ext;

                if (!fuImagem.HasFile)
                {
                    //nenhum arquivo anexado
                    Response.Write(@"<script> alert('Selecione um arquivo .JPG , .PNG, .GIF, .BMP, 'Arquivo inválido');</script>");
                }
                else
                {

                    Boolean fileOK = false;
                    String fileExtension = System.IO.Path.GetExtension(fuImagem.FileName).ToLower();
                    String[] allowedExtensions = { ".jpg", ".png", ".gif", ".bmp" };
                    for (int i = 0; i < allowedExtensions.Length; i++)
                    {
                        if (fileExtension == allowedExtensions[i])
                        {
                            fileOK = true;
                            break;
                        }
                    }
                    if (fileOK)
                    {

                        if (type != String.Empty)
                        {
                            string comando = String.Format("INSERT INTO CAMPEONATO (nomecamp, tipo, categoria, valor, data, horario, local, vagas, premio, imagem) values ('" + txtNome.Text + "','" + ddlTipo.Text + "','" + ddlCategoria.Text + "','" + Double.Parse(txtValor.Text).ToString("C") + "','" + DateTime.Parse(txtData.Text).ToString("yyyy/MM/dd") + "','" + txtHorario.Text + "','" + txtLocal.Text + "','" + int.Parse(txtVagas.Text) + "','" + txtPremio.Text + "','~/img/Campeonatos/" + nome_arquivo + "')");
                            
                            Stream fs = fuImagem.PostedFile.InputStream;
                            BinaryReader br = new BinaryReader(fs);                                 //reads the   binary files
                            Byte[] bytes = br.ReadBytes((Int32)fs.Length);                           //counting the file length into bytes

                            objDAL.ExecutarComandoSQL(comando);
                            SalvarImagem();

                            //Response.Redirect("Campeonatos.aspx");
                            
                        }

                    }
                    else
                    {
                        DivErro.Visible = true;
                    }
                }
            //}
            //catch
            //{
            //    DivErro.Visible = true;
            //}
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void SalvarImagem()
        {
            if (fuImagem.HasFile)
            { 
                string fileName = Path.GetFileName(fuImagem.PostedFile.FileName);
                fuImagem.PostedFile.SaveAs(Server.MapPath("~/img/Campeonatos/") + fileName);
                //Response.Redirect(Request.Url.AbsoluteUri);
                DivSucesso.Visible = true;
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {

            Response.Redirect("index.aspx");


        }

        protected void btnIrCampeonato_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}
