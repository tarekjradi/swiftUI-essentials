//
//  FirstView.swift
//  Landmarks
//
//  Created by Tarek Abdala on 30/01/2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct FirstView: View {
    @State private var pushed: Bool = false

    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 20, content: {
                NavigationLink(destination: SecondView(pushed: $pushed)) {
                    Text("Show SecondView")
                }
                NavigationLink(destination: LandmarkList()) {
                    Text("Show LandmarkList")
                }
                Button("I am root. Tap for print", action: {
                    print("printed", separator: "-", terminator: ">")
                })
            })
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPad Pro (10.5-inch)"], id: \.self) { deviceName in
            FirstView()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
