<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="WebApplication4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset Password</title>
    <style>
        * {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        .main {
            width: 100%;
            min-height: 50vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .login {
            width: 400px;
            height: auto;
            padding: 5%;
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
            width: 240px;
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
        .error {
            margin: 10px 0px;
            color: orangered;
        }
    </style>
</head>
<body>
    <div class="jumbotron">
        <h1 style="margin: 0.67em 0;text-align: center;">Enter your details here</h1><br />
        <p class="lead" style="text-align: center;">The details are validated according to the naming conventions of our organization. Duplicate records cannot be inserted into the database. All the records must be unique! These records will be used by our organization for the further communications.</p>
    </div>
    
    <div class="main">
         <form id="form2" runat="server" class="login">
            <h3 class="title">Reset Password</h3>
            <div class="login-group">
                <asp:Label ID="Label1" runat="server" Text="New Password" CssClass="label"></asp:Label>
                <asp:TextBox ID="NewPassword" runat="server" CssClass="inp" TextMode="Password"></asp:TextBox>
            </div>
            <div class="login-group">
                <asp:Label ID="Label2" runat="server" Text="Confirm Password" CssClass="label"></asp:Label>
                <asp:TextBox ID="ConfirmPassword" runat="server" CssClass="inp" TextMode="Password"></asp:TextBox>
            </div>
            <asp:Label ID="Reset_Error" runat="server" CssClass="error" Text=""></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SUBMIT" CssClass="btn" />
            
            <br />
        </form>
    </div>
</body>
</html>
