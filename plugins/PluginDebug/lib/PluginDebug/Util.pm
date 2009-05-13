package PluginDebug::Util;

use strict;
use warnings;

sub init {
    require MT::Plugin;
    *MT::Plugin::debuglog = \&debuglog;
}

sub debuglog {
    return unless MT->config->PluginDebug;
    my ( $plugin, $msg ) = @_;
    my $id = $plugin->id;
    require MT::Log;
    if (   MT->config->PluginDebug eq 'all'
        || MT->config->PluginDebug =~ /$id/i )
    {
        MT->log(
            {   message => "$id: $msg",
                level   => MT::Log::DEBUG(),
                category => 'plugin_debug'
            }
        );
    }
}

1;
