//
//  SecondView.swift
//  Landmarks
//
//  Created by Tarek Abdala on 30/01/2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct SecondView: View {
    @Binding var pushed: Bool
    var body: some View {
        Text("Hello, World!")
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: BackButton(label: "Back") {
                self.pushed = false
            })
    }
}

struct BackButton: View {
    let label: String
    let closure: () -> ()

    var body: some View {
        Button(action: { self.closure() }) {
            HStack {
                Text(label)
            }
        }
    }
}
