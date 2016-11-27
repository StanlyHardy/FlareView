# FlareView
> Spice up your app UIView's by adding flares around them.


[![Build Status][travis-image]][travis-url]
[![License][license-image]][license-url]
[![Platform](https://img.shields.io/cocoapods/p/LFAlertController.svg?style=flat)](http://cocoapods.org/pods/LFAlertController)

Ever thought of making your UI catchy with colourful flares!! Use this library , if you wanna do so....

![](https://cloud.githubusercontent.com/assets/14089959/20383662/af86e6ae-acd6-11e6-8191-43786511bb31.gif)

## Features

- [x] Add Flares around UIView's of any type.

## Requirements

- iOS 8.0+
- Xcode 7.3
 
## Usage example

```objective-c
import FlareView.h
[[FlareView sharedCenter]flarify:[UIView to flarify] inParentView:[the container of your view that has to be flarified] withColor:[color of the flare]];

```

## Contribute

I would love for you to contribute to FlareView, check the ``LICENSE`` file for more info.

## Meta

Stanly Moses –  – stanlyhardy@yahoo.com

Distributed under the MIT license. See ``LICENSE`` for more information.

[license-image]: https://img.shields.io/badge/License-MIT-blue.svg
[license-url]: LICENSE
[travis-image]: https://img.shields.io/travis/dbader/node-datadog-metrics/master.svg?style=flat-square
[travis-url]: https://travis-ci.org/dbader/node-datadog-metrics
