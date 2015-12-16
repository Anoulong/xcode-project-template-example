//
// MainView.m
//

#import "MainView.h"
#import "StyleSheet.h"

@interface MainView (){
    
}
@end

@implementation MainView

- (instancetype)initWithFrame:(CGRect)frame {
    if(self = [super initWithFrame:frame]) {
        [self setup:frame];
    }
    return self;
}
- (void)setup:(CGRect)frame {
    self.backgroundColor = [UIColor whiteColor];
    
    _labelHelloWorld = [UILabel new];
    _labelHelloWorld.frame = CGRectMake(0, 0, frame.size.width, margin);
    _labelHelloWorld.center = CGPointMake(frame.size.width/2,  frame.size.height/2);
    _labelHelloWorld.textAlignment = NSTextAlignmentCenter;
    _labelHelloWorld.font = [UIFont systemFontOfSize:36.0];
    [_labelHelloWorld setTextColor:[UIColor blueColor]];
    [self addSubview:_labelHelloWorld];

}

@end
