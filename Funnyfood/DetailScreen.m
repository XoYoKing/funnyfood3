//
//  DetailScreen.m
//  Funnyfood
//
//  Created by Nguyễn Duy Kiều on 11/22/15.
//  Copyright © 2015 Nguyen Duy Kieu. All rights reserved.
//

#import "DetailScreen.h"
#import "CustomCell.h"
#import "DataItem.h"
#import "ShowDetail.h"

@interface DetailScreen ()

@end

@implementation DetailScreen
{
    NSMutableArray *arrDetail;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerNib:[UINib nibWithNibName:@"CustomCell" bundle:nil] forCellReuseIdentifier:@"Cell"];
  
}

-(void) viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self chooseDataItem];
    [self. tableView reloadData];
    self .title = self.strTitleDetailScreen ;
}

-(void) chooseDataItem {
    if ([self.strTitleDetailScreen isEqualToString:@"IceCream"]) {
        [self createIceCream];
    }
    else if ([self.strTitleDetailScreen isEqualToString:@"BrithDay"]) {
        [self createBrithDay];
    }
    else if ([self.strTitleDetailScreen isEqualToString:@"Cookies"]) {
        [self createCookie];
    }
    else if ([self.strTitleDetailScreen isEqualToString:@"Bread"]) {
        [self createBread];
    }
    else if ([self.strTitleDetailScreen isEqualToString:@"Drink"]) {
        [self createDrink];
    }
}

