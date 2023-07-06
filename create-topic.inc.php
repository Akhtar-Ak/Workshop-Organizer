<?php
session_start();
if (isset($_POST['create-topic'])) {

    require 'dbh.inc.php';

    $topicSubject  = $_POST['topic-subject'];
    $topicCategory = $_POST['topic-cat'];
    $postDetail    = $_POST['topic-detail'];
    $postDate      = $_POST['topic-date'];
    $postImage     = "";
    $postSpeaker   = $_POST['topic-speaker'];

    $FileNameNew = 'img/cover2.png';

    require 'upload.inc.php';
    if ($FileNameNew != 'img/cover2.png') {
        $FileNameNew = "uploads/" . $FileNameNew;
    }

    if (empty($topicSubject) || empty($topicCategory) || empty($postDetail) || empty($postDate) || empty($postSpeaker)) {

        header("Location: ../create-topic.php?error=emptyfields");
        exit();

    } else {

//        $sql  = "insert into topics(NULL, topic_subject, topic_cat,topic_detail,topic_date, topic_by,topic_speaker) "
//            . "values (?,?,?,?,?,?)";

        $sql = "insert into topics(topic_subject, topic_date, topic_cat, topic_by, topic_detail,topic_speaker,topic_img) "
            . "values (?,?,?,?,?,?,?)";

        $stmt = mysqli_stmt_init($conn);

        if (!mysqli_stmt_prepare($stmt, $sql)) {
            header("Location: ../create-topic.php?error=sqlerror");
            exit();
        } else {
//            mysqli_stmt_bind_param($stmt, "sississ", $topicSubject, $topicCategory, $postDetail, $postDate, $_SESSION['userId'], $postSpeaker);

            mysqli_stmt_bind_param($stmt, "sssisss", $topicSubject, $postDate, $topicCategory, $_SESSION['userId'], $postDetail, $postSpeaker, $FileNameNew);

            mysqli_stmt_execute($stmt);
            mysqli_stmt_store_result($stmt);

            header("Location: ../create-topic.php?operation=success");
        }
    }

    mysqli_stmt_close($stmt);
    mysqli_close($conn);

} else {
    header("Location: ../index.php");
    exit();
}