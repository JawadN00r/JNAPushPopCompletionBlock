# JNAPushPopCompletionBlock
[![codebeat badge](https://codebeat.co/badges/401eed61-775d-4a34-a93e-9b9a315c6814)](https://codebeat.co/projects/github-com-jawadasif-jnapushpopcompletionblock)
[![Build Status](https://travis-ci.org/jawadasif/JNAPushPopCompletionBlock.svg?branch=master)](https://travis-ci.org/jawadasif/JNAPushPopCompletionBlock)
[![Cocoapod](https://img.shields.io/badge/pod-0.0.1-green.svg)](https://cocoapods.org/?q=JNAPushPopCompletionBlock)
[![Platform](https://img.shields.io/badge/platform-ios-green.svg)](https://en.wikipedia.org/wiki/IOS)
[![License](https://img.shields.io/github/license/mashape/apistatus.svg)](https://opensource.org/licenses/MIT)
## Synopsis

Completion block for 
```objc
[self.navigationController pushViewController:(nonnull UIViewController *) animated:(BOOL)]
```
and
```objc
[self.navigationController popViewControllerAnimated:(BOOL)];
[self.navigationController popToViewController:(nonnull UIViewController *) animated:(BOOL)];
[self.navigationController popToRootViewControllerAnimated:(BOOL)];
```

##Installation
###Using Cocoapod
```ruby
pod 'JNAPushPopCompletionBlock'
```

###Manual 

Add 

+ [UINavigationController+JNAPushPopCompletionBlock.h](https://github.com/jawadasif/JNAPushPopCompletionBlock/blob/master/JNAPushPopCompletionBlock_Objective-C/UINavigationController%2BJNAPushPopCompletionBlock.h)
+ [UINavigationController+JNAPushPopCompletionBlock.m](https://github.com/jawadasif/JNAPushPopCompletionBlock/blob/master/JNAPushPopCompletionBlock_Objective-C/UINavigationController%2BJNAPushPopCompletionBlock.m)

to your project.

##Usages

Check out the [demo app](https://github.com/jawadasif/JNAPushPopCompletionBlock/tree/master/DemoProject_Objective-C) for an example.

~~~objective-c
#import "UINavigationController+JNAPushPopCompletionBlock.h"

---------
[self.navigationController pushViewController:viewController animated:YES completion:^{
    // Add code here.
}];

[self.navigationController popViewControllerAnimated:YES completion:^{
    // Add code here.
}];

[self.navigationController popToViewController:viewController animated:YES completion:^{
        // Add code here.
}];

[self.navigationController popToRootViewControllerAnimated:YES completion:^{
    // Add code here.
}];
~~~

License
---
JNAPushPopCompletionBlock is available under MIT license. See the LICENSE file for more info.