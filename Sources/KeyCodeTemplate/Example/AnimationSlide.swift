//
//  File.swift
//  
//
//  Created by Lukas Tenbrink on 16.06.21.
//

import SwiftUI
import KeyCode

struct AnimationSlide: View {
	var leftOpacity: Double = 0
	var rightOpacity: Double = 0
	
	static var sequence: [AnimationSlide] {
		var sequence: Sequencer<AnimationSlide> = .init(initialState: AnimationSlide())
		
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
			HStack {
				Rectangle().opacity(leftOpacity)
				
				Rectangle().opacity(rightOpacity)
			}
		}
	}
}

struct AnimationSlide_Previews: PreviewProvider {
	static var previews: some View {
		AnimationSlide()
			.withTemplateSlideStyle()
	}
}
