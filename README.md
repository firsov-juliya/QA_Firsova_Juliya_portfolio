# QA_Firsova_Juliya_portfolio

# Портфолио тестировщика | Фирсова Юлия

## О себе
Начинающий тестировщик программного обеспечения.  
Завершила обучение по программе профессиональной переподготовки «Информационные технологии» (СГТУ имени Гагарина Ю.А.).  
В портфолио представлены реальные проекты с полным циклом тестирования: от анализа требований до финального отчета.

**Навыки:**
- Ручное тестирование (функциональное, регрессионное, UI/UX)
- Составление тестовой документации (чек-листы, тест-кейсы, баг-репорты, тестовые отчеты)
- Тестирование API (Postman)
- SQL (написание запросов)
- HTML/CSS, базовые знания JavaScript
- Инструменты: Jira, DevTools, Git, GitHub

---

## Проекты

### 📁 [Тестирование формы регистрации culture.ru](Firsova_testing_culture.ru/)
Функциональное тестирование формы регистрации федерального портала «Культура.РФ».

**Что сделано:**
- Составлен чек-лист на 17 проверок
- Разработано 26 тест-кейсов (позитивные + негативные)
- Найдено и оформлено 2 баг-репорта (включая критический)
- Подготовлен финальный тестовый отчет с выводами
- Дополнительно: сверстана страница регистрации (HTML/CSS/JS) для демонстрации понимания фронтенда

**Результаты:**
| Показатель | Значение |
|------------|----------|
| Чек-лист | 17 проверок (15 Passed, 2 Failed) |
| Тест-кейсы | 26 (позитивные + негативные) |
| Найдено багов | 2 (Critical + Major) |

**Артефакты:**
- [Чек-лист](Firsova_testing_culture.ru/1_registration_form_checklist.xlsx)
- [Позитивные тест-кейсы](Firsova_testing_culture.ru/2_positive_test_cases.xlsx)
- [Негативные тест-кейсы](Firsova_testing_culture.ru/3_negative_test_cases.xlsx)
- [Баг-репорты](Firsova_testing_culture.ru/4_bug-report.xlsx)
- [Финальный отчет](Firsova_testing_culture.ru/5_test_report_final.xlsx)


---

### 📁 [HTML/CSS верстка](Firsova_HTML_CSS/registration_form/)
Учебные проекты по верстке веб-страниц. Демонстрируют понимание структуры HTML, стилей CSS и основ адаптивного дизайна.

**Файлы:**
- [Форма регистрации (HTML)](Firsova_HTML_CSS/registration_form/index.html) — страница регистрации
- [Стили формы](Firsova_HTML_CSS/registration_form/style.css) — CSS для формы
- [Скрипт формы](Firsova_HTML_CSS/registration_form/index.js) — JavaScript валидация
- [Страница афиши (HTML)](Firsova_HTML_CSS/registration_form/success.html) — пример верстки карточек событий
- [Стили афиши](Firsova_HTML_CSS/registration_form/success.css) — CSS для страницы афиши
- [Скрипт афиши](Firsova_HTML_CSS/registration_form/success.js) — JavaScript для модального окна

**Посмотреть в браузере (GitHub Pages):**  
[Открыть демо-страницу](https://firsov-juliya.github.io/QA_Firsova_Juliya_portfolio/Firsova_HTML_CSS/registration_form/index.html)

---

### 📁 [Тестирование API (Postman)](Firsova_Postmsn_tests/)
Коллекции запросов для тестирования API. Демонстрируют навыки работы с Postman, создание коллекций, переменных, тестов.

**PetStore API (Swagger):**
- [Коллекция запросов](Firsova_Postmsn_tests/PetStore/PetStore.postman_collection.json) — тестирование питомцев, заказов, пользователей
- [Переменные окружения](Firsova_Postmsn_tests/PetStore/PREPRODPetStope.postman_environment.json) — настройка окружения для PetStore

**JSONPlaceholder API:**
- [Экспорт коллекции (HTML)](Firsova_Postmsn_tests/Placeholder/Placeholder%20-%20Soft%20Miari%27s%20Workspace.html) — экспортированная коллекция в HTML
- [Переменные окружения](Firsova_Postmsn_tests/Placeholder/Placeholder.postman_environment.json) — настройка для JSONPlaceholder

**Что тестировалось:**
- Swagger Petstore (https://petstore.swagger.io)
- JSONPlaceholder (https://jsonplaceholder.typicode.com)

---

### 📁 [SQL запросы](Firsova_SQL/)
Примеры SQL-запросов, демонстрирующие навыки работы с базами данных.

**Файлы:**
- [Все SQL запросы](Firsova_SQL/Firsova_SQL_test.sql) — файл содержит примеры:
  - SELECT с условиями (WHERE, AND, OR)
  - JOIN (INNER, LEFT, RIGHT)
  - GROUP BY и агрегатные функции (COUNT, AVG, SUM)
  - Подзапросы (IN, EXISTS)
  - Сортировка и ограничение (ORDER BY, LIMIT)

**Примеры запросов из файла:**
```sql
-- Выборка пользователей старше 30 лет
SELECT name, age FROM users WHERE age > 30;

-- Объединение таблиц заказов и пользователей
SELECT users.name, orders.total 
FROM users 
INNER JOIN orders ON users.id = orders.user_id;

-- Количество заказов по пользователям
SELECT user_id, COUNT(*) as order_count 
FROM orders 
GROUP BY user_id 
HAVING COUNT(*) > 2;


## Контакты
- **💻 GitHub:**   [github.com/firsov-juliya](https://github.com/firsov-juliya)
- **💬 Telegram:** [@F_Yulija](https://t.me/F_Yulija)
- **📞 Телефон:**  [ 8 927 120 47 24 ](tel:+79271204724)
- **📧 Email:**    [firsova.juliya@yandex.ru](mailto:firsova.juliya@yandex.ru)
- **📄 Резюме:**   [Скачать PDF](Firsova_Yuliya_CV.pdf) 