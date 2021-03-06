//
//  SavedViewController.m
//  MAV Prototype
//
//  Created by Devona Ward on 4/19/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import "SavedViewController.h"
#import "VacaViewController.h"

@interface SavedViewController ()

@end

@implementation SavedViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Saved Vacas", @"Saved Vacas");
        self.tabBarItem.image = [UIImage imageNamed:@"list.png"];
    }
    return self;
}


//Count items in list
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [saved count];
}

//Populate list
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    cell.textLabel.text = [saved objectAtIndex:indexPath.row];
    return cell;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    saved = [[NSArray alloc] initWithObjects:
             @"New York",
             @"Bahamas",
             @"Hollywood",
             @"Myrtle Beach",
             @"Disney Land",
             @"Miami Beach",
             @"Wilmington Beach",nil];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Saved Vacas" message:@"Your saved vacas will go here. You will be able to edit and delete saved vacas." delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    [alert show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
