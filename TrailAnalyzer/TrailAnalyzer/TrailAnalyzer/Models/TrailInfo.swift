//
//  TrailInfo.swift
//  TrailAnalyzer
//
//  Created by Артём on 21.05.2025.
//

import Foundation

struct TraillInfo {
    var distance: Int?
    var elevation: Int?
    var terrain: Terrain?
    var wildLifeDangerLevel: Int = lowDanger
    
    static let lowDanger = 0
    static let highDanger = 1
    
    static var empty = TraillInfo()
    static var sample = TraillInfo(distance: 20, elevation: 200, terrain: .dirt, wildLifeDangerLevel: highDanger)
}
