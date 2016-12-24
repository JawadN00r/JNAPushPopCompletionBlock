//
//  UINavigationController+JNAPushPopCompletionBlock.h
//  JNAPushPopCompletionBlockExample
//
//  Created by Md. Jawad Noor Asif on 10/15/16.
//
//

#import <UIKit/UIKit.h>

@interface UINavigationController (JNAPushPopCompletionBlock)
- (void)pushViewController:(UIViewController* _Nonnull)viewController animated:(BOOL)animated completion: (void (^ __nullable)(void))completion;  // Uses a horizontal slide transition. Has no effect if the view controller is already in the stack.

- (nullable UIViewController *)popViewControllerAnimated:(BOOL)animated completion: (void (^ __nullable)(void))completion; // Returns the popped controller.

- (nullable NSArray<__kindof UIViewController *> *)popToViewController:(UIViewController * _Nonnull)viewController animated:(BOOL)animated  completion: (void (^ __nullable)(void))completion; // Pops view controllers until the one specified is on top. Returns the popped controllers.

- (nullable NSArray<__kindof UIViewController *> *)popToRootViewControllerAnimated:(BOOL)animated  completion: (void (^ __nullable)(void))completion; // Pops until there's only a single view controller left on the stack. Returns the popped controllers.
@end
