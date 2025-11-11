//
//  PredictionView.swift
//  TrailAnalyzer
//
//  Created by Артём on 23.05.2025.
//

import SwiftUI

struct PredictionView: View {
    @State var predictedRisk: Risk
    
    var body: some View {
        VStack{
            RiskCardView(risk: predictedRisk)
            Spacer()
        }
        .navigationTitle("Results")
        .navigationBarTitleDisplayMode(.large)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink {
                    riskSummaryView
                } label: {
                    Image(systemName: "info.circle")
                }
            }
        }
        
        .trailTheme()
    }
    var riskSummaryView: some View {
        ScrollView{
            ForEach(Risk.allCases){
                RiskCardView(risk: $0)
            }
        }
        .trailTheme()
    }
}
#Preview {
    NavigationStack{
        PredictionView(predictedRisk: .moderate)
    }
}
