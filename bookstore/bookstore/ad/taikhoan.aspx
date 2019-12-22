<%@ Page Title="" Language="C#" MasterPageFile="~/admin_master.Master" AutoEventWireup="true" CodeBehind="taikhoan.aspx.cs" Inherits="bookstore.ad.taikhoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="main_body" runat="server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:shopbansachConnectionString %>" DeleteCommand="DELETE FROM [TaiKhoan] WHERE [taikhoan] = @original_taikhoan AND (([matkhau] = @original_matkhau) OR ([matkhau] IS NULL AND @original_matkhau IS NULL)) AND (([sodt] = @original_sodt) OR ([sodt] IS NULL AND @original_sodt IS NULL)) AND (([hoten] = @original_hoten) OR ([hoten] IS NULL AND @original_hoten IS NULL)) AND (([quyentruycap] = @original_quyentruycap) OR ([quyentruycap] IS NULL AND @original_quyentruycap IS NULL))" InsertCommand="INSERT INTO [TaiKhoan] ([taikhoan], [matkhau], [sodt], [hoten], [quyentruycap]) VALUES (@taikhoan, @matkhau, @sodt, @hoten, @quyentruycap)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [TaiKhoan]" UpdateCommand="UPDATE [TaiKhoan] SET [matkhau] = @matkhau, [sodt] = @sodt, [hoten] = @hoten, [quyentruycap] = @quyentruycap WHERE [taikhoan] = @original_taikhoan AND (([matkhau] = @original_matkhau) OR ([matkhau] IS NULL AND @original_matkhau IS NULL)) AND (([sodt] = @original_sodt) OR ([sodt] IS NULL AND @original_sodt IS NULL)) AND (([hoten] = @original_hoten) OR ([hoten] IS NULL AND @original_hoten IS NULL)) AND (([quyentruycap] = @original_quyentruycap) OR ([quyentruycap] IS NULL AND @original_quyentruycap IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_taikhoan" Type="String" />
                <asp:Parameter Name="original_matkhau" Type="String" />
                <asp:Parameter Name="original_sodt" Type="String" />
                <asp:Parameter Name="original_hoten" Type="String" />
                <asp:Parameter Name="original_quyentruycap" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="taikhoan" Type="String" />
                <asp:Parameter Name="matkhau" Type="String" />
                <asp:Parameter Name="sodt" Type="String" />
                <asp:Parameter Name="hoten" Type="String" />
                <asp:Parameter Name="quyentruycap" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="matkhau" Type="String" />
                <asp:Parameter Name="sodt" Type="String" />
                <asp:Parameter Name="hoten" Type="String" />
                <asp:Parameter Name="quyentruycap" Type="String" />
                <asp:Parameter Name="original_taikhoan" Type="String" />
                <asp:Parameter Name="original_matkhau" Type="String" />
                <asp:Parameter Name="original_sodt" Type="String" />
                <asp:Parameter Name="original_hoten" Type="String" />
                <asp:Parameter Name="original_quyentruycap" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="taikhoan" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="taikhoan" HeaderText="Tai KHoan" ReadOnly="True" SortExpression="taikhoan" />
                <asp:BoundField DataField="matkhau" HeaderText="matkhau" SortExpression="matkhau" />
                <asp:BoundField DataField="sodt" HeaderText="sodt" SortExpression="sodt" />
                <asp:BoundField DataField="hoten" HeaderText="hoten" SortExpression="hoten" />
                <asp:BoundField DataField="quyentruycap" HeaderText="quyentruycap" SortExpression="quyentruycap" />
            </Columns>
        </asp:GridView>
    </p>
    <p>&nbsp;</p> <p>
</asp:Content>
 