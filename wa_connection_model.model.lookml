- connection: clarity_wa

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

# - explore: _auth_assignment
#   joins:
#     - join: users
#       type: left_outer 
#       sql_on: ${_auth_assignment.userid} = ${users.id}
#       relationship: many_to_one


# - explore: _auth_item

# - explore: _auth_item_child

# - explore: _db_migration

# - explore: _enrollmentcoc
#   joins:
#     - join: users
#       type: left_outer 
#       sql_on: ${_enrollmentcoc.user_id} = ${users.id}
#       relationship: many_to_one


# - explore: _logs

# - explore: _temp_client_aliases

# - explore: _temp_client_program_demographics

# - explore: access_role_categories

# - explore: access_roles

# - explore: agencies

# - explore: agency_api_credentials_cp

# - explore: agency_assessments

# - explore: agency_client_form_templates

# - explore: agency_contacts

# - explore: agency_report_item

# - explore: api_logs

# - explore: api_users

# - explore: appsensor_logs

# - explore: area_median_incomes

# - explore: assessment_conditions

# - explore: assessment_measures

# - explore: assessment_points

# - explore: assessment_processors

# - explore: assessment_subtotals

# - explore: auth_assignment
#   joins:
#     - join: users
#       type: left_outer 
#       sql_on: ${auth_assignment.user_id} = ${users.id}
#       relationship: many_to_one


# - explore: auth_item

# - explore: auth_item_child

# - explore: auth_rule

# - explore: cache

# - explore: calendar_events

# - explore: client_activity

# - explore: client_addresses

# - explore: client_alerts

# - explore: client_alerts_log

# - explore: client_assessment_data

# - explore: client_assessment_demographics

# - explore: client_assessment_scores

# - explore: client_assessments_log

# - explore: client_custom_del

# - explore: client_data

# - explore: client_data_del

# - explore: client_demographics

# - explore: client_demographics_del

# - explore: client_field_interactions

# - explore: client_file_categories

# - explore: client_file_names

# - explore: client_files

# - explore: client_form_templates

# - explore: client_group_members

# - explore: client_groups

# - explore: client_notes

# - explore: client_notes_log

# - explore: client_photos

# - explore: client_program_assessments

# - explore: client_program_data

# - explore: client_program_demographics

# - explore: client_program_goals

# - explore: client_program_staff

# - explore: client_programs

# - explore: client_programs_files

# - explore: client_programs_log

# - explore: client_service_dates

# - explore: client_service_employment

# - explore: client_service_expenses

# - explore: client_service_members

# - explore: client_service_notes

# - explore: client_service_notification_info

# - explore: client_service_programs

# - explore: client_service_time_tracking

# - explore: client_services

# - explore: client_services_del

# - explore: client_services_log

# - explore: clients

# - explore: clients_log

# - explore: clients_merge_history

# - explore: cocs

# - explore: command_log

# - explore: command_statuses

# - explore: command_types

# - explore: commands

# - explore: counties

# - explore: dashboard

# - explore: delivery_types

# - explore: department

# - explore: department_exception

# - explore: department_program

# - explore: department_service

# - explore: department_user

# - explore: eligibility_processor_results

# - explore: eligibility_requirements

# - explore: email_templates

# - explore: employers

# - explore: enabled_modules

# - explore: error_logs

# - explore: field_types

# - explore: fields

# - explore: file_types

# - explore: files

# - explore: final_household

# - explore: funding

# - explore: funding_closure_table

# - explore: goal_measures

# - explore: goals

# - explore: household

# - explore: image_types

# - explore: import_client_group_map

# - explore: import_client_map

# - explore: import_enrollment_map

# - explore: import_entries

# - explore: import_exit_map

# - explore: import_file_agencies

# - explore: import_file_analysis_results

# - explore: import_file_commands

# - explore: import_file_error_types

# - explore: import_file_errors

# - explore: import_file_logs

# - explore: import_file_programs

# - explore: import_file_service_id_to_item_map

# - explore: import_file_service_items

# - explore: import_file_sources

# - explore: import_file_standards

# - explore: import_file_states

# - explore: import_file_types

# - explore: import_files

# - explore: import_household_map

# - explore: import_program_map

# - explore: import_progress

# - explore: import_service_item_map

# - explore: import_sources

# - explore: income_types

# - explore: info_logs

