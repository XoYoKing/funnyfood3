//
//  DataItem.m
//  Funnyfood
//
//  Created by Nguyễn Duy Kiều on 11/22/15.
//  Copyright © 2015 Nguyen Duy Kieu. All rights reserved.
//

#import "DataItem.h"

@implementation DataItem
 -(instancetype) initWithName:(NSString *)name
                     andPrice:(NSString *)price
                    withImaga:(NSString *)imaga
              andSalaOffPrice:(NSString *)saleOff{
     if (self = [super init]) {
         self.name = name;
         self.Price = price;
         self.image = [UIImage imageNamed:imaga];
         self.saleOff = saleOff;
     }
     
     
     return self;
 }
@end
