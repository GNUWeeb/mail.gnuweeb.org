<?php
// SPDX-License-Identifier: GPL-2.0


require __DIR__."/../init/web.php";

sess_start();

session_destroy();
header("Location: login.php?ref=logout&w=".rstr(64));

