% rebase('layout.tpl', title=title, year=year)

<title>Изучайте жанры</title>

<body class="genres-background">

    <div class="name-header">
        <span class="name-text">SHOEGAZE</span>
        <span class="name-reference" href="http://127.0.0.1:3000/pages/home_page.html">Узнать историю жанра</span>
    </div>
    <div class="cards-container">
        <div class="artist-inner" onclick="redirectTo1()">
            <div class="artist-wrap">
                <img loading="lazy" width="200px" height="220px" 
                src="https://lastfm.freetls.fastly.net/i/u/ar0/ae3904c70c8c30a7bc93bf9e81f5f7d5.jpg">
            </div>
            <div class="artist-info">
                <h3>quannnic</h3>
                <span>ИСПОЛНИТЕЛЬ</span>
            </div>
        </div>

        <script>
            function redirectTo1() {
                window.location.href = 'https://www.last.fm/ru/music/quannnic';
            }
        </script>

        <div class="artist-inner" onclick="redirectTo2()">
            <div class="artist-wrap">
                <img loading="lazy" width="200px" height="220px" 
                src="https://i.scdn.co/image/ab6761610000e5ebeff2887646a6d565d10e8322">
            </div>
            <div class="artist-info">
                <h3>thornskin</h3>
                <span>ИСПОЛНИТЕЛЬ</span>
            </div>
        </div>  

        <script>
            function redirectTo2() {
                window.location.href = 'https://www.last.fm/ru/music/thornskin';
            }
        </script>

        <div class="artist-inner" onclick="redirectTo3()">
            <div class="artist-wrap">
                <img loading="lazy" width="200px" height="220px" 
                src="https://i.scdn.co/image/ab6761610000517415be870d92e664bfbf5d0192">
            </div>
            <div class="artist-info">
                <h3>Scarlet House</h3>
                <span>ИСПОЛНИТЕЛЬ</span>
            </div>
        </div>  

        <script>
            function redirectTo3() {
                window.location.href = 'https://www.last.fm/ru/music/Scarlet+House';
            }
        </script>

        <div class="artist-inner" onclick="redirectTo4()">
            <div class="artist-wrap">
                <img loading="lazy" width="200px" height="220px" 
                src="https://sun9-71.userapi.com/impg/jpUT6CSJ987Co5WigznBWHsESgL6JJX7nTGkIg/x1J06jw4GKE.jpg?size=378x385&quality=96&sign=67c4c4d257fc0122802092bed15cd0dd&type=album">
            </div>
            <div class="artist-info">
                <h3>greedi</h3>
                <span>ИСПОЛНИТЕЛЬ</span>
            </div>
        </div>  

        <script>
            function redirectTo4() {
                window.location.href = 'https://rateyourmusic.com/artist/greedi';
            }
        </script>

        <div class="artist-inner" onclick="redirectTo5()">
            <div class="artist-wrap">
                <img loading="lazy" width="200px" height="220px" 
                src="https://i.scdn.co/image/ab67616d00001e02a2d118bf11a33ef77b3a6bc9">
            </div>
            <div class="artist-info">
                <h3>xojira</h3>
                <span>ИСПОЛНИТЕЛЬ</span>
            </div>
        </div>  

        <script>
            function redirectTo5() {
                window.location.href = 'https://www.last.fm/music/x%C3%B3jira';
            }
        </script>

        <div class="artist-inner" onclick="redirectTo6()">
            <div class="artist-wrap">
                <img loading="lazy" width="200px" height="220px" 
                src="https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da84636ab3bc126f72172f89313e">
            </div>
            <div class="artist-info">
                <h3>Novulent</h3>
                <span>ИСПОЛНИТЕЛЬ</span>
            </div>
        </div>  

        <script>
            function redirectTo6() {
                window.location.href = 'https://www.last.fm/music/Novulent';
            }
        </script>

    </div>   
</body>
