# JNAPushPopCompletionBlock

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

## Usages
Check out the [demo app](https://github.com/jawadasif/JNAPushPopCompletionBlock/tree/master/DemoProject_Objective-C) for an example.

Add `UINavigationController+JNAPushPopCompletionBlock.h` and `UINavigationController+JNAPushPopCompletionBlock.m` to your project.

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

## Build status

[![Build Status](https://travis-ci.org/ogt/boxchareditor.png?branch=gh-pages)](https://travis-ci.org/jawadasif/JNAPushPopCompletionBlock)


License
---
JNAPushPopCompletionBlock is available under MIT license. See the LICENSE file for more info.