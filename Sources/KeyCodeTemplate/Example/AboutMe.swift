//
//  Slide1.swift
//  Game Presentation 1
//
//  Created by Lukas Tenbrink on 15.06.21.
//

import SwiftUI
import KeyCode

struct AboutMe: View {	
    var body: some View {
		TitledSlide(title: "Some Facts about Me") {
			StepDeck(steps: 4) { step in
				BulletList(BulletBuilder<Text>.dot) { bullet in
					bullet(0) {
						Text("I'm a bird")
					}
						.highlightedOpacity(onStep: 1, current: step)

					bullet(1) {
						Text("I'm a plane")
					}
						.highlightedOpacity(onStep: 2, current: step)

					bullet(2) {
						Text("I'm Superman")
					}
						.highlightedOpacity(onStep: 3, current: step)
				}
			}
		}
    }
}

struct Slide1_Previews: PreviewProvider {
    static var previews: some View {
		AboutMe()
			.withTemplateSlideStyle()
    }
}
