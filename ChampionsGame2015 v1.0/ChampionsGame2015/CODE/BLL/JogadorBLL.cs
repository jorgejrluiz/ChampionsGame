using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ChampionsGame2015.CODE.Conexao;
using MySql.Data.MySqlClient;
using System.Data;

namespace ChampionsGame2015.CODE.BLL
{
    public class JogadorBLL
    {
        DAL objDAL = new DAL();

        private int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        private string nome, endereco, telefone, login, senha, email, tipousu;

        public string Email
        {
            get { return email; }
            set { email = value; }
        }

        public string Senha
        {
            get { return senha; }
            set { senha = value; }
        }

        public string Login
        {
            get { return login; }
            set { login = value; }
        }

        public string Telefone
        {
            get { return telefone; }
            set { telefone = value; }
        }

        public string Endereco
        {
            get { return endereco; }
            set { endereco = value; }
        }

        public string Nome
        {
            get { return nome; }
            set { nome = value; }
        }

        public string Tipousu
        {
            get { return tipousu; }
            set { tipousu = value; }
        }


        public void Registrar(JogadorBLL obj)
        {
            objDAL.Conectar();
            string comando = String.Format("INSERT INTO JOGADOR (nome, endereco, telefone, email, login, senha, tipousu) VALUES('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', {6})", obj.Nome, obj.Endereco, obj.Telefone, obj.Email, obj.Login, obj.Senha, obj.Tipousu);
            objDAL.ExecutarComandoSQL(comando);
        }

        public void Alterarjog(JogadorBLL obj)
        {
            objDAL.Conectar();
            string comando = String.Format("UPDATE JOGADOR SET nome= '{0}' , endereco= '{1}' , telefone= '{2}' , email= '{3}' , login= '{4}' , senha= '{5}' WHERE id={6} ", obj.Nome, obj.Endereco, obj.Telefone, obj.Email, obj.login, obj.senha, obj.id);
            objDAL.ExecutarComandoSQL(comando);
        }

        public void Excluirjog(string id)
        {
            objDAL.Conectar();
            string comando = String.Format("delete from jogador where id={0]", id);
            objDAL.ExecutarComandoSQL(comando);

        }

        public void Selecionarjog(string id)
        {
            objDAL.Conectar();
            string comando = String.Format("select * from jogador where id " + id);
        }


        public void listarcampinscrito(string id)
        {
            objDAL.Conectar();
            string comando = String.Format("select id_Jogador,nome from inscricao,campeonato where id_Jogador = " + id);
        }

        public DataTable CarregarMeuperfil(string id)
        {
            objDAL.Conectar();
            return objDAL.RetDataTable("SELECT * FROM JOGADOR WHERE ID =" + id);
        }
        public DataTable Carregarcampinscrito(string idcampeonato)
        {
            objDAL.Conectar();
            return objDAL.RetDataTable("SELECT nomecamp FROM campeonato WHERE id_Jogador =" + id);
        }


        public void Excluircamp(string id)
        {
            objDAL.Conectar();
            string comando = String.Format("delete from inscricao where id_Jogador={0]", id);
            objDAL.ExecutarComandoSQL(comando);

        }




    }
}