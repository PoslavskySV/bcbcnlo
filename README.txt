# Как запустить все с Redberry

## Prerequirements

    1. Java 7+ (проверка `java -version`)
    2. Groovy 2+ (проверка `groovy -version`)
    3. FeynArts доступный по Get["FeynArts`FeynArts`"]
    4. PackageX доступный по Get["X`"]


## Генерируем диаграмьы:

Это делается скриптом `GenerateDiagrams.m`:

    MathematicaScript -script GenerateDiagrams.m gamma 1

у кого старая математика -- вместо `MathematicaScript` надо использовать `MathKernlel`. Здесь `gamma` обозназначает что будет фотон (возможно использовать `Z` для Z-бозона) и 1 означает одну петлю (0 соответственно для tree level). При этом все диаграммы (в данном случае 210) запишутся в папку `feynarts/`.


## Запускаем redberry:

    ./redberry.sh CalcAllAmps.groovy

Скрипт `CalcAllAmps.groovy` посчитает каждую диаграмму (трейсы и PaVe редукцию) и запишет _скалярные_ ответы в папку `amps/`.


## Запускаем FIRE и выписываем аналитические выражения для интегралов:

    MathematicaScript -script ReduceToMasters.m

Этот скрипт соответственно: a) используя `Apart` Фенга сделает partial fractioning б) используя FIRE редуцирует входящие в амлитуду интегралы к мастерам в) приведет мастера к стандартному виду (A, B, C функциям) г) используя PackageX сведет мастера к аналитическим выражениям. Результат для сходящейся и расходящейся частей запишется в `amps/FinitPart.m` и `amps/DivergentPart.m`.