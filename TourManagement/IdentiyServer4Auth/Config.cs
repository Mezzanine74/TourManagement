using IdentityServer4;
using IdentityServer4.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace IdentiyServer4Auth
{
    public class Config
    {
        public static IEnumerable<ApiResource> GetApiResources()
        {
            return new List<ApiResource>
            {
                new ApiResource("projects-api", "Projects API")
            };
        }

        public static IEnumerable<Client> GetClients()
        {
            return new List<Client>
            {
                new Client
                {
                    ClientId = "spa-client",
                    ClientName = "Projects SPA",
                    AllowedGrantTypes = GrantTypes.Implicit,
                    AllowAccessTokensViaBrowser = true,
                    RequireConsent = false,

                    // LOCAL
                    RedirectUris =           { "http://localhost:4200/assets/oidc-login-redirect.html","http://localhost:4200/assets/silent-redirect.html" },
                    PostLogoutRedirectUris = { "http://localhost:4200/?postLogout=true" },
                    AllowedCorsOrigins =     { "http://localhost:4200" },

                    // RELEASE
                    //RedirectUris =           { "http://185.141.33.46:4200/assets/oidc-login-redirect.html", "http://185.141.33.46:4200/assets/silent-redirect.html" },
                    //PostLogoutRedirectUris = { "http://185.141.33.46:4200/?postLogout=true" },
                    //AllowedCorsOrigins =     { "http://185.141.33.46:4200" },

                    AllowedScopes =
                    {
                        IdentityServerConstants.StandardScopes.OpenId,
                        IdentityServerConstants.StandardScopes.Profile,
                        "projects-api"
                    },
                    IdentityTokenLifetime=120,
                    AccessTokenLifetime=120

                },
                new Client
                {
                    ClientId = "mvc",
                    ClientName = "MVC Client",
                    AllowedGrantTypes = GrantTypes.HybridAndClientCredentials,

                    ClientSecrets =
                    {
                        new Secret("secret".Sha256())
                    },

                    RedirectUris           = { "https://localhost:4201/signin-oidc" },
                    PostLogoutRedirectUris = { "https://localhost:4201/signout-callback-oidc" },

                    AllowedScopes =
                    {
                        IdentityServerConstants.StandardScopes.OpenId,
                        IdentityServerConstants.StandardScopes.Profile
                    },
                    AllowOfflineAccess = true

                }
            };
        }

        public static IEnumerable<IdentityResource> GetIdentityResources()
        {
            return new List<IdentityResource>
            {
                new IdentityResources.OpenId(),
                new IdentityResources.Profile(),
            };
        }
    }

}
