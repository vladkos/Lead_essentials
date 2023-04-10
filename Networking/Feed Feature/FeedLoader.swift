//
//  FeedLoader.swift
//  Networking
//
//  Created by Vladyslav Kostenko on 16/01/2023.
//

import Foundation

public enum LoadFeedReault {
    case success([FeedItem])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedReault) -> Void)
}
