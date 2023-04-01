<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication4.Login" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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
    </style>
</head>

<body>
    <div class="jumbotron">
        <h1 style="margin: 0.67em 0;text-align: center;">Enter your details here</h1><br />
        <p class="lead" style="text-align: center;">The details are validated according to the naming conventions of our organization. Duplicate records cannot be inserted into the database. All the records must be unique! These records will be used by our organization for the further communications.</p>
    </div>
    <div class="main">
        <form id="form1" runat="server" class="login">
            <h3 class="title">Login Here</h3>
            <p>Please Enter Your Credentials To Login.</p>
            <p>&nbsp;</p>
            <div class="login-group">
                <asp:Label ID="Label1" runat="server" Text="UserName" CssClass="label"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="inp"></asp:TextBox>
                <%--<label>Email</label>--%>                <%--<input type="email" class="inp" name="" id="" />--%>
            </div>
            <div class="login-group">
                <asp:Label ID="Label2" runat="server" Text="Password" CssClass="label"></asp:Label>
                <asp:TextBox ID="T" runat="server" CssClass="inp" OnTextChanged="TextBox2_TextChanged" TextMode="Password"></asp:TextBox>
                <%--<label>Password</label>
                <input type="password" class="inp" name="" id="" />--%>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter a valid Password" ValidationExpression="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" ForeColor="Red" Height="40px" Width="261px" Visible="False"></asp:RegularExpressionValidator>
               
            </div>
            <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
            <br />
            

            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SUBMIT" CssClass="btn" />
            <div>
                <td><%--<a href="#" onclick="window.open"('ForgotPassword.aspx','FP','width=500,height=50,top=300,left=500,fullscreen=no,resizable=0');">Forgot Password?</a>--%></td>
                <td><a href="ForgotPassword.aspx">Forgot Password?</a></td>

            </div>
            
            <br />
            <br />
            <br />
        </form>
    </div>
</body>

</html>