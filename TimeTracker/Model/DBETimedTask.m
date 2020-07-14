//
//  DBETimedTask.m
//  TimeTracker
//
//  Created by Dahna on 7/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "DBETimedTask.h"

@implementation DBETimedTask

- (instancetype)initWithClient:(NSString *)client
                   workSummary:(NSString *)workSummary
                    hourlyRate:(double)hourlyRate
                   hoursWorked:(double)hoursWorked

{
    self = [super init];
    if (self) {
        _client = [client copy];
        _workSummary = [workSummary copy];
        _hourlyRate = hourlyRate;
        _hoursWorked = hoursWorked;
    }
    return self;
}
- (double)total {
    return(_hoursWorked * _hourlyRate);
}


@end

