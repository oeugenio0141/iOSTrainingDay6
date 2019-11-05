//
//  MyAlbumViewController.m
//  aboutCollectionView
//
//  Created by OPSolutions on 05/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import "MyAlbumViewController.h"
#import "../Cells/TileCollectionViewCell.h"
#import "ShowMyAlbumViewController.h"

@interface MyAlbumViewController ()

@end

@implementation MyAlbumViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Link collectionView and Tile together
    [self.myAlbumCollectionView registerNib:[UINib nibWithNibName:@"TileCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"TileCell"];
    
    //alternative way of setting delegates and dataSource
    //self.albumCollectionView.delegate = self;
    //self.albumCollectionView.dataSource = self;
    
    //Declaring the array of album using Dictionary
    
    _album = [[NSArray alloc] initWithObjects:
               @{@"photo" : @"img_luffy",
                 @"name" : @"Luffy",
                 },
               @{@"photo" : @"img_zoro",
                 @"name" : @"Zoro",
                 },
               @{@"photo" : @"img_usopp",
                 @"name" : @"Usopp",
                 },
               @{@"photo" : @"img_sanji",
                 @"name" : @"Sanji",
                 },
               @{@"photo" : @"img_nami",
                 @"name" : @"Nami",
                 },
               @{@"photo" : @"img_chopper",
                 @"name" : @"Chopper",
                 },
               @{@"photo" : @"img_franky",
                 @"name" : @"Franky",
                 },
               @{@"photo" : @"img_robin",
                 @"name" : @"Robin",
                 },
               @{@"photo" : @"img_brook",
                 @"name" : @"Brook",
                 },
               @{@"photo" : @"img_jinbei",
                 @"name" : @"Jinbei",
                 },nil] ;
    
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.album.count;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    TileCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"TileCell" forIndexPath:indexPath];
    
    NSDictionary *dict = [self.album objectAtIndex:indexPath.item];
    cell.photoImageView.image = [UIImage imageNamed:dict[@"photo"]];
    cell.albumNameLabel.text = dict[@"name"];
    
    return cell;
    
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    CGRect screenBound = [[UIScreen mainScreen] bounds];
    CGSize screenSize = screenBound.size;
    
    CGFloat computedHeight = screenSize.height / 2;
    CGFloat computedWidth = screenSize.width / 2;
    
    return CGSizeMake(computedWidth, computedHeight);
    
    
}



- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    _myImageView = _album[indexPath.item];
    
    [self performSegueWithIdentifier:@"myAlbumDetailsSegue" sender:nil];
    
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
 
    if ([segue.identifier isEqualToString:@"myAlbumDetailsSegue"]) {
        
        ShowMyAlbumViewController * show = [segue destinationViewController];
        
        show.showImageView = _myImageView;
        

    }
    
}








/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
