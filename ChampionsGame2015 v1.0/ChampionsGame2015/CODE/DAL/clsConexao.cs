using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MySql.Data.MySqlClient;

namespace ChampionsGame2015.CODE.Conexao
{
    public class DAL
    {
        private static string servidor = "robb0285.publiccloud.com.br";
        private static string banco = "championsgame_bd";
        private static string user = "champ_user";
        private static string password = "taU49q_5";
        private static string port = "3306";

        private string string_conexao = "Server=" + servidor + ";Database=" + banco + ";Uid=" + user + ";Pwd=" + password + ";Port=" + port;
        public MySqlConnection conexao;
        public MySqlCommand comando;


        public void Conectar()
        {
            conexao = new MySqlConnection();
            conexao.ConnectionString = string_conexao;
            conexao.Open();
        }

        public void ExecutarComandoSQL(String sql)
        {

            comando = new MySqlCommand();
            comando.Connection = conexao;
            comando.CommandText = sql;
            comando.ExecuteNonQuery();
        }

        public DataTable RetDataTable(string comando_select)
        {
            DataTable dados = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter();
            MySqlCommand comando = new MySqlCommand();

            comando.Connection = conexao;
            comando.CommandText = comando_select;
            da.SelectCommand = comando;

            da.Fill(dados);
            return dados;
        }
    }
}