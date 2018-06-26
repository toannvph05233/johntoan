<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Nguoidung.aspx.cs" Inherits="Nguoidung" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <h1>Người dùng</h1>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaTaiKhoan" DataSourceID="SqlDataSource1" AllowPaging="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both">
        <EditItemTemplate>

             <div class="form-group">
						<label>Mã Người dùng</label> <span style="color: red"></span><br />
						 <asp:Label ID="MaTaiKhoanLabel1"  CssClass="form-control" Width="300px" runat="server" Text='<%# Eval("MaTaiKhoan") %>' />
				</div>

           <div class="form-group">
						<label>Mật khẩu</label> <span style="color: red"></span><br />
						 <asp:TextBox ID="MatKhauTextBox"  CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("MatKhau") %>' />
				</div>
            
            <div class="form-group">
						<label>Họ tên</label> <span style="color: red"></span><br />
						 <asp:TextBox ID="HoTenTextBox"  CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("HoTen") %>' />
				</div>
           
           <div class="form-group">
						<label>Giới tính</label> <span style="color: red"></span><br />
						<asp:TextBox ID="GioiTinhTextBox"  CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("GioiTinh") %>' />
				</div>
            
            <div class="form-group">
						<label>Địa chỉ</label> <span style="color: red"></span><br />
						 <asp:TextBox ID="DiaChiTextBox"  CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("DiaChi") %>' />
				</div>
           
           <div class="form-group">
						<label>Chức vụ</label> <span style="color: red"></span><br />
						 <asp:TextBox ID="ChucVuTextBox"  CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("ChucVu") %>' />
				</div>
            
           
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <InsertItemTemplate>

            <div class="form-group">
						<label>Mã Người dùng</label> <span style="color: red"></span><br />
						  <asp:TextBox ID="MaTaiKhoanTextBox"  CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("MaTaiKhoan") %>' />
				</div>

           <div class="form-group">
						<label>Mật khẩu</label> <span style="color: red"></span><br />
						  <asp:TextBox ID="MatKhauTextBox"  CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("MatKhau") %>' />
				</div>
            
            <div class="form-group">
						<label>Họ tên</label> <span style="color: red"></span><br />
						  <asp:TextBox ID="HoTenTextBox"  CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("HoTen") %>' />
				</div>
           
           <div class="form-group">
						<label>Giới tính</label> <span style="color: red"></span><br />
						<asp:TextBox ID="GioiTinhTextBox"  CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("GioiTinh") %>' />
				</div>
            
            <div class="form-group">
						<label>Địa chỉ</label> <span style="color: red"></span><br />
						 <asp:TextBox ID="DiaChiTextBox"  CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("DiaChi") %>' />
				</div>
           
           <div class="form-group">
						<label>Chức vụ</label> <span style="color: red"></span><br />
						 <asp:TextBox ID="ChucVuTextBox"  CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("ChucVu") %>' />
			</div>


         
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>


 <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                               <thead>
                                    <tr>
                                        <th>Mã Người dùng</th>
                                        <th>Mật khẩu</th>
                                        <th>Họ tên</th>
                                        <th>Giới tính</th>
                                        <th>Địa chỉ</th>    
                                        <th>Chức vụ</th>                                        
                                        <th>Edit</th> 
                                        <th>Delete</th> 
                                        <th>New</th>    
                                    </tr>
                                </thead>
                            <tbody>
                                <tr>
                                    <td><asp:Label ID="MaTaiKhoanLabel" runat="server" Text='<%# Eval("MaTaiKhoan") %>' /></td>
                                     <td><asp:Label ID="MatKhauLabel" runat="server" Text='<%# Bind("MatKhau") %>' /></td>
                                     <td>   <asp:Label ID="HoTenLabel" runat="server" Text='<%# Bind("HoTen") %>' /></td>
                                     <td><asp:Label ID="GioiTinhLabel" runat="server" Text='<%# Bind("GioiTinh") %>' /></td>
                                     <td>  <asp:Label ID="DiaChiLabel" runat="server" Text='<%# Bind("DiaChi") %>' /></td>
                                     <td> <asp:Label ID="ChucVuLabel" runat="server" Text='<%# Bind("ChucVu") %>' /></td>                                 
                                    <td><asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" /></td>
                                    <td><asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" /></td>
                                    <td><asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" /></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>   


        </ItemTemplate>
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [TaiKhoan] WHERE [MaTaiKhoan] = @MaTaiKhoan" InsertCommand="INSERT INTO [TaiKhoan] ([MaTaiKhoan], [MatKhau], [HoTen], [GioiTinh], [DiaChi], [ChucVu]) VALUES (@MaTaiKhoan, @MatKhau, @HoTen, @GioiTinh, @DiaChi, @ChucVu)" SelectCommand="SELECT [MaTaiKhoan], [MatKhau], [HoTen], [GioiTinh], [DiaChi], [ChucVu] FROM [TaiKhoan]" UpdateCommand="UPDATE [TaiKhoan] SET [MatKhau] = @MatKhau, [HoTen] = @HoTen, [GioiTinh] = @GioiTinh, [DiaChi] = @DiaChi, [ChucVu] = @ChucVu WHERE [MaTaiKhoan] = @MaTaiKhoan">
            <DeleteParameters>
                <asp:Parameter Name="MaTaiKhoan" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaTaiKhoan" Type="String" />
                <asp:Parameter Name="MatKhau" Type="String" />
                <asp:Parameter Name="HoTen" Type="String" />
                <asp:Parameter Name="GioiTinh" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
                <asp:Parameter Name="ChucVu" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MatKhau" Type="String" />
                <asp:Parameter Name="HoTen" Type="String" />
                <asp:Parameter Name="GioiTinh" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
                <asp:Parameter Name="ChucVu" Type="Int32" />
                <asp:Parameter Name="MaTaiKhoan" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>

