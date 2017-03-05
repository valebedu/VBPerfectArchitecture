//
//  VBPerfectStore.swift
//  VBPerfectArchitecture
//
//  Created by Valentin Bercot on 13/02/2017.
//
//

/**
 Defines a `VBPerfectStore` requirements. Theses requirements consist in CRUD methods.
 
 - authors: Valentin Bercot
 */
public protocol VBPerfectStore
{
    /**
     Count total amount of ressources.
     
     - parameters:
       - identifiers: route identifiers handled from client request.
     
     - throws: can throw error if it occurs on database or on querry.
     
     - returns: the total amount of ressources.
     */
    func count(identifiers: [String: Any]?) throws -> UInt64
    
    /**
     List ressources based on options.
     
     - parameters:
       - identifiers: route identifiers handled from client request.
       - options: list of options used to complete request.
     
     - throws: can throw error if it occurs on database or on querry.
     
     - returns: a list of ressources.
     */
    func list(identifiers: [String: Any]?, options: VBPerfectStoreOptions) throws -> [Any]?
    
    /**
     Retrieve a specific ressource.
     
     - parameters:
       - identifiers: route identifiers handled from client request.
     
     - throws: can throw error if it occurs on database or on querry.
     
     - returns: the ressource wanted.
     */
    func retrieve(identifiers: [String: Any]) throws -> Any?
    
    /**
     Create a new ressource.
     
     - parameters:
       - identifiers: route identifiers handled from client request.
       - ressource: the ressource to create.
     
     - throws: can throw error if it occurs on database or on querry.
     
     - returns: the total amount of ressources.
     */
    func create(identifiers: [String: Any]?, ressource: Any) throws -> Void
    
    /**
     Update a specific ressource.
     
     - parameters:
       - identifiers: route identifiers handled from client request.
       - ressource: the ressource to update.
     
     - throws: can throw error if it occurs on database or on querry.
     */
    func update(identifiers: [String: Any], ressource: Any) throws -> Void
    
    /**
     Delete a specific ressource.
     
     - parameters:
       - identifiers: route identifiers handled from client request.
     
     - throws: can throw error if it occurs on database or on querry.
     */
    func delete(identifiers: [String: Any]) throws -> Void
}
