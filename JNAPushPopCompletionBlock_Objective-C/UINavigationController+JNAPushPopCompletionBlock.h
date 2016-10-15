//
//  UINavigationController+JNAPushPopCompletionBlock.h
//  JNAPushPopCompletionBlockExample
//
//  Created by Md. Jawad Noor Asif on 10/15/16.
//  Copyright © 2016 Md. Jawad Noor Asif. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (JNAPushPopCompletionBlock)
- (void)pushViewController:(UIViewController* _Nonnull)viewController animated:(BOOL)animated completion: (void (^ __nullable)(void))completion;  // Uses a horizontal slide transition. Has no effect if the view controller is already in the stack.
- (nullable UIViewController *)popViewControllerAnimated:(BOOL)animated completion: (void (^ __nullable)(void))completion; // Returns the popped controller.
@end
