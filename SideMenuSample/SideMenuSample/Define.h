//
//  Define.h
//  SideMenuSample
//
//  Created by Luokey on 1/3/17.
//  Copyright © 2017 root. All rights reserved.
//

#ifndef Define_h
#define Define_h


#define ScreenBounds                        [UIScreen mainScreen].bounds


#define Segue_ShowMainVC                    @"ShowMainVC"
#define Segue_ShowMainVCWithoutAnimation    @"ShowMainVCWithoutAnimation"
#define Segue_ShowLeftMenu                  @"ShowLeftMenu"
#define Segue_ShowRightMenu                 @"ShowRightMenu"
#define Segue_ShowFastOrderVC               @"ShowFastOrderVC"
#define Segue_ShowMagicOrderVC              @"ShowMagicOrderVC"
#define Segue_ShowProfileVC                 @"ShowProfileVC"
#define Segue_ShowProfileVCModally          @"ShowProfileVCModally"
#define Segue_ShowTermsVC                   @"ShowTermsVC"
#define Segue_ShowHelpVC                    @"ShowHelpVC"
#define Segue_ShowHistoryVC                 @"ShowHistoryVC"
#define Segue_Logout                        @"Logout"



typedef enum MenuItem
{
    MenuItem_FastOrder = 0,
    MenuItem_MagicOrder = 1,
    MenuItem_Profile = 2,
    MenuItem_History = 3,
    MenuItem_Terms = 4,
    MenuItem_Help = 5,
    MenuItem_Logout = 6,
}
MenuItem;



#endif /* Define_h */
