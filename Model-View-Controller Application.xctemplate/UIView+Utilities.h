//
// UIView+Utilities.h
//

#import <UIKit/UIKit.h>

@interface UIView (Utilities)

- (void)removeSubviews;

- (UIView*)findFirstResponder;

//geometry shorcuts

//ratio
- (CGFloat)ratio;

//bounds
- (CGFloat)boundsX;
- (CGFloat)boundsY;
- (CGFloat)boundsWidth;
- (CGFloat)boundsHeight;

- (CGFloat)bX;
- (CGFloat)bY;
- (CGFloat)bW;
- (CGFloat)bH;

//frame

- (CGFloat)frameX;
- (CGFloat)frameY;
- (CGFloat)frameWidth;
- (CGFloat)frameHeight;

- (CGFloat)fX;
- (CGFloat)fY;
- (CGFloat)fW;
- (CGFloat)fH;

//relative

- (CGFloat)top;
- (CGFloat)bottom;
- (CGFloat)left;
- (CGFloat)right;

@end
