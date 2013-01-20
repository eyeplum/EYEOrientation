//
// Created by zeiss on 13-1-20.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <CoreGraphics/CoreGraphics.h>
#import "ResizableView.h"
#import "UIApplication+AppDimensions.h"

@interface ResizableView ()
@end

@implementation ResizableView

- (void)reLayoutToOrientation:(UIInterfaceOrientation)orientation {

    CGSize currentSize = [UIApplication sizeInOrientation:orientation];

    CGRect view1Frame = CGRectMake(20.0, 20.0, currentSize.width-40.0, currentSize.height-40.0);
    if (![self viewWithTag:101]) {
        UIView *view1 = [[UIView alloc] initWithFrame:view1Frame];
        view1.backgroundColor = [UIColor redColor];
        view1.tag = 101;
        [self addSubview:view1];
        [view1 release];
    } else {
        [self viewWithTag:101].frame = view1Frame;
    }

    if (UIInterfaceOrientationIsLandscape(orientation)) {
        CGFloat width = (currentSize.width-60.0)/2;
        CGRect view1FrameLandscape = CGRectMake(20.0, 20.0, width, currentSize.height-40.0);
        CGRect view2Frame = CGRectMake(20.0+width+20.0, 20.0, width, currentSize.height-40.0);
        [self viewWithTag:101].frame = view1FrameLandscape;

        if (![self viewWithTag:102]) {
            UIView *view2 = [[UIView alloc] initWithFrame:view2Frame];
            view2.backgroundColor = [UIColor greenColor];
            view2.tag = 102;
            [self addSubview:view2];
            [view2 release];
        } else {
            [self viewWithTag:102].frame = view2Frame;
        }
    } else {
        if ([self viewWithTag:102]) {
            [[self viewWithTag:102] removeFromSuperview];
        }
    }
}

@end