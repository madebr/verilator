#!/usr/bin/perl
if (!$::Driver) { use FindBin; exec("$FindBin::Bin/bootstrap.pl", @ARGV, $0); die; }
# DESCRIPTION: Verilator: Verilog Test driver/expect definition
#
# Copyright 2003 by Wilson Snyder. This program is free software; you can
# redistribute it and/or modify it under the terms of either the GNU
# Lesser General Public License Version 3 or the Perl Artistic License
# Version 2.0.

scenarios(vlt => 1);

lint(
    fails => 1,
    expect =>
q{%Error: t/t_var_ref_bad3.v:\d+: Unsupported: ref/const ref as primary input/output: bad_primary_ref
.*%Error: Exiting due to.*},
    );

ok(1);
1;
