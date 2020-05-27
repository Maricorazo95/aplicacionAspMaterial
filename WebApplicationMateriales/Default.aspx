<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplicationMateriales._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="modal fade" tabindex="-1"
     role="dialog" id="winModal">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title"></h4>

            </div>
            <div class="modal-body">
                <p id="valorId" hidden></p>
                <div id="modal-content">
                    Cargando...
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button type="button" class="btn btn-primary " id="btn-GuardarMaterial">Guardar</button>
            </div>
        </div><!-- /.modal-content -->
    </div>
</div>

<h2>Empleados</h2>

<a data-toggle="modal" class="btn btn-primary pull-right" id="btnNuevoMaterial" href="#winModal">Nuevo</a>
<br />

<div class="container">
    <asp:DropDownList ID="ddDeptos" runat="server" class="form-control" AutoPostBack="true" OnSelectedIndexChanged = "ddDeptos_FilterDropdown" DataTextField="Nombre" DataValueField="Id_Departamento"></asp:DropDownList>
    <br />

    <asp:TextBox ID="TextBox1" runat="server" class="form-control" ></asp:TextBox>
    <br />
    <asp:GridView ID="grvMateriales" AutoGenerateColumns="false" runat="server" class="table table-striped table-bordered" style="width:100%">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="ID" />
            <asp:BoundField DataField="Nombre" HeaderText="NOMBRE" />
            <asp:BoundField DataField="Sexo" HeaderText="SEXO" />

        </Columns>        
        
    </asp:GridView>

    <br />
    
   
</div>

</asp:Content>
