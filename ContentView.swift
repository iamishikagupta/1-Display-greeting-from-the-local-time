// ContentView.swift

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        VStack {
            GreetingView(greeting: viewModel.greeting)
                .padding()
            
            TabView {
                LinkListView(links: viewModel.topLinks)
                    .tabItem {
                        Text("Top Links")
                    }
                
                LinkListView(links: viewModel.recentLinks)
                    .tabItem {
                        Text("Recent Links")
                    }
            }
            
            if !viewModel.chartData.isEmpty {
                ChartView(data: viewModel.chartData)
                    .padding()
            } else {
                Text("Loading chart...")
                    .padding()
            }
        }
        .onAppear {
            viewModel.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
