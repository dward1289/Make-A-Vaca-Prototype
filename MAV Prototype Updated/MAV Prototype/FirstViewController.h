//
//  FirstViewController.h
//  MAV Prototype
//
//  Created by Devona Ward on 4/19/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController
{
    IBOutlet UIButton *makeVaca;
    IBOutlet UIButton *saveVaca;
}

-(IBAction)onMake:(id)sender;
-(IBAction)onSave:(id)sender;
@end
