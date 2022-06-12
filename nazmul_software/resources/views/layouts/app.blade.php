<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
  <head>
    <!-- Required meta tags -->
    <title>@yield('title')</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

      <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
  
    <link href="{{asset('frontend/style.css')}}" />

   
   <style type="text/css">
      .content_div{
    width: 100%;
    display: flex;
  }
  .left_add_banner{
  width: 19%;
    height: 90vh;
    position: relative;
   /* background: red;
    opacity: .5;*/
}
.center_exhibutors{
   width: 62%;
    height: 90vh;
    /*background: green;*/
    position: relative;
}
.right_add_banner{
    width: 19%;
    height: 90vh;
   /* background: red;
    opacity: .5;*/
}
.navbar{
  margin-bottom: 0px !important;
}
.display_exhi_area{
top: 50%;
    left: 50%;
   /* background: red;*/
    transform: translate(-50%, -50%);
    min-height: 350px;
    position: relative;
    width: 100%;
}
.exhibutor_show_top{
  /*background: #e6f3e6;*/
    height: 68px;
    /* margin-left: 3%; */
    width: 20%;
    display: inline-block;
    margin-top: 3%;
    margin-left: 4%;
    text-align: center;
    position: relative;
   
}
.exhibutor_show{
/*  background: #e6f3e6;*/
    height: 68px;
    /* margin-left: 3%; */
    width: 20%;
    display: inline-block;
    margin-top: 3%;
    margin-left: 4%;
    text-align: center;
    position: relative;
   
}
.university_image{
  height: 60px;
  width: 60px;
  margin: 0px auto;
  background: #fff;
  border-radius: 5px;
  margin-top: 5px;
}
.text_title_exi{
    color: #fff;
    font-size: 16px;
    font-weight: bolder;
    font-family: system-ui;
    text-shadow: 2px 2px 2px #1a1a1a;
}
.text_title_exi:hover{
  color: #fff;
  text-shadow: 2px 2px 2px #1a1a1a;
  text-decoration: none;
}
.paginate_area{
  height: 22px;
  min-width: 350px;
  background: #fff;
  float: right;
  /*margin-top: 14px;*/
  margin-right: 20px;
  border-radius: 10px;
}

