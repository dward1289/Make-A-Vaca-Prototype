//
//  FirstViewController.m
//  MAV Prototype
//
//  Created by Devona Ward on 4/19/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import "FirstViewController.h"
#import "VacaViewController.h"
#import "SavedViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Make-A-Vaca", @"Make-A-Vaca");
        self.tabBarItem.image = [UIImage imageNamed:@"home.png"];
        
    }
    return self;
}

-(IBAction)onMake:(id)sender
{
    VacaViewController *vacaView = [[VacaViewController alloc] initWithNibName:@"VacaViewController" bundle:nil];
    
    if (vacaView != nil)
    {
        [self presentViewController:vacaView animated:true completion:nil];
    }
}

-(IBAction)onSave:(id)sender
{
    SavedViewController *savedView = [[SavedViewController alloc] initWithNibName:@"SavedViewController" bundle:nil];
    
    if (savedView != nil)
    {
        [self presentViewController:savedView animated:true completion:nil];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
