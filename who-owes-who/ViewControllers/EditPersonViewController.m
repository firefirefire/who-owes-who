//
//  EditTabViewController.m
//  who-owes-who
//
//  Created by Kevin McGaire on 1/28/2014.
//  Copyright (c) 2014 Mitchell van der Hoeff. All rights reserved.
//

#import "EditPersonViewController.h"
#import "Person.h"
#import "AddTabViewController.h"

#define CELL_IDENTIFIER @"CellIdentifier"

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
        NSMutableString *title = [[NSMutableString alloc] initWithString:@"Edit "];
        [title appendString:[person getPersonName]];
        self.navigationItem.title = title ;
        UIBarButtonItem *plusButton = [[UIBarButtonItem alloc] initWithTitle:@"Add Payment" style:UIBarButtonItemStylePlain target:self action:@selector(plusButtonClicked)];
        self.navigationItem.rightBarButtonItem = plusButton;
        [plusButton setTitleTextAttributes:@{
            NSFontAttributeName: [UIFont fontWithName:@"Helvetica" size:15.0f],
        } forState:UIControlStateNormal];
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    NSMutableString * nameOwes = [[NSMutableString alloc] initWithString:[self.person getPersonName]];
    [nameOwes appendString:@" Owes"];
    self.personName.text = nameOwes;
    [self.person updateBalance];
    double owed = [self.person getAmountOwed];
    NSNumber * myDoubleNumber = [NSNumber numberWithDouble:owed];
    self.totalOwed.text = [myDoubleNumber stringValue];
    self.totalOwed.text = [NSString stringWithFormat:@" $%.02f", [self.person getAmountOwed]];

}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:NO];
}

- (void) plusButtonClicked
{
    AddTabViewController * nextController = [[AddTabViewController alloc] initWithNibName:@"AddTabViewController" bundle:nil];
    [self presentViewController:nextController animated:YES completion:Nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[self.person getTabs] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CELL_IDENTIFIER];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CELL_IDENTIFIER];
    }
    Tab * cellTab = [self.person getTabs][indexPath.row];
    cell.textLabel.text = [NSString stringWithFormat:@"%@ $%.02f", cellTab.description, cellTab.amount];
    return cell;
}


@end
