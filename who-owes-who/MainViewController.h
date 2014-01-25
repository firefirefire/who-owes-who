//
//  MainViewController.h
//  who-owes-who
//
//  Created by Kevin McGaire on 1/24/2014.
//  Copyright (c) 2014 Mitchell van der Hoeff. All rights reserved.
//



#define CELL_IDENTIFIER @"CellIdentifier"

@interface MainViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *mainTableView;

@end
