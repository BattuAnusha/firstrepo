<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Email.aspx.cs" Inherits="WebApplication4.Email" %>

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
        .profile{
            display: flex;
        }
        .profile-circle{
            width: 100px;
            height: 100px;
            border-radius: 50%;
            margin-right: 15px;
            background: lightgrey;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .txt{
            margin-bottom: 3px;
            color: grey;
        }
    </style>
</head>
<body>
    <div class="jumbotron">
        <h1 style="margin: 0.67em 0;text-align: center;">Updated and Validated Records</h1><br />
        <p class="lead" style="text-align: center;">Updated and Validated Records</p>
    </div>
    <form id="form1" runat="server">
        <div class="main">
            <div class="login">
                <div class="profile">
                    <div class="profile-circle"> User</div>
                    <div>
                        <h4 class"title">UserName: Anu@47---</h4>
                        <p class"txt">First Name:  Anusha ---</p>
                        <p class"txt">Last Name:   Battu---</p>
                        <p class"txt">ID:          100---</p>
                    </div>
                </div>
                </div>
            </div>
        <div>
            User Profile
                <asp:GridView ID="GridView2" runat="server" CellSpacing="1" Font-Size="Medium" GridLines="None" Height="234px" HorizontalAlign="Center" Width="465px" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Page" HeaderText="Page" SortExpression="Page" />
                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    </Columns>
                    <EditRowStyle HorizontalAlign="Center" />
                </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" SelectCommand="SELECT [ID], [Page], [UserName], [Password], [FirstName], [LastName] FROM [User_Details]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
