# Product Name
> Spice up your app UIView's by adding magical flares around any UIView's.


[![License][license-image]][license-url]
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/EZSwiftExtensions.svg)](https://img.shields.io/cocoapods/v/LFAlertController.svg)  
[![Platform](https://img.shields.io/cocoapods/p/LFAlertController.svg?style=flat)](http://cocoapods.org/pods/LFAlertController)

Have you ever thought of making your user interface by adding magical flares when the user interacts with your app?  Use this library if you wanna do so...
![screen shot](https://cloud.githubusercontent.com/assets/14089959/20383662/af86e6ae-acd6-11e6-8191-43786511bb31.gif)

## Features

- [x] All UIView's that's enclosed within a parent view can be flarified without any exception.
- [x] You can customize the flare colours as per your own requirement

## Requirements

- iOS 8.0+
- Xcode 7.3

## Installation

#### CocoaPods
You can use [CocoaPods](http://cocoapods.org/) to install `Flareview` by adding it to your `Podfile`:

```ruby
platform :ios, '8.0'
use_frameworks!
pod 'flareview', '~> 0.1'
```

To get the full benefits import `FlareView/FlareView.h` wherever you import UIKit

``` objective-c
import UIKit
#import <FlareView/FlareView.h>
```
```
github "StanlyHardy/FlareView"
```
#### Manually
1. Download and drop ```FlareView.h``` and ```FlareView.m``` in your project.  
2. Congratulations!  

## Usage example

```objective-c
#import <FlareView/FlareView.h>
- (void)viewDidLoad {
    [super viewDidLoad];
    [[FlareView sharedCenter]flarify:self.smiley inParentView:self.view withColor:[UIColor yellowColor]];
}
```

## Contribute

I would love for you to contribute to **FlareView**, check the ``LICENSE`` file for more info.

## Meta

Stanly Moses – [@Linkedin](https://in.linkedin.com/in/stanlymoses) – stanlyhardy@yahoo.com

Distributed under the MIT license. See ``LICENSE`` for more information.

[https://github.com/StanlyHardy/FlareView](https://github.com/StanlyHardy/)

[objectivec-image]:https://img.shields.io/badge/Language-Objective%20C-blue.svg?style=flat
[objectivec-url]: https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/ProgrammingWithObjectiveC/Introduction/Introduction.html
[license-image]: https://img.shields.io/badge/License-MIT-blue.svg
[license-url]: LICENSE
[codebeat-image]: https://codebeat.co/badges/c19b47ea-2f9d-45df-8458-b2d952fe9dad
[codebeat-url]: https://codebeat.co/projects/github-com-vsouza-awesomeios-com
