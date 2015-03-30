//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSString *returnedString = @"";
    NSInteger looper = number;
    
    while(looper<=otherNumber){
        returnedString = [NSString stringWithFormat:@"%@%ld", returnedString, looper];
        looper++;
    }
    
    looper = otherNumber;
    while (number >= looper) {
        returnedString = [NSString stringWithFormat:@"%@%ld", returnedString, looper];
        looper++;
    }

    looper = number;
    while(looper==otherNumber){
        returnedString = [NSString stringWithFormat:@"%ld", looper];
        looper++;
    }
    return returnedString;
}

@end
