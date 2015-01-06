VKActivity
==========

iOS 6 style photo sharing for VKontakte social network. It was initially developed for the PhotoSuerte app (there you might have a look on how it works) => http://photosuerte.com


The sample might be found here => `TestViewController`:

    NSArray *items = @[[UIImage imageNamed:@"example.jpg"], @«Example», [NSURL URLWithString:@"https://www.youtube.com/watch?v=S59fDUZIuKY"]];
    VKontakteActivity *vkontakteActivity = [[VKontakteActivity alloc] initWithParent:self];
    
    UIActivityViewController *activityViewController = [[UIActivityViewController alloc]
                                                        initWithActivityItems:items
                                                        applicationActivities:@[vkontakteActivity]];
    
    [self presentViewController:activityViewController animated:YES completion:nil];
