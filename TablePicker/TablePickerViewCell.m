//
//  TablePickerViewCell.m
//  TablePicker
//
//  Created by n3tr on 1/18/12.
//  Copyright (c) 2012 Simpletail. All rights reserved.
//

#import "TablePickerViewCell.h"

@implementation TablePickerViewCell
@synthesize imageViews;
@synthesize defaultImage;


#define MARGIN 4

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier withDefaultImage:(UIImage *)image
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        imageViews = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 4; i++) {
            UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
            [self.contentView addSubview:imageView];
            [imageViews addObject:imageView];
            [imageView release];
        }
        
        
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    

    CGRect bounds = self.contentView.bounds;
    NSInteger cellWidth = bounds.size.width;
    NSInteger cellHeight = bounds.size.height;
    
    UIImageView *imageInCol0 = [imageViews objectAtIndex:0];
    [imageInCol0 setFrame:CGRectMake(MARGIN, MARGIN, 75, 75)];
    
    UIImageView *imageInCol1 = [imageViews objectAtIndex:1];
    [imageInCol1 setFrame:CGRectMake((MARGIN * 2) + 75, MARGIN, 75, 75)];
    
    UIImageView *imageInCol2 = [imageViews objectAtIndex:2];
    [imageInCol2 setFrame:CGRectMake((MARGIN * 3) + (75 * 2), MARGIN , 75, 75)];
    
    UIImageView *imageInCol3 = [imageViews objectAtIndex:3];
    [imageInCol3 setFrame:CGRectMake((MARGIN * 4) + (75 * 3), MARGIN , 75, 75)];
    

}

- (void)setImageView:(UIImageView *)imageView atColIndex:(NSInteger)colIndex
{
    [[imageViews objectAtIndex:colIndex] removeFromSuperview];
    [imageViews removeObjectAtIndex:colIndex];
    
    [self.contentView addSubview:imageView];
    [imageViews insertObject:imageView atIndex:colIndex];
}


- (void)dealloc
{
    [defaultImage release];
    defaultImage = nil;
    
    [imageViews release];
    [self setImageViews:nil];
    
    [super dealloc];
}

@end
