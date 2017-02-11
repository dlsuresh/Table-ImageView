//
//  ViewController.h
//  TableImage
//
//  Created by Harish Kn on 06/02/17.
//  Copyright © 2017 Harish Kn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic)NSString *pic;
@property (strong, nonatomic)NSString *name;
@property (strong, nonatomic)NSString *year;
@property (strong, nonatomic)NSString *actor;
@property (strong, nonatomic)NSString *review;
@property (strong, nonatomic)NSString *stars;
@property (strong, nonatomic)NSMutableString *str;


@property (strong, nonatomic) IBOutlet UIImageView *img2;

@property (strong, nonatomic) IBOutlet UITextView *textView;





@end

