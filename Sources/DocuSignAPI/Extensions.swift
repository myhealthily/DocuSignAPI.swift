// Extensions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

extension String: CodingKey {
    public var stringValue: String {
        return self
    }

    public init?(stringValue: String) {
        self.init(stringLiteral: stringValue)
    }

    public var intValue: Int? {
        return nil
    }

    public init?(intValue _: Int) {
        return nil
    }
}

public extension KeyedEncodingContainerProtocol {
    mutating func encodeArray<T>(_ values: [T], forKey key: Self.Key) throws where T: Encodable {
        var arrayContainer = nestedUnkeyedContainer(forKey: key)
        try arrayContainer.encode(contentsOf: values)
    }

    mutating func encodeArrayIfPresent<T>(_ values: [T]?, forKey key: Self.Key) throws where T: Encodable {
        if let values = values {
            try encodeArray(values, forKey: key)
        }
    }

    mutating func encodeMap<T>(_ pairs: [Self.Key: T]) throws where T: Encodable {
        for (key, value) in pairs {
            try encode(value, forKey: key)
        }
    }

    mutating func encodeMapIfPresent<T>(_ pairs: [Self.Key: T]?) throws where T: Encodable {
        if let pairs = pairs {
            try encodeMap(pairs)
        }
    }
}

public extension KeyedDecodingContainerProtocol {
    func decodeArray<T>(_: T.Type, forKey key: Self.Key) throws -> [T] where T: Decodable {
        var tmpArray = [T]()

        var nestedContainer = try nestedUnkeyedContainer(forKey: key)
        while !nestedContainer.isAtEnd {
            let arrayValue = try nestedContainer.decode(T.self)
            tmpArray.append(arrayValue)
        }

        return tmpArray
    }

    func decodeArrayIfPresent<T>(_: T.Type, forKey key: Self.Key) throws -> [T]? where T: Decodable {
        var tmpArray: [T]?

        if contains(key) {
            tmpArray = try decodeArray(T.self, forKey: key)
        }

        return tmpArray
    }

    func decodeMap<T>(_: T.Type, excludedKeys: Set<Self.Key>) throws -> [Self.Key: T] where T: Decodable {
        var map: [Self.Key: T] = [:]

        for key in allKeys {
            if !excludedKeys.contains(key) {
                let value = try decode(T.self, forKey: key)
                map[key] = value
            }
        }

        return map
    }
}

extension UUID: Content {}

extension URL: Content {}

extension Bool: Content {}

extension Set: ResponseEncodable where Element: Content {
    public func encodeResponse(for request: Vapor.Request) -> EventLoopFuture<Vapor.Response> {
        let response = Vapor.Response()
        do {
            try response.content.encode(Array(self))
        } catch {
            return request.eventLoop.makeFailedFuture(error)
        }
        return request.eventLoop.makeSucceededFuture(response)
    }
}

extension Set: RequestDecodable where Element: Content {
    public static func decodeRequest(_ request: Vapor.Request) -> EventLoopFuture<Self> {
        do {
            let content = try request.content.decode([Element].self)
            return request.eventLoop.makeSucceededFuture(Set(content))
        } catch {
            return request.eventLoop.makeFailedFuture(error)
        }
    }
}

extension Set: AsyncResponseEncodable where Element: Content {}
extension Set: AsyncRequestDecodable where Element: Content {}
extension Set: Content where Element: Content {}

extension AnyCodable: Hashable {
    public func hash(into hasher: inout Hasher) {
        switch value {
        case let value as Bool:
            hasher.combine(value)
        case let value as Int:
            hasher.combine(value)
        case let value as Int8:
            hasher.combine(value)
        case let value as Int16:
            hasher.combine(value)
        case let value as Int32:
            hasher.combine(value)
        case let value as Int64:
            hasher.combine(value)
        case let value as UInt:
            hasher.combine(value)
        case let value as UInt8:
            hasher.combine(value)
        case let value as UInt16:
            hasher.combine(value)
        case let value as UInt32:
            hasher.combine(value)
        case let value as UInt64:
            hasher.combine(value)
        case let value as Float:
            hasher.combine(value)
        case let value as Double:
            hasher.combine(value)
        case let value as String:
            hasher.combine(value)
        case let value as [String: AnyCodable]:
            hasher.combine(value)
        case let value as [AnyCodable]:
            hasher.combine(value)
        default:
            hasher.combine(0)
        }
    }
}
