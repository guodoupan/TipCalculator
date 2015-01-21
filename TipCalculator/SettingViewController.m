//
//  SettingViewController.m
//  TipCalculator
//
//  Created by Doupan Guo on 1/21/15.
//  Copyright (c) 2015 Doupan Guo. All rights reserved.
//

#import "SettingViewController.h"
#import "Constants.h"

@interface SettingViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *defaultContol;

- (IBAction)onTap:(id)sender;
@end

@implementation SettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int defaultIndex = [defaults integerForKey:KEY_DEFAULT_TIP];
    [self.defaultContol setSelectedSegmentIndex:defaultIndex];
    // Do any additional setup after loading the view from its nib.
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

- (IBAction)onTap:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:self.defaultContol.selectedSegmentIndex forKey:KEY_DEFAULT_TIP];
    [defaults synchronize];
}
@end