# - explore: ip_whitelist

# - explore: license_group

# - explore: live_markers

# - explore: mapping_client_service_dates_prod

# - explore: members

# - explore: memory_limit

# - explore: message

# - explore: messages

# - explore: migration

# - explore: modules

# - explore: mt_wash_client

# - explore: mt_wash_client_program_data

# - explore: mt_wash_client_program_data_del

# - explore: mt_wash_client_service

# - explore: mt_wash_client_service_del

# - explore: mt_wash_enrollment

# - explore: mt_wash_enrollment_del

# - explore: mt_wash_existing_clients

# - explore: mt_wash_existing_household

# - explore: mt_wash_existing_household_member

# - explore: mt_wash_household

# - explore: mt_wash_household_member

# - explore: mt_wash_program_exit

# - explore: mt_wash_program_exit_del

# - explore: mt_wash_project

# - explore: mt_wash_service

# - explore: mt_wash_user

# - explore: navigation_profiles

# - explore: navigation_profiles_resources

# - explore: picklist

# - explore: pki_certificates

# - explore: poverty_guideline_amounts

# - explore: poverty_guidelines

# - explore: privileges

# - explore: program_assessments

# - explore: program_attendance

# - explore: program_autoexit_fields

# - explore: program_charts

# - explore: program_client_form_templates

# - explore: program_coc

# - explore: program_funding_sources

# - explore: program_goals

# - explore: program_inventory

# - explore: program_inventory_history

# - explore: program_openings

# - explore: program_service_items

# - explore: program_services

# - explore: program_sites

# - explore: program_staff

# - explore: program_template_assessments

# - explore: program_template_charts

# - explore: program_template_files

# - explore: program_template_goals

# - explore: program_templates

# - explore: programs

# - explore: programs_client_files

# - explore: programs_eligibility_requirements

# - explore: queue_statuses

# - explore: recent_searches

# - explore: referral_connections

# - explore: referral_history

# - explore: referral_notes

# - explore: referral_settings

# - explore: referrals

# - explore: release_of_information

# - explore: report_items

# - explore: report_labels

# - explore: reporting_queue

# - explore: reports

# - explore: reports_log

# - explore: reservation

# - explore: reservation_slot_sections

# - explore: reservation_slots

# - explore: resources

# - explore: roi_settings

# - explore: rpt_apr_demographics_specific

# - explore: rpt_apr_dictionary

# - explore: rpt_apr_list
#   joins:
#     - join: users
#       type: left_outer 
#       sql_on: ${rpt_apr_list.userid} = ${users.id}
#       relationship: many_to_one


# - explore: rpt_apr_oct2014_demographics_specific

# - explore: rpt_apr_oct2014_dictionary

# - explore: rpt_apr_oct2014_list
#   joins:
#     - join: users
#       type: left_outer 
#       sql_on: ${rpt_apr_oct2014_list.userid} = ${users.id}
#       relationship: many_to_one


# - explore: rpt_apr_oct2014_report
#   joins:
#     - join: users
#       type: left_outer 
#       sql_on: ${rpt_apr_oct2014_report.user_id} = ${users.id}
#       relationship: many_to_one


# - explore: rpt_apr_report
#   joins:
#     - join: users
#       type: left_outer 
#       sql_on: ${rpt_apr_report.user_id} = ${users.id}
#       relationship: many_to_one


# - explore: rpt_assessment_client_details

# - explore: rpt_assessment_clients

# - explore: rpt_assessment_fields

# - explore: rpt_caper_v2_dictionary

# - explore: rpt_caper_v2_list
#   joins:
#     - join: users
#       type: left_outer 
#       sql_on: ${rpt_caper_v2_list.userid} = ${users.id}
#       relationship: many_to_one


# - explore: rpt_caper_v2_report
#   joins:
#     - join: client_programs
#       type: left_outer 
#       sql_on: ${rpt_caper_v2_report.client_program_id} = ${client_programs.id}
#       relationship: many_to_one

#     - join: clients
#       type: left_outer 
#       sql_on: ${rpt_caper_v2_report.client_id} = ${clients.id}
#       relationship: many_to_one


# - explore: rpt_chronic_psh_dictionnary

# - explore: rpt_chronic_psh_list

