//
//  MainViewController.m
//  who-owes-who
//
//  Created by Kevin McGaire on 1/24/2014.
//  Copyright (c) 2014 Mitchell van der Hoeff. All rights reserved.
//

#import "MainViewController.h"
#import "AddPersonViewController.h"
#import "EditPersonViewController.h"
#import "Person.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.persons = [NSMutableArray array];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void) viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.persons.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CELL_IDENTIFIER];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CELL_IDENTIFIER];
    }
    Person *tab = self.persons[indexPath.row];
    cell.textLabel.text = [NSString stringWithFormat:@"%@ $%.02f", tab.personName, tab.amountOwed];
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle
forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.persons removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath]
                         withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}


- (IBAction)plusButtonClicked {
    AddPersonViewController *controller = [[AddPersonViewController alloc] initWithNibName:@"AddPersonViewController"
                                                                                    bundle:nil];
    controller.delegate = self;
    [self presentViewController:controller animated:YES completion:nil];
}

- (void)didCreatePerson:(Person *)tab
{
    [self dismissViewControllerAnimated:YES completion:nil];
    [self.persons addObject:tab];
    [self.tableView reloadData];
}

- (void)didCancelCreatingPerson
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Person * myPerson = [self.persons objectAtIndex:indexPath.row];
    EditPersonViewController *controller = [[EditPersonViewController alloc] initWithNibName:@"EditPersonViewController"
                                                                                      bundle:Nil
                                                                                  withPerson:myPerson];
    [self.navigationController pushViewController:controller animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
