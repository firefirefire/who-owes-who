//
//  AddTabViewController.h
//  who-owes-who
//
//  Created by Mitchell Van Der Hoeff on 1/24/2014.
//  Copyright (c) 2014 Mitchell van der Hoeff. All rights reserved.
//


@class Person;

@protocol TabCreatorDelegate
@required
- (void) didCreatePerson:(Person *)tab;
- (void) didCancelCreatingPerson;
@end

@interface AddPersonViewController : UIViewController <UITextFieldDelegate>

- (IBAction)addButtonClicked;
- (IBAction)cancelButtonClicked;
@property (strong, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) id<TabCreatorDelegate> delegate;
@end
