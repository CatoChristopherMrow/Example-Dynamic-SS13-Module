/// Tiny datum used to prove that external Dynamic Modules compile into the host.
/datum/example_dynamic_module
	var/name = "Example Dynamic Module"
	var/configured_value = 42

/datum/example_dynamic_module/proc/get_status_line()
	return "[name]: [configured_value]"

