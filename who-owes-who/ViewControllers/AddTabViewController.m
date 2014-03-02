//
//  AddTabViewController.m
//  who-owes-who
//
//  Created by Kevin McGaire on 2/5/2014.
//  Copyright (c) 2014 Mitchell van der Hoeff. All rights reserved.
//

#import "AddTabViewController.h"
#import "tab.h"

@interface AddTabViewController ()

@end

@implementation AddTabViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if ( textField == self.descriptionTextField ) {
        [self.amountTextField becomeFirstResponder];
    } else {
        [self addTabButtonClicked];
    }
    return NO;
}


- (IBAction)addTabButtonClicked
{
    if (self.descriptionTextField.text.length == 0) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"No Name Inputted"
                                                        message:@"Please Input a Description"
                                                       delegate:nil
                                              cancelButtonTitle:@"Ok"
                                              otherButtonTitles:nil];
        [alert show];
        return;
    } else if (self.amountTextField.text.length == 0) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"No Name Inputted"
                                                        message:@"Please Input an Amount"
                                                       delegate:nil
                                              cancelButtonTitle:@"Ok"
                                              otherButtonTitles:nil];
        [alert show];
        return;
    }
    NSString * desc = self.descriptionTextField.text;
    double amount = [self.amountTextField.text doubleValue];
    Tab * newTab = [[Tab alloc] initWithDescription:desc andAmount:amount];
    [self.delegate didAddPayment:newTab];
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
