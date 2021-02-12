var myHeading = "<h1>This is My Webpage!</h1>"
var linktag = "<a href=\"http://www.webexpertz.net\">Web Site Link!</a>"
var sometext = "This text can be affected by other statements"
var begineffect = "<strong>"
var endeffect = "</strong>"
var beginpara = "<p>"
var endpara = "</p>"

/*document.write(myHeading);
document.write(begineffect);
document.write(sometext);
document.write(endeffect);
document.write(beginpara)
document.write(linktag);
document.write(endpara);
document.write(beginpara);
document.write(sometext);
document.write(endpara);*/

document.write(myHeading);
document.write(begineffect + sometext + endeffect);
document.write(beginpara + linktag + endpara);
document.write(beginpara + sometext + endpara);

