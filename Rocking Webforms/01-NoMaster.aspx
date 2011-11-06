<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="01-NoMaster.aspx.vb" Inherits="Rocking_Webforms._01_NoMaster" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>01 - No Master Page</title>
	<link type="text/css" rel="Stylesheet" href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.6/themes/redmond/jquery-ui.css" />
	<script src="http://ajax.microsoft.com/ajax/jquery/jquery-1.4.3.min.js" type="text/javascript"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.6/jquery-ui.min.js" type="text/javascript"></script>
	<script type="text/javascript">
				$(document).ready(function () {
					$('#txtBirthDate').datepicker();
				});
	</script>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<p>
			Without a Master Page, the control IDs pretty much stay as intended, making them
			easy to work with in client side scripting.
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
	</div>
	</form>
</body>
</html>
