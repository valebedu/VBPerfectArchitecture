//
//  VabeExecuteInteractor.swift
//  VabeArchitecture
//
//  Created by Valentin Bercot on 12/02/2017.
//
//

import PerfectHTTP

public protocol VabeExecuteInteractor: VabeInteractor
{
    func fetch(identifiers: [String]?, ressource: [Any]?, response: HTTPResponse)
}
