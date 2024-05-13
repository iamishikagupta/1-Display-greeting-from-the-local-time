// APIData.swift

import Foundation

struct Link: Identifiable {
    let id: UUID
    let title: String
    let url: URL
}

struct ChartData {
    let label: String
    let value: Double
}

struct DashboardData {
    let topLinks: [Link]
    let recentLinks: [Link]
    let chartData: [ChartData]
}
