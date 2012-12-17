//
//  DayController.h
//  clockApp
//
//  Created by 山崎 宗路 on 2012/12/12.
//  Copyright (c) 2012年 山崎 宗路. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DayController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *myTableView;


@end
