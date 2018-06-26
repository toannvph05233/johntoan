<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Sanpham.aspx.cs" Inherits="Sanpham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <h1>Loại sản phẩm</h1><hr />

        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="MaLoai" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333">
            <EditItemTemplate>

                 <div class="form-group">
						<label>Mã Loại</label> <span style="color: red"></span><br />
						 <asp:Label ID="MaLoaiLabel1" CssClass="form-control" Width="300px" runat="server" Text='<%# Eval("MaLoai") %>' />
				</div>

                  <div class="form-group">
						<label>Tên Loại</label> <span style="color: red"></span><br />
						<asp:TextBox ID="TenLoaiTextBox"  CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("TenLoai") %>' />
				  </div>

              
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>

                      <div class="form-group">
						<label>Mã Loại</label> <span style="color: red"></span><br />
						 <asp:TextBox ID="MaLoaiTextBox"  CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("MaLoai") %>' />
				</div>

                  <div class="form-group">
						<label>Tên Loại</label> <span style="color: red"></span><br />
						<asp:TextBox ID="TenLoaiTextBox"  CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("TenLoai") %>' />
				  </div>
               
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>

                  
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                               <thead>
                                    <tr>
                                        <th>Mã Loại</th>
                                        <th>Tên Loại</th>             
                                        <th>Edit</th> 
                                        <th>Delete</th> 
                                        <th>New</th>    
                                    </tr>
                                </thead>
                            <tbody>
                                <tr>
                                    <td> <asp:Label ID="MaLoaiLabel" runat="server" Text='<%# Eval("MaLoai") %>' /></td>
                                     <td><asp:Label ID="TenLoaiLabel" runat="server" Text='<%# Bind("TenLoai") %>' /></td>
                                     
                                    <td><asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" /></td>
                                    <td><asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" /></td>
                                    <td><asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" /></td>
                                </tr>
                            </tbody>
                        </table>
                    </div> 

               
                
               
            </ItemTemplate>
            <PagerStyle BackColor="red" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="red" ForeColor="#333333" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [LoaiSanPham] WHERE [MaLoai] = @MaLoai" InsertCommand="INSERT INTO [LoaiSanPham] ([MaLoai], [TenLoai]) VALUES (@MaLoai, @TenLoai)" SelectCommand="SELECT [MaLoai], [TenLoai] FROM [LoaiSanPham]" UpdateCommand="UPDATE [LoaiSanPham] SET [TenLoai] = @TenLoai WHERE [MaLoai] = @MaLoai">
            <DeleteParameters>
                <asp:Parameter Name="MaLoai" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaLoai" Type="String" />
                <asp:Parameter Name="TenLoai" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenLoai" Type="String" />
                <asp:Parameter Name="MaLoai" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>

