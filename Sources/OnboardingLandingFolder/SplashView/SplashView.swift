//
//  SplashView.swift
//  Common
//
//  Created by roshini_v on 18/12/20.
//

import SwiftUI

public struct SplashView: View {
	public let splash: String
	public var body: some View {
		Image(splash)
			.resizable()
			.edgesIgnoringSafeArea(.all)
	}
	public init(splashImg: String) {
		self.splash = splashImg
	}
}

