# PSCountDownButton [中文]

[![docs][docs]][CocoaPods] 
[![Pod Version][version]][CocoaPods] 
[![License][license]][CocoaPods] 
[![Platform][platform]][CocoaPods] 
![SwiftCompatible]

A drop-in UIButton subclass makes countdown easy.
---

It's painful that each project has to write a register module with sms verification. So, I just make a toy to make it easy.

`PSCountDownButton` was created for that. It doesn't concentrate on what it looks like or which targets should be send action to. The only thing it handles for you is countdown.

`PSCountDownButton` supports both Code and Storyboard.

### Getting Start

#### Installation with CocoaPods

add follow line into your podfile:

```ruby
pod 'PSCountDownButton'
```

### Usage

##### Storyboard

1. Set Class to `PSCountDownButton` and fill` Limited Sec` at inspector if needed.
2. Nothing but do any thing that you want to do.

##### Code

1. Nothing but use it like any `UIButton`.

[CocoaPods]: http://cocoapods.org/pods/PSCountDownButton

[docs]: https://img.shields.io/cocoapods/metrics/doc-percent/PSCountDownButton.svg

[version]: https://img.shields.io/cocoapods/v/PSCountDownButton.svg?style=flat

[license]: https://img.shields.io/cocoapods/l/PSCountDownButton.svg?style=flat

[platform]: https://img.shields.io/cocoapods/p/PSCountDownButton.svg?style=flat

[SwiftCompatible]: https://img.shields.io/badge/Swift-compatible-orange.svg

[blog]: http://shengpan.net


[中文]: /README-zh.md

