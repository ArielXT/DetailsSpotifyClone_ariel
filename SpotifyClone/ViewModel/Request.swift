//
//  Request.swift
//  SpotifyClone
//
//  Created by MAC45 on 10/05/22.
//

import Foundation

class Request{
    let token = "BQBPoXRL7RH_82egvYV3EvNTZIAeS2GDWZNp4zvZdOPVYyNB81bG1aY3iQT6JdnjJFsHcPMPvabfO2IRs-RwCc67NM2jHn8CoDoG3858-ExBkebCIUablQHYkbiuBfF9rUznKEB7ZujgZuJbvTn-z6k8MvMSGuqEwfovwyaXn5DJOvHjEA7NUQ&refresh_token=AQB-_uVioMxgjU8UfnMEWilOiUyfCUUr-8YzPgiSUemFlSQxKQhg7Xf_chRqka6RObVXz4XStPKqMSmi7QpUzsLN7ASpCWCXC8VnqMOGPSqnMBjUvuhbh8A4YvKILnPujRc"
    
    
    let BASE_URL = "https://api.spotify.com/v1/"
    
    // ojo recuerden que si un type tiene el ? es porque puede ser nil
    // en este caso estamos diciendo que nuestra funcion retorna un Data o nil
    func getDataFromAPI(url: String) async -> Data? {
        do {
            var request = URLRequest(url: HelperString.getURLFromString(url: "\(BASE_URL)\(url)")!)
            request.httpMethod = "GET"
            request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
            
            let (data, _) = try await URLSession.shared.data(for: request)
            
            return data
        } catch {
            return nil
        }
    }
}
