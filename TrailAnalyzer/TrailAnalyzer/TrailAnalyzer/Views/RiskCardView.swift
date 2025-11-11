//
//  RiskCardView.swift
//  TrailAnalyzer
//
//  Created by Артём on 21.05.2025.
//

import SwiftUI

struct RiskCardView: View {
    @State var risk: Risk
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Image(risk.image)
                    .resizable()
                    .frame(width: 30, height: 30)
                Text(risk.rawValue)
                    .font(.title2)
            }
            Text(risk.description)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(16)
        .background(.white, in: RoundedRectangle(cornerRadius: 12))
        
    }
}
#Preview {
    let prediction = TrailAnalyzer().predictRisk(trailInfo: .sample)
    RiskCardView(risk: prediction)
}
