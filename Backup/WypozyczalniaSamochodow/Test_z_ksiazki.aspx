<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test_z_ksiazki.aspx.cs" Inherits="WypozyczalniaSamochodow.Charting_BasicChart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <asp:Chart ID="cTestChart" runat="server">
	    <Series>
		<asp:Series Name="Testing" YValueType="Int32">

			<Points>
				<asp:DataPoint AxisLabel="Test 1" YValues="10" />
				<asp:DataPoint AxisLabel="Test 2" YValues="20" />
				<asp:DataPoint AxisLabel="Test 3" YValues="30" />
				<asp:DataPoint AxisLabel="Test 4" YValues="40" />

			</Points>
		</asp:Series>
	</Series>
	<ChartAreas>
		<asp:ChartArea Name="ChartArea1">
		</asp:ChartArea>

	</ChartAreas>
   </asp:Chart>
    
        <asp:Chart ID="Chart1" runat="server">
            <Series>
                <asp:Series Name="Series1">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>


            <asp:Chart ID="Chart2" runat="server">
        <Series>
            <asp:Series Name="Series1" XValueType="DateTime" ChartType="StackedBar">
            
                <Points>
                    <asp:DataPoint XValue="40177.020833333336" YValues="4" />
                    <asp:DataPoint XValue="40177.006944444445" YValues="3" />
                    <asp:DataPoint XValue="40177.013888888891" YValues="2" />
                </Points>
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
                <AxisX >
                    <LabelStyle Format="dd-MM-yyyy hh:mm:ss" IntervalType="Minutes"  Interval="10"/>

                </AxisX>
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
    
    </div>
    </form>
</body>
</html>
