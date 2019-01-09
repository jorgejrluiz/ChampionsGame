using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ChampionsGame2015.CODE.Conexao;
using System.Data;

namespace ChampionsGame2015.CODE.BLL
{
    public class LoginBLL
    {
        DAL objDAL = new DAL();

        private string login;

        public string Login
        {
            get { return login; }
            set { login = value; }
        }
        private string senha;

        public string Senha
        {
            get { return senha; }
            set { senha = value; }
        }
        public bool ValidarLogin(string login, string senha)
        {
            objDAL.Conectar();
            string comando = String.Format("SELECT * FROM JOGADOR WHERE LOGIN='{0}' AND SENHA='{1}'", login, senha);
            DataTable data = objDAL.RetDataTable(comando);
            if (data.Rows.Count == 1)
            {
                HttpContext.Current.Session.Add("tipo_usuario_logado", data.Rows[0]["tipousu"].ToString());
                HttpContext.Current.Session.Add("id_usuario_logado", data.Rows[0]["id"].ToString());
                HttpContext.Current.Session.Add("usuario_logado", data.Rows[0]["login"].ToString());
                return true;
            }

            else
                return false;
        }

        public void VerificarInscricao(int id)
        {
            objDAL.Conectar();
            string comando = String.Format("SELECT ID_JOGADOR FROM INSCRICAO WHERE ID_JOGADOR" + id);
            DataTable data = objDAL.RetDataTable(comando);
        }
    }
}