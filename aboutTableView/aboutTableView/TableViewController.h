//
//  TableViewController.h
//  aboutTableView
//
//  Created by OPSolutions on 04/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>


@property (strong, nonatomic)NSArray *tableData;
@property (strong, nonatomic)NSString *name;
@property (assign, nonatomic) NSInteger index;


@end

NS_ASSUME_NONNULL_END
