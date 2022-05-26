<?php
    require_once('../db/db.php');

    switch($_GET['mode']) {
        case 'register';
        $id = $_POST['id'];
        $userid = $_POST['pw1'];
        $pw2 = $_POST['pw2'];
        $name = $_POST['name'];
        $sex = $_POST['sex'];
        $tel = $_POST['tel'];

        echo $id.','.$userid.','.$pw1.','.$pw2.','.$name.','.$sex.','.$tel;

        $sql = $db -> prepare('INSERT INTO register
        (id, userid, pw, name, sex, tel, redate) /*이 부분은 DB 테이블에서 만든 이름과 똑같이 입력해줍니다.*/
        VALUE(:id, :userid, :pw, :name, :sex, :tel, now())');

        $sql -> bindParam(':id',$id);
        $sql -> bindParam(':userid',$userid);
        $sql -> bindParam(':pw',$pw1);
        $sql -> bindParam(':name',$name);
        $sql -> bindParam(':sex',$sex);
        $sql -> bindParam(':tel',$tel);

        $sql -> execute();

        header('location:../main.php');

        break;
    }

    ?>
    