//
//  DBETimedTask.h
//  TimeTracker
//
//  Created by Dahna on 7/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DBETimedTask : NSObject



@property (nonatomic, readwrite, copy) NSString *client;
@property (nonatomic, readwrite, copy) NSString *workSummary;
@property (nonatomic) double hourlyRate;
@property (nonatomic) double hoursWorked;
@property (nonatomic, readonly) double total;

- (instancetype)initWithClient:(NSString *)client
                   workSummary:(NSString *)workSummary
                    hourlyRate:(double)hourlyRate
                   hoursWorked:(double)hoursWorked;



@end

NS_ASSUME_NONNULL_END
