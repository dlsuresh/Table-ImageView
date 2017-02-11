//
//  ViewController.m
//  TableImage
//
//  Created by Harish Kn on 06/02/17.
//  Copyright © 2017 Harish Kn. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize pic=_pic;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.img2.image =[UIImage imageNamed:self.pic];
    self.str = [NSMutableString stringWithFormat:@" Name \t: %@ \n Year \t: %@ \n Actor \t: %@ \n Review \t: %@ \n Stars \t: %@ ",self.name,self.year,self.actor,self.review,self.stars];
    self.textView.text = self.str;
  //  self.textView.text = [self.str stringByAppendingFormat:@"Name : %@ /n Year : %@ /n Actor : %@ /n Review : %@ /n Stars : %@ ",self.name,self.year,self.actor,self.review,self.stars];
  //  self.str.text = self.name;
//    self.str.text = self.year;
//    self.str.text = self.actor;
//    self.str.text = self.review;
//    self.str.text = self.stars;
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
