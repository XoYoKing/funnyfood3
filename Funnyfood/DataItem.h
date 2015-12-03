//
//  DataItem.h
//  Funnyfood
//
//  Created by Nguyễn Duy Kiều on 11/22/15.
//  Copyright © 2015 Nguyen Duy Kieu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DataItem : NSObject

@property (nonatomic,strong)NSString *name;
@property (nonatomic,strong)NSString *Price;
@property (nonatomic,strong)UIImage *image;
@property (nonatomic,strong)NSString *saleOff;

-(instancetype) initWithName : (NSString *) name
                    andPrice : (NSString *) price
                   withImaga : (NSString *) imaga
              andSalaOffPrice: (NSString *) saleOff;

@end
