<div id="badges" align="center">
  <h1>
  # SQL # БД # СУБД
  </h1>
</div>  

<div id="badges" align="center"> 
  <img src="https://cdn.ucberkeleybootcamp.com/wp-content/uploads/sites/106/2020/03/SQL-Coding-Class-San-Francisco-1.jpeg" width="300"/>
</div> 


---
## SQL - Structured Query Language -это язык структурированных запросов, использующийся для работы с базой данных:<br/>
извлечения, обновления, добавления и удаления информации из нее. <br/>


---
## БД -это набор информации, которая хранится упорядоченно в электронном виде. <br/>


### Типы БД:<br/>
- Реляционные <br/>
Данные представлены в виде таблиц и связей между ними. <br/> 
Пример: [MySQL](#mysql), [PostgreSQL](#postgresql).
- Нереляционные <br/>
Данные представлены в виде структур, отличных от таблиц. <br/>
Пример: [MongoDB](#mongodb).

### Базовые понятия БД:<br/>
 - Сущность – любой различимый объект (объект, который мы можем отличить от другого), информацию о котором необходимо хранить в базе данных. 
 - Связь – ассоциирование двух или более сущностей.
 - Атрибут – поименованная характеристика сущности (столбец таблицы).
 - Домен - тип данных, то есть множество допустимых значений.
 - Кортеж – строка таблицы-отношения.
 - Отношение — это таблица, состоящая из строк и столбцов.
 - Ключ – минимальный набор атрибутов, по значениям которых можно однозначно найти требуемый экземпляр сущности.
 - Первичный ключ - основной ключ, его значения не могут обновляться.
 - Внешний ключ – это атрибут подчиненного отношения, который является копией первичного (или уникального) ключа родительского отношения.


---
## СУБД - Система управления базами данных  – это комплекс программно-языковых средств, позволяющих создать базы данных и управлять данными.<br/>
### <a name="mysql"></a> MySQL
Одна из самых распространенных систем управления базами данных. Это реляционная СУБД.
### Особенности:
- Удобный доступ к базам данных.
- Корректное распределенное хранение данных на сервере.
- Быстрый поиск нужной информации в базе с помощью языка SQL.
- Идентификация и обработка отдельных данных, их преобразование и отправка.
- Создание, редактирование и удаление записей, которые есть в базе.
- Отправка транзакций — «пакетов» из нескольких запросов к базе.
- Множественный доступ к базе с разных устройств — например, из браузеров нескольких пользователей.
- Выдача разных прав доступа различным пользователям.
- Обеспечение безопасности данных: их защита, шифрование и контроль доступа.
- Возможность контролировать версии базы данных: делать бэкапы, обновлять базу или откатывать назад.
- Контроль состояния базы данных.


### <a name="postgresql"></a> PostgreSQL
PostgreSQL относится к объектно-реляционному типу, свободно распространяется и работает на языках SQL. 

### Особенности:
- Гибкий доступ к базам данных, их организация и хранение.
- Управление записями в базах данных: создание, редактирование и удаление, обновление версий и так далее.
- Просмотр нужной информации из базы по запросу, например для ее отправки на сайт или в интерфейс приложения.
- Отправка транзакций, последовательных запросов, собранных в подобие скрипта.
- Настройка и контроль доступа к той или иной информации, группировка пользователей по уровню прав.
- Контроль версий и организация одновременного доступа к базе из разных источников так, чтобы предотвратить сбои.
- Защита информации от возможных утечек и потерь.
- Контроль состояния базы в целом.


### <a name="mongodb"></a> MongoDB
Относится к NoSQL-системам. MongoDB — документоориентированная СУБД с открытым исходным кодом. Для хранения данных применяется JSON-подобный формат. В ней используется язык запросов, обеспечивается несколько видов поиска: географический, текстовый и поиск по графам. Способна выдерживать большие нагрузки благодаря горизонтальному масштабированию.

### Особенности:
- Хранение данных, которые не жестко связаны между собой.
- Управление данными: создание новых записей, их редактирование, удаление, контроль версий.
- Получение данных с помощью запросов без использования SQL.
- Отправка транзакций — последовательностей из нескольких запросов, которые выполняются один за другим.
- Быстрый, удобный и простой доступ к данным.
- Контроль доступа и поддержки безопасности данных.
- Выдача прав разным категориям пользователей.
- Поддержка базы в актуальном состоянии, в том числе при одновременном доступе с нескольких клиентов.

Нормализация – это набор стандартов проектирования данных, называемых нормальными формами. Существует 5 нормальных форм. Каждая следующая нормальная форма улучшает свойства предыдущей и сохраняет ее свойства.
Первая нормальная форма (1NF) требует, чтобы на любом пересечении строки и столбца находилось единственное значение, которое должно быть атомарным. Кроме того, в таблице, удовлетворяющей первой нормальной форме, не должно быть повторяющихся групп.
Вторая нормальная форма (2NF) - (1NF) + каждый неключевой атрибут полностью зависит от первичного ключа.
Второе правило нормализации требует, чтобы любой неключевой атрибут зависел от всего первичного ключа..
Третья нормальная форма (3NF)—(2NF)+ и каждый неключевой атрибут нетранзитивно зависит от первичного ключа.
Любой неключевой атрибут должен зависеть только от первичного ключа.
