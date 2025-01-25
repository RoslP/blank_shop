## http://89.111.169.5/
## Сайт может не работать если аренда vps не проплачена ¯\_(ツ)_/¯ 

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

![image](https://github.com/user-attachments/assets/2cd665e6-7627-49a6-bcbf-ba025c78a00a)

![image](https://github.com/user-attachments/assets/492c2c40-77fd-463c-b299-40e8d14a2ba7)
