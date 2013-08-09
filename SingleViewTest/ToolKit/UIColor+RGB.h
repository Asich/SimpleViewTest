//
//  UIColor+RGB.h
//  btaInsurance
//
//  Created by Ибрахим Н on 26.02.13.
//  Copyright (c) 2013 Ибрахим Н. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (RGB)

+ (UIColor *)fromRGB:(int)RGBValueInHEX;
+ (UIColor *)fromRGB:(int)RGBValueInHEX andAlpha:(float)alpha;
+ (UIImage *)imageFromColor:(UIColor *)color width:(float)width height:(float)height;

@end