# PSCountDownButton

[![docs][docs]][CocoaPods] 
[![Pod Version][version]][CocoaPods] 
[![License][license]][CocoaPods] 
[![Platform][platform]][CocoaPods] 
![SwiftCompatible]

一个点击后就会开始倒计时的按钮，常用于获取验证码。没有任何复杂的配置，也不需要什么学习成本，扔进项目像普通的 `UIButton` 使用就可以了。

---

几乎每个项目都会有注册登录模块，每个注册登录模块都会需要短信验证码。套路，这都是套路。为何要每次都写那么多 Timer 还造成内存泄漏呢。`PSCountDownButton` 来搞定倒计时。

`PSCountDownButton` 同时支持故事版和纯代码。

### 走起

#### 用 CocoaPods 安装

在 podfile 中添加👇

```ruby
pod 'PSCountDownButton'
```

### 使用

##### Storyboard

1. 拖一个 UIButton 组件，Class 设置为 `PSCountDownButton` ，如果有需要的话，可以在故事板中设一下 `Limited Sec` 属性，这个属性是说，几秒后按钮重置为正常状态。
2. 没了，随便玩。

##### Code

1. 纯代码更简单，平时怎么使用 `UIButton` 的，就怎么使用 `PSCountDownButton`。

头文件里有详细的注释。


[CocoaPods]: http://cocoapods.org/pods/PSCountDownButton

[docs]: https://img.shields.io/cocoapods/metrics/doc-percent/PSCountDownButton.svg

[version]: https://img.shields.io/cocoapods/v/PSCountDownButton.svg?style=flat

[license]: https://img.shields.io/cocoapods/l/PSCountDownButton.svg?style=flat

[platform]: https://img.shields.io/cocoapods/p/PSCountDownButton.svg?style=flat

[SwiftCompatible]: https://img.shields.io/badge/Swift-compatible-orange.svg

[blog]: http://shengpan.net

