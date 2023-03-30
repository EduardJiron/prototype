
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PrototypeExample.Default" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Prototype Pattern</title>
    <link href="Public/Estilos/Estilos.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <h2>Roles y Permisos</h2>
        <br />
        <asp:Label ID="RoleLabel" runat="server" Text="Rol:" />
        <asp:TextBox ID="RoleTextBox" runat="server" />
        <asp:Button ID="AddRoleButton" runat="server" Text="Agregar Role" OnClick="AddRoleButton_Click" />
        <br />
        <br />
        <asp:Label ID="PermissionLabel" runat="server" Text="Permiso:" />
        <asp:TextBox ID="PermissionTextBox" runat="server" />
        <asp:Label ID="SelectRoleLabel" runat="server" Text="Seleccionar Rol:" />
        <asp:DropDownList ID="RoleDropDownList" runat="server" />
        <asp:Button ID="AddPermissionButton" runat="server" Text="Agregar Permiso" OnClick="AddPermissionButton_Click" />
        <br />
        <br />
        <asp:Label ID="ResultLabel" runat="server" />
        <br />
        <br />
        <asp:GridView ID="RolesGridView" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Rol" />
                <asp:TemplateField HeaderText="Permisos">
                    <ItemTemplate>
                        <asp:Repeater ID="PermissionsRepeater" runat="server" DataSource='<%# Eval("Permissions") %>'>
                            <ItemTemplate>
                                <%# Eval("Name") %>
                            </ItemTemplate>
                            <SeparatorTemplate>, </SeparatorTemplate>
                        </asp:Repeater>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
