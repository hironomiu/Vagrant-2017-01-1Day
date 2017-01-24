# 2017-1Day用Vagrant環境

## ベースOS
CentOS7

## Install
```
$ git clone ~
$ cd Vagrant-2017-01-1Day
$ vagrant up 
```

## ユーザ
### OS
|ユーザ|パスワード|
|:-:|:-:|
|root|puppet|
|vagrant|vagrant|
|demouser|demouser|

### MySQL
|ユーザ|パスワード|
|:-:|:-:|
|root|vagrant|
|demouser|demopass|

## Login
vagrant

```
$ vagrant ssh
```

vagrantからsudoでrootに遷移可能

```
$ sudo su -
```

demouser アプリケーションユーザ
```
$ vagrant ssh
$ sudo su - demouser
```

