<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="seat_Creation.aspx.cs" Inherits="Project.Dashbord.seat_Creation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheet1.css" runat="server"/>
</head>
<body>
    <section>
        <form id="form1" runat="server">
            <div class="seat_box">
                <div class="seat_cont">
                        <%
                         int c = 64;
                            for (int i=0; i < row; i++)
                            {
                                c++;
                            %>  
                    <div class="seat_row" id="<%= (char)c%>"> 
                                <%
                                    for (int j=0; j< column;j++)
                                    {
                                %>
                    <div class="seat_space" id="<%= (char)c%><%=j %>" onclick="addToArray(this.id)">
                        <div class="seat">

                        </div>
                    </div>
                    <%
                            }
                            %></div><%
                        } %>
                </div>
            </div>
            <asp:HiddenField ID="txtSeats" runat="server" />
            <asp:Button ID="BtnSub" runat="server" Text="Submit" OnClick="BtnSub_Click" />
            <span><%=seats%></span>
        </form>
    </section>
    
</body>
    <script>

        const r = <%=row%>;
        const cl =<%=column%>;

        var arr = Array.from(Array(r), () => new Array());
        console.log(arr);

        function addToArray(elem) {
            let x = elem.charAt(0);
            let c = 64;
            for (let i = 0; i < <%= row %>; i++) {
                c++;
                if (x === String.fromCharCode(c)) {
                    let itdo = arr[i].includes(elem);
                    let name = document.getElementById(elem);

                    if (itdo !== true) {
                        arr[i].push(elem);
                        name.style.background = "blue";
                    }
                    else {
                        let ind = arr[i].indexOf(elem);
                        arr[i].splice(ind, 1);
                        name.style.background = "cyan";
                    }
                    console.log("[[" + arr.join("],[") + "]]");
                    document.getElementById("txtSeats").value = "[[" + arr.join("],[") + "]]";
                }
            }

        }

    </script>
</html>
