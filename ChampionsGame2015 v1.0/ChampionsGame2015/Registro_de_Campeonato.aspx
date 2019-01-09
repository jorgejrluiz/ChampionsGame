<%@ Page Title="" Language="C#" MasterPageFile="~/layout2.Master" AutoEventWireup="true" CodeBehind="Registro_de_Campeonato.aspx.cs" Inherits="ChampionsGame2015.Registro_de_Campeonato" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        
        <div style="margin: 3% 10%; background-image: url(img/back.jpg); border-radius: 5px;">
            <div runat="server" id="DivSucesso" visible="false" style="background-color:green; height: 71px; width: 1068px; border-radius:5px">
            <h3 style="padding-top:3px; color:#fff; font:center" >Campeonato criado com sucesso!</h3>
           &nbsp <asp:LinkButton ID="btnIrCampeonato" runat="server" OnClick="btnIrCampeonato_Click">Ir para campeonatos</asp:LinkButton>
        </div>
            <div runat="server" id="DivErro" visible="false" style="background-color:red; height: 56px; width: 1067px;  border-radius:5px">
            <h3  style="color:#fff">Erro! Tente Novamente</h3>
           
        </div>
            <div>
                <div style="padding-top: 1%; border-left-style: none; border-left-color: inherit; border-left-width: 5px; border-right-style: none; border-right-color: inherit; border-right-width: 5px;">
                    <h3 style="margin-bottom: 0px; margin-top: 5px; margin-left: 26px;"><b>Crie um Campeonato</b></h3>
                    <h3 style="border-bottom: 4px solid #f0ad4e; width: 260px; margin-top: 3px; margin-left: 8px;"><b></b></h3>
                </div>
                <br />
                <asp:Label ID="Label1" runat="server" Style="color: #333; margin-left: 5%" class="label" Text="Nome do Campeonato:" Font-Size="Small"></asp:Label>
                *<asp:TextBox ID="txtNome" runat="server" class="form-control" Style="margin-left: 6%; margin-top: 15px" Width="65%" required></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label2" runat="server" Style="color: #333; margin-left: 5%" class="label" Text="Tipo:" Font-Size="Small"></asp:Label>
                *<asp:DropDownList ID="ddlTipo" runat="server" Style="margin-left: 6%" class="form-control" Width="65%" required>
                    <asp:ListItem Value="1">Individual</asp:ListItem>
                    <asp:ListItem Value="2">Equipe</asp:ListItem>
                </asp:DropDownList>
            </div>
            <br />
            <div>
                <asp:Label ID="Label3" runat="server" Style="color: #333; margin-left: 5%" class="label" Text="Categoria:" Font-Size="Small"></asp:Label>
                *<asp:DropDownList ID="ddlCategoria" runat="server" Style="margin-left: 6%" class="form-control" Width="65%" required>
                    <asp:ListItem Value="1">Amador</asp:ListItem>
                    <asp:ListItem Value="2">Profissional</asp:ListItem>
                </asp:DropDownList>
            </div>
            <br />
            <div>
                <asp:Label ID="Label4" runat="server" Style="color: #333; margin-left: 5%" class="label" Text="Valor:" Font-Size="Small"></asp:Label>
                *<asp:TextBox ID="txtValor" runat="server" Style="margin-left: 6%" class="form-control" Width="65%" ></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label5" runat="server" Style="color: #333; margin-left: 5%" class="label" Text="Data:" Font-Size="Small"></asp:Label>
                *<asp:TextBox ID="txtData" runat="server" TextMode="Date" Style="margin-left: 6%" class="form-control" Width="65%" ></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label6" runat="server" Style="color: #333; margin-left: 5%" class="label" Text="Horário:" Font-Size="Small"></asp:Label>*<br />
                <asp:TextBox ID="txtHorario" TextMode="Time" runat="server" class="form-control" Width="65%" Style="margin-left: 6%" ></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label7" runat="server" Style="color: #333; margin-left: 5%" class="label" Text="Local:" Font-Size="Small"></asp:Label>
                *<asp:TextBox ID="txtLocal" runat="server" Style="margin-left: 6%" class="form-control" Width="65%" ></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label8" runat="server" Style="color: #333; margin-left: 5%" class="label" Text="Vagas:" Font-Size="Small"></asp:Label>
                *<asp:TextBox ID="txtVagas" runat="server" min="2" TextMode="Number" Style="margin-left: 6%" class="form-control" Width="65%" ></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label9" runat="server" Style="color: #333; margin-left: 5%" class="label" Text="Prêmio:" Font-Size="Small"></asp:Label>
                *<asp:TextBox ID="txtPremio" runat="server" class="form-control" Width="65%" Style="margin-left: 6%" ></asp:TextBox>
            </div>
            <div>
                <span style="font-family: Arial">
                    <br style="background-image: url('img/back.jpg')" />
                    <asp:Label ID="Label10" runat="server" Style="color: #333; margin-left: 5%" class="label" Text="Imagem:" Font-Size="Small"></asp:Label>
                    &nbsp;*</span>
                <asp:FileUpload  Width="65%" Style="margin-left: 6%" ID="fuImagem" runat="server"/>
            </div>
            <div style="padding-bottom: 15px; margin-left: 5.4%">

                <br>
                <asp:Button ID="btnGravar" runat="server" Text="Registrar" class="btn btn-primary" Style="margin-top: 4%; margin-bottom: 7px" OnClick="btnGravar_Click" />
                <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-danger" Style="margin-top:4%; margin-bottom: 7px" OnClick="btnCancelar_Click" />
                <br />
            </div>
    </div>
    </div>
    
        <br />

</asp:Content>
