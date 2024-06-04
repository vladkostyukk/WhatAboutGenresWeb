% rebase('layout.tpl', title=title, year=year)

<title>Отзывы</title>

<body class="genres-background">

    <div class="name-header">
        <span class="name-text">ОТЗЫВЫ</span>
        <span class="name-reference" href="http://127.0.0.1:3000/pages/home_page.html">РЕЦЕНЗИИ ПОЛЬЗОВАТЕЛЕЙ</span>
    </div>
    <form class="input-form" style="margin-top: 100px">
        <span style="margin-top: 20px">Напишите свой отзыв</span>
        <div class="inputs">
            <input type="text" class="text-form" placeholder="Ваш никнейм">
            <textarea class="text-form"></textarea>
            <input class="text-form" type="date">
            <input type="submit" class="confirm-button" value="Разместить">
        </div>
    </form>
</body>