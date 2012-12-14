//
//  DayController.m
//  clockApp
//
//  Created by 山崎 宗路 on 2012/12/12.
//  Copyright (c) 2012年 山崎 宗路. All rights reserved.
//

#import "DayController.h"

@implementation DayController

@synthesize myTableView;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//行の数と表示する内容
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.myTableView.dataSource = self;
    self.myTableView.delegate   = self;
}

//テーブルの行数を今の月の日数分取得する
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSDate *date = [[NSDate alloc] init ];
    NSCalendar* calendar = [NSCalendar currentCalendar];
    NSRange range = [calendar rangeOfUnit:NSDayCalendarUnit inUnit:NSMonthCalendarUnit forDate:date];
    //末日を取得
    NSInteger max = range.length;
    return max;
}
//行に表示するデータをここで定義する
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    UIView *selected_bg_view = [[UIView alloc] initWithFrame:cell.bounds];
    selected_bg_view.backgroundColor = [UIColor greenColor];
    cell.selectedBackgroundView = selected_bg_view;

    
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    //曜日
    NSString *weekdays[] = {@"",@"日",@"月",@"火",@"水",@"木",@"金",@"土"};
    
    NSDate *date = [[NSDate alloc] init ];
    
    // NSCalendar を取得
    NSCalendar* calendar = [NSCalendar currentCalendar];
    
    // 取得したい要素を表すフラグを添えて、日付からその情報を持った NSDateComponents を取得する
    NSDateComponents* components = [calendar components:NSYearCalendarUnit|NSMonthCalendarUnit|NSDayCalendarUnit|NSWeekdayCalendarUnit fromDate:date];
    
    // NSDateComponents から、年や月を取得する
    NSInteger year = components.year;
    NSInteger month = components.month;
    NSInteger day = components.day;
    NSInteger weekday = components.weekday;
    
    cell.textLabel.text = [NSString stringWithFormat:@"%d /%d /%d /%@", year,month,day,weekdays[weekday]];
    
    return cell;
}



@end
