<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>선택 페이지</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <style>
    body {
      background-color: #f8f9fa;
    }
    .container {
      margin-top: 150px;
    }

    .btn-option {
      width: 100%;
      height: auto;
      padding: 10px;
      border: none;
    }

    .btn-option img {
      width: 100%;
      height: auto;
      border-radius: 10px;
    }

    .btn-option p {
      margin-top: 10px;
      font-size: 18px;
      color: black;
    }
  </style>
</head>
<body>

<div class="container">
  <div class="row">
    <div class="col-md-6 text-center">
      <a href="handongBTI/index.html" class="text-decoration-none btn-option">
        <img src="handongBTI/image/mbtiImage2.png" alt="Option 2">
        <p>한동 MBTI 검사하러가기</p>
      </a>
    </div>
    <div class="col-md-6 text-center">
      <a href="posts.jsp" class="text-decoration-none btn-option">
        <img src="handongBTI/image/profilebasic.jpeg" alt="Option 1">
        <p>프로필 작성하러 가기</p>
      </a>
    </div>
  </div>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

</body>
</html>
