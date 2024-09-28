//
//  LaunchViewPreviews.swift
//  FinTrackPro
//
//  Created by Jesus Perez Mojica on 27/09/24.
//

import SwiftUI

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        let animation = LottieAnimation(filename: "LaunchView")
        LaunchView(animation: animation)
    }
}
