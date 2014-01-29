//
// Created by Mitchell Van Der Hoeff on 1/24/2014.
//


#import "Person.h"


@implementation Person {

}



- (id)initWithPersonName:(NSString *)personName
{
    self = [super init];
    if (self) {
        self.personName = personName;
        self.amountOwed = 5.0;
        self.tabs = [NSMutableArray alloc];
    }
    return self;
}

- (NSString *) getPersonName
{
    return self.personName;
}

- (double) getAmountOwed
{
    return self.amountOwed;
}

- (void)addTabWithDescription:(NSString *)desc andTabAmount:(double)amount
{
    
}

@end