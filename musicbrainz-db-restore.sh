#!/usr/bin/env bash

wget http://ftp.musicbrainz.org/pub/musicbrainz/data/fullexport/20190306-001619/mbdump.tar.bz2

pg_restore -U postgres -d musicbrainz -1 mbdump.dump
