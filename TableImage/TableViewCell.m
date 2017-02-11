//
//  TableViewCell.m
//  TableImage
//
//  Created by Nagam Pawan on 2/7/17.
//  Copyright © 2017 Harish Kn. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.img1.layer.cornerRadius = 55.5;
    
    self.img1.clipsToBounds = YES;

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
   



}

@end
