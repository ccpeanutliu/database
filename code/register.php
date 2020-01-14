<?php

include("connect.php");

$uid = $_POST['UID'];
$username = $_POST['Username'];
$sex = $_POST['Sex'];
$age = $_POST['Age'];
$mail = $_POST['Mail'];
$passwd = $_POST['Password'];



if($uid != null && $passwd != null)
{
	$sql = "INSERT into member_table WHERE (uid, username, sex, age, mail, password) values ('$uid', '$username', '$sex', '$age', '$mail', '$passwd')";
	if(mysql_query($sql))
    {
        echo '新增成功!';
        echo '<meta http-equiv=REFRESH CONTENT=2;url=index.php>';
    }
    else
    {
        echo '新增失敗!';
        echo '<meta http-equiv=REFRESH CONTENT=2;url=index.php>';
    }
}
else
{
	echo '還想駭我阿';
	echo '<meta http-equiv=REFRESH CONTENT=2;url=index.php>';
}