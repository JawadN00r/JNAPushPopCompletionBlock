//
//  UINavigationController+JNAPushPopCompletionBlock.m
//  JNAPushPopCompletionBlockExample
//
//  Created by Md. Jawad Noor Asif on 10/15/16.
//  Copyright © 2016 Md. Jawad Noor Asif. All rights reserved.
//

#import "UINavigationController+JNAPushPopCompletionBlock.h"

@implementation UINavigationController (JNAPushPopCompletionBlock)
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated completion: (void (^ __nullable)(void))completion {
    [CATransaction setCompletionBlock:completion];
    [CATransaction begin];
    [self pushViewController:viewController animated:animated];
    [CATransaction commit];
}

- (nullable UIViewController *)popViewControllerAnimated:(BOOL)animated completion: (void (^ __nullable)(void))completion {
    UIViewController *poppedViewController;
    [CATransaction setCompletionBlock:completion];
    [CATransaction begin];
    poppedViewController = [self popViewControllerAnimated:animated];
    [CATransaction commit];
    return poppedViewController;
}

@end
