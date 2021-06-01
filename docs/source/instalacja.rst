Instalacja
===================

Wymagania
------------------

- `Docker <https://docs.docker.com/docker-for-windows/install>`_
- `Docker compose <https://docs.docker.com/compose>`_

Uruchomienie aplikacji
-----------------------

1. Proszę sprawdzić, czy docker oraz docker compose zostały pomyślnie zainstalowane

.. code-block:: bash

    docker version
    docker-compose version

2. Za pomocą lini komend proszę wejść do katalogu, w którym znajduje się aplikacja
3. Proszę zbudować obrazy aplikacji poleceniem:

.. code-block:: bash

    docker-compose build

4. Proszę uruchomić kontenery poleceniem:

.. code-block:: bash

    docker-compose up
