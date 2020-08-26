# 构建可缩放和缓存图片的nginx 镜像

    注意：对于大流量和大尺寸的图片需求，不建议使用该镜像，实时处理，量大影响性能
    
## Docker Image

* exposes port 80
* cache space pointing to /cache

## 构建

    docker build -t nginx:image . 

## 使用

    docker run -p 80:80 -name my-image-nginx -v /my/images:/var/www/images nginx:image 
    
## 示例
    
    http://localhost/test.jpg?w=350&h=350

## 参数

| 参数 | 描述 | 是否可选
|---|---|---|
| w | 指定宽度 | 可选
| h | 指定高度 | 可选
| q | 压缩质量(0-100) | 可选