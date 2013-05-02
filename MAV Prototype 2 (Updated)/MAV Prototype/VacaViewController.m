//
//  VacaViewController.m
//  MAV Prototype
//
//  Created by Devona Ward on 4/19/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import "FirstViewController.h"
#import "VacaViewController.h"

@interface VacaViewController ()

@end

@implementation VacaViewController
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"New Vaca", @"New Vaca");
        self.tabBarItem.image = [UIImage imageNamed:@"plu.png"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return NO;
}

-(IBAction)onDate:(id)sender
{
    datePicker.hidden = false;
    dateHelp.hidden = false;
    from.hidden = false;
    fromDay.hidden = false;
    to.hidden = false;
    toDay.hidden = false;
}
-(IBAction)onTo:(id)sender
{
    
    dateDate =  datePicker.date;
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat: @"MMMM dd, yyyy"];
    dateString = [dateFormatter stringFromDate: dateDate];
    toDay.text = [NSString stringWithFormat:@"%@", dateString];
}
-(IBAction)onFrom:(id)sender
{
    dateDate =  datePicker.date;
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat: @"MMMM dd, yyyy"];
    dateString = [dateFormatter stringFromDate: dateDate];
    fromDay.text = [NSString stringWithFormat:@"%@", dateString];
}

-(IBAction)onSave:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Saved" message:@"Your vaca has been saved." delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    [alert show];
    
    [self.tabBarController setSelectedIndex:0];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
