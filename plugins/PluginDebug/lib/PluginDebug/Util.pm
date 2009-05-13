package PluginDebug::Util;

use strict;
use warnings;

sub init {
    require MT::Component;
    *MT::Component::debuglog = \&debuglog;
}

sub debuglog {
    return unless MT->config->PluginDebug;
    my ( $component, $msg ) = @_;
    my $id = $component->id;
    require MT::Log;
    if (   MT->config->PluginDebug eq 'all'
        || MT->config->PluginDebug =~ /$id/i )
    {
        MT->log(
            {   message => "$id: $msg",
                level   => MT::Log::DEBUG(),
                category => 'component_debug'
            }
        );
    }
}

1;
