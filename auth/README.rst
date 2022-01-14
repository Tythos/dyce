Keycloak Configuration
======================

Startup will take some time. Ignore "you must restart" messages. Once you see
Java logging in the console, you should be able to browse to the console
(http://localhost:8080 by default).

Based on https://developers.redhat.com/blog/2018/10/08/configuring-nginx-keycloak-oauth-oidc#configuring_keycloak_and_nginx :

#. From the dropdown at the top of the navigation panel, add a new realm ("Dyce")

#. From the "Clients" listing, add a new client ("nrp") for the nginx reverse
   proxy service. Client protocol should be "openid-connect". Root URL should
   correspond to the NGINX entry point.

#. Once the client is created, set "Access Type" to "Confidential", and add a
   redirect URL with path "/redirect_uri".

#. Once saved, go to the client's "Credentials" tab and copy/save the "Secret",
   which should look something like "zR0xkYNK8fHw5pnh6i3HkKnol3tuzEIW".

This should result in a configuration much like (if not identical to) the one
stored in "realm-export.json", which is now loaded into the container at build
time.
