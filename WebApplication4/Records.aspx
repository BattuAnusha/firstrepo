<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Records.aspx.cs" Inherits="WebApplication4.Records" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        * {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        .main {
            width: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .login {
            height: auto;
            padding: 3%;
            border-radius: 10px;
            box-shadow: 6px 6px 15px rgba(30, 30, 30, 0.212);
            background-color: #fff;
        }
        .title{
            color: rgb(102, 0, 255);
            margin-bottom: 10px;
        }
        .login-group{
            margin-bottom: 16px;
        }
        .label{
            font-size: 16px;
            margin-bottom: 4px;
            color: rgb(112, 112, 112);
            display: block;
        }
        .inp{
            width: 240px;
            height: 40px;
            border-radius: 10px;
            border: 2px solid rgb(141, 141, 141);
            padding: 0px 10px;
            font-weight: bold;
        }
        .btn{
            width: 80px;
            height: 40px;
            background-color: rgb(102, 0, 255);
            border: 0px;
            color: #fff;
            font-size: 16px;
            font-weight: 600;
            border-radius: 8px;
            cursor: pointer;
        }
        .jumbotron {
            padding: 30px;
            color: white;
            background-color: #262A76;
            margin: 30px 10%;
            border-radius: 10px;
        }
        td, th {
            height: 40px;
            padding: 16px;
        }
    </style>
</head>
<body>
   
    <div class="jumbotron">
        <h1 style="margin: 0.67em 0;text-align: center;">Updated and Validated Records</h1><br />
        <p class="lead" style="text-align: center;">Updated and Validated Records</p>
    </div>
    <form id="form1" runat="server">
        <div>
            <br />            
            <div style="text-align: center;margin-bottom: 18px;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SHOW" CssClass="btn" BorderColor="Blue" Height="36px" Width="118px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </div>
        </div>
        <div class="main">
            <div class="login">
                <asp:GridView ID="GridView1" runat="server" CellSpacing="1" Font-Size="Medium" GridLines="None" Height="234px" HorizontalAlign="Center" Width="465px">
                    <EditRowStyle HorizontalAlign="Center" />
                </asp:GridView>
            <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="Page" HeaderText="Page" SortExpression="Page" />
                    <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                </Columns>
            </asp:GridView>--%>
            <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" SelectCommand="SELECT [ID], [Page], [UserName], [Password], [FirstName], [LastName] FROM [User_Details]"></asp:SqlDataSource>--%>
            <p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="."></asp:Label>
                &nbsp;</p>
               
            </div>
        </div>
    </form>
</body>
</html>