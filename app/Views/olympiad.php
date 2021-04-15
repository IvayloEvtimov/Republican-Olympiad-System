<!DOCTYPE html>
<html lang="en">
<meta charset="UTF-8">
<title>Nbu Project</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<?= link_tag($link); ?>
<?= link_tag($gstatic_link); ?>
<?= link_tag($font_link); ?>


<body>
    <h2 class="center">Отбори</h2>
    <div class="container">
        <?= $table->generate() ?>
    </div>


    <script src="script.js"></script>
</body>

</html>