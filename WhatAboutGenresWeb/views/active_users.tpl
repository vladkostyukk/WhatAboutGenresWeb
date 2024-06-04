% rebase('layout.tpl', title=title, year=year)

<div class="background-main"></div>

<div class="div-active-users">
    <div>
        <form id="contact-form" action="/active_users" method="post">
            <h3>Напишите нам!</h3>

            <h4>Логин</h4>
            <input type="text" name="login" placeholder="От 3 символов" size="15" minlength="3" maxlength="45" required>

            <h4>Email</h4>
            <input type="text" name="email" placeholder="example@example.com" size="50" maxlength="45" required>

            <h4>Номер телефона</h4>
            <input type="text" name="phoneNumber" placeholder="+7 (XXX) XXX-XX-XX" size="18" maxlength="45" required>

            <h4>Сообщение</h4>
            <textarea name="text" placeholder="От 7 символов" cols="50" rows="2" minlength="7" maxlength="75" required></textarea> 

            <input class="btn btn-default" type="submit" value="Отправить" required>

            <p id="message"></p>
        </form>
    </div>

    <div class="div-list">
        <h1>Список активных пользователей</h1> 
        <table id="table-active-user"/>
    </div>
</div>

<script>
    window.onload = function() {
        tableActiveUser();
    };

    document.getElementById('contact-form').onsubmit = async function(event) {
        event.preventDefault();
    
        let form = new FormData(this);
        let response = await fetch('/active_users', {
            method: 'POST',
            body: form
        });
        let data = await response.json();

        if (response.ok) {
            // Если успешно, очистить сообщение об ошибке и вывести сообщение об успехе
            document.getElementById('message').style.display = 'block';
            document.getElementById('message').textContent = data.response;
            tableActiveUser();
        } else {
            // Если есть ошибки, вывести их в поле сообщения
            document.getElementById('message').style.display = 'block';
            document.getElementById('message').textContent = data.response;
        }
    };

    async function tableActiveUser() {
        let response = await fetch('/get_list', {
            method: 'GET'
        });

        if (response.ok) {
            let data = await response.json();
            let table = document.getElementById('table-active-user');
            table.innerHTML = `<tr><th>Пользователь</th><th>Количество сообщений</th></tr>`;
    
            for (let [key, value] of Object.entries(data)) {
                table.innerHTML += `<tr><td>${key}</td><td>${value}</td></tr>`;
            }
        }
    }
</script>