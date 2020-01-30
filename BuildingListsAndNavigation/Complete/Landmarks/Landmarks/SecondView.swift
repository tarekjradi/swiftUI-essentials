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
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        Text("Hello, World!")
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: BackButton(label: "Back") {
                self.presentationMode.wrappedValue.dismiss()
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
