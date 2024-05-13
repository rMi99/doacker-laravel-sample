


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