//
// Created by Mitchell Van Der Hoeff on 1/24/2014.
//


#import "Person.h"
#import "Tab.h"


@implementation Person {

}



- (id)initWithPersonName:(NSString *)personName
{
    self = [super init];
    if (self) {
        self.personName = personName;
        self.amountOwed = 0;
        self.tabs = [[NSMutableArray alloc] init];
        Tab * test = [[Tab alloc] initWithDescription:@"Test" andAmount:10.0];
        [self.tabs addObject:test];
    }
    return self;
}

- (NSString *) getPersonName
{
    return self.personName;
}

- (NSArray *) getTabs
{
    return self.tabs;
}

- (double) getAmountOwed
{
    return self.amountOwed;
}

- (void)addTabWithDescription:(NSString *)desc andTabAmount:(double)amount
{
    
}

- (void) updateBalance
{
    int sum = 0;
    for (Tab * tab in self.tabs ){
        sum += tab.amount;
    }
    self.amountOwed = sum;
}

@end