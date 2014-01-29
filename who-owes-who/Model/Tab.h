//
//  Tab.h
//  who-owes-who
//
//  Created by Kevin McGaire on 1/28/2014.
//  Copyright (c) 2014 Mitchell van der Hoeff. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tab : NSObject

@property (nonatomic, strong) NSString * description;
@property (nonatomic, assign) double amount;

- (id)initWithDescription:(NSString *)desc andAmount:(double)tab;

@end
