server {
    listen      %ip%:%web_port%;
    server_name %domain_idn% %alias_idn%;
    include %home%/%user%/conf/web/*nginx.%domain_idn%.conf_letsencrypt;
    location / {
        rewrite ^(.*) https://%domain_idn%$1 permanent;
    }
}
