//
//  BulletSlide.swift
//  Game Presentation 1
//
//  Created by Lukas Tenbrink on 15.06.21.
//

import SwiftUI

struct TitledSlide<Content: View>: View {
	var title: String
	@ViewBuilder var content: () -> Content
	
	public init(title: String, @ViewBuilder content: @escaping () -> Content) {
		self.title = title
		self.content = content
	}

    var body: some View {
		VStack {
			Text(title)
				.slideSubTitle()
			
			Spacer(minLength: 0)
			
			content()

			Spacer()
		}.padding(50)
    }
}

struct BulletSlide_Previews: PreviewProvider {
    static var previews: some View {
		TitledSlide(title: "Test") {
			Text("Content")
		}
    }
}
