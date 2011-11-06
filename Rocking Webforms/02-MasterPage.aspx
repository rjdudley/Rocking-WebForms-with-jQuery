<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/jQuery.Master"
	CodeBehind="02-MasterPage.aspx.vb" Inherits="Rocking_Webforms._02_MasterPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title>02 - Control IDs with Master Page</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<script type="text/javascript">
		$(document).ready(function () {
			$('#txtBirthDate').datepicker();

			// $('<%= string.format("#{0}",txtBirthDate.ClientId) %>').datepicker();
		});
	</script>
	<p>
		With a Master Page, the control IDs are munged so the ASP.NET processor can walk
		the hierarchy.&nbsp; One method to work around this is to reference the ControlName.ClientId
		in an inline block of server code.&nbsp; This should work in every version since
		1.1.</p>
	<asp:Table ID="Table1" runat="server">
		<asp:TableRow>
			<asp:TableCell>
				<asp:Label runat="server" ID="lblFirstName" Text="First Name" />
			</asp:TableCell><asp:TableCell>
				<asp:TextBox ID="txtFirstName" runat="server">
				</asp:TextBox>
			</asp:TableCell></asp:TableRow>
		<asp:TableRow>
			<asp:TableCell>
				<asp:Label runat="server" ID="lblLastName" Text="Last Name" />
			</asp:TableCell><asp:TableCell>
				<asp:TextBox ID="txtLastName" runat="server">
				</asp:TextBox>
			</asp:TableCell></asp:TableRow>
		<asp:TableRow>
			<asp:TableCell>
				<asp:Label runat="server" ID="lblBirthDate" Text="Birth Date" />
			</asp:TableCell><asp:TableCell>
				<asp:TextBox ID="txtBirthDate" runat="server">
				</asp:TextBox>
			</asp:TableCell></asp:TableRow>
		<asp:TableRow>
			<asp:TableCell>
				<asp:Label runat="server" ID="lblPhoneNumber" Text="Phone Number" />
			</asp:TableCell><asp:TableCell>
				<asp:TextBox ID="txtPhoneNumber" runat="server">
				</asp:TextBox>
			</asp:TableCell></asp:TableRow>
	</asp:Table>
</asp:Content>
