//
//  Tab.m
//  who-owes-who
//
//  Created by Kevin McGaire on 1/28/2014.
//  Copyright (c) 2014 Mitchell van der Hoeff. All rights reserved.
//

#import "Tab.h"

@implementation Tab

- (id)initWithDescription:(NSString *)desc andAmount:(double)tab
{
    self = [super init];
    if (self) {
        self.description = desc;
        self.amount = tab;
    }
    return self;
}
@end
