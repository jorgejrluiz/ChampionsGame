using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using ChampionsGame2015.CODE.Conexao;
using MySql.Data.MySqlClient;
using ChampionsGame2015.CODE.BLL;
using ChampionsGame2015.CODE.CampeonatoBLL;

namespace ChampionsGame2015.CODE.BLL
{
    public class InscricaoBLL
    {
        DAL objDAL = new DAL();

        private int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        public void Excluir(string id)
        {
            objDAL.Conectar();
            string comando = String.Format("DELETE FROM INSCRICAO WHERE IDINSC={0}", id);
            objDAL.ExecutarComandoSQL(comando);


        }

    }
}