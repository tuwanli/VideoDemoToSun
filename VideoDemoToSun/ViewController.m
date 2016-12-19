//
//  ViewController.m
//  VideoDemoToSun
//
//  Created by 涂婉丽 on 16/12/15.
//  Copyright © 2016年 涂婉丽. All rights reserved.
//

#import "ViewController.h"
#import "ShowMainViewVC.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnClick {
    ShowMainViewVC *showVC = [ShowMainViewVC new];
    [self.navigationController pushViewController:showVC animated:YES];
}
@end
