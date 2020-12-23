//
//  OnboardingView.swift
//  Common
//
//  Created by roshini_v on 21/12/20.
//

import SwiftUI

enum OnboardingScreen {
	case locations
	case notifications
}

public struct OnboardingView: View {
	let backgroundImg: String
	let logoImg: String
	let title: String
	let description: String
	let onboardingScreen: OnboardingScreen
	@State var isMoveToNextView: Bool = false
	public var body: some View {
	NavigationView {
		VStack {
			ZStack {
				Image(backgroundImg)
					.resizable().edgesIgnoringSafeArea(.top)
				if onboardingScreen == .locations {
					Image(logoImg)
						.frame(width: 100, height: 100, alignment: .center)
				}else {
					Image(logoImg)
					     .padding(.horizontal,16)
						.frame(width: 100, height: 100)
						
				}
				Button(action: {}, label: {
					Text("Skip")
						.font(.system(size: 14))
						.foregroundColor(.white)
						.position(x: UIScreen.main.bounds.width - 36.0, y: 10.0)
					
				})
			}
			Spacer()
			
			VStack(spacing:27) {
				NavigationLink(destination: OnboardingNotifications(), isActive: $isMoveToNextView){
			EmptyView() }
				//Image("ic_pickupImage")
				// .resizable()
				Text(title)
					.font(.system(size: 17))
					.bold()
				Text(description)
					.font(.system(size: 17))
					.multilineTextAlignment(.center)
					.padding(.horizontal,16)
				Button(action: {
				if onboardingScreen == .locations {
				     self.isMoveToNextView = true
				}
					}, label: {
					Text("NEXT")
						.font(.system(size: 14))
						.frame(minWidth: 0, maxWidth: .infinity,maxHeight: 48.0)
						.foregroundColor(.white)
						.background(Color.init("GreenColor"))
					
				}).padding(.horizontal, 16.0)
				HStack {
					Rectangle()
						.fill(Color.black)
						.frame(width: 60, height: 3)
					Rectangle()
						.fill(Color.gray)
						.frame(width: 60, height: 3)
				}
				
				
			} .frame(width: UIScreen.main.bounds.width)
			
			
			
			
		}.navigationBarHidden(true)
	}.navigationBarHidden(true)}
	
}
