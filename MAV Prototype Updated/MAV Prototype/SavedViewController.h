//
//  SavedViewController.h
//  MAV Prototype
//
//  Created by Devona Ward on 4/19/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SavedViewController : UIViewController
{
    IBOutlet UIBarButtonItem *goHome;
    IBOutlet UIBarButtonItem *goCreate;
    NSArray *saved;
}
-(IBAction)onCreate:(id)sender;
-(IBAction)onHome:(id)sender;
@end
