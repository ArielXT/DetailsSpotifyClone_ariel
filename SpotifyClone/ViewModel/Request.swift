//
//  Request.swift
//  SpotifyClone
//
//  Created by MAC45 on 10/05/22.
//

import Foundation

class Request{
    let token = "BQC6FSAq6Fq8jbjfQWedb3xGhQ0JD_1yeLu3G9X_8fStp2mlZaOwNVMEnEnvE0ogcQZnUD8lJ4fug98MDCP1yOY1wVWQ2PsLrvd7nUXbkajUyDmzAAr9iJIz5yTD7NFKhh4xWPLiagxwySgOf9DV_L9ai_76Ze0TUf64O6blTOfl_ccZfLBaOQ&refresh_token=AQC8n8o5p2O6Sq2TdilbSltxeAjBf3w14qkOajxVv09Vcfqjr7DxtuXcyGeLwBi_TOomt0uKEc94mifWo6z8L5OITAuCmDAjIG1h4yV9jAyyn3RQtlE1YzT6J0yb_5LazQg"
    
    
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
