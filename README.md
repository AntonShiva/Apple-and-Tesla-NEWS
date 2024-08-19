# NewsApp - Новости Apple и Tesla

NewsApp - это iOS-приложение, написанное на SwiftUI, которое отображает новости о компаниях Apple и Tesla. Пользователи могут просматривать последние новости, используя горизонтальную прокрутку, и получать детальную информацию о каждой статье. Приложение использует API для получения актуальной информации о новостях.

## Функциональность

- **Новости Apple:** Просмотр последних новостей о компании Apple.
- **Новости Tesla:** Просмотр последних новостей о компании Tesla.
- **Детальный просмотр статей:** Нажатие на статью открывает детализированный экран с подробной информацией.
- **Параллакс эффект для изображений:** Улучшенный пользовательский интерфейс с анимацией параллакса при прокрутке изображений.
- **Обновление новостей:** Встроенная поддержка pull-to-refresh для получения свежих данных.
  
## Скриншоты

![Главный экран](https://github.com/user-attachments/assets/e3d3d7fc-702e-4a9d-8eca-d2cfee6833f7)
![Детальный экран](https://github.com/user-attachments/assets/3efada25-0b2d-4ae1-9a48-1c5e36d95407)


## Технологии

- **SwiftUI:** Используется для построения пользовательского интерфейса и управления состоянием приложения.
- **Combine/Concurrency (Swift 5.5):** Асинхронные запросы данных через Swift Concurrency.
- **NewsAPI:** API для получения новостей, которое предоставляет данные в формате JSON.
- **URLSession:** Для сетевых запросов к API.
- **AsyncImage:** Асинхронная загрузка изображений в приложении.
- **Swift Concurrency:** Асинхронные операции для загрузки данных и улучшенной производительности.

## Архитектура

- **MVVM (Model-View-ViewModel):** Проект реализован с использованием архитектурного паттерна MVVM. 
  - **ViewModel:** Обрабатывает сетевые запросы и обновляет состояние приложения.
  - **View:** Отображает данные и реагирует на изменения состояния.

## Требования

- **iOS 18.0+**
- **NewsAPI ключ** (нужен для получения новостей с сервера)

