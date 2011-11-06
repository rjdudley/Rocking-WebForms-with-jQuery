<%@ Page Title="09-Barchart" Language="vb" AutoEventWireup="false" MasterPageFile="~/wijmo.Master"
	CodeBehind="09-Barchart.aspx.vb" Inherits="Rocking_Webforms._09_Barchart" ClientIDMode="Static" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<script type="text/javascript">
		$(document).ready(function () {
			$('#gvTotalUnits').find('th:first').text('');
			$('#gvTotalUnits').wijbarchart({ width: 600, height: 300 });
		});
	</script>
	Here we're going to look at the real power of jQuery UI, and is a good example of
	progressive enhancement. We start by adding a simple GridView to a page, and binding
	it to a data source. This will render a simple table on our page.&nbsp; We&#39;ve
	also set the ClientIdMode=&quot;Static&quot; on our page, set ProductID as a 
	RowHeaderColumn and added a TableSection fix in the code behind.
	<asp:GridView ID="gvTotalUnits" runat="server" AutoGenerateColumns="False"
		DataSourceID="Northwind" RowHeaderColumn="ProductName">
		<Columns>
			<asp:BoundField DataField="ProductName" HeaderText="ProductName" 
				SortExpression="ProductName" ShowHeader="False" />
			<asp:BoundField DataField="TotalUnits" HeaderText="TotalUnits" ReadOnly="True" SortExpression="TotalUnits" />
		</Columns>
	</asp:GridView>
	<asp:SqlDataSource ID="Northwind" runat="server" ConnectionString="<%$ ConnectionStrings:northwind %>"
		ProviderName="<%$ ConnectionStrings:northwind.ProviderName %>" 
		
		
		SelectCommand="SELECT Products.ProductName, SUM([Order Details].Quantity) AS TotalUnits FROM [Order Details] INNER JOIN Products ON [Order Details].ProductID = Products.ProductID GROUP BY Products.ProductName HAVING (SUM([Order Details].Quantity) &gt; 1000) ORDER BY TotalUnits DESC"></asp:SqlDataSource>
</asp:Content>
