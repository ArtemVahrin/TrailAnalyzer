//
//  Terrain.swift
//  TrailAnalyzer
//
//  Created by Артём on 21.05.2025.
//

import Foundation

enum Terrain: String, Identifiable, CaseIterable{
    case paved
    case dirt
    case rocky
    case sandy
    
    var id: String {
        rawValue
    }
}
