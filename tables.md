# Описание сущностей
(имя поля, тип, ограничения, связь с другими сущностями)

## Аккаунт (Account)
|Имя поля|Тип|Ограничения|Описание|
|:-----:|:--:|:---------:|:------:|
|id|INT|PK, NOT NULL, AUTO INCREMENT, UNIQUE|Первичный ключ|
|email|VARCHAR(100)|NOT NULL, UNIQUE|Первичный ключ|
|password|VARCHAR(30)|NOT NULL|Пароль аккаунта|
|role_id|INT|FK, NOT NULL|Внешний ключ на роль пользователя|

## Посетитель (Visitor)
|Имя поля|Тип|Ограничения|Описание|
|:-----:|:--:|:---------:|:------:|
|id|PK|AUTO INCREMENT, NOT NULL, UNIQUE|Первичный ключ|
|name|VARCHAR(200)|NOT NULL|ФИО Посетителя|
|nickname|VARCHAR(20)|NOT NULL, UNIQUE|Псевдоним|
|date_of_birth|DATE|NOT NULL|Дата рождения|
|account_id|INT|FK, NOT NULL|Внешний ключ на аккаунт|

## Программист (Programmer)
|Имя поля|Тип|Ограничения|Описание|
|:-----:|:--:|:---------:|:------:|
|id|INT|PK, AUTO INCREMENT, NOT NULL, UNIQUE|Первичный ключ|
|name|VARCHAR(200)|NOT NULL|ФИО Программиста|
|alias|VARCHAR(100)|NULL|Псевдоним Программиста|
|date_of_birth|DATE|NOT NULL|Дата рождения|
|account_id|INT|FK, NOT NULL|Внешний ключ на аккаунт|

## Группа (Group)
|Имя поля|Тип|Ограничения|Описание|
|:-----:|:--:|:---------:|:------:|
|id|INT|PK, AUTO INCREMENT, NOT NULL, UNIQUE|Первичный ключ|
|title|VARCHAR(100)|NOT NULL|Название группы|
|founding_date|DATE|NOT NULL|Дата основания|
|number_of_programmers|INT|NOT NULL|Количество Программистов в группе|
|account_id|INT|FK, NOT NULL|Внешний ключ на аккаунт|

## Связанные Аккаунты (Related Accounts)
|Имя поля|Тип|Ограничения|Описание|
|:-----:|:--:|:---------:|:------:|
|id|INT|PK, AUTO INCREMENT, NOT NULL, UNIQUE|Первичный ключ|
|Account_id|INT|FK, NOT NULL, UNIQUE|Внешний ключ на Аккаунт|
|Programmer_id|INT|FK, NOT NULL, UNIQUE|Внешний ключ на Программиста|
|Group_id|INT|FK, NOT NULL, UNIQUE|Внешний ключ на Группу|

## Инди-игра (Single Programm)
|Имя поля|Тип|Ограничения|Описание|
|:------:|:-:|:---------:|:------:|
|id|INT|PK, AUTO INCREMENT, NOT NULL, UNIQUE|Первичный ключ|
|title|VARCHAR(100)|NOT NULL|Название программы|
|date_of_writing|DATE|NOT NULL|Дата записи программы|

## Серия (Series)
|Имя поля|Тип|Ограничения|Описание|
|:------:|:-:|:---------:|:------:|
|id|INT|PK, AUTO INCREMENT, NOT NULL, UNIQUE|Первичный ключ|
|title|VARCHAR(100)|NOT NULL|Название Серияа|
|date_of_writing|DATE|NOT NULL|Дата записи Серияа|

## Жанр (Genre)
|Имя поля|Тип|Ограничения|Описание|
|:------:|:-:|:---------:|:------:|
|id|INT|PK, AUTO INCREMENT, NOT NULL, UNIQUE|Первичный ключ|
|title|VARCHAR(100)|NOT NULL|Название жанра|


## Сертификация (Sertification)
|Имя поля|Тип|Ограничения|Описание|
|:------:|:-:|:---------:|:------:|
|id|INT|PK, AUTO INCREMENT, NOT NULL, UNIQUE|Первичный ключ|
|title|VARCHAR(100)|NOT NULL|Тип|
|number_of_sales|INT|NOT NULL|Число продаж для соответствия категории|

## Роли (Roles)
|Имя Поля | Тип | Ограничения | Описание |
|:---:|:---:|:---:|:---:|
| id | INT | PK, AUTO INCREMENT, NOT NULL, UNIQUE | Первичный ключ |
| title | VARCHAR(50) | NOT NULL | Название роли |

## Права (Permissions)
|Имя поля|Тип|Ограничения|Описание|
|:------:|:-:|:---------:|:------:|
|id|INT|PK, AUTO INCREMENT, NOT NULL, UNIQUE|Первичный ключ|
|title|VARCHAR(50)|NOT NULL|Название роли|

## Роли и Права (Roles & Permissions)
|Имя поля|Тип|Ограничения|Описание|
|:------:|:-:|:---------:|:------:|
|id|INT|PK, AUTO INCREMENT, NOT NULL, UNIQUE|Первичный ключ|
|role_id|INT|FK, NOT NULL|Внешний ключ на Роль|
|permission_id|INT|FK, NOT NULL|Внешний ключ на Право|

