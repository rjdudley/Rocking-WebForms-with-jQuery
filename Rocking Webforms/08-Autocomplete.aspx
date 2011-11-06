<%@ Page Title="08-Autocomplete" Language="vb" AutoEventWireup="false" MasterPageFile="~/wijmo.Master"
	CodeBehind="08-Autocomplete.aspx.vb" Inherits="Rocking_Webforms._08_Autocomplete"
	ClientIDMode="Static" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<script type='text/javascript' src='localdata.js'></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<script type="text/javascript">
		$(document).ready(function () {
			$("#month").autocomplete({ source: months });
		});
	</script>
	<table>
	<tbody>
	<tr><td>Enter a month name (local data)</td><td><asp:TextBox ID="month" runat="server"></asp:TextBox>
</td></tr>
	</tbody>
	</table>
</asp:Content>
