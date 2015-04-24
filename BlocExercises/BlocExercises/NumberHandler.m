//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* WORK HERE */
    
    NSInteger *tempInt = [number intValue];
    
    long *returnLong = (long)tempInt * 2;
    
    NSNumber *returnNumber = [NSNumber numberWithLong:returnLong];
    
    return returnNumber;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    
    NSMutableArray *finalArray = [NSMutableArray arrayWithCapacity:2];
    
    NSInteger i = number;
    NSInteger f = otherNumber;
    
    while (i <= f){
        [finalArray addObject: [NSNumber numberWithInteger:i]];
        i++;
    }
    
    return finalArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    
    NSMutableArray *finalArray = [arrayOfNumbers copy];
    
    finalArray = [finalArray sortedArrayUsingSelector:@selector(compare:)];
    
    return [finalArray[0] integerValue];
}

@end
