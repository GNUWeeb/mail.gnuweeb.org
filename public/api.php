<?php

putenv("GWMAIL_STAGING_BRANCH=1");
chdir(__DIR__."/../../mail.gnuweeb.org/public/");
require "api.php";

