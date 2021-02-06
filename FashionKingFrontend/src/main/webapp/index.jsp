<%@include file="/WEB-INF/jsp/CommonHeader.jsp" %>

<html>
<body>
<div class="container-fluid">
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-dOpA_IfexqyjDr7c9PKXdGPoR1V8cA1BBg&usqp=CAU" alt="Los Angeles" style="width:100%;">
      </div>

      <div class="item">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSy55UWam41BG_HuqNssx9TDsXjB4eIo8gDBQ&usqp=CAU" alt="Chicago" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="https://media.istockphoto.com/videos/slider-shot-the-handle-lies-on-the-laptop-the-workplace-video-id1151682282?s=640x640" alt="New york" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>

</div>
</body>
</html>