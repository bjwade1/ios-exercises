//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    /* WORK HERE */
    NSString *myCheese = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    return myCheese;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    /* WORK HERE */
    NSRange cheeseRange = [cheeseName rangeOfString: @" cheese" options:NSCaseInsensitiveSearch];
    
    NSString *myCheese2 = [cheeseName copy];
    
    if (cheeseRange.location != NSNotFound){
        
        myCheese2 = [cheeseName stringByReplacingCharactersInRange: cheeseRange withString:@""];
    }
    
    return myCheese2;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
        
        return [NSString stringWithFormat: @"%lu cheese", cheeseCount];
        
        
    } else {
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
        
        return [NSString stringWithFormat: @"%lu cheeses", cheeseCount];
    }
    
}

@end
