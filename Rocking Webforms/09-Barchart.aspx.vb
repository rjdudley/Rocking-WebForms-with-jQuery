Public Class _09_Barchart
	Inherits System.Web.UI.Page

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
		MakeAccessible(gvTotalUnits)
	End Sub

	''' <summary>
	''' Code modified from http://www.webpronews.com/aspnet-make-gridview-control-accessible-2007-01
	''' </summary>
	''' <param name="grid"></param>
	''' <remarks></remarks>
	Private Sub MakeAccessible(grid As GridView)
		If grid.Rows.Count > 0 Then
			grid.UseAccessibleHeader = True
			grid.HeaderRow.TableSection = TableRowSection.TableHeader
		End If
	End Sub

End Class