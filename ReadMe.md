# JavaWeb 项目 —— 网上书店

## 开发工具
* Intellij Idea

## 前端技术
* Bootstrap
* BootstrapValidator

## 建构工具
* Gradle

## JDK 版本
* jdk 10.0

## 包依赖
* web 模块
    ```
    dependencies {
       compile project(":service")
       compile group: 'jstl', name: 'jstl', version: '1.2'
       compile group: 'javax.servlet', name: 'javax.servlet-api', version: '4.0.0'
       compile group: 'javax.servlet.jsp', name: 'javax.servlet.jsp-api', version: '2.3.1'
       compile group: 'com.soong', name: 'tools', version: '1.0'
    }
    ```
 * service 模块
    ```
    dependencies {
        compile project(":dao")
    }
    ```
 * dao 模块
    ```
    dependencies {
        compile group: 'com.soong', name: 'tools', version: '1.0'
    }
    ```
