//
//  VabeRessourceInteractor.swift
//  VabeArchitecture
//
//  Created by Valentin Bercot on 12/02/2017.
//
//

import PerfectHTTP

/**
 Defines a `VabeRessourceInteractor` requirements. Extend it to create an interactor which fetch data for ressource handled routes.
 
 If you want to manage an executable route see `VabeExecuteInteractor`.
 
 - authors: Valentin Bercot
 */
public protocol VabeRessourceInteractor: VabeInteractor
{
    /**
     Fetch data in order to complete handled list request.
     
     - parameters:
       - identifiers: route identifiers handled from client request.
       - response: the HTTP response.
     */
    func fetchList(identifiers: [String: Any]?, response: HTTPResponse)
    
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
