<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>선택 페이지</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <style>
    body {
      background-color: #f8f9fa; /* 배경색 지정 */
    }

    .container {
      margin-top: 150px;
    }

    .btn-option {
      width: 100%; /* 버튼의 너비 100%로 설정하여 이미지 크기 일치시킴 */
      height: auto; /* 높이 자동으로 조정 */
      padding: 10px; /* 내부 여백 추가 */
      border: none; /* 테두리 제거 */
    }

    .btn-option img {
      width: 100%; /* 이미지의 너비 100%로 설정하여 부모 버튼에 맞춤 */
      height: auto; /* 높이 자동으로 조정 */
      border-radius: 10px; /* 이미지에 둥근 모서리 추가 */
    }

    .btn-option p {
      margin-top: 10px; /* 설명 텍스트와 이미지 간 간격 조정 */
      font-size: 18px; /* 폰트 크기 지정 */
      color: black; /* 텍스트 색상 지정 */
    }
  </style>
</head>
<body>

<div class="container">
  <div class="row">
    <div class="col-md-6 text-center">
      <a href="./handongBTI/index.html" class="text-decoration-none btn-option">
        <img src="./handongBTI/image/mbtiImage.jpeg" alt="Option 2">
        <p>MBTI</p>
      </a>
    </div>
    <div class="col-md-6 text-center">
      <a href="posts.jsp" class="text-decoration-none btn-option">
        <img src="./handongBTI/image/boardImage.jpeg" alt="Option 1">
        <p>게시판</p>
      </a>
    </div>
  </div>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

</body>
</html>
