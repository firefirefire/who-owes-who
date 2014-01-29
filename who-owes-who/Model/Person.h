//
// Created by Mitchell Van Der Hoeff on 1/24/2014.
//


#import <Foundation/Foundation.h>


@interface Person : NSObject
@property (nonatomic, strong) NSString *personName;
@property (nonatomic, assign) double amountOwed;
@property (nonatomic, strong) NSMutableArray *tabs;

- (instancetype)initWithPersonName:(NSString *)personName;

@end