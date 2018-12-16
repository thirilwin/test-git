<%@ Page Title="" Language="C#" MasterPageFile="~/PNDN.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="PNDNOnlineCourse.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div style="width:100%"> 
        <table class="center">  
            <tr>  
                <td colspan="3" style="text-align: left; vertical-align: top;padding-bottom:20px">  
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" Text="Register " ForeColor="#336699"></asp:Label>  
                </td>  
            </tr>  
             <tr>   
                <td style="text-align: left">  
                    <asp:Label ID="Label6" runat="server" Font-Size="Large" Text="UserName :" ForeColor="#336699"></asp:Label>  
                </td>  
                <td style="text-align: left">  
                    <asp:TextBox ID="txtUserName" runat="server" Font-Size="Large" ></asp:TextBox>  
                </td>  
                <td> </td>  
                
            </tr>  
            <tr>   
                <td style="text-align: left">  
                    <asp:Label ID="Label2" runat="server" Font-Size="Large" Text="UserId :" ForeColor="#336699"></asp:Label>  
                </td>  
                <td style="text-align: left">  
                    <asp:TextBox ID="txtUserID" runat="server" Font-Size="Large" ></asp:TextBox>  
                </td>  
                <td> </td>  
                
            </tr>  
            <tr>  
               
                <td style="text-align: left">  
                    <asp:Label ID="Label3" runat="server" Font-Size="Large" Text="Password :" ForeColor="#336699"></asp:Label>  
                </td>  
                <td style="text-align: left">  
                    <asp:TextBox ID="txtPassword" runat="server" Font-Size="Large" TextMode="Password"></asp:TextBox>  
                </td>  
                <td> </td> 
            </tr>  
            <tr>  
               
                <td style="text-align: left">  
                    <asp:Label ID="Label5" runat="server" Font-Size="Large" Text="Confirm Password :" ForeColor="#336699"></asp:Label>  
                </td>  
                <td style="text-align: left">  
                    <asp:TextBox ID="txtConfirmPassword" runat="server" Font-Size="Large" TextMode="Password"></asp:TextBox>  
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
                    <asp:Button ID="bthRegister" runat="server" BorderStyle="None" Font-Size="X-Large" background-color="#336699" Text="Register" BackColor="#006699" ForeColor="White" OnClick="bthRegister_Click" />  
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
