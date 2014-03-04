Converts an article (preferably blog post) into a friendly JSON format.

A 5-min quick-app based on Sinatra that slurps 'url' of an article and spits out Title, Favicon, Excerpt, Body Text, Body HTML, Images.

=== Gems
Pismo
Thin
JSON

== How To
Type: GET
Parameter: url (Encoded or otherwise, doesn't matter)

== Example
The app is hosted on post2json.josephcs.com (Thanks, Heroku!)
Example: http://post2json.josephcs.com/?url=http://www.telecoms.com/50360/wasted-mobile-data-the-1bn-problem/

== TO-DO Improvements
This doesn't work on VentureBeat. Wicked. I'm considering building a manual scraper based on Nokogiri for this.
