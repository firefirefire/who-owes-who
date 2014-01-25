//
//  AddTabViewController.m
//  who-owes-who
//
//  Created by Mitchell Van Der Hoeff on 1/24/2014.
//  Copyright (c) 2014 Mitchell van der Hoeff. All rights reserved.
//

#import "AddTabViewController.h"
#import "Tab.h"

@interface AddTabViewController ()

@end

@implementation AddTabViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)addButtonClicked
{
    Tab *tab = [[Tab alloc] initWithPersonName:self.nameField.text];
    if (self.amountOwedField.text.length > 0) {
        tab.amountOwed = [self.amountOwedField.text doubleValue];
    }
    [self.delegate didCreateTab:tab];
}

- (IBAction)cancelButtonClicked
{
    [self.delegate didCancelCreatingTab];
}
@end
