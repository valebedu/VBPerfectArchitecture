//
//  VabeStore.swift
//  VabeArchitecture
//
//  Created by Valentin Bercot on 13/02/2017.
//
//

/**
 Defines a `VabeStore` requirements. Theses requirements consist in CRUD methods.
 
 - authors: Valentin Bercot
 */
public protocol VabeStore
{
    /**
     Count total amount of ressources.
     
     - parameters:
       - identifiers: route identifiers handled from client request.
     
     - throws: can throw error if it occurs on database or on querry.
     
     - returns: the total amount of ressources.
     */
    func count(identifiers: [String]?) throws -> UInt64
    
    /**
     List ressources based on options.
     
     - parameters:
       - identifiers: route identifiers handled from client request.
       - options: list of options used to complete request.
     
     - throws: can throw error if it occurs on database or on querry.
     
     - returns: a list of ressources.
     */
    func list(identifiers: [String]?, options: VabeStoreOptions) throws -> [Any]?
    
    /**
     Retrieve a specific ressource.
     
     - parameters:
       - identifiers: route identifiers handled from client request.
     
     - throws: can throw error if it occurs on database or on querry.
     
     - returns: the ressource wanted.
     */
    func retrieve(identifiers: [String]) throws -> Any?
    
    /**
     Create a new ressource.
     
     - parameters:
       - identifiers: route identifiers handled from client request.
       - ressource: the ressource to create.
     
     - throws: can throw error if it occurs on database or on querry.
     
     - returns: the total amount of ressources.
     */
    func create(identifers: [String]?, ressource: Any) throws -> Void
    
    /**
     Update a specific ressource.
     
     - parameters:
       - identifiers: route identifiers handled from client request.
       - ressource: the ressource to update.
     
     - throws: can throw error if it occurs on database or on querry.
     */
    func update(identifiers: [String], ressource: Any) throws -> Void
    
    /**
     Delete a specific ressource.
     
     - parameters:
       - identifiers: route identifiers handled from client request.
     
     - throws: can throw error if it occurs on database or on querry.
     */
    func delete(identifiers: [String]) throws -> Void
}
