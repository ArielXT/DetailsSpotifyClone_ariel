// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let playlist = try? newJSONDecoder().decode(Playlist.self, from: jsonData)

import Foundation

struct Playlist: Codable {
    let href: String
    let items: [Item]
}
struct Item: Codable {
    let description: String
    let id: String
    let images: [Image]
    let name: String
}


struct Image: Codable {
    let height: Int?
    let url: String
    let width: Int?
}
