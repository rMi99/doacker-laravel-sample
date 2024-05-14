
![image](https://github.com/rMi99/doacker-laravel-sample/assets/67881312/680983ce-c6ef-42f5-ab9c-21903ecb7530)


project-root/
│
├── app/
│   ├── [Your Laravel application files]
│   └── ...
│
├── docker/
│   ├── nginx/
│   │   ├── Dockerfile
│   │   └── nginx.conf
│   │
│   ├── php/
│   │   └── Dockerfile
│   │
│   └── docker-compose.yml
│
├── database/
│   ├── migrations/
│   ├── seeds/
│   └── ...
│
├── resources/
│   ├── js/
│   ├── sass/
│   └── ...
│
├── .env
├── composer.json
├── package.json
├── webpack.mix.js
├── makefile
└── ...


```docker-compose exec app composer install```


```docker-compose exec app php artisan migrate --seed```

```docker-compose exec app npm install  ```

```docker-compose exec app npm run dev```
