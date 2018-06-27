Printerfacts
===

```sh
$ pacman -S nginx openbsd-netcat
```

```sh
$ cat /etc/nginx/conf.d/printer.conf
server {
    ...
    location ^/(print|printer|printers)/ {
        add_header Content-Type text/plain;
        proxy_pass http://127.0.0.1:9991;
    }
}
```

```sh
$ ./print &
$ curl localhost/printers
Printers live longer when they stay indoors.
```
