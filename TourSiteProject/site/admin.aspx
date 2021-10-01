﻿<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="admin.aspx.cs" Inherits="Site.admin" %>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css"/>
   
    <title></title>
    <style type="text/css">
        #heade {
            height: 10%;
            color:white;
            background-color:blue;
            width:85%;
            float:right;
            border:1px solid;
            border-radius:10px;
            border-width:2px;
            border-color:black;

        }
        #dash{
            float:left;
            width:15%;
            color:white;
            background-color:black;
            height:100%;
            border:1px solid;
            border-width:2px;
            border-color:aqua;
            border-radius:10px;
        }
        #img
        {
            border-radius:50%;
        }
        .border{
            border:1px solid;
            border-radius:20px;
            border-block-color:white;
            border-width:1px;
            height:30px;
        }
        #admins1{
            float:right;
            width:85%;
            height:90%;
            background-color:white;
            border-radius:10px;
            border:1px solid;
            border-width:2px;
            border-color:black;
        }
        #category1{
             float:right;
            width:85%;
            height:90%;
            background-color:white;
            border-radius:10px;
            border:1px solid;
            border-width:2px;
            border-color:black;
        }
        #gallery1{
              float:right;
            width:85%;
            height:90%;
            background-color:white;
            border-radius:10px;
            border:1px solid;
            border-width:2px;
            border-color:black;
        }
    </style>
</head>
<body>
   <form id="form1" runat="server" >
       <div id="dash" runat="server">
           <br />
                 &nbsp;    <img id="img"  src="images/NidhiMam.jpg" height="50px" width="50px" /> &nbsp; <b><i>Tour Trip&nbsp<i class="fa fa-plane fa-lg" aria-hidden="true"></i>
</i></b>
           <br /><br />
           <h4 align="center"> Dashboard</h4>
           <br />
           <div id="admin1" runat="server" class="border">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-user fa-lg" aria-hidden="true">&nbsp;<asp:LinkButton ID="adminslink" runat="server" ForeColor="White" OnClick="adminslink_Click"> Add Admins</asp:LinkButton></i>
</div>
           <br />
           <div id="admin_category" runat="server" class="border">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-list-alt fa-lg" aria-hidden="true"> <asp:LinkButton ID="categorylink" runat="server" ForeColor="White" OnClick="categorylink_Click">Category</asp:LinkButton></i>
               </div>
           <br />
           <div id="admin_gallery_image" runat="server" class="border">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-picture-o fa-lg" aria-hidden="true">
               <asp:LinkButton ID="gallerylink" runat="server" ForeColor="White" OnClick="gallerylink_Click">Gallery</asp:LinkButton></i>

</div>
       </div>
        <div id="heade" runat="server">
            <h1 align="center" runat="server"> Admin Panel</h1>
        </div>
       <div id="admins1" runat="server">
           <br /><br />
  <div class="mb-3 col-12">
    <label for="exampleInputEmail1" class="form-label">Admin Name:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="admin_name" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="admin_name" runat="server"  class="form-control"  aria-describedby="emailHelp"></asp:TextBox>
  </div>
               <div class="mb-3 col-12">
                       <label for="exampleInputPassword1" class="form-label">Admin Role:<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="admin_role" ErrorMessage="*" ForeColor="Red" InitialValue="Select Admin Role"></asp:RequiredFieldValidator>
                       </label>
                   &nbsp;<asp:DropDownList ID="admin_role" runat="server" class="form-control">
                       <asp:ListItem>Select Admin Role</asp:ListItem>
                       <asp:ListItem>Super Admin</asp:ListItem>
                       <asp:ListItem>Admin</asp:ListItem>
                       <asp:ListItem>Editor</asp:ListItem>
                       <asp:ListItem>Reader</asp:ListItem>
                       </asp:DropDownList>

               </div>
  <div class="mb-3 col-12">
    <label for="exampleInputPassword1" class="form-label">Password:<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="password" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
      </label>
    &nbsp;<asp:TextBox ID="password" runat="server" type="password" class="form-control" ></asp:TextBox>
  </div>
               <div class="mb-3 col-12">
    <label for="exampleInputPassword1" class="form-label">Retype Password:<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Retypepassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                   </label>
    &nbsp;<asp:TextBox ID="Retypepassword" runat="server" type="password" class="form-control" ></asp:TextBox>
  </div>
                &nbsp;&nbsp;&nbsp;&nbsp

  <asp:Button ID="add" runat="server" Text="Add" type="submit" class="btn btn-primary" Width="96px" OnClick="add_Click"></asp:Button>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Button ID="clear" runat="server" Text="Clear" class="btn btn-danger" Width="95px" CausesValidation="False" OnClick="clear_Click" />
      
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Doesn't Match" ControlToCompare="password" ControlToValidate="Retypepassword" ForeColor="Red"></asp:CompareValidator>
      
           <br />
           <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
      
      </div>
           
       <div id="category1" runat="server"></div>
       <div id="gallery1" runat="server"></div>
   </form>
</body>
</html>