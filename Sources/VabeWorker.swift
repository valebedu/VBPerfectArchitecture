//
//  VabeWorker.swift
//  VabeArchitecture
//
//  Created by Valentin Bercot on 13/02/2017.
//
//

public protocol VabeWorker: VabeStore
{
    var store: VabeStoreDatabase { get }
    
    init(store: VabeStoreDatabase)
}

public extension VabeWorker
{
    public func count(identifiers: [String]?) throws -> UInt64
    {
        do
        {
            return try store.count(identifiers: identifiers)
        }
        catch
        {
            throw error
        }
    }
    
    public func list(identifers: [String]?, options: [VabeStoreOption]) throws -> [Any]?
    {
        do
        {
            return try store.list(identifers: identifers, options: options)
        }
        catch
        {
            throw error
        }
    }
    
    public func retrieve(identifiers: [String]) throws -> Any?
    {
        do
        {
            return try store.retrieve(identifiers: identifiers)
        }
        catch
        {
            throw error
        }
    }
    
    public func create(identifers: [String]?, ressource: Any) throws
    {
        do
        {
            return try store.create(identifers: identifers, ressource: ressource)
        }
        catch
        {
            throw error
        }
    }
    
    public func update(identifiers: [String], ressource: Any) throws
    {
        do
        {
            return try store.update(identifiers: identifiers, ressource: ressource)
        }
        catch
        {
            throw error
        }
    }
    
    public func delete(identifiers: [String]) throws
    {
        do
        {
            return try store.delete(identifiers: identifiers)
        }
        catch
        {
            throw error
        }
    }
}
