using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Data;
using ChampionsGame2015.CODE.Conexao;

namespace ChampionsGame2015.CODE.CampeonatoBLL
{
    public class CampeonatoBLL
    {

        DAL objDAL = new DAL();

        private int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        private string nome_campeonato;

        public string Nome_Campeonato
        {
            get { return nome_campeonato; }
            set { nome_campeonato = value; }
        }

        private string tipo;
        public string Tipo
        {
            get { return tipo; }
            set { tipo = value; }
        }
        private string categoria;

        public string Categoria
        {
            get { return categoria; }
            set { categoria = value; }
        }
        private double valor;

        public double Valor
        {
            get { return valor; }
            set { valor = value; }
        }

        private DateTime data;

        public DateTime Data
        {
            get { return data; }
            set { data = value; }
        }

        private int hora;

        public int Hora
        {
            get { return hora; }
            set { hora = value; }
        }

        private string local;

        public string Local
        {
            get { return local; }
            set { local = value; }
        }

        private int vagas;

        public int Vagas
        {
            get { return vagas; }
            set { vagas = value; }
        }

        private string premio;

        public string Premio
        {
            get { return premio; }
            set { premio = value; }
        }

        private string img;

        public string Img
        {
            get { return img; }
            set { img = value; }
        }

        public void Inserir(CampeonatoBLL obj)
        {
            objDAL.Conectar();

            string comando = String.Format("INSERT INTO CAMPEONATO (nomecamp, tipo, categoria, valor, data, horario, local, vagas, premio, imagem) VALUES('{0}','{1}','{2}','{3}','{4}',{5},'{6}','{7}','{8}','{9}')", obj.Nome_Campeonato, obj.Tipo, obj.Categoria, obj.Valor, obj.Data.ToString("yyyy/MM/dd"), obj.Hora, obj.Local, obj.Vagas, obj.Premio, obj.Img);

            objDAL.ExecutarComandoSQL(comando);
        }

        public void Alterar(CampeonatoBLL obj)
        {
            objDAL.Conectar();
            string comando = String.Format("UPDATE CAMPEONATO SET nomecamp = '{0}', tipo = '{1}', categoria = '{2}', valor = {3}, data = {4}, horario = {5}, local = '{6}', vagas = '{7}', premio = '{8}', imagem = '{9}' ,WHERE idcamp={10} ", obj.Nome_Campeonato, obj.Tipo, obj.Categoria, obj.Valor, obj.Data.ToString("yyyy/MM/dd"), obj.Hora, obj.Local, obj.Vagas, obj.Premio, obj.Img, obj.Id);

            objDAL.ExecutarComandoSQL(comando);
        }

        public void Excluir(string id)
        {
            objDAL.Conectar();

            string comando = String.Format(" DELETE FROM CAMPEONATO WHERE idcamp ={0}", id);
            objDAL.ExecutarComandoSQL(comando);
        }

        public DataTable ListarCampeonato()
        {
            objDAL.Conectar();
            return objDAL.RetDataTable("SELECT * FROM CAMPEONATO");
        }

        public DataTable ListarCampeonatoIndex()
        {
                objDAL.Conectar();
                return objDAL.RetDataTable("SELECT * FROM CAMPEONATO LIMIT 3");
            
        }

        public DataTable ListarCampeonatoIndex(string pesquisa)
        {
                string where = "";

                if (pesquisa.Trim() != "")
                {
                    //atenção para o espaço antes da palavra WHERE
                    where = " WHERE NOME LIKE '%" + pesquisa + "%'";
                }

                objDAL.Conectar();
                return objDAL.RetDataTable("SELECT * FROM CAMPEONATO " + where);
            
            
          
            
        }

        public DataTable CarregarDetalheCampeonato(string id)
        {
            objDAL.Conectar();
            return objDAL.RetDataTable("SELECT * FROM CAMPEONATO WHERE IDCAMP =" + id);

        }

        public DataTable VerificaInscricao(string jogador_id, string campeonato_id)
        {
            objDAL.Conectar();
            return objDAL.RetDataTable("SELECT * FROM INSCRICAO WHERE ID_JOGADOR = " + jogador_id + " AND ID_CAMPEONATO = " + campeonato_id + "");       
        }

        public DataTable Pesquisar(string pesquisa)
        {
            string where = "";

            if (pesquisa.Trim() != "")
            {
                //atenção para o espaço antes da palavra WHERE
                where = " WHERE NOME LIKE '%" + pesquisa + "%'";
            }

            objDAL.Conectar();
            return objDAL.RetDataTable("SELECT * FROM CAMPEONATO " + where);
        }
    }
}