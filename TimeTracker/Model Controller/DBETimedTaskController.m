//
//  DBETimedTaskController.m
//  TimeTracker
//
//  Created by Dahna on 7/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "DBETimedTaskController.h"
#import "DBETimedTask.h"

//@interface DBETimedTaskController()
//
//
//@end

@implementation DBETimedTaskController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _timedTasks = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createTimedTaskWithClient:(NSString *)client
                      workSummary:(NSString *)workSummary
                       hourlyRate:(double)hourlyRate
                      hoursWorked:(double)hoursWorked;

{
    DBETimedTask *newTask = [[DBETimedTask alloc] initWithClient:client
                                                     workSummary:workSummary
                                                      hourlyRate:hourlyRate
                                                     hoursWorked:hoursWorked];
    
   [self.timedTasks addObject: newTask];
}

@end
