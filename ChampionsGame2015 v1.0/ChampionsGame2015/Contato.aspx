<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="Contato.aspx.cs" Inherits="ChampionsGame2015.Contato" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
            <br />
        <div style="margin-bottom:5%; width:1062px; background-image: url('img/back.jpg'); height: 523px; background-repeat: no-repeat; background-size: 100%">
        
            <div>
                <br />
                <h3 style="margin-bottom: 0px; margin-top: 0px; margin-left: 26px;"><b>Fale com a gente</b></h3>
                <h3 style="border-bottom: 4px solid #f0ad4e; width: 215px; margin-top: 3px; margin-left: 8px;"><b></b></h3>
            </div>
            <div class="control-group form-group">
                <div class="controls">
                    <label>&nbsp;&nbsp;&nbsp; Nome:</label>&nbsp;<asp:TextBox type="text" class="form-control" style="width:80%" id="name" required data-validation-required-message="Digite seu nome, por favor." runat="server"></asp:TextBox><br>

                &nbsp;<label>&nbsp;&nbsp; Telefone:</label><asp:TextBox type="tel" class="form-control" style="width:80%" id="phone" required data-validation-required-message="Digite seu telefone, por favor." runat="server"></asp:TextBox>
                    </div>
            </div>
            <div class="control-group form-group">
                <div class="controls">
                    &nbsp;<label>&nbsp;&nbsp;&nbsp; Email:</label><asp:TextBox type="email" class="form-control" style="width:80%" id="email" required data-validation-required-message="Digite seu e-mail, por favor." runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="control-group form-group">
                <div class="controls">
                    &nbsp;<label>&nbsp;&nbsp;&nbsp; Menssagem:</label><asp:TextBox ID="message" class="form-control" required data-validation-required-message="Digite uma mensagem, por favor." runat="server" Height="88px" Width="838px"></asp:TextBox>
                    
                </div>
            </div>
            <div class="control-group form-group">
                <div class="controls">
                    &nbsp;<asp:Button ID="Button1" class="btn btn-primary" runat="server" OnClick="Button1_Click" Text="Enviar" Width="100px" />
                    
                </div>
                <div class="controls">
                    
                    <br />
                    
                </div>
            </div>
            <!-- For success/fail messages -->
        </div>

    </div>
</asp:Content>
