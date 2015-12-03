//
//  AddressDetail.m
//  Funnyfood
//
//  Created by Nguyễn Duy Kiều on 12/1/15.
//  Copyright © 2015 Nguyen Duy Kieu. All rights reserved.
//

#import "AddressDetail.h"
#define size_zoom 1.5

@interface AddressDetail () <UIScrollViewDelegate, UIGestureRecognizerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *lblAddress;
@property (weak, nonatomic) IBOutlet UILabel *lblPhone;
@property (nonatomic, strong) UIImageView *photo;
@property (weak, nonatomic) UIScrollView *scrollView;

@end

@implementation AddressDetail

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self addDetailAddress];
    [self addMapToScrollView];
  
}


-(void) addDetailAddress {
    _lblAddress.text  =self.strAddress;
    _lblPhone.text = self.strPhone;
    
    if ([self.strtilteDetailAddress isEqualToString:@"Shop 1"]) {
        self.title =@"Shop 1";
    }else if ([self.strtilteDetailAddress isEqualToString:@"Shop 2"]){
        self.title =@"Shop 2";
    }
}

- (void) addMapToScrollView {
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, self.lblPhone.center.y + 30, self.view.bounds.size.width, self.view.bounds.size.height - self.lblPhone.center.y - 30)];
    scrollView.delegate = self;
    scrollView.minimumZoomScale = 0.2;
    scrollView.maximumZoomScale = 4;
    scrollView.zoomScale = 1;
    scrollView.clipsToBounds = YES;
    
    
    self.photo = [[UIImageView alloc] initWithFrame:CGRectMake(0, self.scrollView.frame.origin.y, self.view.bounds.size.width, 250)];
    self.photo.image = [UIImage imageNamed:self.strMap];
    self.photo.contentMode = UIViewContentModeScaleAspectFit;
    
    self.photo.userInteractionEnabled = YES;
    self.photo.multipleTouchEnabled = YES;
    
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self
                                                                                action:@selector(onTap:)];
    singleTap.numberOfTapsRequired = 1;
    singleTap.delegate = self;
    
    [self.photo addGestureRecognizer:singleTap];
    
    
    UITapGestureRecognizer *doubleTap = [[UITapGestureRecognizer alloc] initWithTarget:self
                                                                                action:@selector(onDoubleTap:)];
    
    doubleTap.numberOfTapsRequired = 2;
    doubleTap.delegate = self;
    [self.photo addGestureRecognizer:doubleTap];
    
    [singleTap requireGestureRecognizerToFail:doubleTap];
    
    [scrollView addSubview:self.photo];
    [self.view addSubview:scrollView];
    self.scrollView = scrollView;
    
}

- (void) onTap: (UITapGestureRecognizer*) tap {
    
    CGPoint tapPoint = [tap locationInView:self.photo];
    
    float newScale = self.scrollView.zoomScale * size_zoom;
    
    [self zoomRectForScale:newScale
                withCenter:tapPoint];
}
- (void) onDoubleTap: (UITapGestureRecognizer*) tap {
    
    CGPoint tapPoint = [tap locationInView:self.photo];
    
    float newScale = self.scrollView.zoomScale / size_zoom;
    
    [self zoomRectForScale:newScale
                withCenter:tapPoint];
}
- (void) zoomRectForScale: (float) scale
               withCenter: (CGPoint) center {
    
    CGRect zoomRect;
    CGSize scrollViewSize = self.scrollView.bounds.size;
    
    zoomRect.size.width = scrollViewSize.width / scale;
    zoomRect.size.height = scrollViewSize.height / scale;
    zoomRect.origin.x = center.x - (zoomRect.size.width / 2);
    zoomRect.origin.y = center.y - (zoomRect.size.height / 2);
    
    [self.scrollView zoomToRect:zoomRect animated:YES];
}
- (UIView*) viewForZoomingInScrollView:(UIScrollView *)scrollView {
    
    return self.photo;
}

@end
