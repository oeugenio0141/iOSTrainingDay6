//
//  TableViewController.m
//  tableViewPractice
//
//  Created by OPSolutions on 05/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import "TableViewController.h"
#import "ContactTableViewCell.h"


@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self.contactTableViewController registerNib:[UINib nibWithNibName:@"TableViewCellXib" bundle:nil] forCellReuseIdentifier:@"tableViewCellIdentifier"];
    
    _tableData = [NSArray arrayWithObjects:@"Even", @"Odd", @"Even", @"Odd", @"Even", @"Odd", @"Even", @"Odd", @"Even", @"Odd", @"Even", @"Odd", @"Even", @"Odd", @"Even", @"Odd", @"Even", @"Odd", @"Even", @"Odd", nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [_tableData count];
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    ContactTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"tableViewCellIdentifier"];
    
    return cell;
    
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
