//
//  HTTPClient.swift
//  Networking
//
//  Created by Vladyslav Kostenko on 24/01/2023.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
