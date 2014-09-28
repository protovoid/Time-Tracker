//
//  TTProjectController.h
//  Time-Tracker
//
//  Created by Chad on 9/27/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TTProject.h"

@interface TTProjectController : NSObject

@property (strong, nonatomic, readonly) NSArray *projectsArray;

+ (TTProjectController *)sharedInstance;

- (void)addProject:(TTProjectController *)project;
- (void)removeProject:(TTProjectController *)project;
- (void)synchronize;


@end
