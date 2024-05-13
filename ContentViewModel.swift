// ContentViewModel.swift

import Foundation

class ContentViewModel: ObservableObject {
    @Published var greeting: String = ""
    @Published var topLinks: [Link] = []
    @Published var recentLinks: [Link] = []
    @Published var chartData: [ChartData] = []
    
    func fetchData() {
        APIManager.fetchDashboardData { result in
            switch result {
            case .success(let data):
                self.greeting = GreetingHelper.getGreeting()
                self.topLinks = data.topLinks
                self.recentLinks = data.recentLinks
                self.chartData = data.chartData
            case .failure(let error):
                print("Error fetching data: \(error.localizedDescription)")
            }
        }
    }
}
