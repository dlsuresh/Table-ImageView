//
//  TableViewCell.h
//  TableImage
//
//  Created by Nagam Pawan on 2/7/17.
//  Copyright © 2017 Harish Kn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface TableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *img1;
@property (strong, nonatomic) IBOutlet UILabel *lb01;
@property (strong, nonatomic) IBOutlet UILabel *lb02;

@end
