# Lesson3

Vagrantfile - конфігурація віртуальної машини з стартовими скриптами для повністю автоматичного розгортання (інсталює git, клонує репозитарій, збирає контейнери та запускає їх. )

setup.sh - інсталятор для Centos 8. Встановлює докер та докер-компоуз.

Для запуску:

  sudo chmod +x setup.sh
  
  ./setup.sh

wpinstall.sh - entrypoint для контейнера php56-apache, завантажує інсталятор Novinano та запускає apache.

Доступ до інсталятора Novinano http://127.0.0.1/20180706_novinano_ts_976c110733e7eff58704180706072907_installer.php

Параметри підключення до mysql:
 MYSQL SERVER = mysql56-db,
 MYSQL DATABASE = wpbase,
 MYSQL USER = wpuser,
 MYSQL PASSWORD = wppassword.
