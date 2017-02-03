<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Anasayfa_yedek.aspx.cs" Inherits="Masterpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

    <title>Lütfi Kol</title>
    <link href="StyleSheet.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery-2.0.3.min.js"></script>
   
    <script type="text/javascript">        /* menü hover özellikleri*/
        $("document").ready(function () {
            $("header nav ul li.organizasyon_wrap").mouseover(function () {

                $("header nav ul li.organizasyon_wrap .organizasyon").css("display", "block")
            })
            $("header nav ul li.organizasyon_wrap").mouseleave(function () {

                $("header nav ul li.organizasyon_wrap .organizasyon").css("display", "none")
            })
            $("header nav ul li.galeri_wrap").mouseover(function () {

                $("header nav ul li.galeri_wrap .galeri").css("display", "block")
            })
            $("header nav ul li.galeri_wrap").mouseleave(function () {

                $("header nav ul li.galeri_wrap .galeri").css("display", "none")
            })
        })
    </script>




     <script> /* resim slider 5 saniye */
         var allImages;
         var imgCount;
         var current = 0;
 
         $(document).ready(function ($) {
             allImages = $(".slideWrapper img");   
             imgCount = allImages.length; 
 
             setInterval(slide, 5000);  
         });
 
         function slide() {
 
             if (current == (imgCount - 1)) { 
 
                 allImages.fadeOut(600).eq(0).fadeIn(600);
                 current = 0;
             }
             else { 
                 current++;
                 allImages.fadeOut(600).eq(current).fadeIn(600);
             }
         }
 
 
    </script>




   
 


   



   
 

   
 


   



   
