<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Anasayfa.aspx.cs" Inherits="Anasayfa2" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="StyleSheet.css" rel="stylesheet" />
   
   
    
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
           



     <div class="degisen_alan" >
             
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
              
           <asp:Button ID="Button1" runat="server" Text="Button" />
           <asp:Button ID="Button2" runat="server" Text="Button" />
              
           </div>  

 </asp:Content>