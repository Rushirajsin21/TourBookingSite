<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Tour.Master"  CodeBehind="Register.aspx.cs" Inherits="Site.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>      
        <br /><br /><br />
    <h1 align="center" > <asp:Label ID="registerlbl" runat="server" Text="This is Register Page"></asp:Label></h1>
        </div>
    <table align="center">
           <tr>
               <td>
                   <asp:Label ID="rglbusername" runat="server" Text="Username: "></asp:Label>
                  <b> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="rgusername" ForeColor="Red"></asp:RequiredFieldValidator></b>
                      </td>
           </tr>
            <tr>
                <td>
                    <asp:TextBox ID="rgusername" runat="server" Width="500px" required=""></asp:TextBox>
                </td>
            </tr>
           <tr>
               <td>
                   <asp:Label ID="rglbemail" runat="server" Text="Email Address:"></asp:Label>

                  <b> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="rgemail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></b>

               </td>
           </tr>
           <tr>
               <td>
                   <asp:TextBox ID="rgemail" runat="server" width="500px" TextMode="Email" required=""></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="rglbpassword" runat="server" Text="Password: " ></asp:Label>
                   <b><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="rgpassword" ForeColor="Red"></asp:RequiredFieldValidator></b>
               </td>
           </tr>
           <tr>
               <td>
                   <asp:TextBox ID="rgpassword" runat="server" Width="500px" required=""></asp:TextBox>
               </td>
           </tr>
        <tr>
               <td>
                   <asp:Label ID="rglbretypepassword" runat="server" Text="Retype Password: " ></asp:Label>
                  <b> <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="rgretypepassword"></asp:RequiredFieldValidator></b>
               </td>
           </tr>
           <tr>
               <td>
                   <asp:TextBox ID="rgretypepassword" runat="server" Width="500px" TextMode="Password" required=""></asp:TextBox>
               </td>
           </tr>
        <tr>
            <td>
                <b><asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Doesn't Match" ControlToCompare="rgpassword" ControlToValidate="rgretypepassword" ForeColor="Red"></asp:CompareValidator></b>
            </td>
        </tr>
           <tr>

               <td align="center">
                  <asp:Button ID="rgbtnregister" runat="server" Text="Register" CssClass="btn btn-primary btn-block" Width="500px" OnClick="rgbtnregister_Click" />
               </td>
           </tr>
           <tr>
             
               <td align="center">
                  <asp:Button ID="rgbtnClear" runat="server" Text="Clear" CssClass="btn btn-danger btn-block" Width="500px" Height="49px" OnClick="rgbtnClear_Click" UseSubmitBehavior="False" CausesValidation="False" />
               </td>
           </tr>
        <tr>
            <td colspan="2" align="center">
               <asp:LinkButton ID="login" runat="server" OnClick="login_Click" CausesValidation="False"><h4>Login Here</h4>
                  </asp:LinkButton>
            </td>
        </tr>
       
       </table>
    <div id="regs"></div>
   </asp:Content>