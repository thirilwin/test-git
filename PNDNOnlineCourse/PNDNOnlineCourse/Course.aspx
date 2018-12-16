<%@ Page Title="" Language="C#" MasterPageFile="~/PNDN.Master" AutoEventWireup="true" CodeBehind="Course.aspx.cs" Inherits="PNDNOnlineCourse.Course" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .Grid {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblAuthorize" runat="server" Text="Access Denied" Font-Bold="True" Font-Size="XX-Large" ForeColor="#CC3300"></asp:Label>
     <div>
            <asp:GridView ID="GridView"
                CssClass="Grid"
                runat="server"
                AllowPaging="True" PageSize="5"
                OnPageIndexChanging="GridView_PageIndexChanging" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" OnSelectedIndexChanged="GridView_SelectedIndexChanged">
               
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
               
                <HeaderStyle BackColor="#1C5E55" ForeColor="white" Font-Bold="True" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        </div>
</asp:Content>
