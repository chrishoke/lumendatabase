Lumen Database
================

The Lumen Database collects and analyzes legal complaints and requests for removal of online materials, helping Internet users to know their rights and understand the law. These data enable us to study the prevalence of legal threats and let Internet users see the source of content removals.

Automated Submissions and Search Using the API
===========
The main [Lumen Database instance](https://www.lumendatabase.org/) has an API that allows individuals and organizations that receive large numbers of notices to submit them without using the web interface. The API also provides an easy way for researchers to search the database. Members of the public can test the database, but will likely need to request an API key from the [Lumen team](mailto:team@lumendatabase.org) in order to receive a token that provides full acess. To learn about the capabilities of the API you can consult the [API documentation](https://github.com/berkmancenter/lumendatabase/wiki/Lumen-API-Documentation).

Development
===========

Requirements:

* ruby 2.2.4
* modern postgres
* A JRE (OpenJDK works fine)

Setup:

    ./bin/setup

Running the app:

    foreman start -f Procfile.dev

Viewing the app:

    $BROWSER 'http://localhost:5000'

Resetting the database:

    DB_RESET=1 ./bin/setup

*Note*: foreman cannot be running during a db-reset.

During seeding, you can customize behavior with a couple environment variables:

* `NOTICE_COUNT=10` will generate 10 (or any number you pass it) notices
  instead of the default 500
* `SKIP_FAKE_DATA=1` will skip generating fake seed data entirely.

Admin login:

    Username: admin@chillingeffects.org
    Password: password

Running Tests:

    A headless webkit is used but it requires X11 to function.
    If you are connecting remotely (i.e. SSH), ensure that you have X11 Forwarding enabled.

Ephemera
========

The `/blog_entries` page contains a google custom search engine that's supposed
to search the Lumen blog. To enable, create a custom search engine
[here](https://www.google.com/cse/create/new) restricted to the path the blog
lives at, for instance `http://www.lumendatabase.org/blog_entries/*`. Extract
the "cx" id from the javascript embed code and put it in the
`GOOGLE_CUSTOM_BLOG_SEARCH_ID` environment variable. The blog search will
appear after this variable has been configured.

Lumen API
=========
You can search the database and, if you have a contributer token, add to the database using our API.

The Lumen API is documented in our GitHub Wiki: https://github.com/berkmancenter/lumendatabase/wiki/Lumen-API-Documentation

License
=======

Lumen Database is licensed under GPLv2. See LICENSE.txt for more information.

Copyright
=========

Copyright (c) 2016 President and Fellows of Harvard College
