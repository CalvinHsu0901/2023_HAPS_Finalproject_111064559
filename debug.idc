# Mode and uc_groups are set to the recommended values. Ensure to check help docs and change them accordingly.
iice new {IICE_UC} -type regular
iice controller -iice {IICE_UC} none
iice sampler -iice {IICE_UC} -always_armed 1
iice sampler -iice {IICE_UC} -depth 1024
iice clock -iice {IICE_UC} -edge positive {top.clk1}
signals add -iice {IICE_UC} -silent -sample -trigger {top.cnt_temp1}\
{top.led_out4}\
{top.led_out3}\
{top.led_out2}\
{top.led_out1}

