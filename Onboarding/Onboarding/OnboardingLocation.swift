//
//  OnboardingLocation.swift
//  Common
//
//  Created by roshini_v on 22/12/20.
//

import SwiftUI

public struct OnboardingLocation: View {
   public var body: some View {
   OnboardingView(backgroundImg: "ic_pickupImage",logoImg:"ic_pickupLogo",title:"Title(Max 28 Characters)", description:"Value prop description as short as possible  \n Value prop description max line count 3 \n Value prop description max char count 129", onboardingScreen: .locations)
      
    }
    
}
