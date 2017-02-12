//
//  LeftMenuVC.m
//  GoSkinCare
//
//  Created by Luokey on 11/20/15.
//  Copyright © 2015 Luokey. All rights reserved.
//

#import "LeftMenuVC.h"
#import "SlideMenuMainViewController.h"

@interface LeftMenuVC ()

@property (weak, nonatomic) IBOutlet UIView* headerView;

@end

@implementation LeftMenuVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0 && ![UIApplication sharedApplication].isStatusBarHidden) {
        self.tableView.contentInset = UIEdgeInsetsMake(-20, 0, 0, 0);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


#pragma mark -
#pragma mark - Logout method

- (void)logout {
    [super logout];
    NSLog(@"Logout");
    
    SlideMenuMainViewController *mainVC = (SlideMenuMainViewController *)self.parentViewController;
    [mainVC closeLeftMenuAnimated:NO];
    
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"" message:@"Do you want to logout?" preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil]];
    [alert addAction:[UIAlertAction actionWithTitle:@"Logout" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [self performSegueWithIdentifier:Segue_Logout sender:nil];
    }]];
}


@end
