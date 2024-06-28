//
//  MotionAnimationView.swift
//  Hike-SwiftUI
//
//  Created by Mahan Kheirollahi on 6/27/24.
//

import SwiftUI

struct MotionAnimationView: View {
    
    
    // 1. RANDOM COORDINATE
    func randomCordinate() -> CGFloat {
        return CGFloat.random(in: 0...256)
    }
    
    // 2. RANDOM SIZE
    func randomSize() -> CGFloat{
        return CGFloat(Int.random(in: 4...80))
    }
    
    // 3. RANDOM SCALE
    func randomScale() -> Double{
        return Double.random(in: 0.1...2.0)
    }
    
    // 4. RANDOM SPEED
    func randomSpeed() -> CGFloat{
        return Double.random(in: 0.05...1.0)
    }
    
    // 5. RANDOM DELAY
    func randomDelay() -> Double{
        return Double.random(in: 0...2)
    }
    
    @State private var randomCircle: Int = Int.random(in: 6...12)
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack{
            ForEach(0...randomCircle,id: \.self){item in
                Circle()
                    .foregroundStyle(.white)
                    .opacity(0.25)
                    .frame(width: randomSize())
                    .position(
                        x: randomCordinate(),
                        y: randomCordinate())
                    .scaleEffect(isAnimating ? randomScale() : 1)
                    .onAppear(perform: {
                        withAnimation(.interpolatingSpring(stiffness: 0.25, damping: 0.25)
                            .repeatForever()
                            .speed(randomSpeed())
                            .delay(randomDelay()))
                        {
                            isAnimating = true
                        }
                    })
            }
        }
        .frame(width: 256,height: 256)
        .mask(Circle())
        .drawingGroup()
        /// Rendering with high performance Apple's Metal Framework (Direct Connection to the GPU)
    }
}

#Preview {
        MotionAnimationView()
        .background(Circle().fill(.teal))
}
