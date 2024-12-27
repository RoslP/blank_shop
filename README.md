## http://89.111.169.5/

Запустить 

      -php artisan key:generate
      ====================================================
      -переименовать .example.env в .env и в него вписать:

      DB_CONNECTION=mysql
      DB_HOST=db
      DB_PORT=3306
      DB_DATABASE=laravel
      DB_USERNAME=root
      DB_PASSWORD=root
      ====================================================
      -docker compose -up -d
      
      -docker exec -it app bash
      ====================================================
      Внутри конейнера

      -composer install
      ====================================================
      Зайти на localhos:8080, ввести пароль root, логин root
      Создать пустую Базу - назвать её laravel
      Далее выполнить в базе laravel скрипт из корня папки проекта 
      "laravel (1).sql"
      ====================================================
      Зайти на localhos:8876 - откроется сайт

