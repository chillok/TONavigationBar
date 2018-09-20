//
//  UIColor+Extensions.m
//  TONavigationBarExample
//
//  Created by Cillian O'Keeffe on 19/09/2018.
//  Copyright © 2018 Tim Oliver. All rights reserved.
//

#import "UIColor+Extensions.h"

@implementation UIColor (Extensions)

- (UIColor *)desaturateBy:(CGFloat)delta {
    
    CGFloat hue;
    CGFloat saturation;
    CGFloat brightness;
    CGFloat alpha;
    
    if ([self getHue:&hue saturation:&saturation brightness:&brightness alpha:&alpha]) {
        
        UIColor *newColor = [[UIColor alloc] initWithHue:hue saturation:saturation * delta brightness:brightness alpha:alpha];
        
        return newColor;
    }
    
    return self;
}

@end
