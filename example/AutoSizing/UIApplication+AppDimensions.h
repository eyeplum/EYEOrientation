//
// Created by zeiss on 13-1-20.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>

@interface UIApplication (AppDimensions)

+ (UIInterfaceOrientation)currentOrientation;

+ (CGSize)currentSize;
+ (CGSize)sizeInOrientation:(UIInterfaceOrientation)orientation;

@end