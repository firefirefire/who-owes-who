//
//  AddTabViewController.h
//  who-owes-who
//
//  Created by Mitchell Van Der Hoeff on 1/24/2014.
//  Copyright (c) 2014 Mitchell van der Hoeff. All rights reserved.
//


@class Person;

@protocol PersonCreatorDelegate
@required
- (void) didCreatePerson:(Person *)person;
@end

@interface AddPersonViewController : UIViewController <UITextFieldDelegate>

- (void)addButtonClicked;
@property (strong, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) id<PersonCreatorDelegate> delegate;
@end
