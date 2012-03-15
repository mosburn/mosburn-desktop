#
# Regular cron jobs for the mosburn-destkop package
#
0 4	* * *	root	[ -x /usr/bin/mosburn-destkop_maintenance ] && /usr/bin/mosburn-destkop_maintenance
