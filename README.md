# FlareView
> Lane Segmentation using several architectures.


[![Objectivec Version][objectivec-image]][objectivec-url]
[![Build Status][travis-image]][travis-url]
[![License][license-image]][license-url]
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/EZSwiftExtensions.svg)](https://img.shields.io/cocoapods/v/LFAlertController.svg)  
[![Platform](https://img.shields.io/cocoapods/p/LFAlertController.svg?style=flat)](http://cocoapods.org/pods/LFAlertController)

It contains the code for both training and segmentation of lane lines using Deep Learning. Currently the supported architectures are ENET, UNET, Modified VGG.


## Features

- [x] The training code is very much scalable towards any new architecture.
- [x] All changes made in the config file will effect in the training process so that the training logic can be without hassle.
- [x] The training configuartion are easily tunable through the config file provided.

## Requirements

- The training module has been built using Pycharm 2018.1.4.
- The System requirement’s are 2.7 GHz Intel Core i5 with atleast 8 GB of RAM.

## Installation

#### OpenCV
You can use [Anaconda](https://conda.io/) to install `opencv` with the following command line.:

```
conda install -c conda-forge opencv
```

#### Image Augmentation
You can use [PIP](https://pypi.org/project/pip/) to install the module `imgaug` with the following command line.:

```
pip install imgaug
```

#### tensorflow
You can use [PIP](https://pypi.org/project/pip/) to install `tensorflow` with the following command line or please go through their official installation guideline[https://www.tensorflow.org/install/pip]:

```
pip install tensorflow
```


#### Keras
You can use [PIP](https://pypi.org/project/pip/) to install `keras` with the following command line or please go through their official installation guideline[https://keras.io/#installation]:

```
pip install keras
```

## Usage example

Run the following script to dispatch the trainer.


```
python3 train.py  --conf=./config.json
```

## Contribute

I would love for you to contribute to **KITT-Road Segmentation**, check the ``LICENSE`` file for more info.

## Meta

Stanly Moses – [@Linkedin](https://in.linkedin.com/in/stanlymoses) – stanlyhardy@yahoo.com

Distributed under the MIT license. See ``LICENSE`` for more information.

[https://github.com/StanlyHardy/KITTI-Road-Segmentation](https://github.com/StanlyHardy/)

[objectivec-image]:https://img.shields.io/badge/Language-Objective%20C-blue.svg?style=flat
[objectivec-url]: https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/ProgrammingWithObjectiveC/Introduction/Introduction.html
[travis-image]: https://img.shields.io/travis/dbader/node-datadog-metrics/master.svg?style=flat-square
[travis-url]: https://travis-ci.org/dbader/node-datadog-metrics
[license-image]: https://img.shields.io/badge/License-MIT-blue.svg
[license-url]: LICENSE
[codebeat-image]: https://codebeat.co/badges/c19b47ea-2f9d-45df-8458-b2d952fe9dad
[codebeat-url]: https://codebeat.co/projects/github-com-vsouza-awesomeios-com
