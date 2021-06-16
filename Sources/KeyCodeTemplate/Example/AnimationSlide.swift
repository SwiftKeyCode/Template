//
//  File.swift
//  
//
//  Created by Lukas Tenbrink on 16.06.21.
//

import SwiftUI
import KeyCode

struct AnimationSlide: View {
	struct State: View {
		var leftOpacity: Double = 0
		var rightOpacity: Double = 0
				
		var body: some View {
			HStack {
				Rectangle().opacity(leftOpacity)
				
				Rectangle().opacity(rightOpacity)
			}
		}
	}
	
	var sequence: [State] {
		var sequence: Sequencer<State> = .init(initialState: State())
		
		sequence[\.leftOpacity] = 1

		sequence[\.rightOpacity] = 1

		sequence.temporary {
			$0.next {
				$0.leftOpacity = 0
				$0.rightOpacity = 0
			}
		}
		
		return sequence.asArray
	}

	var body: some View {
		EmptySlide {
			StateDeck.view(sequence)
		}
	}
}

struct AnimationSlide_Previews: PreviewProvider {
	static var previews: some View {
		AnimationSlide()
			.withTemplateSlideStyle()
	}
}