# - explore: rpt_client_calculations_cache
#   joins:
#     - join: reports
#       type: left_outer 
#       sql_on: ${rpt_client_calculations_cache.report_id} = ${reports.id}
#       relationship: many_to_one


# - explore: rpt_client_programs_cache
#   joins:
#     - join: household
#       type: left_outer 
#       sql_on: ${rpt_client_programs_cache.household_id} = ${household.id}
#       relationship: many_to_one

#     - join: clients
#       type: left_outer 
#       sql_on: ${rpt_client_programs_cache.client_id} = ${clients.id}
#       relationship: many_to_one

#     - join: client_programs
#       type: left_outer 
#       sql_on: ${rpt_client_programs_cache.client_program_id} = ${client_programs.id}
#       relationship: many_to_one

#     - join: programs
#       type: left_outer 
#       sql_on: ${rpt_client_programs_cache.program_id} = ${programs.id}
#       relationship: many_to_one


# - explore: rpt_client_services_cache
#   joins:
#     - join: client_services
#       type: left_outer 
#       sql_on: ${rpt_client_services_cache.client_service_id} = ${client_services.id}
#       relationship: many_to_one

#     - join: service_items
#       type: left_outer 
#       sql_on: ${rpt_client_services_cache.service_item_id} = ${service_items.id}
#       relationship: many_to_one

#     - join: services
#       type: left_outer 
#       sql_on: ${rpt_client_services_cache.service_id} = ${services.id}
#       relationship: many_to_one

#     - join: clients
#       type: left_outer 
#       sql_on: ${rpt_client_services_cache.client_id} = ${clients.id}
#       relationship: many_to_one


# - explore: rpt_client_summary_cache
#   joins:
#     - join: clients
#       type: left_outer 
#       sql_on: ${rpt_client_summary_cache.client_id} = ${clients.id}
#       relationship: many_to_one


# - explore: rpt_clients_cache
#   joins:
#     - join: clients
#       type: left_outer 
#       sql_on: ${rpt_clients_cache.client_id} = ${clients.id}
#       relationship: many_to_one


# - explore: rpt_community_assessment_and_housing_details_dictionnary

# - explore: rpt_community_assessment_and_housing_details_list

# - explore: rpt_custom_calculations_cache
#   joins:
#     - join: reports
#       type: left_outer 
#       sql_on: ${rpt_custom_calculations_cache.report_id} = ${reports.id}
#       relationship: many_to_one


# - explore: rpt_custom_calculations_cache_backup
#   joins:
#     - join: reports
#       type: left_outer 
#       sql_on: ${rpt_custom_calculations_cache_backup.report_id} = ${reports.id}
#       relationship: many_to_one


# - explore: rpt_datedim

# - explore: rpt_dictionnary_cache
#   joins:
#     - join: reports
#       type: left_outer 
#       sql_on: ${rpt_dictionnary_cache.report_id} = ${reports.id}
#       relationship: many_to_one


# - explore: rpt_dictionnary_cache_backup
#   joins:
#     - join: reports
#       type: left_outer 
#       sql_on: ${rpt_dictionnary_cache_backup.report_id} = ${reports.id}
#       relationship: many_to_one


# - explore: rpt_drilldown_report_dictionnary_backup

# - explore: rpt_esg_persons_assisted

# - explore: rpt_esg_persons_shelter_utilization_client_service_items

# - explore: rpt_esg_persons_shelter_utilization_service_items

# - explore: rpt_household_list

# - explore: rpt_households_dim
#   joins:
#     - join: service_items
#       type: left_outer 
#       sql_on: ${rpt_households_dim.service_item_id} = ${service_items.id}
#       relationship: many_to_one

#     - join: services
#       type: left_outer 
#       sql_on: ${rpt_households_dim.service_id} = ${services.id}
#       relationship: many_to_one


# - explore: rpt_households_fact
#   joins:
#     - join: service_items
#       type: left_outer 
#       sql_on: ${rpt_households_fact.service_item_id} = ${service_items.id}
#       relationship: many_to_one

#     - join: services
#       type: left_outer 
#       sql_on: ${rpt_households_fact.service_id} = ${services.id}
#       relationship: many_to_one


# - explore: rpt_housing_placement_form

# - explore: rpt_htfbond_client_program_services

# - explore: rpt_htfbond_client_programs

# - explore: rpt_htfbond_list

# - explore: rpt_htfbond_short_dictionnary

