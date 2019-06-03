<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="SearchMember.aspx.cs" Inherits="Admin_SearchMember" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="register">
            <div class="container">
                <h3 class="animated wow zoomIn" data-wow-delay=".5s">Website statistics</h3>
                <p class="est animated wow zoomIn" data-wow-delay=".5s">
            <form id="form1" runat="server">
         <table class="nav-justified">
            <tr>
                <td colspan="3">
                    <pre class="text-center" style="font-size: xx-large; color: #FF9900"><strong><em>Search For Members</em></strong></pre>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" colspan="3" style="40%; height: 2px;">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" Text="SEARCH FOR MEMBERS BY "></asp:Label>
                &nbsp;<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True" Value="EmailAddress">Email</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="width: 446px" class="modal-sm">
                &nbsp;<asp:TextBox ID="txtValueOfSearch" runat="server" Width="364px" CssClass="text-muted" Height="25px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="lblSearch" runat="server" CssClass="btn-primary" Text="Search" Width="117px" OnClick="lblSearch_Click" Height="29px" />
                </td>
                <td>
                    <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red" CssClass="alert-danger"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td style="height: 28px; width: 455px">
                    <asp:Button ID="btnRemoveMember" runat="server" BackColor="Red" Enabled="False" ForeColor="White" Text="Remove Member Selected" Width="232px" OnClick="btnRemoveMember_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td colspan="2" style="height: 28px">&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td colspan="3" style="background-color: #FFFF00">&nbsp;</td>
                <td style="width: 300px">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="1040px" CellSpacing="2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="show-grid">
                        <Columns>
                            <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="SELECT" ShowHeader="True" Text="____" />
                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </form>

                    </div>
         </div>
    
</asp:Content>

