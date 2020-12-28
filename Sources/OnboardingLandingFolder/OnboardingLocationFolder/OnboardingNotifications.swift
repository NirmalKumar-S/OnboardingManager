//
//  OnboardingNotifications.swift
//  Common
//
//  Created by roshini_v on 22/12/20.
//

import SwiftUI

struct OnboardingNotifications: View {
    var body: some View {
		OnboardingView(backgroundImg: "ic_notificationsBG",logoImg:"ic_notifications",title:"Title(Max 28 Characters)", description:"Value prop description as short as possible  \n Value prop description max line count 3 \n Value prop description max char count 129", onboardingScreen: .notifications)
    }
    
}

struct OnboardingNotifications_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingNotifications()
    }
}