# - explore: rpt_htfbond_short_list

# - explore: rpt_htfbond_short_report
#   joins:
#     - join: client_programs
#       type: left_outer 
#       sql_on: ${rpt_htfbond_short_report.client_program_id} = ${client_programs.id}
#       relationship: many_to_one

#     - join: household
#       type: left_outer 
#       sql_on: ${rpt_htfbond_short_report.household_id} = ${household.id}
#       relationship: many_to_one

#     - join: clients
#       type: left_outer 
#       sql_on: ${rpt_htfbond_short_report.client_id} = ${clients.id}
#       relationship: many_to_one


# - explore: rpt_hunger_dictionary

# - explore: rpt_hunger_poverty_clients

# - explore: rpt_hunger_poverty_groups

# - explore: rpt_las_vegas_performance_measure_ami_dictionary

# - explore: rpt_las_vegas_performance_measure_client_programs

# - explore: rpt_napa_shelter_list

# - explore: rpt_napa_shelter_v3_report

# - explore: rpt_path_annual_2014_list

# - explore: rpt_pathannual

# - explore: rpt_pathannual_demographics

# - explore: rpt_pathannual_dictionnary

# - explore: rpt_pathannual_list

# - explore: rpt_performance_monitoring_dictionnary

# - explore: rpt_performance_monitoring_list

# - explore: rpt_programs_cache
#   joins:
#     - join: programs
#       type: left_outer 
#       sql_on: ${rpt_programs_cache.program_id} = ${programs.id}
#       relationship: many_to_one


# - explore: rpt_pulse_dictionary

# - explore: rpt_pulse_list

# - explore: rpt_pulse_report

# - explore: rpt_report_execution_cache
#   joins:
#     - join: reports
#       type: left_outer 
#       sql_on: ${rpt_report_execution_cache.report_id} = ${reports.id}
#       relationship: many_to_one


# - explore: rpt_report_parameter_values

# - explore: rpt_report_parameters

# - explore: rpt_report_usage_log

# - explore: rpt_reporting_support_drilldown_debug

# - explore: rpt_reports_cache

# - explore: rpt_reports_cache_backup

# - explore: rpt_san_mateo_core_county_ami_dictionary

# - explore: rpt_san_mateo_core_language_dictionary

# - explore: rpt_san_mateo_core_performance_client_assessments

# - explore: rpt_san_mateo_core_performance_client_group_member_programs

# - explore: rpt_san_mateo_core_performance_client_group_members

# - explore: rpt_san_mateo_core_performance_client_groups

# - explore: rpt_san_mateo_core_performance_client_last_program_assessment

# - explore: rpt_san_mateo_core_performance_client_programs

# - explore: rpt_san_mateo_core_performance_clients

# - explore: rpt_san_mateo_core_performance_dictionary_services

# - explore: rpt_san_mateo_core_performance_hoh_addresses

# - explore: rpt_san_mateo_core_performance_list

# - explore: rpt_san_mateo_core_performance_services

# - explore: rpt_san_mateo_county_cities

# - explore: rpt_san_mateo_county_zip_codes

# - explore: rpt_san_mateo_housing_stability_client_group_members

# - explore: rpt_san_mateo_housing_stability_client_groups

# - explore: rpt_san_mateo_housing_stability_client_program_updates

# - explore: rpt_san_mateo_housing_stability_clients

# - explore: rpt_san_mateo_housing_stability_dictionary_services

# - explore: rpt_san_mateo_housing_stability_list

# - explore: rpt_san_mateo_housing_stability_services

# - explore: rpt_san_mateo_performance_measure_client_assessments

# - explore: rpt_san_mateo_performance_measure_client_programs

# - explore: rpt_san_mateo_performance_measure_client_programs_small

# - explore: rpt_san_mateo_performance_measure_dictionary

# - explore: rpt_san_mateo_performance_measure_fact

# - explore: rpt_shelter_count_2015
#   joins:
#     - join: services
#       type: left_outer 
#       sql_on: ${rpt_shelter_count_2015.service_id} = ${services.id}
#       relationship: many_to_one

#     - join: household
#       type: left_outer 
#       sql_on: ${rpt_shelter_count_2015.household_id} = ${household.id}
#       relationship: many_to_one

#     - join: client_programs
#       type: left_outer 
#       sql_on: ${rpt_shelter_count_2015.client_program_id} = ${client_programs.id}
#       relationship: many_to_one