## Логи (Logs)
|имя поля | тип | ограничения | описание |
|:---:|:---:|:---:|:---:|
| id | INT | AUTO INCREMENT, NOT NULL,  UNIQUE | Первичный ключ |
| account_id | INT | FK, NOT NULL | внешний ключ на Аккаунт |
| type | VARCHAR(50) | NOT NULL | тип лога(CREATE/UPDATE/DELETE) |
| representation | VARCHAR(255) | NOT NULL | строковое представление изменённого кортежа |
|date_of_create|DATE|NOT NULL|Дата создания|

## Программист и Программа (Programmer & Programm)
|имя поля | тип | ограничения | описание |
|:---:|:---:|:---:|:---:|
|id|INT|PK, AUTO INCREMENT, NOT NULL, UNIQUE| Первичный ключ|
|programmer_id|INT|FK, NOT NULL|Внешний ключ на Программиста|
|Programm_id|INT|FK, NOT NULL|Внешний ключ на Песню|

## Группа и Программа (Group & Programm)
|имя поля | тип | ограничения | описание |
|:---:|:---:|:---:|:---:|
|id|INT|PK, AUTO INCREMENT, NOT NULL, UNIQUE| Первичный ключ|
|group_id|INT|FK, NOT NULL|Внешний ключ на Группу|
|Programm_id|INT|FK, NOT NULL|Внешний ключ на Песню|

## Серия и Жанр (Series & Genre)
|имя поля | тип | ограничения | описание |
|:---:|:---:|:---:|:---:|
|id|INT|PK, AUTO INCREMENT, NOT NULL, UNIQUE| Первичный ключ|
|Series_id|INT|FK, NOT NULL|Внешний ключ на Серия|
|genre_id|INT|FK, NOT NULL|Внешний ключ на Жанр|

## Программа и Жанр (Programm & Genre)
|имя поля | тип | ограничения | описание |
|:---:|:---:|:---:|:---:|
|id|INT|PK, AUTO INCREMENT, NOT NULL, UNIQUE| Первичный ключ|
|Programm_id|INT|FK, NOT NULL|Внешний ключ на Песню|
|genre_id|INT|FK, NOT NULL|Внешний ключ на Жанр|

## Программист и Серия (Programmer & Series)
|имя поля | тип | ограничения | описание |
|:---:|:---:|:---:|:---:|
|id|INT|PK, AUTO INCREMENT, NOT NULL, UNIQUE| Первичный ключ|
|programmer_id|INT|FK, NOT NULL|Внешний ключ на Программист|
|Series_id|INT|FK, NOT NULL|Внешний ключ на Серия|

## Группа и Серия (Group & Series)
|имя поля | тип | ограничения | описание |
|:---:|:---:|:---:|:---:|
|id|INT|PK, AUTO INCREMENT, NOT NULL, UNIQUE| Первичный ключ|
|group_id|INT|FK, NOT NULL|Внешний ключ на Группу|
|Series_id|INT|FK, NOT NULL|Внешний ключ на Серия|

## Группа и Программист (Group & Programmer)
|имя поля | тип | ограничения | описание |
|:---:|:---:|:---:|:---:|
|id|INT|PK, AUTO INCREMENT, NOT NULL, UNIQUE| Первичный ключ|
|group_id|INT|FK, NOT NULL|Внешний ключ на Группу|
|programmer_id|INT|FK, NOT NULL|Внешний ключ на Программиста|

## Серия и Сертификация (Series & Sertification)
|имя поля | тип | ограничения | описание |
|:---:|:---:|:---:|:---:|
|id|INT|PK, AUTO INCREMENT, NOT NULL, UNIQUE| Первичный ключ|
|Series_id|INT|FK, NOT NULL|Внешний ключ на Серияа|
|sertification_id|INT|FK, NOT NULL|Внешний ключ на Сертификацию|

## Программа и Сертификация (Programm & Sertification)
|имя поля | тип | ограничения | описание |
|:---:|:---:|:---:|:---:|
|id|INT|PK, AUTO INCREMENT, NOT NULL, UNIQUE| Первичный ключ|
|Programm_id|INT|FK, NOT NULL|Внешний ключ на Песню|
|sertification_id|INT|FK, NOT NULL|Внешний ключ на Сертификацию|


связи многие-ко многим для которых были созданы промежуточные таблицы:

1. у программы может быть много авторов. У Программиста может быть много песен 
2. У программы может быть много авторов в качестве групп. У группы может быть много песен 
3. У серии может быть много жанров. У одного жанра может быть много серий 
4. У Программиста может быть много серий. У одной серии может быть много авторов (Программистов) 
5. У группы может быть много серий. У одной серии может быть много групп (в качестве авторов) 
6. У программы может быть много жанров. У одного жанра может быть много песен 
7. У группы может быть много участников. У программиста может быть много групп 
8. У программы может быть много разных сертификаций. У одной сертификации может быть много песен 
9. У серии может быть много разных сертификаций. У одной сертификации может быть много серий 