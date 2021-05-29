<!DOCTYPE html>
<html lang="en">
<meta charset="UTF-8">
<title>Nbu Project</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<?= link_tag($link); ?>
<?= link_tag($gstatic_link); ?>
<?= link_tag($font_link); ?>


<body>
    <header>
        <nav class="text-center">
            <ul>
                <li><a href=<?= $olympiad ?>>Олимпиади</a></li>
            </ul>
        </nav>
    </header>

    <div class="container">
        <?= $table->generate() ?>

        <?php
        print("<h3 class='text-center'>Задачи</h3>");
        print("<ul class='text-center'");
        for ($key = 2; $key < count($tasks); ++$key) {
            print("<li><a href=$path_tasks[$key]>$tasks[$key]</a></li>");
        }
        print("</ul>");
        ?>
    </div>

    <footer>
        <p>Made by F86778 & F98223</p>
    </footer>

    <script src="script.js"></script>
</body>

</html>