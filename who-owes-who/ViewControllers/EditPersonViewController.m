//
//  EditTabViewController.m
//  who-owes-who
//
//  Created by Kevin McGaire on 1/28/2014.
//  Copyright (c) 2014 Mitchell van der Hoeff. All rights reserved.
//

#import "EditPersonViewController.h"
#import "Person.h"

@interface EditPersonViewController ()

@end

@implementation EditPersonViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
            withPerson:(Person * )person
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.person = person;
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    self.personName.text = [self.person getPersonName];
    double owed = [self.person getAmountOwed];
    NSNumber * myDoubleNumber = [NSNumber numberWithDouble:owed];
    self.totalOwed.text = [myDoubleNumber stringValue];
    self.totalOwed.text = [NSString stringWithFormat:@" $%.02f", [self.person getAmountOwed]];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:NO];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont boldSystemFontOfSize:20.0];
    label.shadowColor = [UIColor colorWithWhite:0.0 alpha:0.5];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor blueColor];
    self.navigationItem.titleView = label;
    label.text = NSLocalizedString(@"Edit Person", @"");
    [label sizeToFit];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
