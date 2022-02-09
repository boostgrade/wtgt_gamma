# where_to_go_today

Требования к приложению: https://r3tam.notion.site/Where-To-Go-Today-d1a567616cf342dbaf9c8f00c6f1863d
Дизайн: https://www.figma.com/file/8wRDN0M82bIuRZS6Uomv8X/Where-to-go-today%3F?node-id=6%3A594
АПИ: https://github.com/boostgrade/wtgt_api

Если нет доступа - пишем ментору.

## Assets

Ассеты кладем в папку assets, по папкам фич.

The `assets/images` directory contains [resolution-aware
images](https://flutter.dev/docs/development/ui/assets-and-images#resolution-aware).

## Localization

В проекте локализация ведется через  `lib/src/localization` с подключенным intl плагином.

Доп. информация:
[Internationalizing Flutter
apps](https://flutter.dev/docs/development/accessibility-and-localization/internationalization)

## Golden tests

To regenerate goldens to capture your new reference images use command:

```bash
flutter test --update-goldens --tags=golden
```

## Code generation

To start code generation:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```
