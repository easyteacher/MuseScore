#!/usr/bin/env bash
# SPDX-License-Identifier: GPL-3.0-only
# MuseScore-CLA-applies
#
# MuseScore
# Music Composition & Notation
#
# Copyright (C) 2021 MuseScore BVBA and others
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 3 as
# published by the Free Software Foundation.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

HERE="${BASH_SOURCE%/*}" # path to dir that contains this script

LUPDATE=lupdate
SRC_DIR=$HERE/../../src 
TS_DIR=$HERE/../../share/locale 
ARGS="-recursive -tr-function-alias translate+=trc -tr-function-alias translate+=mtrc -tr-function-alias translate+=qtrc -tr-function-alias qsTranslate+=qsTrc -extensions qml,cpp -no-obsolete"

for f in $TS_DIR/musescore_*.ts
do
  echo "Processing $f ..."
  $LUPDATE $ARGS $SRC_DIR -ts $f
done