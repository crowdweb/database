# Copyright (c) 2010, Oracle and/or its affiliates. All rights reserved.
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; version 2 of the License.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301  USA

# Routine to be called by pfs_upgrade.test
# $out_file and $err_file must be set within pfs_upgrade.test.
#

--source include/count_sessions.inc
--error 1
--exec $MYSQL_UPGRADE --skip-verbose --force > $out_file 2> $err_file
--source include/wait_until_count_sessions.inc

# Verify that mysql_upgrade complained about the performance_schema
--cat_file $err_file
--error 0,1
--remove_file $out_file
--error 0,1
--remove_file $err_file

