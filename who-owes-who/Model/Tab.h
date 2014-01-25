//
// Created by Mitchell Van Der Hoeff on 1/24/2014.
//


#import <Foundation/Foundation.h>


@interface Tab : NSObject
@property (nonatomic, strong) NSString *personName;
@property (nonatomic, assign) double amountOwed;

- (instancetype)initWithPersonName:(NSString *)personName;

@end