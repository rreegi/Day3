//
//  main.m
//  calculator
//
//  Created by User1 on 2014-05-07.
//  Copyright (c) 2014 Juice. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface calculator : NSObject
// accumulator method
-(void) setAccumulator : (double) value;
-(void) clear;
-(double) accumulator;
// arithmetic methods
-(void) add: (double) value;
-(void) substract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;
@end

@implementation calculator
{
    double accumulator;
}
-(void) setAccumulator: (double) value
{
    accumulator = 0;
}
-(void) add:(double) value
{
    accumulator += value;
}
-(void) substract:(double) value
{
    accumulator -= value;
}
-(void) multiply:(double) value
{
    accumulator *= value;
}
-(void) divide:(double) value
{
    accumulator /= value;
    
}
@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        calculator *deskCalc = [[calculator alloc]init];
        [deskCalc add:200];
        [deskCalc divide:15.0];
        [deskCalc multiply:15.0];
        [deskCalc substract:10.0];
        }
    return 0;
}

