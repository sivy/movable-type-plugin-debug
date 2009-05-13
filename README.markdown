# PluginDebug

PluginDebug adds built-in (bolted on?) debug logging to MT's Component.pm.

## Configuration

Add the `PluginDebug` directive to your mt-config.cgi

    PluginDebug mypluginid,myotherpluginid

The values are the plugin IDs of the plugins for which you want to turn on debug logging. If you're feeling lazy,

    PluginDebug all

will turn on debug logging for any plugin/addon.

## Usage

    my $plugin = MT->component('mypluginid');

    $plugin->debuglog ($msg);

This will add an entry to the System-level Activity Log with level DEBUG() and the message you provided, prefixed with "mypluginid: ". If the plugin id is not in PluginDebug, debuglog() will simply return.