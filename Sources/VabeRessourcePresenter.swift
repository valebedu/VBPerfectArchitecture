//
//  VabeRessourcePresenter.swift
//  VabeArchitecture
//
//  Created by Valentin Bercot on 12/02/2017.
//
//

import PerfectHTTP

/**
 Defines a `VabeRessourcePresenter` requirements. Extend it to create a presenter which present data for ressource fetched routes.
 
 If you want to manage an executable route see `VabeExecutePresenter`.
 
 - authors: Valentin Bercot
 */
public protocol VabeRessourcePresenter: VabePresenter
{
    /**
     Present data in order to complete fetched list request.
     
     - parameters:
       - ressources: ressources fetched from database.
       - response: the HTTP response.
     */
    func presentList(ressources: [Any]?, response: HTTPResponse)
    
    /**
     Present data in order to complete fetched retrieve request.
     
     - parameters:
       - ressource: ressource fetched from database.
       - response: the HTTP response.
     */
    func presentRetrieve(ressource: Any?, response: HTTPResponse)
    
    /**
     Present data in order to complete fetched create request.
     
     - parameters:
       - ressource: ressource fetched from database.
       - response: the HTTP response.
     */
    func presentCreate(ressource: Any?, response: HTTPResponse)
    
    /**
     Present data in order to complete fetched update request.
     
     - parameters:
       - ressource: ressource fetched from database.
       - response: the HTTP response.
     */
    func presentUpdate(ressource: Any?, response: HTTPResponse)
    
    /**
     Present data in order to complete fetched delete request.
     
     - parameters:
       - ressource: ressource fetched from database.
       - response: the HTTP response.
     */
    func presentDelete(ressource: Any?, response: HTTPResponse)
}
