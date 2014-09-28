//
//  TTProjectController.m
//  Time-Tracker
//
//  Created by Chad on 9/27/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "TTProjectController.h"

@interface TTProjectController ()

@property (strong, nonatomic) NSArray *projectsArray;

@end

@implementation TTProjectController


+ (TTProjectController *)sharedInstance {
    static TTProjectController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[TTProjectController alloc] init];
        
        [sharedInstance loadFromDefaults];
    });
    return sharedInstance;
}


-(void)instanceType {
    
}


-(void)addProject:(TTProject *)project {
    
    if (!project) {
        return;
    }
    
    NSMutableArray *mutableProject = [[NSMutableArray alloc] initWithArray:self.projectsArray];
    [mutableProject addObject:project];
    
    self.projectsArray = mutableProject;
}

-(void)removeProject:(TTProject *)project {
    
    if (!project) {
        return;
    }
    
    NSMutableArray *mutableProject = self.projectsArray.mutableCopy;
    [mutableProject removeObject:project];
    
}


-(void)loadFromDefaults {
    
    NSArray *projectDictionaries = [[NSUserDefaults standardUserDefaults] objectForKey:@"array"];
    
    NSMutableArray *projects = [NSMutableArray new];
    
    for (int i = 0; i < projectDictionaries.count; i++) {
        NSDictionary *dictionary = projectDictionaries[i];
        [projects addObject:[[TTProject alloc] initWithDictionary:dictionary]];
    }
    
    /*
     for (int i = 0; i < entryDictionaries.count; i++) {
     NSDictionary *dictionary = entryDictionaries[i];
     ESEntry *entry = [[ESEntry alloc] initWithDictionary:dictionary];
     }
     
     if (entries) {
     self.entries = entries;
     }
    */
}


-(void)synchronize {
    
}






/*
Create a ProjectController singleton class (add the instanceType method)
The project controller should hold an array of Projects
You'll need an "AddProject" and "RemoveProject" method
Each project should hold an array of Entries
You'll need an "AddEntry" and "RemoveEntry" method
You'll need methods that convert the objects to and from dictionaries
(This allows you to store the model in NSUserDefaults)
Now you can use the ProjectController for the row count and row value for the tableView
Use the project title for the cell label
*/

@end
