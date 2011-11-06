<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/wijmo.Master"
	CodeBehind="07-Wijmo.aspx.vb" Inherits="Rocking_Webforms._07_Wijmo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title>07 - Wijmo Form Decorators</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<script type="text/javascript">
		$(document).ready(function () {
			$('input:text[title="FirstName"]').wijinputmask({mask: '>L|LLLLLLLLL', hidePromptOnLeave: true});
			$('input:text[title="LastName"]').wijinputmask({ mask: '>L|LLLLLLLLL', hidePromptOnLeave: true });
			$('input:text[title="BirthDate"]').wijinputdate({showTrigger: true});
			$('input:text[title="PhoneNumber"]').wijinputmask({mask: '(999) 000-0000', hidePromptOnLeave: true, text: '(888) 555-1212'});
		});
	</script>
	<p>
		To take jQuery to the enterprise LOB application level, we&#39;ve introduced  <a href="http://wijmo.com">Wijmo</a>, 
		a studio of 30 jQuery UI Widgets, including a flexible data grid and SVG charts.&nbsp; Wijmo is true jQuery UI widgets, and is 
		completely Themeroller comptible.&nbsp; Here we&#39;ve decorated our simple form 
		with Wijmo&#39;s masked inputs, limiting the names to text only, improving the date 
		picker, and formatting the phone number.</p>
	<asp:Table ID="Table1" runat="server">
		<asp:TableRow>
			<asp:TableCell>
				<asp:Label runat="server" ID="lblFirstName" Text="First Name" />
			</asp:TableCell><asp:TableCell>
				<asp:TextBox ID="txtFirstName" title="FirstName" runat="server">
				</asp:TextBox>
			</asp:TableCell></asp:TableRow><asp:TableRow>
			<asp:TableCell>
				<asp:Label runat="server" ID="lblLastName" Text="Last Name" />
			</asp:TableCell><asp:TableCell>
				<asp:TextBox ID="txtLastName" title="LastName" runat="server">
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
				<asp:TextBox ID="txtPhoneNumber" title="PhoneNumber" runat="server">
				</asp:TextBox>
			</asp:TableCell></asp:TableRow></asp:Table></asp:Content>