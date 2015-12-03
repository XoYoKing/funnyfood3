//
//  AboutScreen.m
//  Funnyfood
//
//  Created by Nguyễn Duy Kiều on 11/19/15.
//  Copyright © 2015 Nguyen Duy Kieu. All rights reserved.
//

#import "AboutScreen.h"

@interface AboutScreen ()
@property (nonatomic ,strong) UITextView *textView;

@end

@implementation AboutScreen{
    NSTimer *autoTextViewScroll;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self addTextView];
}
-(void) addTextView {
    self.textView = [[UITextView alloc] initWithFrame:CGRectMake(28, 150, self.view.bounds.size.width - 48, self.view.bounds.size.height  - 388)];
    self.textView.text = @"\n\n\n\n Nằm ở giữa khu đô thị có nhiều nhà cao tầng, Nhà hàng Funny Food mọc lên như một trung tâm ăn uống nghỉ ngơi tiện nghi, hiện đại, sang trọng bậc nhất của Hà thành.\n\n Tọa lạc tại khu vực sầm uất của Hà Nội - Trung hòa Nhân Chính, Nhà hàng Funny Food với không gian xanh, đẹp, rộng rãi, thoáng mát, giao thông và bãi đỗ xe thuận tiện sẽ mang đến cho quý khách cảm giác  thoải mái, gần gũi, thân thuộc.\n\n Ngoài ra, nét lôi cuốn dễ nhận thấy nhất khi quý khách đến với Nhà hàng Funny Food chính là khu sân vườn rộng rãi, thoáng mát, trong lành, nhiều cây xanh... nằm trong khuôn viên rộng tới 1.500m2. Nhà hàng Funny Food cũng rất phù hợp cho các gia đình đến nghỉ ngơi cuối tuần. Các bé có thể tự do vui chơi, chạy nhảy và chơi những trò chơi lý thú, bổ ích ngay tại Nhà hàng.";
    self.textView.backgroundColor = [UIColor clearColor];
    self.textView.textColor = [UIColor whiteColor];
    
    if (autoTextViewScroll == nil) {
        autoTextViewScroll = [NSTimer scheduledTimerWithTimeInterval:60.0/1000.0 target:self selector:@selector(autoTextView) userInfo:nil repeats:true];
    }
    
    [self .view addSubview:self.textView];
}
-(void) autoTextView {
    CGPoint srcollPoint=self.textView .contentOffset;
    srcollPoint = CGPointMake(srcollPoint.x, srcollPoint.y + 1);
    if (srcollPoint.y > 400) {
        srcollPoint.y = -300;
    }
    [self.textView setContentOffset:srcollPoint animated:false];
}

@end
