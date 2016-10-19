# **Projeto Scaffold para My Admin** #

### Índice de melhorias: ###
* Multi-linguagem  - cases.rb
* Tags - product.rb
* Galeria - gallery.rb
* Endereço - store.rb
* Redes sociais - store.rb
* SEO - todos os modelos

### Projeto iniciado com a configuração: ###

```
#!terminal

$ ruby -v
ruby 2.2.3p173 (2015-08-18 revision 51636) [x86_64-linux]

$ rails -v
Rails 4.2.4

$ mysql --version
mysql  Ver 14.14 Distrib 5.6.28, for debian-linux-gnu (x86_64)

```

### Como rodar: ###

Clone o repositório:

```
#!terminal
$  git clone https://bitbucket.org/grupofocusnetworks/myadmin_scaffold.git
```
Instale as gems:
```
#!terminal
$ bundle update
$ bundle install
```
Instale o Paperclip
```
https://github.com/thoughtbot/paperclip
```
Instale o ImageMagick
```
sudo apt-get install imagemagick
```

Edite o arquivo com as configurações do seu banco de dados:
sinduscon_sustentavel/config/database.yml
```username: ***
password: ***```

Instale o My_admin:
```
#!terminal
rails g my_admin:install
```

Crie as tabelas:
```
#!terminal
$ rake db:create
$ rake db:migrate
```

Inicie o servidor:
```
#!terminal
$ rails s
```

Acesse a url:
```
http://localhost:3000/
```