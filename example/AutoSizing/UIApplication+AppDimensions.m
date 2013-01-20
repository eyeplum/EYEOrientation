//
// Created by zeiss on 13-1-20.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "UIApplication+AppDimensions.h"


@implementation UIApplication (AppDimensions)

+ (UIInterfaceOrientation)currentOrientation {
    return [UIApplication sharedApplication].statusBarOrientation;
}

+ (CGSize)currentSize {
    return [UIApplication sizeInOrientation:[UIApplication currentOrientation]];
}

+ (CGSize)sizeInOrientation:(UIInterfaceOrientation)orientation {
    CGSize size = [UIScreen mainScreen].bounds.size;
    UIApplication *sharedApplication = [UIApplication sharedApplication];

    if (UIDeviceOrientationIsLandscape(orientation)) {
        size = CGSizeMake(size.height, size.width);
    }

    if (sharedApplication.statusBarHidden == NO) {
        size.height -= MIN(sharedApplication.statusBarFrame.size.height, sharedApplication.statusBarFrame.size.width);
    }

    return size;
}

@end