# getx_study

## Get을 사용하여 CleanArchitecture 구조 개발 연습
- github Users API를 활용하여 RestAPI 통신

## 구조

```
lib/
├───main.dart
├───core/
│   └───result.dart
├───data/
│   ├───data_source/
│   │   ├───github_user_data_source_impl.dart
│   │   └───github_user_data_source.dart
│   ├───dto/
│   │   └───users_dto.dart
│   ├───mapper/
│   │   └───user_mapper.dart
│   └───repository/
│       └───user_repository_impl.dart
├───domain/
│   ├───model/
│   │   └───user.dart
│   ├───repository/
│   │   └───user_repository.dart
│   └───usecase/
│       └───search_users_usecase.dart
└───presentation/
    └───user_search/
        ├───user_search_action.dart
        ├───user_search_binding.dart
        ├───user_search_controller.dart
        ├───user_search_screen.dart
        └───user_search_state.dart
```
