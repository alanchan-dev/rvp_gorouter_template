# rvp_gorouter_template

This is a template for a Flutter project that uses the [Riverpod](https://pub.dev/packages/riverpod) state management library.

## Getting Started

This template uses code generation for riverpod, gorouter and freezed for data class.
Run `dart run build_runner watch` to generate.

## Folder structure

`app` folder contains the styles, router, and the app widget.

`features` folder contains the features of the app. Each feature is a folder that are structured into data, domain, and presentation.

`shared` folder contains the data, domain and presentation shared across the app.
Shared widgets, extensions, utils, etc. can be placed here.
