//
//  DBETimeTrackerViewController.m
//  TimeTracker
//
//  Created by Dahna on 7/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "DBETimeTrackerViewController.h"
#import "DBETimedTaskController.h"
#import "DBETimedTask.h"

@interface DBETimeTrackerViewController ()

// Properties
@property (nonatomic) DBETimedTaskController *timedTaskController;
@property (nonatomic) NSString* client;
@property (nonatomic) NSString* workSummary;
@property (nonatomic) double hourlyRate;
@property (nonatomic) double hoursWorked;

// Private Outlets
@property (weak, nonatomic) IBOutlet UITextField *clientTextField;
@property (weak, nonatomic) IBOutlet UITextField *summaryTextField;
@property (weak, nonatomic) IBOutlet UITextField *rateTextField;
@property (weak, nonatomic) IBOutlet UITextField *hoursWorkedTextField;
@property (strong, nonatomic) IBOutlet UITableView *tableView;


@end

@implementation DBETimeTrackerViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.timedTaskController = [[DBETimedTaskController alloc] init];
    
    [self.tableView dataSource];
}

// Private Actions
- (IBAction)logTime:(id)sender {
    
    self.client = self.clientTextField.text;
    self.workSummary = self.summaryTextField.text;
    self.hourlyRate = [self.rateTextField.text doubleValue];
    self.hoursWorked = [self.hoursWorkedTextField.text doubleValue];
    
    [self.timedTaskController createTimedTaskWithClient:self.client
                                            workSummary:self.workSummary
                                             hourlyRate:self.hourlyRate
                                            hoursWorked:self.hoursWorked];
    
    //    DBETimedTask *newTask = [[DBETimedTask alloc] initWithClient:self.client
    //                                                     workSummary:self.workSummary
    //                                                      hourlyRate:self.hourlyRate
    //                                                     hoursWorked:self.hoursWorked];
    //
    //    [self.timedTaskController.timedTasks addObject: newTask];
    
    [self.tableView reloadData];
    printf("%f", self.hourlyRate);
}
// MARK: - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.timedTaskController.timedTasks count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TaskCell"
                                                            forIndexPath:indexPath];
    

    DBETimedTask *task = [self.timedTaskController.timedTasks objectAtIndex:indexPath.row];
    
    cell.textLabel.text = task.client;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"$%.2f", task.total];
    return cell;
}

@end
