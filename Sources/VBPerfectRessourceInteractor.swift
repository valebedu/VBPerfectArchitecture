//
//  VBPerfectRessourceInteractor.swift
//  VBPerfectArchitecture
//
//  Created by Valentin Bercot on 12/02/2017.
//
//

import PerfectHTTP

/**
 Defines a `VBPerfectRessourceInteractor` requirements. Extend it to create an interactor which fetch data for ressource handled routes.
 
 If you want to manage an executable route see `VBPerfectExecuteInteractor`.
 
 - authors: Valentin Bercot
 */
public protocol VBPerfectRessourceInteractor: VBPerfectInteractor
{
    /**
     Fetch data in order to complete handled list request.
     
     - parameters:
       - identifiers: route identifiers handled from client request.
       - options: data options use to retrieve specifics data.
       - response: the HTTP response.
     */
    func fetchList(identifiers: [String: Any]?, options: VBPerfectStoreOptions, response: HTTPResponse)
    
    /**
     Fetch data in order to complete handled retrieve request.
     
     - parameters:
       - identifiers: route identifiers handled from client request.
       - response: the HTTP response.
     */
    func fetchRetrieve(identifiers: [String: Any]?, response: HTTPResponse)
    
    /**
     Fetch data in order to complete handled create request.
     
     - parameters:
       - identifiers: route identifiers handled from client request.
       - ressource: ressource handled from client request.
       - response: the HTTP response.
     */
    func fetchCreate(identifiers: [String: Any]?, ressource: Any?, response: HTTPResponse)
    
    /**
     Fetch data in order to complete handled update request.
     
     - parameters:
       - identifiers: route identifiers handled from client request.
       - ressource: ressource handled from client request.
       - response: the HTTP response.
     */
    func fetchUpdate(identifiers: [String: Any]?, ressource: Any?, response: HTTPResponse)
    
    /**
     Fetch data in order to complete handled delete request.
     
     - parameters:
       - identifiers: route identifiers handled from client request.
       - response: the HTTP response.
     */
    func fetchDelete(identifiers: [String: Any]?, response: HTTPResponse)
}
