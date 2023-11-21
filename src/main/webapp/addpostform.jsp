<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>나를 알려줘</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="./styleBoard/BoardStyle.css">
</head>
<body>

<div class="container mt-5">
    <h1>나를 알려줘</h1>
    <form action="addpost.jsp" method="post" enctype="multipart/form-data">
        <table class="table">
            <tr>
                <td>이름:</td>
                <td><label>
                    <input type="text" class="form-control" name="title"/>
                </label></td>
            </tr>
            <tr>
                <td>학번:</td>
                <td><label>
                    <input type="text" class="form-control" name="writer"/>
                </label></td>
            </tr>
            <tr>
                <td>나의 한동 Mbti:</td>
                <td><label>
                    <input type="text" class="form-control" name="mbti"/>
                </label></td>
            </tr>
            <tr>
                <td>GitHub 주소 or Blog 주소:</td>
                <td><label>
                    <textarea class="form-control" rows="5" name="content"></textarea>
                </label></td>
            </tr>
            <tr>
                <td>Photo</td><td><input type ="file" name="photo"></td>
            </tr>
            <tr>
                <td colspan="2">
                    <a href="posts.jsp" class="btn btn-secondary">메인으로 돌아가기</a>
                    <input type="submit" class="btn btn-primary" value="Add Post"/>
                    <a href="./handongBTI/index.html" class="btn btn-secondary">아직 검사 안했다면 클릭!</a>
                </td>
            </tr>
        </table>
    </form>
</div>

<!-- Bootstrap JS and dependencies (jQuery, Popper.js) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
