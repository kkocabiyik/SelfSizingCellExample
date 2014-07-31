//
//  SelfSizingTableViewCell.m
//  SelfSizingCellExample
//
//  Created by Kemal Kocabiyik on 01/08/14.
//  Copyright (c) 2014 Kemal Kocabiyik. All rights reserved.
//

#import "SelfSizingTableViewCell.h"

@implementation SelfSizingTableViewCell

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void) initializeCellWithItem:(NSDictionary *) dict{
    
    self.titleLabel.font = [UIFont preferredFontForTextStyle:@"Helvetica-Neue"];
    self.descLabel.font = [UIFont preferredFontForTextStyle:@"Helvetica-Neue"];
    self.titleLabel.text = [dict valueForKey:@"title"];
    self.descLabel.text = [dict valueForKey:@"description"];
}

@end
