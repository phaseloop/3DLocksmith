This is a copy of https://github.com/Xyl2k/TSA-Travel-Sentry-master-keys

repository By @Xyl2k . Appropriate license and copyright apply.



![tsa](header.jpg)

3D TSA "Travel Sentry" master keys
=========
Recently, pictures of TSA master baggage keys got leaked by the Washington Post and also [PDFs](https://www.travelsentry.org/security/pdf/passkeys.pdf) [(local copy)](passkeys.pdf) hosted on TravelSentry's Website. This repo is a [reproduction attempt](https://twitter.com/InfoSecJesus/status/641662669758574593) 

Security researchers have [long warned](http://www.crypto.com/masterkey.html) of the dangers of using [master-keyed locks](https://twitter.com/J0hnnyXm4s/status/642123709311008768)

The TSA has issued an official statement making it known that [they don't even care that we've done this](https://theintercept.com/2015/09/16/tsa-doesnt-really-care-luggage-locks-hacked/), as the now-pointless locks affect theft prevention, not airline safety. 

> **[!] Important**: These keys have not been widely-tested, though we do have reports that many [do work](https://twitter.com/bernard/status/641662069427847168) from at least [one source](http://arstechnica.com/security/2015/09/video-3d-printed-tsa-travel-sentry-keys-really-do-open-tsa-locks/). 006 May never work, as we're not sure of the depth of the "dimples," and also consumer-grade 3D printers may not be up to such finely-detailed tasks.

> Added the stubby versions of the keys by [MS3FGX](https://github.com/MS3FGX), which appear to [still work fine !](https://twitter.com/JimyLongs/status/641820527892414464)

### Thanks:
- Special thanks to [@darksim905](https://twitter.com/darksim905) and [@irongeek_adc](https://twitter.com/irongeek_adc/status/640907196197404672) and some anonymous others who all sent us images and information surrounding these keys. Also, [@j0hnnyXm4s](https://twitter.com/J0hnnyXm4s) for his key size ratios and issue management / advice.


3D TSA "Safe Skies" master key
=========
Safe Skies manufactures TSA-approved locks under their own standard, competing with Travel Sentry, and has even sued Travel Sentry for patent infringement. They have a much smaller market share than Travel Sentry. These locks can be identified by noting the words "Safe Skies" next to the keyway, in a similar location as the Travel Sentry "TSA00N" notations. All available information indicates only one override/master key exists for their entire system. Armed with this knowledge and a large hammer (no, really), [@darksim905](https://twitter.com/darksim905) and [Nite0wl](https://twitter.com/nite0wl_2600) reverse-engineered the master key bitting, and created 3D files suitable for printing. They presented their findings along with [@j0hnnyXm4s](https://twitter.com/J0hnnyXm4s) at the 11th Hackers of Planet Earth conference in New York City, in July of 2016.


PROBLEM REPORTING
=========

If you print a key and it doesn't work:
	
* First, use a caliper or other highly-accurate device to make sure the key you printed is accurate to the model. Humidity, expansion & ambient room temperature can have serious effects on print size accuracy.

* If it IS accurate, open an issue on the github, specify the problem file, and what problems exist (i.e. "Too wide for the keyway," "Too tall for the keyway," etc.).

* Upload a picture of your lock's keyway. 

* If you have the original keys for the lock, provide a measurement of the key from shoulder to tip, total height of the shoulders, and width. (i.e. X, Y & Z axes of the blade). Some keys only have one shoulder. 



LICENSE
=========
This project is released under the Creative Commons Attribution-NonCommercial 3.0 Unported License.

![](https://upload.wikimedia.org/wikipedia/commons/9/99/Cc-by-nc_icon.svg)

You are free to:

* Share — copy and redistribute the material in any medium or format
* Adapt — remix, transform, and build upon the material
* The licensor cannot revoke these freedoms as long as you follow the license terms.

Under the following terms:

* [!]Attribution — You must give appropriate credit to all contributors to this project, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.

* [!]NonCommercial — You may not use the material for commercial purposes.
No additional restrictions — You may not apply legal terms or technological measures that legally restrict others from doing anything the license permits.

Notices:

You do not have to comply with the license for elements of the material in the public domain or where your use is permitted by an applicable exception or limitation.

No warranties are given.

For the full text of this license, see [LICENSE.md](https://github.com/Xyl2k/TSA-Travel-Sentry-master-keys/blob/master/LICENSE.md).
