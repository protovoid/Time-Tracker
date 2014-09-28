//
//  TTListViewController.m
//  Time-Tracker
//
//  Created by Chad on 9/27/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "TTListViewController.h"

@interface TTListViewController ()

@end

@implementation TTListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.dataSource = [TTListTableViewDatasource new];
    
    self.tableView = [UITableView new];
    [self.view addSubview:self.tableView];
    
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

@end
