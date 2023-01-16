//
//  FeedLoader.swift
//  Networking
//
//  Created by Vladyslav Kostenko on 16/01/2023.
//

import Foundation

enum LoadFeedReault {
    case succecc([FeedItem])
    case failure(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedReault) -> Void)
}
