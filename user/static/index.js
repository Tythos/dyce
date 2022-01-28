/**
 * 
 */

window.addEventListener("load", function(event) {
    function onResponseParsed(text) {
        let div = window.document.createElement("div");
        div.textContent = `Response text from "GET /wsgi/getFoo": ${text}`;
        window.document.body.appendChild(div);
    }

    function onWsgiResponse(response) {
        response.text().then(onResponseParsed);
    }

    console.log("window loaded:", event);
    fetch("/wsgi/getFoo").then(onWsgiResponse);
});
