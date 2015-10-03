//
//  DemoTableViewController.m
//  MyTableSample
//
//  Created by athira on 18/09/15.
//  Copyright (c) 2015 athira. All rights reserved.
//

#import "DemoTableViewController.h"
#import "MSPWebViewController.h"
#import "AppDelegate.h"

@implementation DemoTableViewController

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 25;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    MSPWebViewController *webViewController = [[MSPWebViewController alloc]initWithNibName:@"MSPWebViewController" bundle:nil];
//                                 
//   [self.navigationController pushViewController:webViewController animated:YES];
    
    MSPWebViewController *myVController = (MSPWebViewController *)[self.storyboard instantiateViewControllerWithIdentifier:@"sampleweb"];
  
    //NSLog(@"%f", indexPath);
    //NSLog(@"Row selected");
    NSString *UrlPath;
    switch (indexPath.row)
    {
        case 0:
            UrlPath = KSHUDGAGA_PAGE;
            break;
        case 1:
            UrlPath = VYOMAPADA_PAGE;
            break;
        case 2:
            UrlPath = LILASANA_PAGE;
            break;
        case 3:
            UrlPath = SAMUDAMSHA_PAGE;
            break;
        case 4:
            UrlPath = DOLA_PAGE;
            break;
        case 5:
            UrlPath = VIRSHA_PAGE;
            break;
        case 6:
            UrlPath = GRAMYA_PAGE;
            break;
        case 7:
            UrlPath = PADMA_PAGE;
            break;
        case 8:
            UrlPath = UTHKANTA_PAGE;
            break;
        case 9:
            UrlPath = DHENUKA_PAGE;
            break;
        case 10:
            UrlPath = RATISUNDARA_PAGE;
            break;
        case 11:
            UrlPath = MARJARA_PAGE;
            break;
        case 12:
            UrlPath = VADAVAKA_PAGE;
            break;
        case 13:
            UrlPath = AVALAMBITAKA_PAGE;
            break;
        case 14:
            UrlPath = DOLITA_PAGE;
            break;
        case 15:
            UrlPath = BHRAMARA_PAGE;
            break;
        case 16:
            UrlPath = RATIPASHA_PAGE;
            break;
        case 17:
            UrlPath = SVANAKA_PAGE;
            break;
        case 18:
            UrlPath = MANMATHPRIYA_PAGE;
            break;
        case 19:
            UrlPath = TRIPADAM_PAGE;
            break;
        case 20:
            UrlPath = HIRANA_PAGE;
            break;
        case 21:
            UrlPath = DEVABANDHA_PAGE;
            break;
        case 22:
            UrlPath = SAMPUTA_PAGE;
            break;
        case 23:
            UrlPath = STHITA_PAGE;
            break;
        case 24:
            UrlPath = MADANDHVAJA_PAGE;
            break;
        default:
            UrlPath = DOLA_PAGE;
            break;
    }
    AppDelegate *delegateone = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    delegateone.webHTMLString =UrlPath;

    [self.navigationController pushViewController:myVController
                                         animated:YES];
    

}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   	cellBackgroundImage = [UIImage imageNamed:ROW_BACKGROUND];
    NSString *text;
    UIImage *image;
    UITableViewCell *cell;
    UIImageView *backgroundImageView;
    cell = (UITableViewCell*)[tableView dequeueReusableCellWithIdentifier:@"any-cell"];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"any-cell"];
    }
        switch (indexPath.row) {
            case 0:
                text = @"Face Your Love";
                image = [UIImage imageNamed:KSHUDGAGA_ICON];
                break;
            case 1:
                text = @"Mythical Sky Scrapper";
                image = [UIImage imageNamed:VYOMAPADA_ICON];
                break;
            case 2:
                text = @"Mythical V";
                image = [UIImage imageNamed:LILASANA_ICON];
                break;
            case 3:
                text = @"The Reverse T";
                image = [UIImage imageNamed:SAMUDAMSHA_ICON];
                break;
            case 4:
                text = @"Love Of The Ape Man";
                image = [UIImage imageNamed:DOLA_ICON];
                break;
            case 5:
                text = @"Devils Paradise";
                image = [UIImage imageNamed:VIRSHA_ICON];
                break;
            case 6:
                text = @"Mythical Slavery";
                image = [UIImage imageNamed:GRAMYA_ICON];
                break;
            case 7:
                text = @"Tsunamycal Love";
                image = [UIImage imageNamed:PADMA_ICON];
                break;
            case 8:
                text = @"Mythical Juice Evolution";
                image = [UIImage imageNamed:UTHKANTA_ICON];
                break;
            case 9:
                text = @"The Master With His Slave";
                image = [UIImage imageNamed:DHENUKA_ICON];
                break;
            case 10:
                text = @"Pleasing The Aphrodite's";
                image = [UIImage imageNamed:RATISUNDARA_ICON];
                break;
            case 11:
                text = @"Mouth Of A Mule";
                image = [UIImage imageNamed:MARJARA_ICON];
                break;
            case 12:
                text = @"The Sitting Angel";
                image = [UIImage imageNamed:VADAVAKA_ICON];
                break;
            case 13:
                text = @"Hanging Rose";
                image = [UIImage imageNamed:AVALAMBITAKA_ICON];
                break;
            case 14:
                text = @"Love Of Spider";
                image = [UIImage imageNamed:DOLITA_ICON];
                break;
            case 15:
                text = @"Mythical Mariana Trench";
                image = [UIImage imageNamed:BHRAMARA_ICON];
                break;
            case 16:
                text = @"Optical Radiation";
                image = [UIImage imageNamed:RATIPASHA_ICON];
                break;
            case 17:
                text = @"The Excavator";
                image = [UIImage imageNamed:SVANAKA_ICON];
                break;
            case 18:
                text = @"Forbidden Rose";
                image = [UIImage imageNamed:MANMATHPRIYA_ICON];
                break;
            case 19:
                text = @"Ride With Sleeping Rose";
                image = [UIImage imageNamed:TRIPADAM_ICON];
                break;
            case 20:
                text = @"Mythical Pendulum";
                image = [UIImage imageNamed:HIRANA_ICON];
                break;
            case 21:
                text = @"Sprawling In The Net";
                image = [UIImage imageNamed:DEVABANDHA_ICON];
                break;
            case 22:
                text = @"Mythical Enlightenment";
                image = [UIImage imageNamed:SAMPUTA_ICON];
                break;
            case 23:
                text = @"Slanting Chocolate";
                image = [UIImage imageNamed:STHITA_ICON];
                break;
            case 24:
                text = @"Mythical Reincarnation";
                image = [UIImage imageNamed:MADANDHVAJA_ICON];
                break;
            default:
                text = @"Others";
                image = [UIImage imageNamed:DOLA_ICON];
                break;
        }
    
    cell.textLabel.font = [UIFont systemFontOfSize:16.0];
    cell.textLabel.textColor = [UIColor  blackColor];
    cell.textLabel.text = text;
    cell.imageView.image = image;
    
    backgroundImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    backgroundImageView.image = cellBackgroundImage;
    cell.backgroundView = backgroundImageView;

    return cell;
}

@end
