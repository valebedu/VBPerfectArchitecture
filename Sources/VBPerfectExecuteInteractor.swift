//
//  VBPerfectExecuteInteractor.swift
//  VBPerfectArchitecture
//
//  Created by Valentin Bercot on 12/02/2017.
//
//

import PerfectHTTP

/**
 Defines a `VBPerfectExecuteInteractor` requirements. Extend it to create an interactor which fetch data for an executable handled route.
 
 If you want to manage ressource routes see `VBPerfectRessourceInteractor`.
 
 - authors: Valentin Bercot
 */
public protocol VBPerfectExecuteInteractor: VBPerfectInteractor
{
    /**
     Fetch data in order to complete handled request.
     
     - parameters:
       - identifiers: route identifiers handled from client request.
       - ressources: ressources handled from client request.
       - response: the HTTP response.
     */
    func fetch(identifiers: [String: Any]?, ressources: [Any]?, response: HTTPResponse)
}