.list-inline {
    padding-left: 0;
    margin-left: 0px;
    list-style: none;
}
.pagenate_list {
  cursor: pointer;
    font-weight: bold;
    font-size: 15px;
    padding-right: 15px !important;
    padding-left: 15px !important;

}
.selected_page_id{
    background: #9e362b;
    border-radius: 50%;
    color: #fff;
}
.single_box{

}
.col-md-2 {
    width: 12.5%;
}
.col-md-8 {
    width: 75%;
}
.left_side{
  float: left;
  width: 13%;
  position: relative;
  margin-top: 38vh;
}
.center_side{
  float: left;
  width: 75%;
  position: relative;
  margin-top: 23vh;
  

}
.right_side{
  float: left;
  width: 12%;
  position: relative;
  margin-top: 38vh;
}
.new_box{
  width: 100%;
  position: relative;
   background-image: linear-gradient(to right, #d2cecb 0%, #f5f5f5 51%,#aaa8a3 100%)

}
* {
  box-sizing: border-box;
}

/* Create four equal columns that floats next to each other */
.column {
  float: left;
    width: 24%;
    padding-left: 15px;
    height: 22vh;
    border: 7px solid black;
    margin-right: 1%;
    margin-bottom: 1%;
    background-image: linear-gradient(to right, #898d95 0%, #f5f5f5 51%,#898d95 100%)
}

/* Clear floats after the columns */
.new_box:after {
  content: "";
  display: table;
  clear: both;
}
.logo_text{
  padding: 20px;
}
.banner_image_one{
  width: 56%;
    height: 32vh;
    margin-left: 29%;
    border-radius: 10px;
    transform: rotate(
1deg);
}
.banner_image_two{
  width: 56%;
    height: 32vh;
    margin-left: 29%;
    border-radius: 10px;
    transform: rotate(
1deg);
}

.left_side_continent_room {
    float: left;
    width: 20%;
    position: relative;
    margin-top: 18vh;
}
.center_side_continent_room {
    float: left;
    width: 60%;
    position: relative;
    margin-top: 20vh;
}
.right_side_continent_room {
    float: left;
    width: 20%;
    position: relative;
    margin-top: 18vh;
}
.new_box_continent_room {
    width: 100%;
    position: relative;
    
}
.content_box{

  width: 70%;
  margin: 0px auto;
  height: 70vh;
  
  
}
.room_title{
  text-align: center;
  font-size: 24px;
  font-weight: 800;
  background: linear-gradient(to left, black, #c3c4c6 25%, #c3c4c6 75%, black 100%);
  padding: 10px;
  width: 100%;
  margin: 0px auto;
  border-radius: 20px;
  text-shadow: 1px 1px #ffffff;

}
.single_room{
  width: 31%;
  float: left;
  margin: 1%;
  height: 130px;
 background: linear-gradient(to left, black, #c3c4c6 25%, #c3c4c6 75%, black 100%);
  padding:10px;
}
.single_room_text{
  text-align: center;
  margin: 0px auto;
   margin-top: 20%;
  


}
.single_room_text > a{
  font-size: 22px;
  font-weight: 800;
  text-shadow: 1px 1px #4c565f ;
}
/*.single_box:hover{
  opacity: 0.7;
}*/

/* 
  ##Device = Desktops
  ##Screen = 1281px to higher resolution desktops
*/

@media (min-width: 1281px) {
  
  /* CSS */
  
}

/* 
  ##Device = Laptops, Desktops
  ##Screen = B/w 1025px to 1280px
*/

@media (min-width: 1024px) and (max-width: 1280px) {
  
  .left_side{
  float: left;
  width: 13%;
  position: relative;
  margin-top: 37vh;
}
.center_side{
  float: left;
  width: 75%;
  position: relative;
  margin-top: 37vh;

  

}
.right_side{
  float: left;
  width: 12%;
  position: relative;
  margin-top: 37vh;
}


/* Create four equal columns that floats next to each other */
.column {
    width: 48%;
   
}


.logo_text{
  width: 100%;
  display: flex;
}

.university_image{
  height: 30px;
  width: 30px;
  margin: 0px auto;
  background: #fff;
  border-radius: 5px;
  margin-top: 5px;
  margin-right: 5px;
  float: left;
}
.text_title_exi{
    color: #fff;
    font-size: 12px;
    font-weight: bolder;
    font-family: system-ui;
    text-shadow: 2px 2px 2px #1a1a1a;
    float: left;
    text-align: center;
    padding: 5px;
    margin: 0px auto;
}

  
}

/* 
  ##Device = Tablets, Ipads (portrait)
  ##Screen = B/w 768px to 1024px
*/

@media (min-width: 768px) and (max-width: 1024px) {
  
 .left_side{
  float: left;
  width: 13%;
  position: relative;
  margin-top: 37vh;
}
.center_side{
  float: left;
  width: 75%;
  position: relative;
  margin-top: 37vh;

  

}
.right_side{
  float: left;
  width: 12%;
  position: relative;
  margin-top: 37vh;
}


/* Create four equal columns that floats next to each other */
.column {
    width: 48%;
   
}


.logo_text{
  width: 100%;
  display: flex;
}

.university_image{
  height: 30px;
  width: 30px;
  margin: 0px auto;
  background: #fff;
  border-radius: 5px;
  margin-top: 5px;
  margin-right: 5px;
  float: left;
}
.text_title_exi{
    color: #fff;
    font-size: 12px;
    font-weight: bolder;
    font-family: system-ui;
    text-shadow: 2px 2px 2px #1a1a1a;
    float: left;
    text-align: center;
    padding: 5px;
    margin: 0px auto;
}
.content_box{
  width: 100%;
  margin: 0px auto;
  height: 100vh;
}
    .single_room_text > a {
    font-size: 18px;
}
  
}

/* 
  ##Device = Tablets, Ipads (landscape)
  ##Screen = B/w 768px to 1024px
*/

@media (min-width: 768px) and (max-width: 1024px) and (orientation: landscape) {
  
  .left_side{
  float: left;
  width: 13%;
  position: relative;
  margin-top: 37vh;
}
.center_side{
  float: left;
  width: 75%;
  position: relative;
  margin-top: 37vh;

  

}
.right_side{
  float: left;
  width: 12%;
  position: relative;
  margin-top: 37vh;
}


/* Create four equal columns that floats next to each other */
.column {
    width: 48%;
   
}


.logo_text{
  width: 100%;
  display: flex;
}

.university_image{
  height: 30px;
  width: 30px;
  margin: 0px auto;
  background: #fff;
  border-radius: 5px;
  margin-top: 5px;
  margin-right: 5px;
  float: left;
}
.text_title_exi{
    color: #fff;
    font-size: 12px;
    font-weight: bolder;
    font-family: system-ui;
    text-shadow: 2px 2px 2px #1a1a1a;
    float: left;
    text-align: center;
    padding: 5px;
    margin: 0px auto;
}
.content_box{
  width: 100%;
  margin: 0px auto;
  height: 100vh;
}
  .single_room_text > a {
    font-size: 18px;
}
  
  
}

/* 
  ##Device = Low Resolution Tablets, Mobiles (Landscape)
  ##Screen = B/w 481px to 767px
*/

@media (min-width: 481px) and (max-width: 767px) {
  
  .left_side{
  float: left;
  width: 15%;
  position: relative;
  margin-top: 37vh;
}
.center_side{
  float: left;
  width: 73%;
  position: relative;
  margin-top: 37vh;

  

}
.right_side{
  float: left;
  width: 12%;
  position: relative;
  margin-top: 37vh;
}


/* Create four equal columns that floats next to each other */
.column {
    width: 48%;
   
}


.logo_text{
  width: 100%;
  display: flex;
}

.university_image{
  height: 30px;
  width: 30px;
  margin: 0px auto;
  background: #fff;
  border-radius: 5px;
  margin-top: 5px;
  margin-right: 5px;
  float: left;
}
.text_title_exi{
    color: #fff;
    font-size: 10px;
    font-weight: bolder;
    font-family: system-ui;
    text-shadow: 2px 2px 2px #1a1a1a;
    float: left;
    text-align: center;
    padding: 5px;
    margin: 0px auto;
}
.content_box{
  width: 100%;
  margin: 0px auto;
  height: 100vh;
}
  .single_room_text > a {
    font-size: 18px;
}
  
  
}

/* 
  ##Device = Most of the Smartphones Mobiles (Portrait)
  ##Screen = B/w 320px to 479px
*/

@media (min-width: 320px) and (max-width: 480px) {
  
 .left_side{
  float: left;
  width: 16%;
  position: relative;
  margin-top: 37vh;
}
.center_side{
  float: left;
  width: 72%;
  position: relative;
  margin-top: 37vh;

  

}
.right_side{
  float: left;
  width: 12%;
  position: relative;
  margin-top: 37vh;
}


/* Create four equal columns that floats next to each other */
.column {
    width: 48%;
   
}


.logo_text{
  width: 100%;
  display: flex;
}

.university_image{
  height: 30px;
  width: 30px;
  margin: 0px auto;
  background: #fff;
  border-radius: 5px;
  margin-top: 5px;
  margin-right: 5px;
  float: left;
}
.text_title_exi{
    color: #fff;
    font-size: 9px;
    font-weight: bolder;
    font-family: system-ui;
    text-shadow: 2px 2px 2px #1a1a1a;
    float: left;
    text-align: center;
    padding: 5px;
    margin: 0px auto;
}
.paginate_area {
    width: 100% !important;
}

.content_box{
  width: 100%;
  margin: 0px auto;
  height: 100vh;
}
  .single_room_text > a {
    font-size: 18px;
}
  
}

@media (max-width: 1024px) and (orientation: portrait){ /* tablet and smaller */
  body:after{
    position: absolute;
    z-index: 9999;
    width: 100%;
    top: 0;
    bottom: 0;
    content: "";
    background: #212121 url(http://i.stack.imgur.com/sValK.png) 0 0 no-repeat; /* replace with an image that tells the visitor to rotate the device to landscape mode */
    background-size: 100% auto;
    opacity: 0.95;
  }


 
}
   </style> 
  </head>
  <body class="">
    @include('layouts.header')
   <div class="mainSection page_bg_image" >
       @yield('content')
   </div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<script src="{{asset('frontend/custom.js')}}" ></script>
<script type="text/javascript">
   
</script>
@yield('script')
  </body>
</html>