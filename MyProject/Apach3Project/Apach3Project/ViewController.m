//
//  ViewController.m
//  Apach3Project
//
//  Created by 李昊 on 2019/9/11.
//  Copyright © 2019 李昊. All rights reserved.
//

#import "ViewController.h"
#import <Flutter/Flutter.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(100, 100, 100, 100)];
    [button setBackgroundColor:[UIColor redColor]];
    [button addTarget:self action:@selector(_private_click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)_private_click {
    NewVC *vc = [[NewVC alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end

@implementation NewVC

- (void)viewDidLoad {
    [super viewDidLoad];
    FlutterViewController *flutterVC = [[FlutterViewController alloc] initWithProject:nil nibName:nil bundle:nil];
    [self addChildViewController:flutterVC];
    flutterVC.view.frame = self.view.bounds;
    [flutterVC didMoveToParentViewController:self];
    [self.view addSubview:flutterVC.view];
}

@end
