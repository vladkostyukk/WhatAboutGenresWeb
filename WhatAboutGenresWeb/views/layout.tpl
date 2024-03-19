<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ title }} - My Bottle Application</title>
    <link rel="stylesheet" type="text/css" href="/static/content/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/static/content/site.css" />
    <link rel="stylesheet" href="/static/content/styles.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap" rel="stylesheet">
    <script src="/static/scripts/modernizr-2.6.2.js"></script>
</head>

<body>
    <body >
    <div class="navigator">
        <span class="genres-text">What About Genres</span>
        <div class="dropdown">
            <a href="/genre" class="nav-button">ЖАНРЫ</a>
            <div class="genres-dropdown-content">
                <a href="https://www.last.fm/ru/tag/alternative+rock/artists">Альтернативный рок</a>
                <a href="https://101.ru/radio/channel/76">Блюз</a>
                <a href="https://www.last.fm/ru/tag/western">Вестерн</a>
                <a href="https://www.last.fm/ru/tag/gothic+rock/artists">Готик-рок</a>
                <a href="https://licensing.jamendo.com/ru/royalty-free-music/genres/electronic/dubstep">Дабстеп</a>
                <a href="#">...</a>
            </div>
        </div>
        <a href="/home" class="nav-button">ГЛАВНАЯ</a>
        <a href="/contact" class="nav-button">О НАС</a>
    </div>

    <div class="container body-content">
        {{!base}}
       
    </div>

    <script src="/static/scripts/jquery-1.10.2.js"></script>
    <script src="/static/scripts/bootstrap.js"></script>
    <script src="/static/scripts/respond.js"></script>

</body>
</html>