//
//  AddTabViewController.m
//  who-owes-who
//
//  Created by Mitchell Van Der Hoeff on 1/24/2014.
//  Copyright (c) 2014 Mitchell van der Hoeff. All rights reserved.
//

#import "AddPersonViewController.h"
#import "Person.h"

@interface AddPersonViewController ()

@end

@implementation AddPersonViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Add Person";
    }
    return self;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self createAndSendTab];
    return NO;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void) viewWillAppear:(BOOL)animated
{
    [self.nameField becomeFirstResponder];
}

- (void)addButtonClicked
{
    [self createAndSendTab];
}

- (void)createAndSendTab
{
    if (self.nameField.text.length == 0) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"No Name Inputted"
                                                        message:@"Please Input a Name"
                                                       delegate:nil
                                              cancelButtonTitle:@"Ok"
                                              otherButtonTitles:nil];
        [alert show];
        return;
    }
    Person *person = [[Person alloc] initWithPersonName:self.nameField.text];
    [self.delegate didCreatePerson:person];
    [self.navigationController popViewControllerAnimated:YES];
}


@end
