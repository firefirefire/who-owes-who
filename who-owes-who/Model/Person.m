//
// Created by Mitchell Van Der Hoeff on 1/24/2014.
//


#import "Person.h"


@implementation Person {

}



- (instancetype)initWithPersonName:(NSString *)personName
{
    self = [super init];
    if (self) {
        self.personName = personName;
        self.amountOwed = 0.0;
    }

    return self;
}



@end