//
//  AddTabViewController.h
//  who-owes-who
//
//  Created by Kevin McGaire on 2/5/2014.
//  Copyright (c) 2014 Mitchell van der Hoeff. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tab.h"

@protocol TabCreatorDelegate
@required
- (void)didAddPayment:(Tab *)tab;
@end

@interface AddTabViewController : UIViewController
- (IBAction)addTabButtonClicked;
@property (weak, nonatomic) IBOutlet UITextField *descriptionTextField;
@property (weak, nonatomic) IBOutlet UITextField *amountTextField;
@property (weak, nonatomic) id<TabCreatorDelegate> delegate;
@property (weak, nonatomic) IBOutlet UIButton *addTab;
@end
