//
//  TableViewController.m
//  aboutTableView
//
//  Created by OPSolutions on 04/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewCell.h"
#import "ContactDetailsViewController.h"



@interface TableViewController ()

//Dapat sa h ituu
@property (weak, nonatomic) IBOutlet UITableView *contactListTableView;

@end

@implementation TableViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    //tableViewName -> xibName -> tableViewIdentifier
    
    [self.contactListTableView registerNib:[UINib nibWithNibName:@"NewTableViewCell" bundle:nil] forCellReuseIdentifier:@"ContactCell"];
    
    _tableData = [NSArray arrayWithObjects:@"Even", @"Odd", @"Even", @"Odd", @"Even", @"Odd", @"Even", @"Odd", @"Even", @"Odd", @"Even", @"Odd", @"Even", @"Odd", @"Even", @"Odd", @"Even", @"Odd", @"Even", @"Odd", nil];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [_tableData count];
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    TableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell"];
    
    //cell.tableViewLabel.text = _tableData[indexPath.row];
    
    if (indexPath.row %2 == 0) {
        cell.tableViewLabel.text = @"Even";
        cell.backgroundColor = [UIColor blueColor];

    } else{
        cell.tableViewLabel.text = @"Odd";
        cell.backgroundColor = [UIColor redColor];

    }
    
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    _name = _tableData[indexPath.row];
    
    //TableViewCell * cell2 = [tableView cellForRowAtIndexPath:indexPath];
    
    [self performSegueWithIdentifier:@"contactDetailsSegue" sender:nil];
    
    [_contactListTableView deselectRowAtIndexPath:indexPath animated:true];
    
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqualToString:@"contactDetailsSegue"]) {
        
        ContactDetailsViewController * vc = [segue destinationViewController];
        
        vc.contactName = _name;
        

    
    }
    
   
    
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

