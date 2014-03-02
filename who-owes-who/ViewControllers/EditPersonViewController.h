//
//  EditTabViewController.h
//  who-owes-who
//
//  Created by Kevin McGaire on 1/28/2014.
//  Copyright (c) 2014 Mitchell van der Hoeff. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"
#import "AddTabViewController.h"


@interface EditPersonViewController : UIViewController<TabCreatorDelegate>

- (id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
            withPerson:(Person * )person;
@property (weak, nonatomic) IBOutlet UILabel *personName;
@property (weak, nonatomic) IBOutlet UILabel *totalOwed;
@property (nonatomic, weak) Person * person;
@property (weak, nonatomic) IBOutlet UITableView *tabsTableView;

@end
