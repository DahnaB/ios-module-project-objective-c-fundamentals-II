//
//  DBETimedTaskController.h
//  TimeTracker
//
//  Created by Dahna on 7/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DBETimedTask.h"

NS_ASSUME_NONNULL_BEGIN

@interface DBETimedTaskController : NSObject

@property (nonatomic, readwrite)NSMutableArray<DBETimedTask *> *timedTasks;

- (void)createTimedTaskWithClient:(NSString *)client
                      workSummary:(NSString *)workSummary
                       hourlyRate:(double)hourlyRate
                      hoursWorked:(double)hoursWorked;

@end

NS_ASSUME_NONNULL_END
