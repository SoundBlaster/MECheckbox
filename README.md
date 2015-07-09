# MECheckbox

[![CI Status](http://img.shields.io/travis/SoundBlaster/MECheckbox.svg?style=flat)](https://travis-ci.org/SoundBlaster/MECheckbox)
[![Version](https://img.shields.io/cocoapods/v/MECheckbox.svg?style=flat)](http://cocoapods.org/pods/MECheckbox)
[![License](https://img.shields.io/cocoapods/l/MECheckbox.svg?style=flat)](http://cocoapods.org/pods/MECheckbox)
[![Platform](https://img.shields.io/cocoapods/p/MECheckbox.svg?style=flat)](http://cocoapods.org/pods/MECheckbox)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.
```objc
#import <MECheckbox/MECheckbox.h>

...
// by code
UIImage *checked = [UIImage imageNamed:@"checked"];
UIImage *unchecked = [UIImage imageNamed:@"unchecked"];
CGRect frame = CGRectMake(0, 0, checked.size.width, checked.size.height);
MECheckbox *checkbox = [[MECheckbox alloc] initWithFrame:frame];
checkbox.checkedImage = checked;
checkbox.uncheckedImage = unchecked;
[self.view addSubview:checkbox];

```

Or just use Interface Builder - drag UIView, set class MECheckbox to it, than use designable properties 'checked' & 'unchecked' — IB draws checkbox live on any view in storyboard or in xib.

You can use any UIImage what you want, **but remember - checkbox doesn't resize yourself for new images**. You must set frame for checkbox manually or by Auto Layout!

## Requirements
UIKit

## Installation

MECheckbox is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "MECheckbox"
```

## Author

SoundBlaster, egor-git@egormerkushev.ru

## License

MECheckbox is available under the MIT license. See the LICENSE file for more info.
