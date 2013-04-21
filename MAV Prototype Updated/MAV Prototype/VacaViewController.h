//
//  VacaViewController.h
//  MAV Prototype
//
//  Created by Devona Ward on 4/19/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VacaViewController : UIViewController <UITextViewDelegate, UITableViewDataSource, UITableViewDelegate>
{
    IBOutlet UILabel *fromDay;
    IBOutlet UILabel *toDay;
    IBOutlet UILabel *dateHelp;
    IBOutlet UITextField *place;
    IBOutlet UIDatePicker *datePicker;
    NSString *dateString;
    NSDate *dateDate;
    IBOutlet UIButton *from;
    IBOutlet UIButton *to;
    IBOutlet UIButton *selectDate;
    NSArray *dontLeave;
    IBOutlet UIBarButtonItem *goDate;

}
-(IBAction)onTo:(id)sender;
-(IBAction)onDismiss:(id)sender;
-(IBAction)onFrom:(id)sender;
-(IBAction)onDate:(id)sender;
-(IBAction)onSave:(id)sender;
@end
