<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="Project.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheet1.css" runat="server"/>
</head>
<body>
    <section>
        <div class="form_box">
            <form id="form1" runat="server">
                <div class="form">
                    <h2>Login</h2>
                    <div class="input_box">
                        <asp:TextBox ID="TextBox1" runat="server" onfocusout="myFunction(this.id)" autocomplete="off" placeholder="Your username"></asp:TextBox>
                        <label for="">Username</label>
                        <span>required *</span>
                    </div>
                    
                    <div class="input_box">
                        <asp:TextBox ID="TextBox2" runat="server" onfocusout="myFunction(this.id)" autocomplete="off" placeholder="enter password"></asp:TextBox>
                        <label for="">Password</label>
                        <span>required *</span>
                    </div>
                    <div class="p">
                        <p>Forgot password <a href="#">click here</a></p>
                    </div>
                    <div class="button">
                        <asp:Button ID="Button1" runat="server" Text="Log In" />
                    </div> 

                    <div class="p">
                        <p>Dont have an account? <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">SignUp</asp:LinkButton></p>
                    </div>
                </div>
            </form>
        </div>
        
    </section>
    <script>



        function myFunction(val) {

            document.getElementById(val).required = true;
            document.getElementById(val).placeholder = "";
            console.log("YOU CHANGED ME TO!"+val);
        }
    </script>
</body>
</html>
