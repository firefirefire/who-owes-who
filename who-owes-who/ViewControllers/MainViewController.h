//
//  MainViewController.h
//  who-owes-who
//
//  Created by Kevin McGaire on 1/24/2014.
//  Copyright (c) 2014 Mitchell van der Hoeff. All rights reserved.
//



#import "AddTabViewController.h"

#define CELL_IDENTIFIER @"CellIdentifier"

static const int LABEL_TAG = 0;

@interface MainViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, TabCreatorDelegate>
- (IBAction)plusButtonClicked;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, strong) NSMutableArray *tabs;
@end
