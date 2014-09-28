//
//  TTListViewController.h
//  Time-Tracker
//
//  Created by Chad on 9/27/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TTListTableViewDatasource.h"

@interface TTListViewController : UIViewController

@property (nonatomic, strong) TTListTableViewDatasource *dataSource;
@property (nonatomic, strong) UITableView *tableView;

@end
