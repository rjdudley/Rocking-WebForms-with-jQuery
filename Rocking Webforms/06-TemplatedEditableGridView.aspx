<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/jQuery.Master"
	CodeBehind="06-TemplatedEditableGridView.aspx.vb" Inherits="Rocking_Webforms._06_TemplatedEditableGridView" ClientIDMode="Static" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title>06 - Templated Editable GridView</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<script type="text/javascript">
		$(document).ready(function () {
			/* We don't need to use .live() because clicking the Edit causes a postback, 
			and the scripts are bound when the page is regenerated. */
			$('#txtBirthDate').datepicker();
			$('input:text[title="HireDate"]').datepicker();
		});
	</script>
	<p>
		With templated columns, we can use ClientIDMode, or add a control title.&nbsp; 
		Here we&#39;ve done each.</p>
	<asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
		CellPadding="4" DataKeyNames="EmployeeID" DataSourceID="northwind" ForeColor="#333333"
		GridLines="None">
		<AlternatingRowStyle BackColor="White" />
		<Columns>
			<asp:CommandField ShowEditButton="True" />
			<asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" InsertVisible="False"
				ReadOnly="True" SortExpression="EmployeeID" />
			<asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
			<asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
			<asp:TemplateField HeaderText="BirthDate" SortExpression="BirthDate">
				<EditItemTemplate>
					<asp:TextBox ID="txtBirthDate" runat="server" Text='<%# Bind("BirthDate") %>'></asp:TextBox>
				</EditItemTemplate>
				<ItemTemplate>
					<asp:Label ID="lblBirthDate" runat="server" Text='<%# Bind("BirthDate") %>'></asp:Label>
				</ItemTemplate>
			</asp:TemplateField>
			<asp:TemplateField HeaderText="HireDate" SortExpression="HireDate">
				<EditItemTemplate>
					<asp:TextBox ID="txtHireDate" title="HireDate" runat="server" Text='<%# Bind("HireDate") %>'></asp:TextBox>
				</EditItemTemplate>
				<ItemTemplate>
					<asp:Label ID="lblHireDate" runat="server" Text='<%# Bind("HireDate") %>'></asp:Label>
				</ItemTemplate>
			</asp:TemplateField>
			<asp:BoundField DataField="HomePhone" HeaderText="HomePhone" SortExpression="HomePhone" />
		</Columns>
		<EditRowStyle BackColor="#2461BF" />
		<FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
		<HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
		<PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
		<RowStyle BackColor="#EFF3FB" />
		<SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
		<SortedAscendingCellStyle BackColor="#F5F7FB" />
		<SortedAscendingHeaderStyle BackColor="#6D95E1" />
		<SortedDescendingCellStyle BackColor="#E9EBEF" />
		<SortedDescendingHeaderStyle BackColor="#4870BE" />
	</asp:GridView>
	<asp:SqlDataSource ID="northwind" runat="server" ConnectionString="<%$ ConnectionStrings:northwind %>"
		DeleteCommand="DELETE FROM [Employees] WHERE [EmployeeID] = ?" InsertCommand="INSERT INTO [Employees] ([LastName], [FirstName], [BirthDate], [HireDate], [HomePhone]) VALUES (?, ?, ?, ?, ?)"
		ProviderName="<%$ ConnectionStrings:northwind.ProviderName %>" SelectCommand="SELECT [EmployeeID], [LastName], [FirstName], [BirthDate], [HireDate], [HomePhone] FROM [Employees]"
		UpdateCommand="UPDATE [Employees] SET [LastName] = ?, [FirstName] = ?, [BirthDate] = ?, [HireDate] = ?, [HomePhone] = ? WHERE [EmployeeID] = ?">
		<DeleteParameters>
			<asp:Parameter Name="EmployeeID" Type="Int32" />
		</DeleteParameters>
		<InsertParameters>
			<asp:Parameter Name="LastName" Type="String" />
			<asp:Parameter Name="FirstName" Type="String" />
			<asp:Parameter Name="BirthDate" Type="DateTime" />
			<asp:Parameter Name="HireDate" Type="DateTime" />
			<asp:Parameter Name="HomePhone" Type="String" />
		</InsertParameters>
		<UpdateParameters>
			<asp:Parameter Name="LastName" Type="String" />
			<asp:Parameter Name="FirstName" Type="String" />
			<asp:Parameter Name="BirthDate" Type="DateTime" />
			<asp:Parameter Name="HireDate" Type="DateTime" />
			<asp:Parameter Name="HomePhone" Type="String" />
			<asp:Parameter Name="EmployeeID" Type="Int32" />
		</UpdateParameters>
	</asp:SqlDataSource>
</asp:Content>
