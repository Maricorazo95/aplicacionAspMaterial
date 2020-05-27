<%@ Page Title="Nuevo Empleado" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NuevoEmpleado.aspx.cs" Inherits="WebApplicationMateriales._NuevoEmpleado" %>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>Empleados</h2>

    <div>
        <asp:Label ID="Label1" runat="server" Text="Nombre" Font-Bold="true"></asp:Label>
        <asp:TextBox ID="tbNombre" class="form-control" runat="server"></asp:TextBox>
        <br />

        <asp:Label ID="Label2" runat="server" Text="Departamento" Font-Bold="true"></asp:Label>
        <asp:DropDownList ID="ddDepto" class="form-control" runat="server" DataTextField="Nombre" DataValueField="Id_Departamento"></asp:DropDownList>
        <br />

        <asp:Label ID="Label3" runat="server" Text="Sexo" Font-Bold="true"></asp:Label>
        <asp:DropDownList ID="ddSexo" class="form-control" runat="server">
            <asp:ListItem Enabled="true" Text="Selecciona Sexo" Value="-1"></asp:ListItem>
            <asp:ListItem Text="Masculino" Value="M"></asp:ListItem>
            <asp:ListItem Text="Femenino" Value="F"></asp:ListItem>
        </asp:DropDownList>
        <br />

        <asp:Label ID="Label4" runat="server" Text="Edad" Font-Bold="true"></asp:Label>
        <asp:TextBox ID="tbEdad" class="form-control" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator 
            ID="reEdad" 
            ControlToValidate="tbEdad" 
            runat="server" 
            Type="Integer"
            MinimumValue="0"
            MaximumValue="99"
            CssClass="input-error"
            ErrorMessage="Sólo Números Permitidos" 
            ValidationExpression="\d+"
        ></asp:RegularExpressionValidator>
    </div>
</asp:Content>
