<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ChampionsGame2015.Login" EnableViewState="False" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br>
    <br>
    <div style="height: 300px">
        <div style="margin: 4% 40% 0% 33%; background-image: url('img/back.jpg'); border-radius: 5px; height: 253px; width: 400px;">
            <div style="margin-top: 10px; text-align: center">
                <br />
                <asp:Label ID="Label3" runat="server" Style="margin-top: 10px; text-align: center; color: #ff6a00; font-size: 28px; font-family: 'Arial Rounded MT'">Acesso ao Site</asp:Label><br>
                <br>
            </div>
            <div>
                <%--<asp:Label ID="Label1" runat="server" class="label" Text="Login:" Style="color: #333; margin-left: 20%" Font-Size="Small"></asp:Label>--%>
                <asp:TextBox ID="txtLogin" runat="server" class="form-control" placeholder="Login" Width="177px" Style="margin-left: 31%; margin-top: 0px"></asp:TextBox>
            </div>
            <div style="margin-top: 10px">
                <%-- <asp:Label ID="Label2" runat="server" class="label" Text="Senha:" Style="color: #333; margin-left: -30%" Font-Size="Small"></asp:Label>--%>

                <asp:TextBox ID="txtSenha" TextMode="Password" runat="server" placeholder="Senha" class="form-control" Width="177px" Style="margin-left: 31%; margin-top: 5px"></asp:TextBox>

            </div>
            <br />
            <div style="text-align: center; margin-top: 20px">
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="link" OnClick="LinkButton1_Click" Style="color: #808080">Registre-se</asp:LinkButton>
                <asp:Button ID="btnEntrar" runat="server" Text="Entrar" class="btn btn-primary" Style="margin-top: 0.0%; margin-left: 3%" OnClick="btnEntrar_Click" />
            </div>
        </div>
    </div>
    <br />
</asp:Content>
