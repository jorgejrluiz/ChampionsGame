<%@ Page Title="" Language="C#" MasterPageFile="~/layout2.Master" AutoEventWireup="true" CodeBehind="Registro_de_Jogador.aspx.cs" Inherits="ChampionsGame2015.Registro_de_Jogador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <script src="js/masked.js"></script>

        <div>
            <div style="margin: 3% 10%; background-image:url(img/back.jpg); border-radius: 5px;">

                <div>
                    <div style="padding-top:1%; border-left-style: none; border-left-color: inherit; border-left-width: 5px; border-right-style: none; border-right-color: inherit; border-right-width: 5px;">
                       <h3 style="margin-bottom: 0px; margin-top: 40px; margin-left: 26px;"><b>Registre-se</b></h3>
                        <h3 style="border-bottom: 4px solid #f0ad4e; width: 150px; margin-top: 3px; margin-left: 8px;"><b></b></h3>
                    </div>
                    <br />
                    <asp:Label ID="Label1" runat="server" Style="color: #333; margin-left: 5%" class="label" Text="Nome:" Font-Size="Small"></asp:Label>
                <asp:TextBox ID="txtusu" runat="server" Visible="False" Width="37px">0</asp:TextBox>
                    <asp:TextBox ID="txtNome" runat="server" class="form-control" Required Style="margin-left: 6%; margin-top: 15px" Width="65%"></asp:TextBox>
                </div>
                <br />
                <div>
                    <asp:Label ID="Label2" runat="server" Style="color: #333; margin-left: 5%" class="label" Text="Endereço:" Font-Size="Small"></asp:Label>
                    <asp:TextBox ID="txtEndereco" runat="server" class="form-control" Style="margin-left: 6%; margin-top: 15px" Width="65%"></asp:TextBox>
                </div>
                <br />
                <div>
                    <asp:Label ID="Label3" runat="server" Style="color: #333; margin-left: 5%" class="label" Text="Telefone:" Font-Size="Small"></asp:Label>
                    <asp:TextBox ID="txtTelefone" onkeyup="formataTelefone(this,event)" MaxLength="15" runat="server" Required class="form-control" Style="margin-left: 6%; margin-top: 15px" Width="65%"></asp:TextBox>
                </div>
                <br />
                <div>
                    <asp:Label ID="Label4" runat="server" Style="color: #333; margin-left: 5%" class="label" Text="Email:" Font-Size="Small"></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Required Style="margin-left: 6%" class="form-control" Width="65%"></asp:TextBox>
                </div>
                <br />
                <div>
                    <asp:Label ID="Label6" runat="server" Style="color: #333; margin-left: 5%" class="label" Text="Login:" Font-Size="Small"></asp:Label><br />
                    <asp:TextBox ID="txtLogin" runat="server" class="form-control" Required Width="65%" Style="margin-left: 6%"></asp:TextBox>
                </div>
                <br />
                <div>
                    <asp:Label ID="Label7" runat="server" Style="color: #333; margin-left: 5%" class="label" Text="Senha:" Font-Size="Small"></asp:Label>
                    <asp:TextBox ID="txtSenha" runat="server" TextMode="Password" Required Style="margin-left: 6%" class="form-control" Width="65%"></asp:TextBox>
                </div>
                <br />
                <div style="padding-bottom: 15px;margin-left:5.4%">
                    <asp:Button ID="btnGravar" runat="server" Text="Registrar" class="btn btn-primary" Style="margin-left: 0.5%; margin-bottom: 7px" OnClick="btnGravar_Click" />
                    <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-danger" Style="margin-bottom: 7px" OnClick="btnCancelar_Click" />
                </div>
            </div>
        </div>
    
    </body>
    <script src="js/Mascaras.js"></script>
    
    </asp:Content>
