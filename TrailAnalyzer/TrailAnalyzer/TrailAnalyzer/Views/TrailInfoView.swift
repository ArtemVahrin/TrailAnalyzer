//
//  TrailInfoView.swift
//  TrailAnalyzer
//
//  Created by Артём on 21.05.2025.
//

import SwiftUI

struct TrailInfoView: View {
    @Binding var trailInfo: TraillInfo
    
    var body: some View {
        VStack {
            TrailField(iconName: "figure.hiking", label: "Distance"){
                TextField("kilometers", value: $trailInfo.distance, format: .number)
                    .keyboardType(.numberPad)
                    .multilineTextAlignment(.trailing)
            }
            
            TrailField(iconName: "mountain.2.fill", label: "Elevator Change"){
                TextField("meters", value: $trailInfo.elevation, format: .number)
                    .keyboardType(.numberPad)
                    .multilineTextAlignment(.trailing)
            }
            
            TrailField(iconName: "shoe.fill", label: "Terrain") {
                Picker("Terrain",selection: $trailInfo.terrain) {
                    ForEach(Terrain.allCases) { terrain in
                        Text(terrain.rawValue.capitalized)
                            .tag(terrain)
                    }
                }
                .tint(Color.black)
                .background(RoundedRectangle(cornerRadius: 12)
                    .fill(Color.gray.opacity(0.15))
                    .opacity(trailInfo.terrain == nil ? 0.0 : 1.0)
                )
            }
            TrailField(iconName: "exclamationmark.triangle.fill", label: "Danger from wildlife") {
                Picker("Danger from wildlife", selection: $trailInfo.wildLifeDangerLevel) {
                    Text("Low")
                        .tag(TraillInfo.lowDanger)
                    Text("High")
                        .tag(TraillInfo.highDanger)
                }
                .frame(width: 150)
                .pickerStyle(.segmented)
            }
        }
    }
}
#Preview {
    @Previewable @State var trailInfo = TraillInfo.empty
    TrailInfoView(trailInfo: $trailInfo)
        .trailTheme()
}
