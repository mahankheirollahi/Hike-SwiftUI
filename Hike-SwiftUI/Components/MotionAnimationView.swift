//
//  MotionAnimationView.swift
//  Hike-SwiftUI
//
//  Created by Mahan Kheirollahi on 6/27/24.
//

import SwiftUI

struct MotionAnimationView: View {
    var body: some View {
        ZStack{
            Circle()
                .foregroundStyle(.white)
        }
        .frame(width: 256,height: 256)
    }
}

#Preview {
    MotionAnimationView()
}
