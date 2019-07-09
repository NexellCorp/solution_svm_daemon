# solution_svm_daemon

--------------------------------------------------------------------------------------------------------------- 
20190709 ver : 2.8.3
	- added daemon main camera count(1 or 4) argument(0 or no argument use default avm_config.txt).
	- nx_avm_client_cmd_system_connect return camera count.
	- added nx_avm_client_cmd_system_get_prop() at client library(for getting Daemon PID).
	- moved data/avm/avm_config_onecam.txt to data/avm/avm_onecam/avm_config_onecam.txt.
	- added bin/test_view_rawimage for calibration utility. 