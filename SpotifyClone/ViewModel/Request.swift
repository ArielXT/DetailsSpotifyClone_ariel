//
//  Request.swift
//  SpotifyClone
//
//  Created by MAC45 on 10/05/22.
//

import Foundation

class Request{
    let token = "BQAj-eDe4ev_i3dgdw57m5_QvU3AWG5C_wzEWN6oZtgg0ikQI2t4ID3x7Q7EBQ8r38jgnHwNpiwbclKAXlmlv6PkiwrJBStQCcXD_CdlGylmYjj3kqP_oRDHFAsJw0HkdLxejVXWkxmDyxTxIDpU7_oey_X46RCw8a6Q2tqZAhdYgANm0vt_Kae3bV8_pFtHAAkG_bNd3nRFwfFq8_SzQ54&refresh_token=AQBNTBO7j9qIpQBbX1VVw4w8e6tC-JLVD7HOD-404jCQX7ifINUu8kmFSWcjQjhoj2vdiG40vPuRzBFcoVkhLnYzmLwr7jZv2DcUhdh24T4GFu8apGf6ZDeoKpqx7VJ4YNc"
    
    
    let BASE_URL = "https://api.spotify.com/v1/"
    
    // ojo recuerden que si un type tiene el ? es porque puede ser nil
    // en este caso estamos diciendo que nuestra funcion retorna un Data o nil
    func getDataFromAPI(url: String) async -> Data? {
        do {
            let urlParse = url.replacingOccurrences(of: " ", with: "%20")
            var request = URLRequest(url: HelperString.getURLFromString(url: "\(BASE_URL)\(urlParse)")!)            
            request.httpMethod = "GET"
            request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
            
            let (data, _) = try await URLSession.shared.data(for: request)
            
            return data
        } catch {
            return nil
        }
    }
}
