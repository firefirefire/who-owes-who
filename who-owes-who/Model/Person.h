//
// Created by Mitchell Van Der Hoeff on 1/24/2014.
//


#import <Foundation/Foundation.h>
#import "Tab.h"


@interface Person : NSObject
@property (nonatomic, strong) NSString *personName;
@property (nonatomic, assign) double amountOwed;
@property (nonatomic, strong) NSMutableArray *tabs;

- (id)initWithPersonName:(NSString *)personName;

- (NSArray *) getTabs;
- (NSString *) getPersonName;
- (double) getAmountOwed;

- (void)addTabWithDescription:(NSString *)desc andTabAmount:(double)amount;

@end