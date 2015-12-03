//
//  AddressScreen.m
//  Funnyfood
//
//  Created by Nguyễn Duy Kiều on 12/1/15.
//  Copyright © 2015 Nguyen Duy Kieu. All rights reserved.
//

#import "AddressScreen.h"
#import "AddressDetail.h"

@interface AddressScreen ()< UITableViewDelegate,UITableViewDataSource>

@end

@implementation AddressScreen
{
    NSArray *arrShop,*arrLocaltion,*arrPhone,*arrayMap;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    arrShop =@[@"Shop 1",@"Shop 2"];
    arrLocaltion =@ [@"So 1 ngo 2",@"So 69 Kim Lien"];
    arrPhone =@[@"0123456789",@"0986868686"];
    arrayMap = @[@"mapNDC.png", @"mapLVL.png"];
    
    // Do any additional setup after loading the view.
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds  style:UITableViewStylePlain];
    
    self.tableView.dataSource =self;
    self.tableView.delegate = self;
    
    
    [self.view addSubview:self.tableView];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return arrShop.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell= [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell = [cell initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
    
    cell .textLabel.text = [arrShop objectAtIndex:indexPath.row];
    
    cell .detailTextLabel.text = [arrLocaltion objectAtIndex:indexPath.row];
    cell.detailTextLabel.textColor = [UIColor redColor];
    
    cell .imageView .image = [UIImage imageNamed:@"location2"];
    
    
    
    return cell;
}
-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    AddressDetail *addressDetail = [[AddressDetail alloc] initWithNibName:@"AddressDetail" bundle:nil];
    addressDetail .strtilteDetailAddress = arrShop [indexPath.row];
    addressDetail.strAddress = arrLocaltion[indexPath.row];
    addressDetail.strPhone = arrPhone [indexPath.row];
    addressDetail.strMap = arrayMap[indexPath.row];
    [self.navigationController pushViewController:addressDetail animated:true];
}

-(CGFloat) tableView: (UITableView *) tableView heightForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    return 70;
}


@end
