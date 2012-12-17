//
//  ViewController.m
//  clockApp
//
//  Created by 山崎 宗路 on 2012/12/12.
//  Copyright (c) 2012年 山崎 宗路. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [NSTimer scheduledTimerWithTimeInterval:1.0 //タイマーを発生させる間隔（1秒毎）
                                     target:self //メソッドがあるオブジェクト
                                   selector:@selector(driveClock:) //呼び出すメソッド
                                   userInfo:nil //メソッドに渡すパラメータ
                                    repeats:YES]; //繰り返し
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)driveClock:(NSTimer *)timer
{
    NSDate *today = [NSDate date]; //現在時刻を取得
    
    NSCalendar *calender = [NSCalendar currentCalendar]; //現在時刻の時分秒を取得
    unsigned flags = NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit;
    NSDateComponents *todayComponents = [calender components:flags fromDate:today];
    int hour = [todayComponents hour];
    int min = [todayComponents minute];
    int sec = [todayComponents second];
    
    self.timeLabelText.text = [NSString stringWithFormat:@"%02d:%02d:%02d",hour,min,sec]; //時間を表示
}

@end
