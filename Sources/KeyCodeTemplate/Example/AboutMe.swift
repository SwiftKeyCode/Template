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
					bullet {
						Text("I'm a bird")
					}
						.showWhen(step >= 1)

					bullet {
						Text("I'm a plane")
					}
					.showWhen(step >= 2)

					bullet {
						Text("I'm Superman")
					}
					.showWhen(step >= 3)
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
