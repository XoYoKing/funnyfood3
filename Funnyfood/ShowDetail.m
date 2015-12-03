//
//  ShowDetail.m
//  Funnyfood
//
//  Created by Nguyễn Duy Kiều on 12/1/15.
//  Copyright © 2015 Nguyen Duy Kieu. All rights reserved.
//

#import "ShowDetail.h"

@interface ShowDetail ()
@property (weak, nonatomic) IBOutlet UIImageView *imageFood;
@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UILabel *lblPrice;
@property (weak, nonatomic) IBOutlet UILabel *lblSaleOff;

@end

@implementation ShowDetail

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = self.strName;
    
    self.imageFood.image = self.imaFood;
    self.lblName.text = self.strName;
    self.lblPrice.text = self.strPrice;
    self.lblSaleOff.text = self.strSaleOff;
}



@end
