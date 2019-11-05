//
//  TableViewController.h
//  tableViewPractice
//
//  Created by OPSolutions on 05/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>


@property (weak, nonatomic) IBOutlet UITableView *contactTableViewController;

@property (strong, nonatomic)NSArray *tableData;
@property (strong, nonatomic)NSString *contactName;

@end

NS_ASSUME_NONNULL_END
