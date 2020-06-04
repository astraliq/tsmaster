<!DOCTYPE html>
<html lang="ru">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="css/main.css" />
        <link href="https://fonts.googleapis.com/css2?family=PT+Sans:wght@200;300;400;700&display=swap" rel="stylesheet" />
        <title>{{ content.siteName | raw }}</title>
    </head>

    <body>
        <div class="top-line"></div>
        {% include 'header.tpl' %}

        <h1>404</h1>
        <h2>Страница не найдена.</h2>

        {% include 'footer.tpl' %}
        <script defer src="js/jquery-3.4.1.js"></script>
        <script defer src="js/jquery.maskedinput.js"></script>
        <script defer src="js/script.js"></script>
    </body>
</html>