</head>
<body>
    <form id="form1" runat="server">
   
        <div class="baslik" >
        <table style="margin-top:30px" >
       
        <tr >
        <td >
         <asp:Label ID="Label1"   runat="server" Text="L&nbsp;ü&nbsp;t&nbsp;f&nbsp;i&nbsp;&nbsp;K&nbsp;o&nbsp;l"></asp:Label>
            
        </td> 
            
           
        
          <td>   
              
         <asp:Label ID="Label2" style="font-size:medium; float:left; margin-top:15px;" runat="server" Text="&nbsp;Resmi Web Sitesi"></asp:Label>
       
        </td>
                
            </tr>
       
        </table>
            
        </div>


         
    <div class="header">
        <table>
            <tr>
                <td >
                     <asp:Image ID="Logo"  style="margin-left:430px;" ImageUrl="~/images/kol_logo.png"   runat="server" Width="80px" Height="80px"  />
                </td>
               
                <td >
                   <header >           
            <nav  >
                <ul >
                    <li style="margin-left:25px; ">
                       <a href="Anasayfa.aspx"> Anasayfa</a>
                        </li>
                     <li style="margin-left:25px;" >
                       <a href="MasterPage.master"> Biyografi 
                    
                         </a> 
                        </li>
                     <li style="margin-left:25px;" class="organizasyon_wrap">
                       <a href="Anasayfa.aspx"> Organizasyonlar</a> 
                         <div class="organizasyon">
                             <ul>
                                 <li>
                                     <a href="Anasayfa.aspx"> Düğün</a> 
                                 </li>        
                                   <li>
                                    <a href="Anasayfa.aspx"> Fasıl</a> 
                                 </li>                          
                                  <li>
                                    <a href="Anasayfa.aspx"> Kokteyl</a> 
                                 </li>
                                   <li>
                                       <a href="Anasayfa.aspx"> Açılış</a>
                                 </li>
                               
                                  <li>
                                       <a href="Anasayfa.aspx"> Tasavvuf </a>
                                 </li>
                                 
                             </ul>
                         </div>
                        </li>
                     <li style="margin-left:25px;" class="galeri_wrap" >
                       <a href="Anasayfa.aspx"> Galeri</a> 
                          <div class="galeri">
                             <ul>
                                 <li>
                                     <a href="Anasayfa.aspx"> Fotoğraflar</a> 
                                 </li>
                                  <li>
                                    <a href="Anasayfa.aspx"> Videolar</a> 
                                 </li>
                                  </ul>
                         </div>
                        </li>   
                     <li style="margin-left:25px;">
                                    <a href="Anasayfa.aspx"> Call Band</a> 
                                 </li>  
                              <li style="margin-left:25px;">
                                    <a href="Anasayfa.aspx"> Referanslar</a> 
                                 </li>       
                             <li style="margin-left:25px;">
                                    <a href="Anasayfa.aspx"> İletişim</a> 
                                 </li>
                                
                                 
                                  <li style="background-color:Green;margin-left:25px;">
  
                                     <a href="Anasayfa.aspx"> Admin</a> 
                                 </li> 
                                
                               
                       
                           
                         
                    <li style="float:left;margin-left:20px;" >
                           <asp:ImageButton ID="facebook_img"  ImageAlign="TextTop"  ImageUrl="~/images/fb_icon.png" Width="20px" Height="50%" ToolTip="Facebook" runat="server" OnClick="facebook_Click" OnClientClick="form1.target='_blank';" />
                    </li>                                                         
                 
                     <li style="float:left;margin-left:10px;" >
                    <asp:ImageButton ID="instagram_img"  ImageUrl="~/images/instagram_icon.png" ImageAlign="TextTop" Width="23px" Height="20px" ToolTip="Instagram" runat="server" OnClick="instagram_Click" OnClientClick="form1.target='_blank';" />
                          </li>   
                          <li  style="float:left;margin-left:10px;" >
                               <asp:ImageButton ID="youtube_img" ImageUrl="~/images/youtube.png" ImageAlign="TextTop" Width="21px" Height="20px" ToolTip="Youtube" runat="server" OnClick="youtube_Click" OnClientClick="form1.target='_blank';"/>
                               </li> 
                                
                                    
                    
                </ul>
                </nav>

            </header>
                </td>
            </tr>            
        </table>
     </div>
          
          
           
               
        

        <div class="ortabolum">


        <div class="duyuru">
             <table >
                <tr >
                    <td  >
            <asp:Image ID="duyuru_img" style="margin-left:5px" ImageUrl="~/images/duyuru.png"  Width="25px" Height="20px" runat="server" />                         
                    </td>
                    <td >
                    <asp:Label ID="duyuru" style="font-weight:bold; margin-left:25px" runat="server" Text="Duyurular"></asp:Label>   
                          </td>
                 </tr>
                 </table>


          <table style="width:200px;height:100%">
              <tr>
                  <td>
                       <asp:DataList ID="listele"   runat="server" Width="100%" Height="100%" >
                   
      
                    <ItemTemplate>
                
                   <div>
                       <table style="margin-top:10px">
                           
                      <tr>
                           
                          <td>
                             
                              <marquee id="duyuru_mark" position="relative" bgcolor="red" scrollamount="1"  onmouseover="this.stop()" scrolldelay="100" onmouseout="this.start()" width="100%"  direction="down" > 
                                 
                              <div>
                                      
                               <asp:Image ID="duyuru_ilk" style="margin-left:10px;"  ImageUrl="~/images/duyuru_ilk.png" Width="10px" Height="10px" runat="server" />                                                                    
                       
                              <asp:Label ID="duyuruicerik_label" style="margin-left:5px"   Height="15px"  runat  ="server" Text='<%# Eval("yazi")%>'></asp:Label>
                                     
                                          
                              </div>
                                  <div class="duyuru_tarih">
                                     
                                                    <asp:Label ID="duyurutarih_label" runat="server" Text="mar"></asp:Label>
                                         
                             
                                      </div>
                                  </marquee>




                              </td>   
                          </tr>
                           </table>
                       </div>

                  
                </ItemTemplate>
               
            </asp:DataList>
                  </td>
              </tr>
          </table>
           

                        

                </div>
           
       
        
    
           <div class="resim" >
           <table >
              
           <tr>
           <td >

                        <div class="slideWrapper">
                    <img src="/resim_slayt/kol1.jpg" />
                    <img src="/resim_slayt/arkaplan.jpg" />
                    <img src="/resim_slayt/ress.jpg" />
                             <img src="/resim_slayt/Sea-Wallpaper-Travel1.jpg" />

                              
 </div>
                                   
               
              
           </td>
           </tr>
              
           </table>
              
           </div>  
        
        </div>
      

        <div class="hizmet">
            <table>
                <tr>
                 <td style="text-align:center;width:1800px"  >
                     <asp:Label ID="Label4" runat="server" Text="Ek Hizmetlerimiz"></asp:Label>
                 </td>
                    </tr>
                    </table>
                           <table style="font-size:large;font-family:'Times New Roman';font-style:italic">                  
                <tr style="margin-top:10px;">
                    

                    <td >
                        <asp:Image ID="keman_foto" ImageUrl="~/images/violin.jpg"  Width="60px" Height="60px"  runat="server" />                                                 
                    </td>
                      <td style="width:130px;height:90px">
                               <a href="Anasayfa.aspx"  style="padding-left:10px;margin-top:50px"> Keman <br /> &nbsp Dersi</a>
                           </td> 

                      <td >
                        <asp:Image ID="klarnet_foto" ImageUrl="~/images/klarnet.jpg" style="margin-left:10px" Width="60px" Height="60px"  runat="server" />                                                 
                    </td>        
                     <td style="width:130px;height:90px" >
                               <a href="Anasayfa.aspx" style="padding-left:10px;margin-top:50px"> Klarnet <br /> &nbsp Dersi</a>
                           </td>  

                       

                      <td >
                        <asp:Image ID="piano_foto" ImageUrl="~/images/piano.jpg" style="margin-left:10px" Width="60px" Height="60px"  runat="server" />                                                 
                    </td>
                      <td style="width:130px;height:90px">
                               <a href="Anasayfa.aspx" style="padding-left:10px;margin-top:50px"> Piano <br /> &nbsp Dersi</a>
                           </td> 
                      <td>
                        <asp:Image ID="gitar_foto" ImageUrl="~/images/gitar.jpg"  Width="60px" Height="60px"  runat="server" />                                                 
                    </td>        
                     <td style="width:130px;height:90px">
                               <a href="Anasayfa.aspx" style="padding-left:10px;"> Gitar <br /> &nbsp Dersi</a>
                           </td>   


                                


                                    <td >
                        <asp:Image ID="basgitar_foto" ImageUrl="~/images/basgitar.jpg" Width="60px" Height="60px" style="margin-left:10px"    runat="server" />                                                 
                    </td>
                      <td style="width:130px;height:90px">
                               <a href="Anasayfa.aspx" style="padding-left:10px;"> Bas Gitar <br /> &nbsp Dersi</a>
                           </td> 


                                    <td >
                        <asp:Image ID="bateri_foto" ImageUrl="~/images/bateri.jpg" style="margin-left:10px"  Width="60px" Height="60px"  runat="server" />                                                 
                    </td>
                      <td style="width:130px;height:90px">
                               <a href="Anasayfa.aspx" style="padding-left:10px;"> Bateri <br /> &nbsp Dersi</a>
                           </td> 

                                    <td >
                        <asp:Image ID="darbuka_foto" ImageUrl="~/images/darbuka.png" style="margin-left:10px"  Width="60px" Height="60px"  runat="server" />                                                 
                    </td>
                      <td style="width:130px;height:90px">
                               <a href="Anasayfa.aspx" style="padding-left:10px;"> Darbuka <br /> &nbsp Dersi</a>
                           </td> 

                         <td>
                        <asp:Image ID="san_foto" ImageUrl="~/images/san.jpg" Width="60px" Height="60px"  runat="server" />                                                 
                    </td>        
                     <td style="width:130px;height:90px">
                               <a href="Anasayfa.aspx" style="padding-left:10px;"> Şan/Solfej <br /> &nbsp Dersi</a>
                           </td>   

                        <td >
                        <asp:Image ID="ud_foto" ImageUrl="~/images/ud.jpg" Width="60px" Height="60px" style="margin-left:10px"    runat="server" />                                                 
                    </td>
                      <td style="width:130px;height:90px">
                               <a href="Anasayfa.aspx" style="padding-left:10px;"> Ud <br /> &nbsp Dersi</a>
                           </td> 

                                   
                   
                    </tr>

                                 </table>
                  
                   
                  
                   
               
            
        </div>




        
                
           <div class="footer">
               <table>
                   <tr>
                       <td>
                           <asp:Label ID="Label3" runat="server" Text="  Copyright @ 2016 &nbsp;&nbsp;&nbsp;&nbsp; Seyhun Yaşar Özkal&nbsp; |&nbsp; Tüm Hakları Saklıdır."></asp:Label>
                          
                       </td>
                   </tr>
               </table>
               
               </div> 
         
       
    </form>
</body>
</html>
