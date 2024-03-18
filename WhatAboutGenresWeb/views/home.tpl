% rebase('layout.tpl', title='Home Page', year=year)

<!-- Фоновое изображение -->
<div class="background-main"></div>

<!-- Заголовок страницы -->
<div>
    <h1 class="text-main">Узнайте больше о жанрах музыки</h1>
</div>

<!-- Слайд-шоу изображений (карусель) -->
<div class="border-carousel">
    <div id="carouselExampleIndicators" class="carousel carousel-fade slide my-carousel" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
                aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="static/images/main-carousel-1.jpg" class="d-block w-100" alt="Исследуйте любой жанр">
            </div>
            <div class="carousel-item">
                <img src="static/images/main-carousel-2.jpg" class="d-block w-100" alt="Узнайте историю артистов">
            </div>
            <div class="carousel-item">
                <img src="static/images/main-carousel-3.jpg" class="d-block w-100" alt="Альбомы для себя">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Предыдущий</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
            data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Следующий</span>
        </button>
    </div>
</div>