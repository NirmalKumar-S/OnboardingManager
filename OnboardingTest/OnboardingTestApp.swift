//
//  OnboardingTestApp.swift
//  OnboardingTest
//
//  Created by roshini_v on 22/12/20.
//

import SwiftUI
import KingfisherSwiftUI

@main
struct OnboardingTestApp: App {
    var body: some Scene {
        WindowGroup {
			
			KFImage(URL(string: "https://picsum.photos/200/300")!)

            LandingView(logo: "GG Logo", titleText: "Every Star Starts at Galaxy", subTitleText: "Failure Notice")
        }
    }
}
