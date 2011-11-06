<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/jQuery.Master"
	CodeBehind="03-ClientIDMode.aspx.vb" Inherits="Rocking_Webforms._03_ClientIDMode"
	ClientIDMode="Static" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title>03 - ClientIDMode</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<script type="text/javascript">
		$(document).ready(function () {
			$('#txtBirthDate').datepicker();
		});
	</script>
	<p>
		In ASP.NET 4.0, the ClientIDMode property was added.&nbsp; This property defines
		how client IDs are handled, and is set in the web.config, at the page level, or
		at the control level.&nbsp; A full discussion is at <a href="http://weblogs.asp.net/scottgu/archive/2010/03/30/cleaner-html-markup-with-asp-net-4-web-forms-client-ids-vs-2010-and-net-4-0-series.aspx">
			http://weblogs.asp.net/scottgu/archive/2010/03/30/cleaner-html-markup-with-asp-net-4-web-forms-client-ids-vs-2010-and-net-4-0-series.aspx</a>.&nbsp;
	</p>
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
