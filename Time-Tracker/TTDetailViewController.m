//
//  TTDetailViewController.m
//  Time-Tracker
//
//  Created by Chad on 9/27/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "TTDetailViewController.h"

@interface TTDetailViewController () <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *titleTextField;

@property (strong, nonatomic) IBOutlet UILabel *totalTimeLabel;

@property (strong, nonatomic) IBOutlet UIBarButtonItem *addButton;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *checkInButton;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *checkOutButton;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *reportButton;

@end

@implementation TTDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UITableView *tableView = [UITableView new];
    [self.view addSubview:tableView];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBActions

- (IBAction)add:(id)sender {
}

- (IBAction)checkIn:(id)sender {
}

- (IBAction)checkOut:(id)sender {
}

- (IBAction)report:(id)sender {
}

#pragma mark - TextField methods

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [self.textField resignFirstResponder]; // makes keyboard move away
    return YES;
}

-(void)textFieldShouldEndEditing {
    // Add a textFieldShouldEndEditing method to store the text of the field as the project title
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
