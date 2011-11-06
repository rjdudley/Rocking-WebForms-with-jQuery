<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/jQuery.Master"
	CodeBehind="04-ControlTitle.aspx.vb" Inherits="Rocking_Webforms._04_ControlTitle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title>04 - Control Title</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<script type="text/javascript">
		$(document).ready(function () {
			$('input:text[title="BirthDate"]').datepicker();
		});
	</script>
	<p>
		Another option we have is using attributes such as title to reference elements.&nbsp; 
		The title attribute is a standard HTML attribute which isn&#39;t used too often.&nbsp;
		In this example, we&#39;ve added a title to txtBirthDate.&nbsp; An alternative 
		to the title attribute is to use an HTML 5 custom data attribute (see
		<a href="http://blogs.msdn.com/b/ukmsdn/archive/2011/01/12/msdn-flash-feature-article-unobtrusive-javascript-with-jquery-html-5-style.aspx">
		http://blogs.msdn.com/b/ukmsdn/archive/2011/01/12/msdn-flash-feature-article-unobtrusive-javascript-with-jquery-html-5-style.aspx</a>).</p>
	<asp:Table ID="Table1" runat="server">
		<asp:TableRow>
			<asp:TableCell>
				<asp:Label runat="server" ID="lblFirstName" Text="First Name" />
			</asp:TableCell><asp:TableCell>
				<asp:TextBox ID="txtFirstName" runat="server">
				</asp:TextBox>
			</asp:TableCell></asp:TableRow><asp:TableRow>
			<asp:TableCell>
				<asp:Label runat="server" ID="lblLastName" Text="Last Name" />
			</asp:TableCell><asp:TableCell>
				<asp:TextBox ID="txtLastName" runat="server">
				</asp:TextBox>
			</asp:TableCell></asp:TableRow><asp:TableRow>
			<asp:TableCell>
				<asp:Label runat="server" ID="lblBirthDate" Text="Birth Date" />
			</asp:TableCell><asp:TableCell>
				<asp:TextBox ID="txtBirthDate" runat="server" title="BirthDate">
				</asp:TextBox>
			</asp:TableCell></asp:TableRow><asp:TableRow>
			<asp:TableCell>
				<asp:Label runat="server" ID="lblPhoneNumber" Text="Phone Number" />
			</asp:TableCell><asp:TableCell>
				<asp:TextBox ID="txtPhoneNumber" runat="server">
				</asp:TextBox>
			</asp:TableCell></asp:TableRow></asp:Table></asp:Content>