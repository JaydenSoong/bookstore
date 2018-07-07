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
* 所有模块
```
allprojects {
    apply plugin: 'java'
    sourceCompatibility = 10
    tasks.withType(JavaCompile){
        options.encoding = "UTF-8"
    }
}

subprojects {
    repositories {
        mavenCentral()
        mavenLocal()
    }

    dependencies {
        testCompile group: 'junit', name: 'junit', version: '4.12'
        compile group: 'com.soong', name: 'tools', version: '1.0'
    }
}
```
* web 模块
  
 ```
plugins {
    id 'war'
}

repositories {
    mavenCentral()
}

dependencies {
    compile project(":service")
    compile group: 'jstl', name: 'jstl', version: '1.2'
    compile group: 'javax.servlet', name: 'javax.servlet-api', version: '4.0.0'
    compile group: 'javax.servlet.jsp', name: 'javax.servlet.jsp-api', version: '2.3.1'
    compile group: 'net.sf.json-lib', name: 'json-lib', version: '2.4', classifier: 'jdk15'
}
```
* service 模块
```
dependencies {
    compile project(":dao")
}
```
## 数据库连接
* c3p0
## 页面静态化
* left.jsp 内容相对固定，可以静态化 --> left.html
