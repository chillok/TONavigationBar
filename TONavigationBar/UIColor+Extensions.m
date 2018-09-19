//
//  UIColor+Extensions.m
//  TONavigationBarExample
//
//  Created by Cillian O'Keeffe on 19/09/2018.
//  Copyright © 2018 Tim Oliver. All rights reserved.
//

#import "UIColor+Extensions.h"

@implementation UIColor (Extensions)

- (UIColor *)lighterColorWithDelta:(CGFloat)delta {
    
    CGFloat r, g, b, a;
    if ([self getRed:&r green:&g blue:&b alpha:&a])
        return [UIColor colorWithRed:MIN(r + delta, 1.0)
                               green:MIN(g + delta, 1.0)
                                blue:MIN(b + delta, 1.0)
                               alpha:a];
    return nil;
}



@end
