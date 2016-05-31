# PasscodeField

[![CI Status](http://img.shields.io/travis/rtomomura/PasscodeField.svg?style=flat)](https://travis-ci.org/rtomomura/PasscodeField)
[![Version](https://img.shields.io/cocoapods/v/PasscodeField.svg?style=flat)](http://cocoapods.org/pods/PasscodeField)
[![License](https://img.shields.io/cocoapods/l/PasscodeField.svg?style=flat)](http://cocoapods.org/pods/PasscodeField)
[![Platform](https://img.shields.io/cocoapods/p/PasscodeField.svg?style=flat)](http://cocoapods.org/pods/PasscodeField)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Features

### Simple View & Lightweight Code
![Example Application Usage](https://github.com/tomomura/PasscodeField/blob/master/ExampleImages/example_passcode.gif)

* Simple View
* Lightweight Code
* Easy to use in replacement for UIView
* IBDesignable and IBInspectable properties
* Customization options

## Installation

PasscodeField is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "PasscodeField"
```

# Usage

## Storyboard

Simply drag a UIView reference onto your storyboard where you would like it to go. Then set your custom class to `PasscodeField` and your set. If you would like you can then configure some of the IBInspectable properties via the storyboard attributes editor (or do it in code!). Next you will want to create an IBOutlet for your `PasscodeField` instance.

![Example Application Usage](https://github.com/tomomura/PasscodeField/blob/master/ExampleImages/customize_options.png)

```swift
self.passcodeField.progress = passcodeText.characters.count
```

## Programmatically

Here your just gonna do a frame init, configure, add the subview and your good to go!

```swift
let passcodeField = PasscodeField(frame: CGRectMake(100, 100, 300, 40))
passcodeField.progress = 0
// customize options
//
// passcodeField.length = 12
// passcodeField.fillColor = UIColor.redColor()
```

## Customization options

``` swift
// passcode length.
var length: Int = 6

// current progress.
var progress: Int = 0 {

// height size of line.
var borderHeight: CGFloat = 2.0

// circle fill color.
var fillColor: UIColor = UIColor.blackColor()

// size of circle and line.
var fillSize: CGFloat = 20

```

# Contributing

Got a great idea and want to contribute? Here's how you can help...

1. Fork it
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request


## Author

Ryota Tomomura ([@famtom0518](https://twitter.com/?lang=ja))

## License

PasscodeField is available under the MIT license. See the LICENSE file for more info.
