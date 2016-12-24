//
//  ViewController.m
//  JNAPushPopCompletionBlockExample
//
//  Created by Md. Jawad Noor Asif on 10/15/16.
//
//

#import "ViewController.h"
#import "ViewController1.h"
#import "ViewController2.h"
#import "ViewController3.h"
#import "ViewController4.h"
#import "ViewController5.h"
#import "UINavigationController+JNAPushPopCompletionBlock.h"

@interface ViewController ()
@property (nonatomic,strong) ViewController1 *viewController1;
@property (nonatomic,strong) ViewController2 *viewController2;
@property (nonatomic,strong) ViewController3 *viewController3;
@property (nonatomic,strong) ViewController4 *viewController4;
@property (nonatomic,strong) ViewController5 *viewController5;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNeedsStatusBarAppearanceUpdate];
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.viewController1 = [storyboard instantiateViewControllerWithIdentifier:@"ViewController1"];
    self.viewController2 = [storyboard instantiateViewControllerWithIdentifier:@"ViewController2"];
    self.viewController3 = [storyboard instantiateViewControllerWithIdentifier:@"ViewController3"];
    self.viewController4 = [storyboard instantiateViewControllerWithIdentifier:@"ViewController4"];
    self.viewController5 = [storyboard instantiateViewControllerWithIdentifier:@"ViewController5"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushPopWithCompletion:(id)sender {
    [self.navigationController pushViewController:self.viewController1 animated:YES completion:^{
        [self.navigationController pushViewController:self.viewController2 animated:YES completion:^{
            [self.navigationController pushViewController:self.viewController3 animated:YES completion:^{
                [self.navigationController popViewControllerAnimated:YES completion:^{
                    [self.navigationController popViewControllerAnimated:YES completion:^{
                        [self.navigationController pushViewController:self.viewController4 animated:YES completion:^{
                            [self.navigationController pushViewController:self.viewController5 animated:YES completion:^{
                                NSLog(@"navigation stack: %@",self.navigationController.viewControllers);
                            }];
                        }];
                    }];
                }];
            }];
        }];
    }];
}

- (IBAction)pushPopWithoutCompletion:(id)sender {
    [self.navigationController pushViewController:self.viewController1 animated:YES];
    [self.navigationController pushViewController:self.viewController2 animated:YES];
    [self.navigationController pushViewController:self.viewController3 animated:YES];
    [self.navigationController popViewControllerAnimated:YES];
    [self.navigationController popViewControllerAnimated:YES];
    [self.navigationController pushViewController:self.viewController4 animated:YES];
    [self.navigationController pushViewController:self.viewController5 animated:YES];
    NSLog(@"navigation stack: %@",self.navigationController.viewControllers);
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}
@end
