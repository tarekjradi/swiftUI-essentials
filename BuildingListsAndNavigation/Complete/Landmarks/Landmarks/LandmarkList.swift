/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing a list of landmarks.
*/

import SwiftUI

struct LandmarkList: View {
    @State var isEditMode: EditMode = .inactive

    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
                if (self.isEditMode == .active) {
                    Text("now is edit mode")
                } else  {
                    Text("now is no edit mode")
                }

            }
            .navigationBarItems(trailing: EditButton())
            .navigationBarTitle(Text("Landmarks"))
            .environment(\.editMode, self.$isEditMode)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPad Air 2"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}