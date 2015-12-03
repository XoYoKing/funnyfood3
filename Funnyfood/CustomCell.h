//
//  CustomCell.h
//  Funnyfood
//
//  Created by Nguyễn Duy Kiều on 11/22/15.
//  Copyright © 2015 Nguyen Duy Kieu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageThumbnail;
@property (weak, nonatomic) IBOutlet UILabel *lableName;
@property (weak, nonatomic) IBOutlet UILabel *lablePrice;
@property (weak, nonatomic) IBOutlet UILabel *lableSaleOff;

@end
