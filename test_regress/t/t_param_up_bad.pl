#!/usr/bin/perl
if (!$::Driver) { use FindBin; exec("$FindBin::Bin/bootstrap.pl", @ARGV, $0); die; }
# DESCRIPTION: Verilator: Verilog Test driver/expect definition
#
# Copyright 2003 by Wilson Snyder. This program is free software; you can
# redistribute it and/or modify it under the terms of either the GNU
# Lesser General Public License Version 3 or the Perl Artistic License
# Version 2.0.

scenarios(linter => 1);

lint(
    fails => 1,
    expect =>
'%Error: t/t_param_up_bad.v:\d+: Can\'t find definition of scope/variable: bar
.*%Error: Exiting due to.*',
    );

ok(1);
1;