-(void) createIceCream {
    DataItem *iceCream1 = [[DataItem alloc] initWithName:@"Kem vali" andPrice:@"$23" withImaga:@"cream01.jpg" andSalaOffPrice:@"-20%"];
    DataItem *iceCream2 = [[DataItem alloc] initWithName:@"Kem chuot" andPrice:@"$20" withImaga:@"cream02.jpg" andSalaOffPrice:@"-10%"];
    DataItem *iceCream3 = [[DataItem alloc] initWithName:@"Kem kiwi" andPrice:@"$13" withImaga:@"cream03.jpg" andSalaOffPrice:@""];
    DataItem *iceCream4 = [[DataItem alloc] initWithName:@"Kem nho" andPrice:@"$33" withImaga:@"cream04.jpg" andSalaOffPrice:@""];
    DataItem *iceCream5 = [[DataItem alloc] initWithName:@"Kem buoi" andPrice:@"$20" withImaga:@"cream05.jpg" andSalaOffPrice:@""];
    DataItem *iceCream6 = [[DataItem alloc] initWithName:@"Kem dau tay" andPrice:@"$18" withImaga:@"cream06.jpg" andSalaOffPrice:@""];
    DataItem *iceCream7 = [[DataItem alloc] initWithName:@"Kem xoai" andPrice:@"$15" withImaga:@"cream07.jpg" andSalaOffPrice:@""];
    DataItem *iceCream8 = [[DataItem alloc] initWithName:@"Kem sua dua" andPrice:@"$25" withImaga:@"cream08.jpg" andSalaOffPrice:@"-7%"];
    
    arrDetail = [[NSMutableArray alloc] initWithObjects:iceCream1,iceCream2,iceCream3,iceCream4,iceCream5,iceCream6,iceCream7,iceCream8, nil];
}
-(void) createBrithDay{
    DataItem *brith1 = [[DataItem alloc] initWithName:@"Banh vali" andPrice:@"$23" withImaga:@"birthday01.JPG" andSalaOffPrice:@""];
    DataItem *brith2 = [[DataItem alloc] initWithName:@"Banh test" andPrice:@"$20" withImaga:@"birthday02.JPG" andSalaOffPrice:@"-10%"];
    DataItem *brith3 = [[DataItem alloc] initWithName:@"Banh abc" andPrice:@"$13" withImaga:@"birthday03.JPG" andSalaOffPrice:@""];
    DataItem *brith4 = [[DataItem alloc] initWithName:@"Banh Kem nho" andPrice:@"$33" withImaga:@"birthday04.JPG" andSalaOffPrice:@""];
    DataItem *brith5 = [[DataItem alloc] initWithName:@"Banh Kem buoi" andPrice:@"$20" withImaga:@"birthday05.jpg" andSalaOffPrice:@""];
    DataItem *brith6 = [[DataItem alloc] initWithName:@"Banh Kem dau tay" andPrice:@"$18" withImaga:@"birthday06.JPG" andSalaOffPrice:@""];
    DataItem *brith7 = [[DataItem alloc] initWithName:@"Banh Kem xoai" andPrice:@"$15" withImaga:@"birthday07.jpg" andSalaOffPrice:@""];
    DataItem *brith8 = [[DataItem alloc] initWithName:@"Bang Kem sua dua" andPrice:@"$25" withImaga:@"birthday08.JPG" andSalaOffPrice:@""];
    DataItem *brith9 = [[DataItem alloc] initWithName:@"Banh Kem dau tay" andPrice:@"$18" withImaga:@"birthday09.jpg" andSalaOffPrice:@""];
    DataItem *brith10 = [[DataItem alloc] initWithName:@"Banh Kem xoai" andPrice:@"$15" withImaga:@"birthday10.jpg" andSalaOffPrice:@""];
    DataItem *brith11 = [[DataItem alloc] initWithName:@"Bang Kem sua dua" andPrice:@"$25" withImaga:@"birthday11.JPG" andSalaOffPrice:@"-7%"];
    
    arrDetail = [[NSMutableArray alloc] initWithObjects:brith1,brith2,brith3,brith4,brith5,brith6,brith7,brith8,brith9,brith10,brith11, nil];
}
-(void) createDrink{
    DataItem *drink1 = [[DataItem alloc] initWithName:@"Cafe Huong Chon" andPrice:@"$23" withImaga:@"drink01.jpg" andSalaOffPrice:@"-20%"];
    DataItem *drink2 = [[DataItem alloc] initWithName:@"Cafe Socola" andPrice:@"$20" withImaga:@"drink02.jpg" andSalaOffPrice:@"-10%"];
    DataItem *drink3 = [[DataItem alloc] initWithName:@"Cafe Sua" andPrice:@"$13" withImaga:@"drink03.jpg" andSalaOffPrice:@""];
    DataItem *drink4 = [[DataItem alloc] initWithName:@"Nuoc Dau" andPrice:@"$33" withImaga:@"drink04.jpg" andSalaOffPrice:@""];
    DataItem *drink5 = [[DataItem alloc] initWithName:@"Nuoc Buoi" andPrice:@"$20" withImaga:@"drink05.jpg" andSalaOffPrice:@""];
    DataItem *drink6 = [[DataItem alloc] initWithName:@"Nuoc Dau Tay" andPrice:@"$18" withImaga:@"drink06.jpg" andSalaOffPrice:@""];
    DataItem *drink7 = [[DataItem alloc] initWithName:@"Nuoc Xoai" andPrice:@"$15" withImaga:@"drink07.jpg" andSalaOffPrice:@""];
 //   DataItem *drink8 = [[DataItem alloc] initWithName:@"Kem sua dua" andPrice:@"$25" withImaga:@"drink08.jpg" andSalaOffPrice:@"-7%"];
    
    arrDetail = [[NSMutableArray alloc] initWithObjects:drink1,drink2,drink3,drink4,drink5,drink6,drink7, nil];
}
-(void) createCookie{
    DataItem *cookie1 = [[DataItem alloc] initWithName:@"Banh Kem vali" andPrice:@"$23" withImaga:@"cookies01.jpg" andSalaOffPrice:@""];
    DataItem *cookie2 = [[DataItem alloc] initWithName:@"Banh  chuoi" andPrice:@"$20" withImaga:@"cookies02.jpg" andSalaOffPrice:@""];
    DataItem *cookie3 = [[DataItem alloc] initWithName:@"Banh  kiwi" andPrice:@"$13" withImaga:@"cookies03.jpg" andSalaOffPrice:@""];
    DataItem *cookie4 = [[DataItem alloc] initWithName:@"Banh  nho" andPrice:@"$33" withImaga:@"cookies04.jpg" andSalaOffPrice:@""];
    DataItem *cookie5 = [[DataItem alloc] initWithName:@"Banh buoi" andPrice:@"$20" withImaga:@"cookies05.jpg" andSalaOffPrice:@""];
    DataItem *cookie6 = [[DataItem alloc] initWithName:@"Banhdau tay" andPrice:@"$18" withImaga:@"cookies06.jpg" andSalaOffPrice:@""];
    DataItem *cookie7 = [[DataItem alloc] initWithName:@"Banh xoai" andPrice:@"$15" withImaga:@"cookies07.jpg" andSalaOffPrice:@"-2%"];
    DataItem *cookie8 = [[DataItem alloc] initWithName:@"Banh sua dua" andPrice:@"$25" withImaga:@"cookies08.jpg" andSalaOffPrice:@"-7%"];
    
    arrDetail = [[NSMutableArray alloc] initWithObjects:cookie1,cookie2,cookie3,cookie4,cookie5,cookie6,cookie7,cookie8, nil];
}
-(void) createBread{
    DataItem *bread1 = [[DataItem alloc] initWithName:@"Banh Mi Socola" andPrice:@"$23" withImaga:@"bread01.jpg" andSalaOffPrice:@""];
    DataItem *bread2 = [[DataItem alloc] initWithName:@"Banh Dac Ruot" andPrice:@"$20" withImaga:@"bread02.jpg" andSalaOffPrice:@""];
    DataItem *bread3 = [[DataItem alloc] initWithName:@"Banh Mi Y" andPrice:@"$13" withImaga:@"bread03.jpg" andSalaOffPrice:@""];
    DataItem *bread4 = [[DataItem alloc] initWithName:@"Banh Nhan Nho" andPrice:@"$33" withImaga:@"bread04.jpg" andSalaOffPrice:@""];
    DataItem *bread5 = [[DataItem alloc] initWithName:@"Banh Mi Kem " andPrice:@"$20" withImaga:@"bread05.jpg" andSalaOffPrice:@""];
    DataItem *bread6 = [[DataItem alloc] initWithName:@"Banh Huong Dau Tay" andPrice:@"$18" withImaga:@"bread06.jpg" andSalaOffPrice:@""];
    DataItem *bread7 = [[DataItem alloc] initWithName:@"Banh Huong Xoai" andPrice:@"$15" withImaga:@"bread07.jpg" andSalaOffPrice:@"-2%"];
    DataItem *bread8 = [[DataItem alloc] initWithName:@"Banh Mi Chao" andPrice:@"$25" withImaga:@"bread08.jpg" andSalaOffPrice:@"-7%"];
    DataItem *bread9 = [[DataItem alloc] initWithName:@"Banh xoai" andPrice:@"$15" withImaga:@"bread07.jpg" andSalaOffPrice:@""];
    DataItem *bread10 = [[DataItem alloc] initWithName:@"Banh sua dua" andPrice:@"$25" withImaga:@"bread08.jpg" andSalaOffPrice:@""];
    
    arrDetail = [[NSMutableArray alloc] initWithObjects:bread1,bread2,bread3,bread4,bread5,bread6,bread7,bread8,bread9,bread10, nil];
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
-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80;
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
