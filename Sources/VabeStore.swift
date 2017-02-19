//
//  VabeStore.swift
//  VabeArchitecture
//
//  Created by Valentin Bercot on 13/02/2017.
//
//

public protocol VabeStore
{
    func count(identifiers: [String]?) throws -> UInt64
    func list(identifers: [String]?, options: [VabeStoreOption]) throws -> [Any]?
    func retrieve(identifiers: [String]) throws -> Any?
    func create(identifers: [String]?, ressource: Any) throws -> Void
    func update(identifiers: [String], ressource: Any) throws -> Void
    func delete(identifiers: [String]) throws -> Void
}
