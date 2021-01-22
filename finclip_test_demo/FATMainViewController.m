//
//  FATMainViewController.m
//  finclip_test_demo
//
//  Created by Haley on 2020/11/19.
//

#import "FATMainViewController.h"

@interface FATMainViewController ()<UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@property (nonatomic, copy) NSString *brandName;
@property (nonatomic, copy) NSString *sdkVersion;

@property (nonatomic, copy) NSString *pluginBrandName;
@property (nonatomic, copy) NSString *pluginVersion;

@end

@implementation FATMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"凡泰送检App";
    
    self.brandName = @"";
    self.sdkVersion = @"";
    self.pluginBrandName = @"";
    self.pluginVersion = @"";
    
    [self p_initSubViews];
}

- (void)p_initSubViews
{
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    self.tableView.rowHeight = 50;
    
    UIView *bottomView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, width, 50)];
    CGFloat btnX = 40;
    CGFloat btnY = 5;
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(btnX, btnY, width - 80, 40)];
    btn.backgroundColor = [UIColor colorWithRed:41/255.0 green:127/255.0 blue:249/255.0 alpha:1];
    [btn setTitle:@"打开小程序" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(openApplet) forControlEvents:UIControlEventTouchUpInside];
    [bottomView addSubview:btn];
    self.tableView.tableFooterView = bottomView;
    
    self.tableView.dataSource = self;
    
    [self.view addSubview:self.tableView];
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifer = @"identifer";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifer];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifer];
    }
    
    if (indexPath.row == 0) {
        cell.textLabel.text = [@"SDK开发商名称：" stringByAppendingString:self.brandName];
    } else if (indexPath.row == 1) {
        cell.textLabel.text = [@"SDK版本号：" stringByAppendingString:self.sdkVersion];
    } else if (indexPath.row == 2) {
        cell.textLabel.text = [@"插件供应商（如有）：" stringByAppendingString:self.pluginBrandName];
    } else if (indexPath.row == 3) {
        cell.textLabel.text = [@"插件版本号（如有）：" stringByAppendingString:self.pluginVersion];
    }
    
    return cell;
}

- (void)openApplet
{

}

@end
