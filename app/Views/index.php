<!DOCTYPE html>
<html lang="en">
<meta charset="UTF-8">
<title>Nbu Project</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<?= link_tag($link); ?>
<?= link_tag($gstatic_link); ?>
<?= link_tag($font_link); ?>

<header>
    <nav class="text-center">
        <ul>
            <li><?= $olympiad ?></li>
        </ul>
    </nav>
</header>

<body>
    <div class="container">
        <?= $table->generate(); ?>
    </div>

    <footer>
        <p>Made by F86778 & F98223</p>
    </footer>

    <script src="script.js"></script>
</body>

</html>