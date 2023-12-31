<?php

session_start();
include_once 'includes/dbh.inc.php';

define('TITLE', "Create Workshop");

if (!isset($_SESSION['userId'])) {
    header("Location: login.php");
    exit();
}

include 'includes/HTML-head.php';
?>

<link rel="stylesheet" type="text/css" href="css/comp-creation.css">
</head>

<body>

<?php include 'includes/navbar.php'; ?>


<div class="bg-contact2" style="background-image: url('img/banner.png');">
    <div class="container-contact2">
        <div class="wrap-contact2">
            <form class="contact2-form" method="post" action="includes/create-topic.inc.php"
                  enctype="multipart/form-data">


                <span class="contact2-form-title" style="padding-bottom: 40px !important;">
						Create A Workshop
					</span>

                <label class="btn btn-primary position-absolute mt-2 ml-2">
                    Change Cover Image <input type="file" id="imgInp" name='dp' hidden>
                </label>
                <img class="cover-img " id="blah" src="#" style="padding-bottom: 30px">


                <span class="text-center">
                                        <?php
                                        if (isset($_GET['error'])) {
                                            if ($_GET['error'] == 'emptyfields') {
                                                echo '<h5 class="text-danger">*Fill In All The Fields</h5>';
                                            } else if ($_GET['error'] == 'sqlerror') {
                                                echo '<h5 class="text-danger">*Website Error: Contact admin to have the issue fixed</h5>';
                                            }
                                        } else if (isset($_GET['operation']) == 'success') {
                                            echo '<h5 class="text-success">*Workshop successfully created</h5>';
                                        }
                                        ?>
                                        </span>

                <?php
                $sql  = "select cat_id, cat_name from categories;";
                $stmt = mysqli_stmt_init($conn);

                if (!mysqli_stmt_prepare($stmt, $sql)) {
                    die('sql error');
                } else {
                    mysqli_stmt_execute($stmt);
                    $result = mysqli_stmt_get_result($stmt);

                    if (mysqli_num_rows($result) == 0) {
                        echo "<h5 class='text-center text-muted'>You cannot create a topic before the admin creates "
                            . "some categories</h5>";
                    } else {
                        ?>


                        <div class="wrap-input2 validate-input" data-validate="Name is required">
                            <input class="input2" type="text" name="topic-subject">
                            <span class="focus-input2" data-placeholder="Workshop Subject"></span>
                        </div>
                        <div class="wrap-input2 validate-input" data-validate="Speaker Name is required">
                            <input class="input2" type="text" name="topic-speaker">
                            <span class="focus-input2" data-placeholder="Speaker"></span>
                        </div>

                        <div class="wrap-input2 validate-input" data-validate="Name is required">
                            <small>Event Date</small>
                            <input class="input2" type="date" name="topic-date" PLACEHOLDER=".">

                        </div>


                        <label>Category</label>
                        <select class="form-control" name="topic-cat">
                            <?php
                            while ($row = mysqli_fetch_assoc($result)) {
                                echo '<option value=' . $row['cat_id'] . '>' . $row['cat_name'] . '</option>';
                            }
                            ?>
                        </select><br><br>


                        <div class="wrap-input2 validate-input" data-validate="Description is required">
                            <textarea class="input2" name="topic-detail"></textarea>
                            <span class="focus-input2" data-placeholder="Description"></span>
                        </div>
                        <div class="container-contact2-form-btn">
                            <div class="wrap-contact2-form-btn">
                                <div class="contact2-form-bgbtn"></div>
                                <button class="contact2-form-btn" type="submit" name="create-topic">
                                    Create Workshop
                                </button>
                            </div>
                        </div>


                        <?php
                    }
                }
                ?>

                <div class="text-center">
                    <br><br><a class="btn btn-light btn-lg btn-block" href="topics.php">
                        View Workshops</a>
                </div>
            </form>
        </div>
    </div>
</div>


<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/creation-main.js"></script>

<script>
    var dp = 'img/cover2.png';

    $('#blah').attr('src', dp);

    function readURL(input) {

        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#blah').attr('src', e.target.result);

            }

            reader.readAsDataURL(input.files[0]);
        }
    }

    $("#imgInp").change(function () {
        readURL(this);
    });


</script>

</body>
</html>
