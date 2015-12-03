//
//  SaleOffScreen.m
//  Funnyfood
//
//  Created by Nguyễn Duy Kiều on 11/19/15.
//  Copyright © 2015 Nguyen Duy Kieu. All rights reserved.
//

#import "SaleOffScreen.h"
#import "DataItem.h"
#import "CustomCell.h"
#import "ShowDetail.h"

@interface SaleOffScreen ()

@end

@implementation SaleOffScreen
{
    NSMutableArray *arrDetail;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerNib:[UINib nibWithNibName:@"CustomCell" bundle:nil] forCellReuseIdentifier:@"Cell"];
    [self createSalaOff];
}
-(void) createSalaOff{
    DataItem *iceCream1 = [[DataItem alloc] initWithName:@"Kem vali" andPrice:@"$23" withImaga:@"cream01.jpg" andSalaOffPrice:@"-20%"];
    DataItem *brith2 = [[DataItem alloc] initWithName:@"Banh test" andPrice:@"$20" withImaga:@"birthday02.JPG" andSalaOffPrice:@"-10%"];
    DataItem *drink1 = [[DataItem alloc] initWithName:@"Kem vali" andPrice:@"$23" withImaga:@"drink01.jpg" andSalaOffPrice:@"-20%"];
    DataItem *drink2 = [[DataItem alloc] initWithName:@"Kem chuot" andPrice:@"$20" withImaga:@"drink02.jpg" andSalaOffPrice:@"-10%"];
    DataItem *iceCream8 = [[DataItem alloc] initWithName:@"Kem sua dua" andPrice:@"$25" withImaga:@"cream08.jpg" andSalaOffPrice:@"-7%"];
   DataItem *brith11 = [[DataItem alloc] initWithName:@"Bang Kem sua dua" andPrice:@"$25" withImaga:@"birthday11.JPG" andSalaOffPrice:@"-7%"];
    DataItem *cookie7 = [[DataItem alloc] initWithName:@"Banh xoai" andPrice:@"$15" withImaga:@"cookies07.jpg" andSalaOffPrice:@"-2%"];
    DataItem *cookie8 = [[DataItem alloc] initWithName:@"Banh sua dua" andPrice:@"$25" withImaga:@"cookies08.jpg" andSalaOffPrice:@"-7%"];
    DataItem *bread7 = [[DataItem alloc] initWithName:@"Banh Huong Xoai" andPrice:@"$15" withImaga:@"bread07.jpg" andSalaOffPrice:@"-2%"];
    DataItem *bread8 = [[DataItem alloc] initWithName:@"Banh Mi Chao" andPrice:@"$25" withImaga:@"bread08.jpg" andSalaOffPrice:@"-7%"];
    
    arrDetail = [[NSMutableArray alloc] initWithObjects:iceCream1,iceCream8,brith2,brith11,drink1,drink2,cookie7,cookie8,bread7,bread8,nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return arrDetail.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CustomCell *cell = (CustomCell *) [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    DataItem  *dataItem = [[DataItem alloc] init];
    dataItem =arrDetail[ indexPath.row];
    cell.lableName .text  = dataItem.name;
    cell.lablePrice.text = dataItem.Price;
    cell.imageThumbnail.image = dataItem.image;
    cell.lableSaleOff.text = dataItem.saleOff;
    return cell;
}
-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    DataItem *data = [[DataItem alloc] init];
    data = arrDetail [indexPath.row];
    
    ShowDetail *show = [[ShowDetail alloc] init];
    show.imaFood =data.image;
    show.strName =data.name;
    show.strPrice =data.Price;
    show.strSaleOff =data.saleOff;
    
    [self.navigationController pushViewController:show animated:true];
}

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
