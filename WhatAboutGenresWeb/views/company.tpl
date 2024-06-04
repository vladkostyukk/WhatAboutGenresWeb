% rebase('layout.tpl', title=title, year=year)

<div class="contacts-bg"></div> <!-- Установка фона у страницы -->

<h1 class="contacts-title">Партнерские компании</h1> <!-- Заголовок страницы -->

<div class="contacts-title-bg"></div> <!-- Фон заголовка -->

<div class="contacts-authors">
  %with open('static/company/company_list.txt') as f:
    %name = f.readline().strip()
    %phone = f.readline().strip()
    %desc = f.readline().strip()
    %for line in f:
      <div class="contacts-author"> 
        <div class="contacts-author-title">
          {{name}}
        </div>
        <div class="contacts-author-content"> 
          Телефон:&nbsp;<span>{{phone}}</span><br>
          Описание:&nbsp;<span>{{desc}}</span>
        </div>
      </div>
      %name = line.strip()
      %phone = f.readline().strip()
      %desc = f.readline().strip()
  %end
  <div class="contacts-author"> 
        <div class="contacts-author-title">
          {{name}}
        </div>
        <div class="contacts-author-content"> 
          Телефон:&nbsp;<span>{{phone}}</span><br>
          Описание:&nbsp;<span>{{desc}}</span>
        </div>
      </div>
</div>

<h3 class="contacts-title2"> Добавить компанию </h3>
<div class="mb-3">
    <label for="exampleFormControlInput1" class="company-form-tittle">Наименование организации</label>
    <input name="NAME" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Наименование организации">
    <label for="exampleFormControlInput2" class="company-form-tittle">Телефон</label>
    <input type="phone" class="form-control" name="PHONE" id="exampleFormControlInput2">
    <label for="exampleFormControlInput3" class="company-form-tittle">Описание</label>
    <input type="text" class="form-control" id="exampleFormControlInput3" placeholder="Описание" name="DESC">
    <button id="btn-add" type="submit" class="company-floating-button">Добавить</button>
</div>

<div class="contacts-title-bg2"></div>
<script src="/static/scripts/company.js"></script>