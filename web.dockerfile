FROM nginx:1.10

# 这样设置web服务器读取我们代码目录里面的配置文件vhost.conf
ADD vhost.conf /etc/nginx/conf.d/default.conf