#     - join: clients
#       type: left_outer 
#       sql_on: ${rpt_shelter_count_2015.client_id} = ${clients.id}
#       relationship: many_to_one


# - explore: rpt_shelter_count_2015_dictionnary

# - explore: rpt_shelter_count_2015_list

# - explore: rpt_shsm_census_program_matrix_2016
#   joins:
#     - join: clients
#       type: left_outer 
#       sql_on: ${rpt_shsm_census_program_matrix_2016.client_id} = ${clients.id}
#       relationship: many_to_one


# - explore: rpt_shsm_census_program_matrix_dictionnary_2016

# - explore: rpt_shsm_census_program_matrix_list_2016

# - explore: rpt_shsm_client_file_category_source

# - explore: rpt_shsm_daily_occupancy_rate_2016
#   joins:
#     - join: household
#       type: left_outer 
#       sql_on: ${rpt_shsm_daily_occupancy_rate_2016.household_id} = ${household.id}
#       relationship: many_to_one

#     - join: clients
#       type: left_outer 
#       sql_on: ${rpt_shsm_daily_occupancy_rate_2016.client_id} = ${clients.id}
#       relationship: many_to_one


# - explore: rpt_shsm_daily_occupancy_rate_dictionnary_2016

# - explore: rpt_shsm_daily_occupancy_rate_list_2016

# - explore: rpt_shsm_monthly_occupancy_rate_2016
#   joins:
#     - join: household
#       type: left_outer 
#       sql_on: ${rpt_shsm_monthly_occupancy_rate_2016.household_id} = ${household.id}
#       relationship: many_to_one

#     - join: clients
#       type: left_outer 
#       sql_on: ${rpt_shsm_monthly_occupancy_rate_2016.client_id} = ${clients.id}
#       relationship: many_to_one


# - explore: rpt_shsm_monthly_occupancy_rate_dictionnary_2016

# - explore: rpt_shsm_monthly_occupancy_rate_list_2016

# - explore: rpt_shsm_performance_summary_ytd_2016
#   joins:
#     - join: clients
#       type: left_outer 
#       sql_on: ${rpt_shsm_performance_summary_ytd_2016.client_id} = ${clients.id}
#       relationship: many_to_one


# - explore: rpt_shsm_performance_summary_ytd_dictionnary_2016

# - explore: rpt_shsm_performance_summary_ytd_list_2016

# - explore: rpt_sp_hud_spm_measure_1_client_programs

# - explore: rpt_sp_hud_spm_measure_1_clients

# - explore: rpt_sp_hud_spm_measure_1_clients_final

# - explore: rpt_stored_proc_run_log

# - explore: rpt_subpopulation

# - explore: rpt_test_pentaho_5_1

# - explore: rpt_test_pentaho_5_2

# - explore: rpt_transitional_path_annual_2014
#   joins:
#     - join: client_programs
#       type: left_outer 
#       sql_on: ${rpt_transitional_path_annual_2014.client_program_id} = ${client_programs.id}
#       relationship: many_to_one


# - explore: rpt_transitional_path_annual_2014_dictionnary

# - explore: rpt_transitional_path_annual_2014_list

# - explore: score_ranges

# - explore: screen_field_calculations

# - explore: screen_field_constraints

# - explore: screen_field_external

# - explore: screen_fields

# - explore: screens

# - explore: service_item_taxonomy

# - explore: service_item_templates

# - explore: service_items

# - explore: service_items_housing

# - explore: service_items_housing_history

# - explore: service_templates

# - explore: services

# - explore: services_program_usage

# - explore: sharing_exceptions

# - explore: sharing_files

# - explore: sharing_group

# - explore: sharing_group_agency

# - explore: sharing_group_options

# - explore: site_settings

# - explore: sites

# - explore: source_message

# - explore: static_page

# - explore: taxonomy

# - explore: taxonomy_categories

# - explore: theme_categories

# - explore: theme_colors

# - explore: time_zones

# - explore: transaction

# - explore: user_agencies

# - explore: user_deletion_log

# - explore: user_groups

# - explore: user_groups_resources_privileges

# - explore: user_statuses

# - explore: users

# - explore: victor_debug

# - explore: yii_cache

# - explore: yii_session

# - explore: zipcode

