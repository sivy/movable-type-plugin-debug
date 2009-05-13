# PluginDebug

PLuginDebug adds builtin debug logging to MT's Plugin.pm.

## Configuration

Add the `PluginDebug` directive to your mt-config.cgi

    PluginDebug mypluginid,myotherpluginid

The values are the plugin IDs of the plugins for which you want to turn on debug logging.

## Usage

    my $plugin = MT->component('mypluginid');

    $plugin->debuglog ($msg);

This will put a msg in the System-level Activity Log with level DEBUG() and the message you provided, prefixed with "mypluginid: ".