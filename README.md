# Nginx: Real time image resizing and caching

## Docker Image

* exposes port 80
* cache space pointing to /cache

### Usage

```docker run -v /my/images/path:/var/www/images lany192/nginx-images```

* http://localhost/test.jpg?w=350

| Query-parameter | Description |
|---|---|
| w | Resized width in pixels |
| h | Resized height in pixels |
| q | Compression percentage |

All parameters are optional.