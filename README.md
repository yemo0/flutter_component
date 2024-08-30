# flutter_component

Flutter 组件库

[Visit website](https://flutter-component.pages.dev/)

### 增加组件步骤
1. 编辑完运行生成文件
    - `go run main.go`
2. 允许读取资源 pubspec.yaml assets中增加文件夹
3. 修改`widget_data.dart`文件
    widgetName 是文件夹名称
    widgetList > fileName 是文件的名称

### 部署到cloudflare
切换到build分支 运行
```sh
flutter build web --wasm
```
