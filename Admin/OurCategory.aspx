<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="OurCategory.aspx.cs" Inherits="Admin_OurCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
          
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">

        <asp:View ID="View1" runat="server"> 

            <form class="form-horizontal" runat="server" style="background-color:#f5f5f5">
               <div class="register">
                <div class="container">
                    <h3 class="animated wow zoomIn" data-wow-delay=".5s">Serch Category</h3>
                    <p class="est animated wow zoomIn" data-wow-delay=".5s">
                        Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia 
                    </p>
                    <br />
                    <br />
                    <br />


                <table class="nav-justified">
                    <tr>
                        <td class="modal-sm" style="width: 235px">&nbsp;&nbsp;&nbsp;&nbsp; SEARCH From Category By</td>
                        <td>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" BorderColor="#FFCC00" ForeColor="#000099" Height="24px" RepeatDirection="Horizontal" Width="320px">
                                <asp:ListItem Selected="True" Value="CatNo">Category Number</asp:ListItem>
                                <asp:ListItem Value="CatName">Category Name</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="modal-sm" style="width: 235px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                &nbsp;
              

                <div class="col-sm-10">
                    <asp:TextBox ID="txtSearch" class="form-control" placeholder="Search" runat="server"></asp:TextBox><br />
  
                    <asp:Button ID="BtnSearch" runat="server" Text="Search" CssClass="btn btn-default" OnClick="BtnSearch_Click" />
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <asp:Button ID="BtnAdd" runat="server" Text="Add" CssClass="btn badge-primary" OnClick="BtnAdd_Click" />
                        <asp:Button ID="BtnUpdate" runat="server" Text="Update" CssClass="btn btn-success" OnClick="BtnUpdate_Click" />
                        <asp:Button ID="BtnRemove" runat="server" Text="Remove" CssClass="btn btn-danger" OnClick="BtnRemove_Click" />
                        
                    </div>
                </div>
                <div>
                    <asp:Label ID="lblaMsg" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red" Style="text-align: center"></asp:Label>
                </div>
                <asp:GridView ID="GridView2" runat="server" class="container-fluid" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Height="187px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="803px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:ButtonField ButtonType="Button" CommandName="Select" Text="____" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
                    </div>
                   </div>
            </form>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <form runat="server">

            <hr />

            <div class="register">
                <div class="container">
                    <h3 class="animated wow zoomIn" data-wow-delay=".5s">Edite Category</h3>
                    <p class="est animated wow zoomIn" data-wow-delay=".5s">
                        Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia 
				deserunt mollit anim id est laborum.
                    </p>
                    <div class="login-form-grids" style="background-color:#f6f0f0">
                        <table class="nav-justified">
                            <tr>
                                <td colspan="4">
                                    <h1>
                                        <asp:Label ID="lbltittle" runat="server" Font-Names="Impact" Text="Products Category"></asp:Label>
                                    </h1>
                                </td>
                            </tr>
                            <tr>
                                <td class="modal-lg" style="text-align: left; color: #CC3300; width: 214px;">&nbsp;</td>
                                <td style="width: 159px">
                                    <asp:Label ID="lblMasg2" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                                </td>
                                <td style="width: 315px">
                                    
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNum" ErrorMessage="*" Font-Bold="True" Font-Size="X-Large" ForeColor="Red" ValidationGroup="vg"></asp:RequiredFieldValidator>
                                        
                                </td>
                                <td rowspan="9" style="width: 60px">
                                            <asp:Image ID="ImgImg" runat="server" Height="308px" Width="274px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="modal-lg" style="width: 214px">
                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#CC3300" Text="Category Number"></asp:Label>
                                </td>
                                <td style="width: 159px">
                                    <asp:TextBox ID="txtNum" runat="server" Width="247px"></asp:TextBox>
                                </td>
                                <td style="width: 315px">
                                    
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="*" Font-Bold="True" Font-Size="X-Large" ForeColor="Red" ValidationGroup="vg"></asp:RequiredFieldValidator>
                                       
                                </td>
                            </tr>
                            <tr>
                                <td class="modal-lg" style="width: 214px">
                                    <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="#CC3300" Text="Category Name"></asp:Label>
                                </td>
                                <td style="width: 159px">
                                    <asp:TextBox ID="txtName" runat="server" Width="246px"></asp:TextBox>
                                </td>
                                <td style="width: 315px">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="modal-lg" style="width: 214px">
                                    <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="#CC3300" Text="Descraption"></asp:Label>
                                </td>
                                <td style="width: 159px">
                                    <asp:TextBox ID="txtDesc" runat="server" Height="91px" TextMode="MultiLine" Width="248px"></asp:TextBox>
                                </td>
                                <td style="width: 315px">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="modal-lg" style="width: 214px">
                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="#CC3300" Text="Change Image"></asp:Label>
                                </td>
                                <td style="width: 159px">
                                    <asp:FileUpload ID="Filup" runat="server" />
                                </td>
                                <td style="width: 315px">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="modal-lg" style="width: 214px">&nbsp;</td>
                                <td style="width: 159px">&nbsp;</td>
                                <td style="width: 315px">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="modal-lg" style="width: 214px">
                                    <asp:Button ID="btnSave" runat="server" BackColor="#ACDF79" Font-Bold="True" Text="SAVE" ValidationGroup="vg" Width="134px" OnClick="btnSave_Click" />&nbsp;&nbsp;
                                </td>
                                <td style="width: 159px">
                                    <asp:Button ID="btnCancel" runat="server" BackColor="#FF5050" Font-Bold="True" OnClick="btnCancel_Click" Text="CANCEL" Width="134px" />&nbsp;&nbsp;
                                </td>
                                <td style="width: 315px">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="modal-lg" style="width: 214px">&nbsp;</td>
                                <td style="width: 159px">&nbsp;</td>
                                <td style="width: 315px">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="modal-lg" style="width: 214px">&nbsp;</td>
                                <td style="width: 159px">&nbsp;</td>
                                <td style="width: 315px">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="modal-lg" colspan="4">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="modal-lg" colspan="4">&nbsp;</td>
                            </tr>

                        </table>
                    </div>

                </div>

            </div>


</form>
        </asp:View>

    </asp:MultiView>

   

</asp:Content>

