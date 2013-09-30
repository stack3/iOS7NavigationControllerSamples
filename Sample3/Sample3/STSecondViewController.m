//
//  STSecondViewController.m
//  iOS7NavigationControllerSamples
//
//  Created by EIMEI on 2013/09/29.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import "STSecondViewController.h"

@interface STSecondViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation STSecondViewController

- (id)init
{
    self = [super init];
    if (self) {
        self.edgesForExtendedLayout = UIRectEdgeNone;
//        self.automaticallyAdjustsScrollViewInsets = NO;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"CellId"];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIEdgeInsets x = _tableView.contentInset;
    NSLog(@"%f", x.top);
    
    UITableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:@"CellId"];
    cell.textLabel.text = [NSString stringWithFormat:@"Item %d", indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    cell.backgroundColor = [UIColor redColor];
}

@end
