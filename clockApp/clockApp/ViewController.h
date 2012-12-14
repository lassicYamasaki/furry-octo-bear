//
//  ViewController.h
//  clockApp
//
//  Created by 山崎 宗路 on 2012/12/12.
//  Copyright (c) 2012年 山崎 宗路. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *timeLabelText;
- (void)driveClock:(NSTimer *)timer;
@end
