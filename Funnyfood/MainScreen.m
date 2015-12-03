//
//  MainScreen.m
//  Funnyfood
//
//  Created by Nguyễn Duy Kiều on 11/19/15.
//  Copyright © 2015 Nguyen Duy Kieu. All rights reserved.
//

#import "MainScreen.h"
#import "DetailScreen.h"

@interface MainScreen ()
@property (nonatomic,strong) DetailScreen * detailScreen;

@end

//

@implementation MainScreen
- (IBAction)btnDrink:(id)sender {
    if (!self.detailScreen) {
        self.detailScreen = [[DetailScreen alloc] init];
    }
    self.detailScreen.strTitleDetailScreen = @"Drink";
    [self.navigationController pushViewController:self.detailScreen animated:true];
    
}
- (IBAction)btnBrithday:(id)sender {
    if (!self.detailScreen) {
        self.detailScreen = [[DetailScreen alloc] init];
    }
    self.detailScreen.strTitleDetailScreen = @"BrithDay";
    [self.navigationController pushViewController:self.detailScreen animated:true];
}
- (IBAction)btnIceCram:(id)sender {
    if (!self.detailScreen) {
        self.detailScreen = [[DetailScreen alloc] init];
    }
    self.detailScreen.strTitleDetailScreen = @"IceCream";
    [self.navigationController pushViewController:self.detailScreen animated:true];
}
- (IBAction)btnCokkies:(id)sender {
    if (!self.detailScreen) {
        self.detailScreen = [[DetailScreen alloc] init];
    }
    self.detailScreen.strTitleDetailScreen = @"Cookies";
    [self.navigationController pushViewController:self.detailScreen animated:true];
}
- (IBAction)btnBread:(id)sender {
    if (!self.detailScreen) {
        self.detailScreen = [[DetailScreen alloc] init];
    }
    self.detailScreen.strTitleDetailScreen = @"Bread";
    [self.navigationController pushViewController:self.detailScreen animated:true];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
