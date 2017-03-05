//
//  VBPerfectWorker.swift
//  VBPerfectArchitecture
//
//  Created by Valentin Bercot on 13/02/2017.
//
//

/**
 Defines a `VBPerfectWorker` requirements. This protocol allow to interface many `VBPerfectStoreDatabase` children.
 
 The extended class should be the used in an interactor in order to complete VBPerfectArchitecture workflow.
 
 - authors: Valentin Bercot
 */
public protocol VBPerfectWorker: VBPerfectStore
{
    /**
     Store consumed.
     */
    var store: VBPerfectStoreDatabase { get }
    
    /**
     - parameters:
       - store: the database store to consume.
     */
    init(store: VBPerfectStoreDatabase)
}

public extension VBPerfectWorker
{
    public func count(identifiers: [String: Any]?) throws -> UInt64
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
    
    public func list(identifiers: [String: Any]?, options: VBPerfectStoreOptions) throws -> [Any]?
    {
        do
        {
            return try store.list(identifiers: identifiers, options: options)
        }
        catch
        {
            throw error
        }
    }
    
    public func retrieve(identifiers: [String: Any]) throws -> Any?
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
    
    public func create(identifiers: [String: Any]?, ressource: Any) throws
    {
        do
        {
            return try store.create(identifiers: identifiers, ressource: ressource)
        }
        catch
        {
            throw error
        }
    }
    
    public func update(identifiers: [String: Any], ressource: Any) throws
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
    
    public func delete(identifiers: [String: Any]) throws
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
