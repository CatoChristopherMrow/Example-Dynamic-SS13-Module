/datum/unit_test/example_dynamic_module/Run()
	var/datum/example_dynamic_module/example = new
	TEST_ASSERT_NOTNULL(example, "Example dynamic module datum should instantiate.")
	TEST_ASSERT_EQUAL(example.get_status_line(), "Example Dynamic Module: 42", "Status line should be stable.")

