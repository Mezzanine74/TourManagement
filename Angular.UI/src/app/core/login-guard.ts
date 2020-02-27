import { Injectable } from '@angular/core';
import { CanActivate } from '@angular/router';
import { Auth0Service } from '../core/auth.service'

@Injectable()
export class LoginGuard implements CanActivate {
    constructor(private auth0Service: Auth0Service) {}

    canActivate(): boolean {

        if (!this.auth0Service.isLoggedIn()){
            this.auth0Service.login();
            return false;            
        }

        return true;
    }
}
