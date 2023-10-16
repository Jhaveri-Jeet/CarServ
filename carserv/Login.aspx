<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="carserv.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/LoginStyle.css" rel="stylesheet">
</head>
<body>
    <section class="container">
      <div class="login-container">
        <div class="circle circle-one"></div>
        <div class="form-container">
          <img
            src="https://raw.githubusercontent.com/hicodersofficial/glassmorphism-login-form/master/assets/illustration.png"
            alt="illustration"
            class="illustration"
          />
          <h1 class="opacity">LOGIN</h1>
          <form runat="server">
              <asp:TextBox ID="TextBox1" runat="server" placeholder="Username" autofocus></asp:TextBox>
              <asp:TextBox ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
              <asp:Button ID="Button1" runat="server" Text="Submit" class="opacity" OnClick="Button1_Click"/>
          </form>
          <div class="register-forget opacity">
            <a href="./Register.aspx">REGISTER</a>
          </div>
        </div>
        <div class="circle circle-two"></div>
      </div>
    </section>
</body>
</html>
