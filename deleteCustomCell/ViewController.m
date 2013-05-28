//
//  ViewController.m
//  deleteCustomCell
//
//  Created by admin on 21.05.13.
//  Copyright (c) 2013 admin. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"

@interface ViewController ()
{
    NSArray *TitleLabel;
    NSArray *SubtitleLabel;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.myTableView.dataSource = self;
    self.myTableView.delegate = self;
    
    TitleLabel = [[NSArray alloc] initWithObjects:@"YASx786", @"YASx786", @"YASx786", @"YASx786",nil];
    SubtitleLabel = [[NSArray alloc] initWithObjects:@"Subscribe", @"For", @"More", @"Videos",nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger) tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section{
    return TitleLabel.count;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentitifier = @"Cell";
    CustomCell *Cell = [tableView dequeueReusableCellWithIdentifier:CellIdentitifier];
    if (!Cell) {
        Cell = [[CustomCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentitifier];
    }

    Cell.TitleCell.text = [TitleLabel objectAtIndex:indexPath.row];
    Cell.SubtatleLabel.text = [SubtitleLabel objectAtIndex:indexPath.row];
    Cell.myImageView.image = [UIImage imageNamed:@"playBtn.png"];
    return Cell;
}

@end
