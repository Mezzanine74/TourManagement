import { Component } from '@angular/core';
import { Auth0Service } from '../../core/auth.service'

@Component({
  templateUrl: 'home.component.html',
  styleUrls: [ './home.component.scss' ]
})

export class HomeComponent {

  private logo = require("../../../assets/logo.png");

  constructor(private auth0Service: Auth0Service) {}

  login = () => {
    this.auth0Service.login();
  }

  logout = () => {
    this.auth0Service.logout();
  }

  isLoggedIn = (): boolean => {
    return this.auth0Service.isLoggedIn();
  }

  getToken = (): string => {
    return this.auth0Service.getAccessToken();
  }

  getUser =():string => {
    return this.auth0Service.getUserName();
  }

}
