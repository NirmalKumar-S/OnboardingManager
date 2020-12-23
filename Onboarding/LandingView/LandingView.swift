//
//  LandingView.swift
//  DSG Blank
//
//  Created by roshini_v on 17/12/20.
//  Copyright © 2020 Dick's Sporting Goods. All rights reserved.
//

import SwiftUI
import AVKit

public struct LandingView: View {
	private let player = AVPlayer(url: URL(string: "https://bit.ly/swswift")!)
	public let logo: String
	public let titleText: String
	public let subTitleText: String
	@State var isLocations: Bool = false
	public var body: some View {
		
		if #available(iOS 14.0, *) {
			NavigationView {
				VStack(spacing:5) {
					NavigationLink(destination: OnboardingLocation(), isActive: $isLocations) {
						EmptyView() }
					Spacer()
					Image(logo)
					Spacer()
					Text(titleText)
						.bold()
						.font(.system(size: 17))
						.foregroundColor(.white)
						.padding(.bottom,45)
					
					Text(subTitleText)
						.font(.system(size: 17))
						.foregroundColor(.white)
						.padding(.bottom,68)
					
					Button(action: {
						self.isLocations = true
					}, label: {
						Text("GET STARTED")
							.font(.system(size: 14))
							.frame(minWidth: 0, maxWidth: .infinity,maxHeight: 48.0)
							.foregroundColor(Color.init("FontBlueColor"))
							.background(Color.white)
						
					}).padding(.horizontal, 16.0)
					Button(action: {
						
					}, label: {
						Text("SIGN IN")
							.font(.system(size: 14))
							.frame(minWidth: 0, maxWidth: .infinity,maxHeight: 48.0)
							.foregroundColor(.white)
							.background(Color.init("GreenColor"))
					}).padding(.bottom, 72.0)
					.padding(.horizontal, 16)
				}
				.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
				.background(Image("ic_landing")
								.resizable()
								//.scaledToFill()
								.edgesIgnoringSafeArea(.all))
				
				//			.background(VideoPlayer(player: player)
				//							.onAppear() {
				//								player.play()
				//							}
				//							.scaledToFill()
				//							.edgesIgnoringSafeArea(.all)
				//			)
				
			}.navigationBarHidden(true)}
		else {
			// Fallback on earlier versions
		}
	}
	
	public init(logo: String, titleText: String, subTitleText: String) {
		self.logo = logo
		self.titleText = titleText
		self.subTitleText = subTitleText
	}
	
}

