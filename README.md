# Lesson3

setup.sh - інсталятор для Centos 8. Встановлює докер та докер-компоуз.

Для запуску:

  sudo chmod +x setup.sh
  
  ./setup.sh

wpinstall.sh - entrypoint для php56-apache, завантажує ынсталятор Novinano та запускає apache.

Доступ до інсталятора Novinano http://127.0.0.1/20180706_novinano_ts_976c110733e7eff58704180706072907_installer.php

Параметри підключення до mysql:
 MYSQL SERVER = mysql56-db,
 MYSQL DATABASE = wpbase,
 MYSQL USER = wpuser,
 MYSQL PASSWORD = wppassword.
