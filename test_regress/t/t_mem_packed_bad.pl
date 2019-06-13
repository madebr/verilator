#!/usr/bin/perl
if (!$::Driver) { use FindBin; exec("$FindBin::Bin/bootstrap.pl", @ARGV, $0); die; }
# DESCRIPTION: Verilator: Verilog Test driver/expect definition
#
# Copyright 2010 by Wilson Snyder. This program is free software; you can
# redistribute it and/or modify it under the terms of either the GNU
# Lesser General Public License Version 3 or the Perl Artistic License
# Version 2.0.

scenarios(linter => 1);

lint(
    fails => 1,
    expect =>
q{%Error: t/t_mem_packed_bad.v:\d+: CONST '28'h0' unexpected in assignment to unpacked array
%Error: Exiting due to.*},
    );

ok(1);
1;
