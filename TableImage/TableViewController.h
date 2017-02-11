//
//  TableViewController.h
//  TableImage
//
//  Created by Harish Kn on 06/02/17.
//  Copyright © 2017 Harish Kn. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface TableViewController : UITableViewController<UITableViewDelegate,UITableViewDataSource>



@property (strong, nonatomic)NSArray *arr1;
@property (strong, nonatomic)NSArray *actorArray;
@property (strong, nonatomic)NSArray *starsArray;

@property (strong, nonatomic)NSArray *movieName;
@property (strong, nonatomic)NSArray *yearArray;
@property (strong, nonatomic)NSArray *reviewArray;


@end
