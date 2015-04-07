//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    /* WORK HERE */
    
    NSArray * trekArray = [characterString componentsSeparatedByString:@";"];
    
    return trekArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    
    NSString *worf = [characterArray objectAtIndex:0];
    NSString *picard = [characterArray objectAtIndex:1];
    NSString *crusher = [characterArray objectAtIndex:2];
    
    NSString *trekString = [NSString stringWithFormat: @"%@;%@;%@", worf, picard, crusher];
    /*stringFromArray wouldn't work without sorting, because characterArray is in
     a different order (not alphabetical) than expectedString*/
    return trekString;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
   
    NSArray *trekArray = [characterArray sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    
    return trekArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /* WORK HERE */
    
    NSPredicate *hiWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'Worf'"];
    
    [characterArray filteredArrayUsingPredicate:hiWorf];
    
    if ([characterArray containsObject:@"Worf"]) {
        return YES;
    }
    
    else {
        return NO;
    }
}

@end
