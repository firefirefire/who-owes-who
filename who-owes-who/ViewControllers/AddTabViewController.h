//
//  AddTabViewController.h
//  who-owes-who
//
//  Created by Mitchell Van Der Hoeff on 1/24/2014.
//  Copyright (c) 2014 Mitchell van der Hoeff. All rights reserved.
//


@class Tab;

@protocol TabCreatorDelegate
@required
- (void) didCreateTab:(Tab *)tab;
- (void) didCancelCreatingTab;
@end

@interface AddTabViewController : UIViewController

- (IBAction)addButtonClicked;
- (IBAction)cancelButtonClicked;
@property (strong, nonatomic) IBOutlet UITextField *nameField;
@property (strong, nonatomic) IBOutlet UITextField *amountOwedField;
@property (weak, nonatomic) id<TabCreatorDelegate> delegate;
@end
