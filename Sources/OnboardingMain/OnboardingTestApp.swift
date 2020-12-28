//
//  OnboardingTestApp.swift
//  OnboardingTest
//
//  Created by roshini_v on 22/12/20.
//

import SwiftUI

@main
 struct OnboardingTestApp: App {
	var body: some Scene {
        WindowGroup {
            LandingView(logo: "GG Logo", titleText: "Every Star Starts at Galaxy", subTitleText: "Failure Notice")
        }
    }
}
