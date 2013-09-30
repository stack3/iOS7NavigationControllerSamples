//
//  STViewController.m
//  iOS7NavigationControllerSamples
//
//  Created by EIMEI on 2013/09/28.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import "STViewController.h"
#import "STSecondViewController.h"

@interface STViewController ()

@end

@implementation STViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didTapButton:(id)sender
{
    STSecondViewController *con = [[STSecondViewController alloc] init];
    [self.navigationController pushViewController:con animated:YES];
}

@end
