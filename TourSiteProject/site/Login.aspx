<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Site.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous" />
    

</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">
  <div class="container-fluid">

    <a class="navbar-brand  " href="#"><i>Tour Trip&#9992;</i></a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <asp:LinkButton ID="Home" runat="server" class="nav-link"><b>Home</b></asp:LinkButton>
            </li>     
              <li class="nav-item">
              <asp:LinkButton ID="Aboutus" runat="server" class="nav-link"  ><b>AboutUs</b></asp:LinkButton>
            </li>
              <li class="nav-item">
              <asp:LinkButton ID="ContactUs" runat="server" class="nav-link"  ><b>ContactUs</b></asp:LinkButton>
            </li>
             </ul>
        </div>

            <asp:TextBox ID="searchbox" runat="server" class="form-control " type="search" width="300px" placeholder="Search" aria-label="Search" />
            <asp:Button ID="btnsearch" runat="server" Text="Search" class="btn btn-success  my-2 my-sm-0 mx-2" type="submit" />
                          <asp:Button ID="btn_login" runat="server" Text="Login" class="btn btn-primary my-2 my-sm-0 mx-2" type="submit" />
                      <asp:Button ID="btnregister" runat="server" Text="Register" class="btn btn-danger my-2 my-sm-0 mx-2" type="submit"  />
    

  </div>
</nav> 
       
        
        <div>
            <br /><br /><br />
            <h1 align="center"> <asp:Label ID="headinglbl" runat="server" Text="Login Page"></asp:Label></h1>
       <table align="center">
           <tr>
               <td>
                   <asp:Label ID="lbusername" runat="server" Text="Username: "></asp:Label>
               </td>
           </tr>
            <tr>
                <td>
                    <asp:TextBox ID="username" runat="server" Width="500px"></asp:TextBox>
                </td>
            </tr>
           <tr>
               <td>
                   <asp:Label ID="lbemail" runat="server" Text="Email Address:"></asp:Label>
               </td>
           </tr>
           <tr>
               <td>
                   <asp:TextBox ID="email" runat="server" width="500px"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="lbpassword" runat="server" Text="Password: "></asp:Label>
               </td>
           </tr>
           <tr>
               <td>
                   <asp:TextBox ID="password" runat="server" Width="500px"></asp:TextBox>
               </td>
           </tr>
           <tr>

               <td align="center">
                  <asp:Button ID="btnlogin" runat="server" Text="Login" CssClass="btn btn-primary btn-block" Width="500px" />
               </td>
           </tr>
           <tr>
             
               <td align="center">
                  <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-danger btn-block" Width="500px" />
               </td>
           </tr>
       </table>
</div>
            
            
  
    </form>
</body>
</html>
