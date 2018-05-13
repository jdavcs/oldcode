<%@ Page Language="c#" CodeBehind="results.aspx.cs" AutoEventWireup="false" Inherits="Ei.Website.operations.results" %>

<%@ Register TagPrefix="cc" Namespace="Core" Assembly="Core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
<head>
    <title id="ctlTitleTag" runat="server" />
    <link href="../_system/styles/main.css" type="text/css" rel="stylesheet">
    <script language="javascript" type="text/javascript" src="../_system/javascript/menuhelper.js"></script>
    <link href="../_system/styles/addeditpage.css" type="text/css" rel="stylesheet">
    <script language="javascript" type="text/javascript" src="../_gridhelper/gridscripts.js"></script>
    <link href="../_gridhelper/grid.css" type="text/css" rel="stylesheet">
</head>
<body>
    <form id="Form1" method="post" runat="server">
        <asp:Literal ID="ltrLayout1" runat="server" />
        <!---------------------content-------------------->


        <p>
            <asp:Panel ID="pnlGrid" runat="server">
                <table class="gridOuterTable" style="width: auto;" cellspacing="0" cellpadding="3">
                    <tr>
                        <td>
                            <cc:MySortGrid id="dgrResults" cssclass="gridTableData" DataKeyField="Id" runat="server">
                                <columns>								
									<asp:BoundColumn DataField="id" SortExpression="v.id" HeaderText="Id">																
										<headerstyle Wrap="False"/>
									</asp:boundcolumn>								
									<asp:BoundColumn DataField="witnesslastname" SortExpression="v.witnesslastname" HeaderText="Witness Last Name">																
										<headerstyle Wrap="False"/>
									</asp:boundcolumn>
									<asp:BoundColumn DataField="witnessfirstname" SortExpression="v.witnessfirstname" HeaderText="Witness First Name">																
										<headerstyle Wrap="False"/>
									</asp:boundcolumn>									
									<asp:BoundColumn DataField="Administered" SortExpression="v.administered" HeaderText="Administered" DataFormatString="{0: MM/dd/yyyy}">
										<headerstyle Wrap="False"/>
									</asp:boundcolumn>																	
									<asp:BoundColumn DataField="displayedname" SortExpression="v.administeredby" HeaderText="Administered by">
										<ItemStyle wrap="false"/>
										<headerstyle Wrap="False"/>
									</asp:BoundColumn>																																													
									<asp:HyperlinkColumn text="details"
										DataNavigateUrlField="Id" DataNavigateUrlFormatString="resultDetails.aspx?Id={0}">
										<ItemStyle HorizontalAlign="Center" width="80"/>
									</asp:HyperlinkColumn>																														
								</columns>
                            </cc:MySortGrid>
                        </td>
                    </tr>
                </table>
            </asp:Panel>


            <!-----------------end of content----------------->
            <asp:Literal ID="ltrLayout2" runat="server" />
    </form>
</body>
</html>
