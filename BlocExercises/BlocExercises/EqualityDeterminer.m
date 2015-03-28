//
//  EqualityDeterminer.m
//  BlocExercises
//
//  Created by Aaron Brager on 6/10/14.
//
//

#import "EqualityDeterminer.h"

@implementation EqualityDeterminer

- (BOOL) string:(NSString *)string1 isTheSameAsString:(NSString *)string2 {
    /* WORK HERE */
    
    [string1 isEqualToString:string2];
    
    return (@"Cereals should be equal");
}

- (BOOL) number:(NSNumber *)number1 isTheSameAsNumber:(NSNumber *)number2 {
    /* WORK HERE */
    
    [number1 isEqualToNumber:number2];
    
    return (@"Six should be equal to six.");
}

- (BOOL) integer:(NSInteger)integer1 isGreaterThan:(NSInteger)integer2 {
    /* WORK HERE */
    
    if(integer1 <= integer2){
       
        return (@"7 is greater than 4.");
    }
    return YES;
}

@end
