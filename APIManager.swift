// APIManager.swift

import Foundation

struct APIManager {
    static func fetchDashboardData(completion: @escaping (Result<DashboardData, Error>) -> Void) {
        guard let url = URL(string: "https://api.inopenapp.com/api/v1/dashboardNew") else {
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjU5MjcsImlhdCI6MTY3NDU1MDQ1MH0.dCkW0ox8t_bjJA2GgUx2UEwNlbTZ7Rr38PVFJevYcXFI", forHTTPHeaderField: "Authorization")
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                completion(.failure(error!))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let dashboardData = try decoder.decode(DashboardData.self, from: data)
                completion(.success(dashboardData))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
}
// APIManager.swift

import Foundation

struct APIManager {
    static func fetchDashboardData(completion: @escaping (Result<DashboardData, Error>) -> Void) {
        guard let url = URL(string: "https://api.inopenapp.com/api/v1/dashboardNew") else {
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjU5MjcsImlhdCI6MTY3NDU1MDQ1MH0.dCkW0ox8t_bjJA2GgUx2UEwNlbTZ7Rr38PVFJevYcXFI", forHTTPHeaderField: "Authorization")
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                completion(.failure(error!))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let dashboardData = try decoder.decode(DashboardData.self, from: data)
                completion(.success(dashboardData))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
}
