<?php

include("connect.php");

$uid = $_POST['uid'];
$pw = $_POST['pw'];

$sql = "SELECT * FROM member_table where username = '$id'";

$result = mysql_query($sql);
$row = @mysql_fetch_row($result);


if($id != null && $pw != null && $row[1] == $id && $row[6] == $pw)
{
        //將帳號寫入session，方便驗證使用者身份
    $_SESSION['username'] = $id;
    echo '登入成功!';
    echo '<meta http-equiv=REFRESH CONTENT=1;url=member.php>';
}
else
{
    echo '登入失敗!';
    echo '<meta http-equiv=REFRESH CONTENT=1;url=index.php>';
}
?>