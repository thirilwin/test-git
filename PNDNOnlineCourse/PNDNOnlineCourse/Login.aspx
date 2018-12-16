<%@ Page Title="" Language="C#" MasterPageFile="~/PNDN.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PNDNOnlineCourse.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:100%"> 
        <table class="center">  
            <tr>  
                <td colspan="3" style="text-align: left; vertical-align: top;padding-bottom:20px">  
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" Text="Log In " ForeColor="#336699"></asp:Label>  
                </td>  
            </tr>  
            <tr>   
                <td style="text-align: left">  
                    <asp:Label ID="Label2" runat="server" Font-Size="Large" Text="UserId :" ForeColor="#336699"></asp:Label>  
                </td>  
                <td style="text-align: left">  
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Large" ></asp:TextBox>  
                </td>  
                <td> </td>  
                
            </tr>  
            <tr>  
               
                <td style="text-align: left">  
                    <asp:Label ID="Label3" runat="server" Font-Size="Large" Text="Password :" ForeColor="#336699"></asp:Label>  
                </td>  
                <td style="text-align: left">  
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="Large" TextMode="Password"></asp:TextBox>  
                </td>  
                <td> </td> 
            </tr>  
            <tr>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>  
            <tr> 
                <td> </td>  
                <td style="text-align: center;padding:20px">  
                    <asp:Button ID="bthLogin" runat="server" BorderStyle="None" Font-Size="X-Large" background-color="#336699" Text="Log In" BackColor="#006699" OnClick="bthLogin_Click" ForeColor="White" />  
                </td>  
                <td> </td>
            </tr>  
            <tr>  
                <td> </td>  
                <td style="text-align: left;padding:20px">  
                    <asp:Label ID="Label4" runat="server" Font-Size="Large" ForeColor="#CC3300"></asp:Label>  
                </td>  
                <td> </td> 
            </tr>  
        </table>  
      
    </div>  

</asp:Content>
