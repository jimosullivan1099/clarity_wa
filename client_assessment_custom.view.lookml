- view: client_assessment_custom
  sql_table_name: |
    client_assessment_data
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: ref_client_assessment_demographics
    type: int
    sql: ${TABLE}.ref_client_assessment_demographics

  - dimension: c_reg_sex_offender
    label: "Registered Sex Offender"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_reg_sex_offender' AS INTEGER)

  - dimension: c_meth_production
    label: "Methamphetamine Production"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_meth_production' AS INTEGER)

  - dimension: c_felony_last
    label: "Class A felony within the past 12 months"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_felony_last' AS INTEGER)

  - dimension: c_arson
    label: "Arson"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_arson' AS INTEGER)

  - dimension: c_ada_accom
    label: "ADA Accommodation"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_ada_accom' AS INTEGER)

  - dimension: c_ada_accom_notes
    label: "ADA Accommodation Notes"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_ada_accom_notes' AS CHAR(255))

  - dimension: c_assessor_flag
    label: "VI-SPDAT Assessor Flag"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_assessor_flag' AS INTEGER)

  - dimension: c_identify_black
    label: "Identify as Black or African American"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_identify_black' AS INTEGER)

  - dimension: c_tribal_designation
    label: "Tribal Designation"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_tribal_designation' AS INTEGER)

  - dimension: c_identify_lgbtq
    label: "Identify as LGBTQ"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_identify_lgbtq' AS INTEGER)

  - dimension: c_extended_foster_care
    label: "Extended Foster Care"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_extended_foster_care' AS INTEGER)

  - dimension: c_aged_out_foster_care
    label: "Aged out of Foster Care"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_aged_out_foster_care' AS INTEGER)

  - dimension: c_hsc_exit_reason
    label: "Waitlist Exit Reason"
    type: string
    sql:  fn_getPicklistValueName('c_hsc_exit_reason',COLUMN_GET(${TABLE}.custom_data,'c_hsc_exit_reason' AS CHAR(255)))

  - dimension: c_hsc_exit_destination
    label: "Waitlist Exit Destination"
    type: string
    sql:  fn_getPicklistValueName('c_hsc_exit_destination',COLUMN_GET(${TABLE}.custom_data,'c_hsc_exit_destination' AS CHAR(255)))

  - dimension: c_hsc_rfhl_alcoholism
    label: "Alcoholism"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_hsc_rfhl_alcoholism' AS INTEGER)

  - dimension: c_hsc_rfhl_displacement
    label: "Displacement"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_hsc_rfhl_displacement' AS INTEGER)

  - dimension: c_hsc_rfhl_domestic_violence
    label: "Domestic Violence"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_hsc_rfhl_domestic_violence' AS INTEGER)

  - dimension: c_hsc_rfhl_eviction
    label: "Eviction"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_hsc_rfhl_eviction' AS INTEGER)

  - dimension: c_hsc_rfhl_family_crisis
    label: "Family Crisis"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_hsc_rfhl_family_crisis' AS INTEGER)

  - dimension: c_hsc_rfhl_health_problem_illness
    label: "Health Problem/Illness"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_hsc_rfhl_health_problem_illness' AS INTEGER)

  - dimension: c_hsc_rfhl_mental_illness
    label: "Mental Illness"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_hsc_rfhl_mental_illness' AS INTEGER)

  - dimension: c_hsc_rfhl_new_to_area
    label: "New to the Area"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_hsc_rfhl_new_to_area' AS INTEGER)

  - dimension: c_hsc_rfhl_out_of_home_youth
    label: "Out of Home Youth"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_hsc_rfhl_out_of_home_youth' AS INTEGER)

  - dimension: c_hsc_rfhl_economic_reasons
    label: "Economic Reasons"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_hsc_rfhl_economic_reasons' AS INTEGER)

  - dimension: c_hsc_rfhl_cant_find_affordable_housing
    label: "Can't Find Affordable Housing"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_hsc_rfhl_cant_find_affordable_housing' AS INTEGER)

  - dimension: c_hsc_rfhl_substance_abuse
    label: "Substance Abuse"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_hsc_rfhl_substance_abuse' AS INTEGER)

  - dimension: c_hsc_rfhl_transient_on_the_road
    label: "Transient on the Road"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_hsc_rfhl_transient_on_the_road' AS INTEGER)

  - dimension: c_hsc_rfhl_known
    label: "Reason(s) for Homelessness Known?"
    type: string
    sql:  fn_getPicklistValueName('c_hsc_rfhl_known',COLUMN_GET(${TABLE}.custom_data,'c_hsc_rfhl_known' AS CHAR(255)))

  - dimension: c_hsc_outkc_lkr
    label: "Coming from outside Kitsap County?"
    type: string
    sql:  fn_getPicklistValueName('c_hsc_outkc_lkr',COLUMN_GET(${TABLE}.custom_data,'c_hsc_outkc_lkr' AS CHAR(255)))

  - dimension: c_hsc_outkc_returning_to_area
    label: "Returning to the Area"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_hsc_outkc_returning_to_area' AS INTEGER)

  - dimension: c_hsc_outkc_help_family_friends
    label: "To Help Family/Friends"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_hsc_outkc_help_family_friends' AS INTEGER)

  - dimension: c_hsc_outkc_get_help
    label: "To Get Help From Family/Friends"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_hsc_outkc_get_help' AS INTEGER)

  - dimension: c_hsc_outkc_cost_of_living
    label: "Better Cost of Living"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_hsc_outkc_cost_of_living' AS INTEGER)

  - dimension: c_hsc_outkc_employment
    label: "Employment Opportunities"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_hsc_outkc_employment' AS INTEGER)

  - dimension: c_hsc_outkc_education
    label: "Education Opportunities"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_hsc_outkc_education' AS INTEGER)

  - dimension: c_hsc_outkc_military_connection
    label: "Military Connection"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_hsc_outkc_military_connection' AS INTEGER)

  - dimension: c_hsc_outkc_public_housing
    label: "Offer of Public Housing"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_hsc_outkc_public_housing' AS INTEGER)

  - dimension: c_hsc_outkc_seeking_treatment
    label: "Seeking Medical/Recovery Treatment"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_hsc_outkc_seeking_treatment' AS INTEGER)

  - dimension: c_hsc_outkc_social_services
    label: "To Access Social Services"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_hsc_outkc_social_services' AS INTEGER)

  - dimension: c_hsc_outkc_internet
    label: "Found Kitsap on Internet"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_hsc_outkc_internet' AS INTEGER)

  - dimension: c_hsc_outkc_other
    label: "Other"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_hsc_outkc_other' AS INTEGER)

  - dimension: c_hsc_zip
    label: "Last Known Zip Code"
    type: int
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_hsc_zip' AS INTEGER)

  - dimension: c_CD_1_reasons_for_contact
    label: "Safety & security: Domestic violence, elder abuse, child abuse (describe in comments section below)"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_1_reasons_for_contact' AS INTEGER)

  - dimension: c_CD_2_reasons_for_contact
    label: "Other safety/security concerns (describe in comments section below)"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_2_reasons_for_contact' AS INTEGER)

  - dimension: c_CD_3_reasons_for_contact
    label: "Housing: Eviction prevention"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_3_reasons_for_contact' AS INTEGER)

  - dimension: c_CD_4_reasons_for_contact
    label: "Housing: Foreclosure prevention"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_4_reasons_for_contact' AS INTEGER)

  - dimension: c_CD_6_reasons_for_contact
    label: "Housing: Transitional housing"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_6_reasons_for_contact' AS INTEGER)

  - dimension: c_CD_7_reasons_for_contact
    label: "Housing: Emergency Shelter"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_7_reasons_for_contact' AS INTEGER)

  - dimension: c_CD_8_reasons_for_contact
    label: "Food/clothing"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_8_reasons_for_contact' AS INTEGER)

  - dimension: c_CD_9_reasons_for_contact
    label: "Transportation"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_9_reasons_for_contact' AS INTEGER)

  - dimension: c_CD_10_reasons_for_contact
    label: "Childcare"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_10_reasons_for_contact' AS INTEGER)

  - dimension: c_CD_12_reasons_for_contact
    label: "Basic education, employment or job training"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_12_reasons_for_contact' AS INTEGER)

  - dimension: c_CD_13_reasons_for_contact
    label: "Income: Need to apply for cash benefits, file wage or child support claim, budgeting or debt assistance"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_13_reasons_for_contact' AS INTEGER)

  - dimension: c_CD_14_reasons_for_contact
    label: "Legal assistance"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_14_reasons_for_contact' AS INTEGER)

  - dimension: c_CD_15_reasons_for_contact
    label: "Access to healthcare"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_15_reasons_for_contact' AS INTEGER)

  - dimension: c_CD_16_reasons_for_contact
    label: "Mental health services"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_16_reasons_for_contact' AS INTEGER)

  - dimension: c_CD_17_reasons_for_contact
    label: "Substance abuse services"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_17_reasons_for_contact' AS INTEGER)

  - dimension: c_CD_18_reasons_for_contact
    label: "Other (describe in comments section)"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_18_reasons_for_contact' AS INTEGER)

  - dimension: c_CD_19_reasons_for_contact
    label: "Reasons for contact comments"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_19_reasons_for_contact' AS CHAR(255))

  - dimension: c_CD_1_pregnant
    label: "Is anyone in your household currently pregnant?"
    type: string
    sql:  fn_getPicklistValueName('c_CD_1_pregnant',COLUMN_GET(${TABLE}.custom_data,'c_CD_1_pregnant' AS CHAR(255)))

  - dimension: c_CD_2_pregnant
    label: "Preganancy Due Date"
    type: time
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_2_pregnant' AS DATE)

  - dimension: c_CD_1_how_long
    label: "How long do you feel you or your household would be able to stay at the location identified above?"
    type: string
    sql:  fn_getPicklistValueName('c_CD_1_how_long',COLUMN_GET(${TABLE}.custom_data,'c_CD_1_how_long' AS CHAR(255)))

  - dimension: c_CD_1_stay_tonight
    label: "Where do you plan to stay tonight if different than the previous night?"
    type: string
    sql:  fn_getPicklistValueName('c_CD_1_stay_tonight',COLUMN_GET(${TABLE}.custom_data,'c_CD_1_stay_tonight' AS CHAR(255)))

  - dimension: c_CD_2_stay_tonight
    label: "Stay tonight comments"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_2_stay_tonight' AS CHAR(255))

  - dimension: c_CD_1_how_did_you_hear
    label: "How did you hear about the Community Housing Network (who referred you to us)?"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_1_how_did_you_hear' AS CHAR(255))

  - dimension: c_CD_1_accessed_before
    label: "Have you ever accessed homeless or housing services in Chelan or Douglas counties before?"
    type: string
    sql:  fn_getPicklistValueName('c_CD_1_accessed_before',COLUMN_GET(${TABLE}.custom_data,'c_CD_1_accessed_before' AS CHAR(255)))

  - dimension: c_CD_2_accessed_before
    label: "Approximate date accessed services before"
    type: time
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_2_accessed_before' AS DATE)

  - dimension: c_CD_1_geographic
    label: "Geographic Service Area"
    type: string
    sql:  fn_getPicklistValueName('c_CD_1_geographic',COLUMN_GET(${TABLE}.custom_data,'c_CD_1_geographic' AS CHAR(255)))

  - dimension: c_CD_2_geographic
    label: "Geographic service area comments"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_2_geographic' AS CHAR(255))

  - dimension: c_CD_1_pets
    label: "Do you or anyone in your household have any pets or service animals?"
    type: string
    sql:  fn_getPicklistValueName('c_CD_1_pets',COLUMN_GET(${TABLE}.custom_data,'c_CD_1_pets' AS CHAR(255)))

  - dimension: c_CD_2_pets
    label: "If client has pets, what type of pet"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_2_pets' AS CHAR(255))

  - dimension: c_CD_1_service_animal
    label: "If yes to service animal, do you have documentation available indicating the need for a service animal?"
    type: string
    sql:  fn_getPicklistValueName('c_CD_1_service_animal',COLUMN_GET(${TABLE}.custom_data,'c_CD_1_service_animal' AS CHAR(255)))

  - dimension: c_CD_3_pets
    label: "Some services are not available to clients with pets. Are you/they interested in services that do not allow pets?"
    type: string
    sql:  fn_getPicklistValueName('c_CD_3_pets',COLUMN_GET(${TABLE}.custom_data,'c_CD_3_pets' AS CHAR(255)))

  - dimension: c_CD_1_children_out_of_home
    label: "Are any children in your household temporarily or permanently out of your home due to a loss of custody (not just staying with a helpful friend or family member)?"
    type: string
    sql:  fn_getPicklistValueName('c_CD_1_children_out_of_home',COLUMN_GET(${TABLE}.custom_data,'c_CD_1_children_out_of_home' AS CHAR(255)))

  - dimension: c_CD_2_social_service_agency
    label: "Social service agency comments"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_2_social_service_agency' AS CHAR(255))

  - dimension: c_CD_1_criminal_convictions
    label: "None"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_1_criminal_convictions' AS INTEGER)

  - dimension: c_CD_3_criminal_convictions
    label: "Arson - misdemeanor"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_3_criminal_convictions' AS INTEGER)

  - dimension: c_CD_4_criminal_convictions
    label: "Drug manufacturing or meth production - felony"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_4_criminal_convictions' AS INTEGER)

  - dimension: c_CD_5_criminal_convictions
    label: "Drug manufacturing or meth production - misdemeanor"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_5_criminal_convictions' AS INTEGER)

  - dimension: c_CD_6_criminal_convictions
    label: "Drug possession - felony"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_6_criminal_convictions' AS INTEGER)

  - dimension: c_CD_7_criminal_convictions
    label: "Drug possession - misdemeanor"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_7_criminal_convictions' AS INTEGER)

  - dimension: c_CD_8_criminal_convictions
    label: "Drug distribution - felony"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_8_criminal_convictions' AS INTEGER)

  - dimension: c_CD_9_criminal_convictions
    label: "Drug distribution - misdemeanor"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_9_criminal_convictions' AS INTEGER)

  - dimension: c_CD_10_criminal_convictions
    label: "Sex offense - level 1"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_10_criminal_convictions' AS INTEGER)

  - dimension: c_CD_11_criminal_convictions
    label: "Sex offense - level 2"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_11_criminal_convictions' AS INTEGER)

  - dimension: c_CD_12_criminal_convictions
    label: "Sex offense - level 3"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_12_criminal_convictions' AS INTEGER)

  - dimension: c_CD_13_criminal_convictions
    label: "Assault or other violent crime - felony"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_13_criminal_convictions' AS INTEGER)

  - dimension: c_CD_14_criminal_convictions
    label: "Assault or other violent crime - misdemeanor"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_14_criminal_convictions' AS INTEGER)

  - dimension: c_CD_15_criminal_convictions
    label: "Other felony within 2 years (describe below)"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_15_criminal_convictions' AS INTEGER)

  - dimension: c_CD_16_criminal_convictions
    label: "Other criminal history (describe below)"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_16_criminal_convictions' AS INTEGER)

  - dimension: c_CD_17_criminal_convictions
    label: "Criminal conviction comments"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_17_criminal_convictions' AS CHAR(255))

  - dimension: c_CD_18_criminal_convictions
    label: "If yes to sex offense, are you/they required to register as a sex offender?"
    type: string
    sql:  fn_getPicklistValueName('c_CD_18_criminal_convictions',COLUMN_GET(${TABLE}.custom_data,'c_CD_18_criminal_convictions' AS CHAR(255)))

  - dimension: c_CD_1_gang
    label: "Are you or any of your household members currently affiliated with a gang?"
    type: string
    sql:  fn_getPicklistValueName('c_CD_1_gang',COLUMN_GET(${TABLE}.custom_data,'c_CD_1_gang' AS CHAR(255)))

  - dimension: c_CD_2_gang
    label: "Gang comments"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_2_gang' AS CHAR(255))

  - dimension: c_CD_1_currently_employed
    label: "Are you currently employed?"
    type: string
    sql:  fn_getPicklistValueName('c_CD_1_currently_employed',COLUMN_GET(${TABLE}.custom_data,'c_CD_1_currently_employed' AS CHAR(255)))

  - dimension: c_CD_2_currently_employed
    label: "Employed comments"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_2_currently_employed' AS CHAR(255))

  - dimension: c_CD_6_currently_employed
    label: "If employed, how many hours per week do you work?"
    type: int
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_6_currently_employed' AS INTEGER)

  - dimension: c_CD_7_currently_employed
    label: "If not employed, are you looking for work?"
    type: string
    sql:  fn_getPicklistValueName('c_CD_7_currently_employed',COLUMN_GET(${TABLE}.custom_data,'c_CD_7_currently_employed' AS CHAR(255)))

  - dimension: c_CD_1_education
    label: "Highest level of education completed"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_1_education' AS CHAR(255))

  - dimension: c_CD_2_education
    label: "Have you or any adults in your household received vocational training or apprenticeship certificates?"
    type: string
    sql:  fn_getPicklistValueName('c_CD_2_education',COLUMN_GET(${TABLE}.custom_data,'c_CD_2_education' AS CHAR(255)))

  - dimension: c_CD_3_education
    label: "Education comments"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_3_education' AS CHAR(255))

  - dimension: c_CD_4_education
    label: "Are you or any adults in your household currently in school or working on a degree or "
    type: string
    sql:  fn_getPicklistValueName('c_CD_4_education',COLUMN_GET(${TABLE}.custom_data,'c_CD_4_education' AS CHAR(255)))

  - dimension: c_CD_1_score
    label: "Prioritization Index Score"
    type: int
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_CD_1_score' AS INTEGER)

  - dimension: c_VI_Y_SPDAT
    label: "Total VI-Y-SPDAT Score"
    type: int
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_VI_Y_SPDAT' AS INTEGER)

  - dimension: c_VI_Y_SPDAT_Trimobidity
    label: "Is Trimorbidity Present?"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_VI_Y_SPDAT_Trimobidity' AS INTEGER)

  - dimension: c_hsc_rfhl_criminal_history
    label: "Criminal History"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_hsc_rfhl_criminal_history' AS INTEGER)

  - dimension: c_hsc_outkc_fleeing_dv
    label: "Fleeing Domestic Violence"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_hsc_outkc_fleeing_dv' AS INTEGER)

  - dimension: c_hsc_outkc_assigned_by_doc
    label: "Assigned by D.O.C."
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_hsc_outkc_assigned_by_doc' AS INTEGER)

  - dimension: c_HopeCRCOtherRefSource
    label: "Hope/CRC Other Referral Source"
    type: string
    sql:  fn_getPicklistValueName('c_HopeCRCOtherRefSource',COLUMN_GET(${TABLE}.custom_data,'c_HopeCRCOtherRefSource' AS CHAR(255)))

  - dimension: c_ParNotif_CHINS
    label: "Parental Notification/CHINS Petition Filed"
    type: time
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_ParNotif_CHINS' AS DATE)

  - dimension: c_Conflict_family
    label: "Conflict with family"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_Conflict_family' AS INTEGER)

  - dimension: c_Safety
    label: "Safety"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_Safety' AS INTEGER)

  - dimension: c_EmergencyPlacementYouth
    label: "Emergency placement of dependent youth"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_EmergencyPlacementYouth' AS INTEGER)

  - dimension: c_Other HOPE/CRCDestination
    label: "If Other HOPE/CRC Destination:"
    type: string
    sql:  fn_getPicklistValueName('c_Other HOPE/CRCDestination',COLUMN_GET(${TABLE}.custom_data,'c_Other HOPE/CRCDestination' AS CHAR(255)))

  - dimension: c_LegalCustodyEntry
    label: "Legal Custody at Entry"
    type: string
    sql:  fn_getPicklistValueName('c_LegalCustodyEntry',COLUMN_GET(${TABLE}.custom_data,'c_LegalCustodyEntry' AS CHAR(255)))

  - dimension: c_LegalCustodyExit
    label: "Legal Custody at Exit"
    type: string
    sql:  fn_getPicklistValueName('c_LegalCustodyExit',COLUMN_GET(${TABLE}.custom_data,'c_LegalCustodyExit' AS CHAR(255)))

  - dimension: c_PrimaryReasonPlacement
    label: "Primary reason for placement"
    type: string
    sql:  fn_getPicklistValueName('c_PrimaryReasonPlacement',COLUMN_GET(${TABLE}.custom_data,'c_PrimaryReasonPlacement' AS CHAR(255)))

  - dimension: c_data_collection_stage
    label: "Data Collection Stage"
    type: string
    sql:  fn_getPicklistValueName('c_data_collection_stage',COLUMN_GET(${TABLE}.custom_data,'c_data_collection_stage' AS CHAR(255)))

  - dimension: c_iyhp_income
    label: "Income"
    type: string
    sql:  fn_getPicklistValueName('c_iyhp_income',COLUMN_GET(${TABLE}.custom_data,'c_iyhp_income' AS CHAR(255)))

  - dimension: c_iyhp_employment
    label: "Employment"
    type: string
    sql:  fn_getPicklistValueName('c_iyhp_employment',COLUMN_GET(${TABLE}.custom_data,'c_iyhp_employment' AS CHAR(255)))

  - dimension: c_iyhp_shelter
    label: "Shelter"
    type: string
    sql:  fn_getPicklistValueName('c_iyhp_shelter',COLUMN_GET(${TABLE}.custom_data,'c_iyhp_shelter' AS CHAR(255)))

  - dimension: c_iyhp_food
    label: "Food"
    type: string
    sql:  fn_getPicklistValueName('c_iyhp_food',COLUMN_GET(${TABLE}.custom_data,'c_iyhp_food' AS CHAR(255)))

  - dimension: c_iyhp_childcare
    label: "Childcare"
    type: string
    sql:  fn_getPicklistValueName('c_iyhp_childcare',COLUMN_GET(${TABLE}.custom_data,'c_iyhp_childcare' AS CHAR(255)))

  - dimension: c_iyhp_children_education
    label: "Children's Education (K-12)"
    type: string
    sql:  fn_getPicklistValueName('c_iyhp_children_education',COLUMN_GET(${TABLE}.custom_data,'c_iyhp_children_education' AS CHAR(255)))

  - dimension: c_iyhp_adult_dducation
    label: "Adult Education"
    type: string
    sql:  fn_getPicklistValueName('c_iyhp_adult_dducation',COLUMN_GET(${TABLE}.custom_data,'c_iyhp_adult_dducation' AS CHAR(255)))

  - dimension: c_iyhp_legal
    label: "Legal"
    type: string
    sql:  fn_getPicklistValueName('c_iyhp_legal',COLUMN_GET(${TABLE}.custom_data,'c_iyhp_legal' AS CHAR(255)))

  - dimension: c_iyhp_notes
    label: "Notes"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_iyhp_notes' AS CHAR(255))

  - dimension: c_iyhp_health_care
    label: "Health Care (coverage)"
    type: string
    sql:  fn_getPicklistValueName('c_iyhp_health_care',COLUMN_GET(${TABLE}.custom_data,'c_iyhp_health_care' AS CHAR(255)))

  - dimension: c_iyhp_life_skills
    label: "Life Skills"
    type: string
    sql:  fn_getPicklistValueName('c_iyhp_life_skills',COLUMN_GET(${TABLE}.custom_data,'c_iyhp_life_skills' AS CHAR(255)))

  - dimension: c_iyhp_mental_health
    label: "Mental Health"
    type: string
    sql:  fn_getPicklistValueName('c_iyhp_mental_health',COLUMN_GET(${TABLE}.custom_data,'c_iyhp_mental_health' AS CHAR(255)))

  - dimension: c_iyhp_substance_abuse
    label: "Substance Abuse"
    type: string
    sql:  fn_getPicklistValueName('c_iyhp_substance_abuse',COLUMN_GET(${TABLE}.custom_data,'c_iyhp_substance_abuse' AS CHAR(255)))

  - dimension: c_iyhp_family_social_relations
    label: "Family/Social Relations"
    type: string
    sql:  fn_getPicklistValueName('c_iyhp_family_social_relations',COLUMN_GET(${TABLE}.custom_data,'c_iyhp_family_social_relations' AS CHAR(255)))

  - dimension: c_iyhp_transportation_mobility
    label: "Tranportation/Mobility"
    type: string
    sql:  fn_getPicklistValueName('c_iyhp_transportation_mobility',COLUMN_GET(${TABLE}.custom_data,'c_iyhp_transportation_mobility' AS CHAR(255)))

  - dimension: c_iyhp_community_involvement
    label: "Community Involvement"
    type: string
    sql:  fn_getPicklistValueName('c_iyhp_community_involvement',COLUMN_GET(${TABLE}.custom_data,'c_iyhp_community_involvement' AS CHAR(255)))

  - dimension: c_iyhp_safety
    label: "Safety"
    type: string
    sql:  fn_getPicklistValueName('c_iyhp_safety',COLUMN_GET(${TABLE}.custom_data,'c_iyhp_safety' AS CHAR(255)))

  - dimension: c_iyhp_parenting_skills
    label: "Parenting Skills"
    type: string
    sql:  fn_getPicklistValueName('c_iyhp_parenting_skills',COLUMN_GET(${TABLE}.custom_data,'c_iyhp_parenting_skills' AS CHAR(255)))

  - dimension: c_iyhp_credit_history
    label: "Credit History"
    type: string
    sql:  fn_getPicklistValueName('c_iyhp_credit_history',COLUMN_GET(${TABLE}.custom_data,'c_iyhp_credit_history' AS CHAR(255)))

  - dimension: c_beyond_72_hours
    label: "Did youth stay beyond 72 hours without parental/guardian permission and without DSHS taking the child into custody?"
    type: string
    sql:  fn_getPicklistValueName('c_beyond_72_hours',COLUMN_GET(${TABLE}.custom_data,'c_beyond_72_hours' AS CHAR(255)))

  - dimension: c_why_72
    label: "If yes, why? (select primary reason)"
    type: string
    sql:  fn_getPicklistValueName('c_why_72',COLUMN_GET(${TABLE}.custom_data,'c_why_72' AS CHAR(255)))

  - dimension: c_person_released
    label: "Person Released To:"
    type: string
    sql:  fn_getPicklistValueName('c_person_released',COLUMN_GET(${TABLE}.custom_data,'c_person_released' AS CHAR(255)))

  - dimension: c_kc_cea_in_recovery
    label: "In Recovery"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_kc_cea_in_recovery' AS INTEGER)

  - dimension: c_kc_cea_hiv
    label: "HIV"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_kc_cea_hiv' AS INTEGER)

  - dimension: c_kc_cea_ex_offender
    label: "Ex-Offenders/Re-Entry"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_kc_cea_ex_offender' AS INTEGER)

  - dimension: c_kc_cea_hearing_impaired
    label: "Deaf/Hearing Impaired"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_kc_cea_hearing_impaired' AS INTEGER)

  - dimension: c_kc_cea_registered_va
    label: "Registered with VA"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_kc_cea_registered_va' AS INTEGER)

  - dimension: c_kc_cea_eligible_va_health
    label: "Eligible for VA Healthcare"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_kc_cea_eligible_va_health' AS INTEGER)

  - dimension: c_kc_cea_one_day_active_duty
    label: "At Least One Day of Active Duty"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_kc_cea_one_day_active_duty' AS INTEGER)

  - dimension: c_custom_household_children
    label: "Number of children in household"
    type: int
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_custom_household_children' AS INTEGER)

  - dimension: c_children_household
    label: "Are there children in the household? (in parent's custody)"
    type: string
    sql:  fn_getPicklistValueName('c_children_household',COLUMN_GET(${TABLE}.custom_data,'c_children_household' AS CHAR(255)))

  - dimension: c_child_household_age
    label: "Is there a child aged 5 or younger in the household? "
    type: string
    sql:  fn_getPicklistValueName('c_child_household_age',COLUMN_GET(${TABLE}.custom_data,'c_child_household_age' AS CHAR(255)))

  - dimension: c_unit_size
    label: "Unit Size"
    type: string
    sql:  fn_getPicklistValueName('c_unit_size',COLUMN_GET(${TABLE}.custom_data,'c_unit_size' AS CHAR(255)))

  - dimension: c_discharge_status
    label: "Discharge Status"
    type: string
    sql:  fn_getPicklistValueName('c_discharge_status',COLUMN_GET(${TABLE}.custom_data,'c_discharge_status' AS CHAR(255)))

  - dimension: c_verteran_screening_score
    label: "Veteran Screening Score"
    type: int
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_verteran_screening_score' AS INTEGER)

  - dimension: c_dd214_file
    label: "DD214 on File"
    type: string
    sql:  fn_getPicklistValueName('c_dd214_file',COLUMN_GET(${TABLE}.custom_data,'c_dd214_file' AS CHAR(255)))

  - dimension: c_family_type
    label: "Family Type"
    type: string
    sql:  fn_getPicklistValueName('c_family_type',COLUMN_GET(${TABLE}.custom_data,'c_family_type' AS CHAR(255)))

  - dimension: c_chronic_housing_eligible
    label: "Is client possibly eligible for a chronic HL housing program"
    type: string
    sql:  fn_getPicklistValueName('c_chronic_housing_eligible',COLUMN_GET(${TABLE}.custom_data,'c_chronic_housing_eligible' AS CHAR(255)))

  - dimension: c_emergency_hospital_incidences
    label: "How often have you visted the ER in the last year? "
    type: string
    sql:  fn_getPicklistValueName('c_emergency_hospital_incidences',COLUMN_GET(${TABLE}.custom_data,'c_emergency_hospital_incidences' AS CHAR(255)))

  - dimension: c_hospital_overnight
    label: "In the last year has the client stayed in the hospital overnight at least three times? "
    type: string
    sql:  fn_getPicklistValueName('c_hospital_overnight',COLUMN_GET(${TABLE}.custom_data,'c_hospital_overnight' AS CHAR(255)))

  - dimension: c_disability_mental_health
    label: "Does the client identify as having a MH disability"
    type: string
    sql:  fn_getPicklistValueName('c_disability_mental_health',COLUMN_GET(${TABLE}.custom_data,'c_disability_mental_health' AS CHAR(255)))

  - dimension: c_manager_agency
    label: "Case manager MH CM works at"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_manager_agency' AS CHAR(255))

  - dimension: c_manager_name
    label: "MH Case Manager Name"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_manager_name' AS CHAR(255))

  - dimension: c_roi_filed
    label: "ROI on File"
    type: string
    sql:  fn_getPicklistValueName('c_roi_filed',COLUMN_GET(${TABLE}.custom_data,'c_roi_filed' AS CHAR(255)))

  - dimension: c_eviction_notice
    label: "Have you ever received an eviction notice"
    type: string
    sql:  fn_getPicklistValueName('c_eviction_notice',COLUMN_GET(${TABLE}.custom_data,'c_eviction_notice' AS CHAR(255)))

  - dimension: c_owe_previous_landlord
    label: "Do you owe money to a previous landlord"
    type: string
    sql:  fn_getPicklistValueName('c_owe_previous_landlord',COLUMN_GET(${TABLE}.custom_data,'c_owe_previous_landlord' AS CHAR(255)))

  - dimension: c_owe_balance
    label: "If owe money, how much"
    type: number
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_owe_balance' AS DECIMAL(5,2))

  - dimension: c_owe_landlord_payments
    label: "If owe money, are you making payments"
    type: string
    sql:  fn_getPicklistValueName('c_owe_landlord_payments',COLUMN_GET(${TABLE}.custom_data,'c_owe_landlord_payments' AS CHAR(255)))

  - dimension: c_eviction_housing_authority
    label: "Have you ever been evicted by any Housing Authority? "
    type: string
    sql:  fn_getPicklistValueName('c_eviction_housing_authority',COLUMN_GET(${TABLE}.custom_data,'c_eviction_housing_authority' AS CHAR(255)))

  - dimension: c_owe_housing_authority
    label: "Do you owe money to any Housing Authority?"
    type: string
    sql:  fn_getPicklistValueName('c_owe_housing_authority',COLUMN_GET(${TABLE}.custom_data,'c_owe_housing_authority' AS CHAR(255)))

  - dimension: c_owe_ha
    label: "If owe money to a Housing Authority, how much?"
    type: number
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_owe_ha' AS DECIMAL(5,2))

  - dimension: c_owe_ha_payments
    label: "If owe money to a Housing Authority, are you making payments?"
    type: string
    sql:  fn_getPicklistValueName('c_owe_ha_payments',COLUMN_GET(${TABLE}.custom_data,'c_owe_ha_payments' AS CHAR(255)))

  - dimension: c_arson_charge
    label: "Is there an arson charge listed in the criminal history section?"
    type: string
    sql:  fn_getPicklistValueName('c_arson_charge',COLUMN_GET(${TABLE}.custom_data,'c_arson_charge' AS CHAR(255)))

  - dimension: c_meth_charge
    label: "Have you or any member of your household ever been arrested, charged, or convicted for the production of methamphetamine? "
    type: string
    sql:  fn_getPicklistValueName('c_meth_charge',COLUMN_GET(${TABLE}.custom_data,'c_meth_charge' AS CHAR(255)))

  - dimension: c_meth_charge_client
    label: "If yes, name or HMIS ID of HH member"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_meth_charge_client' AS CHAR(255))

  - dimension: c_violent_criminal_charge
    label: "Have you or any member of your household ever been arrested, charged, or convicted for any violent criminal act? "
    type: string
    sql:  fn_getPicklistValueName('c_violent_criminal_charge',COLUMN_GET(${TABLE}.custom_data,'c_violent_criminal_charge' AS CHAR(255)))

  - dimension: c_violent_criminal_charge_client
    label: "If yes, name or HMIS ID of HH member"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_violent_criminal_charge_client' AS CHAR(255))

  - dimension: c_checkin_date
    label: "Check in date"
    type: time
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_checkin_date' AS DATE)

  - dimension: c_checkin_residence
    label: "Where staying at check in"
    type: string
    sql:  fn_getPicklistValueName('c_checkin_residence',COLUMN_GET(${TABLE}.custom_data,'c_checkin_residence' AS CHAR(255)))

  - dimension: c_identify_hispanic
    label: "Identify as Hispanic/Latino"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_identify_hispanic' AS INTEGER)

  - dimension: c_wwe_turnaway_reason
    label: "Reason for Turnaway"
    type: string
    sql:  fn_getPicklistValueName('c_wwe_turnaway_reason',COLUMN_GET(${TABLE}.custom_data,'c_wwe_turnaway_reason' AS CHAR(255)))

  - dimension: c_wwe_otherreason
    label: "Other Reason"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_wwe_otherreason' AS CHAR(255))

  - dimension: c_51_percent_custody
    label: "Do you have 51% (or greater) custody of at least one child?"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_51_percent_custody' AS INTEGER)

  - dimension: c_disabled_adult_in_household
    label: "Disabled Adult in Household"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_disabled_adult_in_household' AS INTEGER)

  - dimension: c_immigrant_housing_pref
    label: "Immigrants or Refugees"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_immigrant_housing_pref' AS INTEGER)

  - dimension: c_custody_status
    label: "Custody Status"
    type: string
    sql:  fn_getPicklistValueName('c_custody_status',COLUMN_GET(${TABLE}.custom_data,'c_custody_status' AS CHAR(255)))

  - dimension: c_military_member
    label: "Name of household member"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_military_member' AS CHAR(255))

  - dimension: c_interpreter
    label: "Does the household require an interpreter?"
    type: string
    sql:  fn_getPicklistValueName('c_interpreter',COLUMN_GET(${TABLE}.custom_data,'c_interpreter' AS CHAR(255)))

  - dimension: c_dd214
    label: "Do you have a DD-214 or Military ID?"
    type: string
    sql:  fn_getPicklistValueName('c_dd214',COLUMN_GET(${TABLE}.custom_data,'c_dd214' AS CHAR(255)))

  - dimension: c_safe
    label: "Are you safe where you live now?"
    type: string
    sql:  fn_getPicklistValueName('c_safe',COLUMN_GET(${TABLE}.custom_data,'c_safe' AS CHAR(255)))

  - dimension: c_violence_physical_verbal
    label: "Has anyone in your household experienced intimate partner violence (physical or verbal threats)?"
    type: string
    sql:  fn_getPicklistValueName('c_violence_physical_verbal',COLUMN_GET(${TABLE}.custom_data,'c_violence_physical_verbal' AS CHAR(255)))

  - dimension: c_violence_date
    label: "How long ago did the experience occur?"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_violence_date' AS CHAR(255))

  - dimension: c_violence_member
    label: "Which household member?"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_violence_member' AS CHAR(255))

  - dimension: c_housing_crisis_cause
    label: "What brought on your current housing crisis?"
    type: string
    sql:  fn_getPicklistValueName('c_housing_crisis_cause',COLUMN_GET(${TABLE}.custom_data,'c_housing_crisis_cause' AS CHAR(255)))

  - dimension: c_specific_issues
    label: "What were the specific issues?"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_specific_issues' AS CHAR(255))

  - dimension: c_arrears_amount
    label: "Amount owed"
    type: number
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_arrears_amount' AS DECIMAL(5,2))

  - dimension: c_rental_agreement
    label: "Do you have a rental agreement with a landlord where you currently live?"
    type: string
    sql:  fn_getPicklistValueName('c_rental_agreement',COLUMN_GET(${TABLE}.custom_data,'c_rental_agreement' AS CHAR(255)))

  - dimension: c_rent_amount
    label: "What is your monthly rent cost?"
    type: number
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_rent_amount' AS DECIMAL(5,2))

  - dimension: c_water_sewer_gas
    label: "Is W/S/G included?"
    type: string
    sql:  fn_getPicklistValueName('c_water_sewer_gas',COLUMN_GET(${TABLE}.custom_data,'c_water_sewer_gas' AS CHAR(255)))

  - dimension: c_rental_length
    label: "How long have you rented at your current residence?"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_rental_length' AS CHAR(255))

  - dimension: c_rent_ontime
    label: "Have you been consistently paying rent on time since you moved in?"
    type: string
    sql:  fn_getPicklistValueName('c_rent_ontime',COLUMN_GET(${TABLE}.custom_data,'c_rent_ontime' AS CHAR(255)))

  - dimension: c_mobilhome_rv_rent
    label: "Do you live in a mobile home, RV or trailer and rent the space?"
    type: string
    sql:  fn_getPicklistValueName('c_mobilhome_rv_rent',COLUMN_GET(${TABLE}.custom_data,'c_mobilhome_rv_rent' AS CHAR(255)))

  - dimension: c_rent_due
    label: "When is your rent due each month?"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_rent_due' AS CHAR(255))

  - dimension: c_latefee_policy
    label: "What is the late fee policy?"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_latefee_policy' AS CHAR(255))

  - dimension: c_landlord_relationship
    label: "How would you describe your relationship with your landlord so far?"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_landlord_relationship' AS CHAR(255))

  - dimension: c_landlord_interaction
    label: "How would you describe your last interaction with your landlord?"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_landlord_interaction' AS CHAR(255))

  - dimension: c_landlord_last_interaction
    label: "When was your last interaction with your landlord?"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_landlord_last_interaction' AS CHAR(255))

  - dimension: c_notes_payments
    label: "Notes about missed payments in the past"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_notes_payments' AS CHAR(255))

  - dimension: c_eviction_type
    label: "Type of eviction notice:"
    type: string
    sql:  fn_getPicklistValueName('c_eviction_type',COLUMN_GET(${TABLE}.custom_data,'c_eviction_type' AS CHAR(255)))

  - dimension: c_eviction_date
    label: "Date notice given"
    type: time
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_eviction_date' AS DATE)

  - dimension: c_legal_aid
    label: "Have you requested assistance from legal aid, Northwest Justice or other legal services?"
    type: string
    sql:  fn_getPicklistValueName('c_legal_aid',COLUMN_GET(${TABLE}.custom_data,'c_legal_aid' AS CHAR(255)))

  - dimension: c_income_recent
    label: "Income in the last thirty days"
    type: string
    sql:  fn_getPicklistValueName('c_income_recent',COLUMN_GET(${TABLE}.custom_data,'c_income_recent' AS CHAR(255)))

  - dimension: c_income_householdmember
    label: "Household member (Income)"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_income_householdmember' AS CHAR(255))

  - dimension: c_income_source
    label: "Income Source"
    type: string
    sql:  fn_getPicklistValueName('c_income_source',COLUMN_GET(${TABLE}.custom_data,'c_income_source' AS CHAR(255)))

  - dimension: c_income_amount
    label: "Income Amount"
    type: number
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_income_amount' AS DECIMAL(5,2))

  - dimension: c_income_HH_total
    label: "Total monthly household income"
    type: number
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_income_HH_total' AS DECIMAL(5,2))

  - dimension: c_income_barrier
    label: "What is preventing the household from obtainng a steady income?"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_income_barrier' AS CHAR(255))

  - dimension: c_employment_household
    label: "Is anyone in the household employed?"
    type: string
    sql:  fn_getPicklistValueName('c_employment_household',COLUMN_GET(${TABLE}.custom_data,'c_employment_household' AS CHAR(255)))

  - dimension: c_income_none
    label: "Check here if household has no income"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_income_none' AS INTEGER)

  - dimension: c_employed_hhmember
    label: "Is anyone in the household employed?"
    type: string
    sql:  fn_getPicklistValueName('c_employed_hhmember',COLUMN_GET(${TABLE}.custom_data,'c_employed_hhmember' AS CHAR(255)))

  - dimension: c_employed_last
    label: "When was the last time someone in your household was employed?"
    type: time
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_employed_last' AS DATE)

  - dimension: c_employed_member2
    label: "Household member #2 employed"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_employed_member2' AS CHAR(255))

  - dimension: c_employed_previously
    label: "Household member previously employed"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_employed_previously' AS CHAR(255))

  - dimension: c_employer_previous
    label: "Who was the previous employer?"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_employer_previous' AS CHAR(255))

  - dimension: c_employer_current1
    label: "Current employer #1"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_employer_current1' AS CHAR(255))

  - dimension: c_workhours_member2
    label: "Hours worked #2"
    type: int
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_workhours_member2' AS INTEGER)

  - dimension: c_workhours_member1
    label: "Hours worked #1"
    type: int
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_workhours_member1' AS INTEGER)

  - dimension: c_employment_tenure1
    label: "Employment Tenure #1"
    type: string
    sql:  fn_getPicklistValueName('c_employment_tenure1',COLUMN_GET(${TABLE}.custom_data,'c_employment_tenure1' AS CHAR(255)))

  - dimension: c_employment_tenure2
    label: "Employment Tenure #2"
    type: string
    sql:  fn_getPicklistValueName('c_employment_tenure2',COLUMN_GET(${TABLE}.custom_data,'c_employment_tenure2' AS CHAR(255)))

  - dimension: c_employment_increase
    label: "Is anyone in the household looking to gain employment or increase work hours?"
    type: string
    sql:  fn_getPicklistValueName('c_employment_increase',COLUMN_GET(${TABLE}.custom_data,'c_employment_increase' AS CHAR(255)))

  - dimension: c_foodstamps
    label: "Food Stamps"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_foodstamps' AS INTEGER)

  - dimension: c_energyassistance
    label: "Energy Assistance (LIHEAP)"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_energyassistance' AS INTEGER)

  - dimension: c_va_services
    label: "Veteran's Admin (VA) Services"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_va_services' AS INTEGER)

  - dimension: c_ea_taxcredit
    label: "Earned Income Tax Credit"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_ea_taxcredit' AS INTEGER)

  - dimension: c_commodities
    label: "Commodities"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_commodities' AS INTEGER)

  - dimension: c_transportation_services
    label: "Transportation Services"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_transportation_services' AS INTEGER)

  - dimension: c_aren_diversion
    label: "AREN or Diversion (TANF clients only)"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_aren_diversion' AS INTEGER)

  - dimension: c_section8_pubhousing_tbra
    label: "Section 8, Public Housing or TBRA rent assistance"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_section8_pubhousing_tbra' AS INTEGER)

  - dimension: c_hen_rent
    label: "HEN Rent Assistance"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_hen_rent' AS INTEGER)

  - dimension: c_other_benefits
    label: "Other"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_other_benefits' AS INTEGER)

  - dimension: c_housing_choice
    label: "Do you have a Housing Choice voucher?"
    type: string
    sql:  fn_getPicklistValueName('c_housing_choice',COLUMN_GET(${TABLE}.custom_data,'c_housing_choice' AS CHAR(255)))

  - dimension: c_housingchoice_waitlist
    label: "Are you on the waitlist for a Housing Choice voucher (Section 8) with a local Housing Authority? "
    type: string
    sql:  fn_getPicklistValueName('c_housingchoice_waitlist',COLUMN_GET(${TABLE}.custom_data,'c_housingchoice_waitlist' AS CHAR(255)))

  - dimension: c_housingauthority
    label: "Which Housing Authority"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_housingauthority' AS CHAR(255))

  - dimension: c_ha_contact_info
    label: "Do they have your updated contact information?"
    type: string
    sql:  fn_getPicklistValueName('c_ha_contact_info',COLUMN_GET(${TABLE}.custom_data,'c_ha_contact_info' AS CHAR(255)))

  - dimension: c_reliable_transport
    label: "Do you have reliable transportation?"
    type: string
    sql:  fn_getPicklistValueName('c_reliable_transport',COLUMN_GET(${TABLE}.custom_data,'c_reliable_transport' AS CHAR(255)))

  - dimension: c_internet
    label: "Do you have internet access?"
    type: string
    sql:  fn_getPicklistValueName('c_internet',COLUMN_GET(${TABLE}.custom_data,'c_internet' AS CHAR(255)))

  - dimension: c_childcare
    label: "Do you have adaquate childcare?"
    type: string
    sql:  fn_getPicklistValueName('c_childcare',COLUMN_GET(${TABLE}.custom_data,'c_childcare' AS CHAR(255)))

  - dimension: c_campgear
    label: "If camping (literally homeless), what supplies or gear do you have?"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_campgear' AS CHAR(255))

  - dimension: c_food_restrooms_laundry
    label: "Do you have access to food, restrooms and/or laundry facilities?"
    type: string
    sql:  fn_getPicklistValueName('c_food_restrooms_laundry',COLUMN_GET(${TABLE}.custom_data,'c_food_restrooms_laundry' AS CHAR(255)))

  - dimension: c_medically_fragile
    label: "Is anyone in your household medically fragile?"
    type: string
    sql:  fn_getPicklistValueName('c_medically_fragile',COLUMN_GET(${TABLE}.custom_data,'c_medically_fragile' AS CHAR(255)))

  - dimension: c_hh_assistance
    label: "Are you or anyone in your household unable to do any of the following without assistance?"
    type: string
    sql:  fn_getPicklistValueName('c_hh_assistance',COLUMN_GET(${TABLE}.custom_data,'c_hh_assistance' AS CHAR(255)))

  - dimension: c_cooking
    label: "Cooking"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_cooking' AS INTEGER)

  - dimension: c_cleaning
    label: "Cleaning"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_cleaning' AS INTEGER)

  - dimension: c_laundry
    label: "Laundry"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_laundry' AS INTEGER)

  - dimension: c_medication
    label: "Medication managemnet"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_medication' AS INTEGER)

  - dimension: c_shopping
    label: "Shopping/buying food"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_shopping' AS INTEGER)

  - dimension: c_money_mgt
    label: "Manage money/finances"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_money_mgt' AS INTEGER)

  - dimension: c_usetelephone
    label: "Use the telephone/technology for essential needs"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_usetelephone' AS INTEGER)

  - dimension: c_personal_hygiene
    label: "Personal hygiene care (dressing, bathing, showering)"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_personal_hygiene' AS INTEGER)

  - dimension: c_eating
    label: "Eating"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_eating' AS INTEGER)

  - dimension: c_toilet
    label: "Using the toilet"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_toilet' AS INTEGER)

  - dimension: c_walking
    label: "Walking"
    type: yesno
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_walking' AS INTEGER)

  - dimension: c_credit_history
    label: "Do you have poor credit history"
    type: string
    sql:  fn_getPicklistValueName('c_credit_history',COLUMN_GET(${TABLE}.custom_data,'c_credit_history' AS CHAR(255)))

  - dimension: c_credit_score
    label: "When was the last time you checked your credit score?"
    type: time
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_credit_score' AS DATE)

  - dimension: c_loan_cashadvance
    label: "Have you applied for or received a loan, cash advance/payday loan in the last year?   "
    type: string
    sql:  fn_getPicklistValueName('c_loan_cashadvance',COLUMN_GET(${TABLE}.custom_data,'c_loan_cashadvance' AS CHAR(255)))

  - dimension: c_other_services
    label: "Have you and/or household members received services from any other service providers in the last 30 days?"
    type: string
    sql:  fn_getPicklistValueName('c_other_services',COLUMN_GET(${TABLE}.custom_data,'c_other_services' AS CHAR(255)))

  - dimension: c_chob
    label: "Community House on Broadway"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_chob' AS CHAR(255))

  - dimension: c_cowlitz_indian
    label: "Cowlitz Indian Tribe"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_cowlitz_indian' AS CHAR(255))

  - dimension: c_doc
    label: "Department of Corrections"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_doc' AS CHAR(255))

  - dimension: c_dshs
    label: "Depaartment of Social and Health Services"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_dshs' AS CHAR(255))

  - dimension: c_dvr
    label: "Department of Vocational Rehabilitation"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_dvr' AS CHAR(255))

  - dimension: c_dapc
    label: "Drug Abuse Prevention Center"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_dapc' AS CHAR(255))

  - dimension: c_ess
    label: "Emergency Support Shelter"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_ess' AS CHAR(255))

  - dimension: c_fhc
    label: "Family Health Center"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_fhc' AS CHAR(255))

  - dimension: c_goodwill
    label: "Goodwill"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_goodwill' AS CHAR(255))

  - dimension: c_kalama_ha
    label: "Kalama Housing Authority"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_kalama_ha' AS CHAR(255))

  - dimension: c_kelso_ha
    label: "Kelso Housing Authority"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_kelso_ha' AS CHAR(255))

  - dimension: c_longview_ha
    label: "Longview Housing Authority"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_longview_ha' AS CHAR(255))

  - dimension: c_love_inc
    label: "Love, Inc"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_love_inc' AS CHAR(255))

  - dimension: c_love_overwhelming
    label: "Love Overwhelming"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_love_overwhelming' AS CHAR(255))

  - dimension: c_lower_columbia_cap
    label: "Lower Columbia CAP"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_lower_columbia_cap' AS CHAR(255))

  - dimension: c_columbia_PATH
    label: "Columbia Wellness / PATH"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_columbia_PATH' AS CHAR(255))

  - dimension: c_payee_services
    label: "Payee Services"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_payee_services' AS CHAR(255))

  - dimension: c_salvation_army
    label: "Salvation Army"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_salvation_army' AS CHAR(255))

  - dimension: c_slstart
    label: "SL Start"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_slstart' AS CHAR(255))

  - dimension: c_soar
    label: "SOAR (SSI/SSDI Outreach Access and Recovery)"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_soar' AS CHAR(255))

  - dimension: c_ssa
    label: "Social Security Administration"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_ssa' AS CHAR(255))

  - dimension: c_vetadmin
    label: "Veterans Administration"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_vetadmin' AS CHAR(255))

  - dimension: c_other_service_provider
    label: "Other Service Provider"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_other_service_provider' AS CHAR(255))

  - dimension: c_housinghistoryzip
    label: "What is the zipcode or City/State of your last permanent housing?"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_housinghistoryzip' AS CHAR(255))

  - dimension: c_rentown
    label: "Have you ever rented or owned an apartment/house? (If NO, move to Criminal History)"
    type: string
    sql:  fn_getPicklistValueName('c_rentown',COLUMN_GET(${TABLE}.custom_data,'c_rentown' AS CHAR(255)))

  - dimension: c_hhistoryevicted
    label: "Have you ever been evicted by a landlord?"
    type: string
    sql:  fn_getPicklistValueName('c_hhistoryevicted',COLUMN_GET(${TABLE}.custom_data,'c_hhistoryevicted' AS CHAR(255)))

  - dimension: c_hhistoryowelandlord
    label: "Do you owe any money to a previous landlord?"
    type: string
    sql:  fn_getPicklistValueName('c_hhistoryowelandlord',COLUMN_GET(${TABLE}.custom_data,'c_hhistoryowelandlord' AS CHAR(255)))

  - dimension: c_reasonforeviction
    label: "Reason for eviction"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_reasonforeviction' AS CHAR(255))

  - dimension: c_paymenttoprevlandlord
    label: "Are you making payments to previous landlord?"
    type: string
    sql:  fn_getPicklistValueName('c_paymenttoprevlandlord',COLUMN_GET(${TABLE}.custom_data,'c_paymenttoprevlandlord' AS CHAR(255)))

  - dimension: c_subsidizedhousingha
    label: "Have you ever been on a subsidized housing program through any Housing Authority?"
    type: string
    sql:  fn_getPicklistValueName('c_subsidizedhousingha',COLUMN_GET(${TABLE}.custom_data,'c_subsidizedhousingha' AS CHAR(255)))

  - dimension: c_subsidizedwhen
    label: "When did you receive subsidized housing?"
    type: time
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_subsidizedwhen' AS DATE)

  - dimension: c_hhistorytransient
    label: "Have you been transient in the last 1-2 years"
    type: string
    sql:  fn_getPicklistValueName('c_hhistorytransient',COLUMN_GET(${TABLE}.custom_data,'c_hhistorytransient' AS CHAR(255)))

  - dimension: c_hhistorydv
    label: "Have you ever had to leave your home because of domestic violence or threats?"
    type: string
    sql:  fn_getPicklistValueName('c_hhistorydv',COLUMN_GET(${TABLE}.custom_data,'c_hhistorydv' AS CHAR(255)))

  - dimension: c_hhistoryTHinpatient
    label: "Have you ever participated in a Transitional Housing or inpatient program"
    type: string
    sql:  fn_getPicklistValueName('c_hhistoryTHinpatient',COLUMN_GET(${TABLE}.custom_data,'c_hhistoryTHinpatient' AS CHAR(255)))

  - dimension: c_hhistoryHENARENEFH
    label: "Have you ever received HEN, AREN, Diversion or an EFH grant?"
    type: string
    sql:  fn_getPicklistValueName('c_hhistoryHENARENEFH',COLUMN_GET(${TABLE}.custom_data,'c_hhistoryHENARENEFH' AS CHAR(255)))

  - dimension: c_TBRARRHHP
    label: "Have you ever received tenant based rental assistance (TBRA) or rapid re-housing/homelessness prevention?"
    type: string
    sql:  fn_getPicklistValueName('c_TBRARRHHP',COLUMN_GET(${TABLE}.custom_data,'c_TBRARRHHP' AS CHAR(255)))

  - dimension: c_criminalhistoryhh1
    label: "List HH member #1 and Describe charge "
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_criminalhistoryhh1' AS CHAR(255))

  - dimension: c_criminalhistoryhh2
    label: "List HH member #2 and Describe charge "
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_criminalhistoryhh2' AS CHAR(255))

  - dimension: c_felonymisdemeanor
    label: "Felony or Misdemeanor #1"
    type: string
    sql:  fn_getPicklistValueName('c_felonymisdemeanor',COLUMN_GET(${TABLE}.custom_data,'c_felonymisdemeanor' AS CHAR(255)))

  - dimension: c_felonymisdemeanor2
    label: "Felony or Misdemeanor #2"
    type: string
    sql:  fn_getPicklistValueName('c_felonymisdemeanor2',COLUMN_GET(${TABLE}.custom_data,'c_felonymisdemeanor2' AS CHAR(255)))

  - dimension: c_felonymisdemeanor3
    label: "Felony or Misdemeanor #3"
    type: string
    sql:  fn_getPicklistValueName('c_felonymisdemeanor3',COLUMN_GET(${TABLE}.custom_data,'c_felonymisdemeanor3' AS CHAR(255)))

  - dimension: c_timeserved1
    label: "Did HH member #1 have time served in jail/prison?"
    type: string
    sql:  fn_getPicklistValueName('c_timeserved1',COLUMN_GET(${TABLE}.custom_data,'c_timeserved1' AS CHAR(255)))

  - dimension: c_timeserved2
    label: "Did HH member #2 have time served in jail/prison?"
    type: string
    sql:  fn_getPicklistValueName('c_timeserved2',COLUMN_GET(${TABLE}.custom_data,'c_timeserved2' AS CHAR(255)))

  - dimension: c_timeserved3
    label: "Did HH member #3 have time served in jail/prison?"
    type: string
    sql:  fn_getPicklistValueName('c_timeserved3',COLUMN_GET(${TABLE}.custom_data,'c_timeserved3' AS CHAR(255)))

  - dimension: c_convictiondate
    label: "When did the conviction for HH member #1 take place?"
    type: time
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_convictiondate' AS DATE)

  - dimension: c_convictiondate2
    label: "When did the conviction for HH member #2 take place?"
    type: time
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_convictiondate2' AS DATE)

  - dimension: c_convictiondate3
    label: "When did the conviction for HH member #3 take place?"
    type: time
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_convictiondate3' AS DATE)

  - dimension: c_convictionwhere
    label: "Where did the conviction for HH member #1 take place?"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_convictionwhere' AS CHAR(255))

  - dimension: c_convictionwhere2
    label: "Where did the conviction for HH member #2 take place?"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_convictionwhere2' AS CHAR(255))

  - dimension: c_convictionwhere3
    label: "Where did the conviction for HH member #3 take place?"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_convictionwhere3' AS CHAR(255))

  - dimension: c_opencase
    label: "Does anyone in the household have any open cases/warrants?"
    type: string
    sql:  fn_getPicklistValueName('c_opencase',COLUMN_GET(${TABLE}.custom_data,'c_opencase' AS CHAR(255)))

  - dimension: c_opencasename
    label: "If open case/warrent, name of HH member"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_opencasename' AS CHAR(255))

  - dimension: c_methhhmember
    label: "If meth arrest, HH member name"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_methhhmember' AS CHAR(255))

  - dimension: c_RSOlevel
    label: "RSO Level"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_RSOlevel' AS CHAR(255))

  - dimension: c_RSOname
    label: "If RSO, HH member name"
    type: string
    sql:  COLUMN_GET(${TABLE}.custom_data,'c_RSOname' AS CHAR(255))

  - dimension: c_RSOregistered
    label: "Are you or any adult member of your HH currently registered as a sex offender in Washington or any other State?"
    type: string
    sql:  fn_getPicklistValueName('c_RSOregistered',COLUMN_GET(${TABLE}.custom_data,'c_RSOregistered' AS CHAR(255)))

  - dimension: c_criminalhistory
    label: "Does anyone in your household have a criminal history?"
    type: string
    sql:  fn_getPicklistValueName('c_criminalhistory',COLUMN_GET(${TABLE}.custom_data,'c_criminalhistory' AS CHAR(255)))

  - dimension: c_householdchildren
    label: "Total number of children under the age of 18 that are currently with the head(s) of household or reason to believe they will be joining you when you get housed?"
    type: string
    sql:  fn_getPicklistValueName('c_householdchildren',COLUMN_GET(${TABLE}.custom_data,'c_householdchildren' AS CHAR(255)))

  - dimension: c_verteran1010EZ
    label: "1010 EZ"
    type: string
    sql:  fn_getPicklistValueName('c_verteran1010EZ',COLUMN_GET(${TABLE}.custom_data,'c_verteran1010EZ' AS CHAR(255)))



  sets:
      client_assessment_custom_fields:
      - c_reg_sex_offender       
      - c_meth_production       
      - c_felony_last       
      - c_arson       
      - c_ada_accom       
      - c_ada_accom_notes       
      - c_assessor_flag       
      - c_identify_black       
      - c_tribal_designation       
      - c_identify_lgbtq       
      - c_extended_foster_care       
      - c_aged_out_foster_care       
      - c_hsc_exit_reason       
      - c_hsc_exit_destination       
      - c_hsc_rfhl_alcoholism       
      - c_hsc_rfhl_displacement       
      - c_hsc_rfhl_domestic_violence       
      - c_hsc_rfhl_eviction       
      - c_hsc_rfhl_family_crisis       
      - c_hsc_rfhl_health_problem_illness       
      - c_hsc_rfhl_mental_illness       
      - c_hsc_rfhl_new_to_area       
      - c_hsc_rfhl_out_of_home_youth       
      - c_hsc_rfhl_economic_reasons       
      - c_hsc_rfhl_cant_find_affordable_housing       
      - c_hsc_rfhl_substance_abuse       
      - c_hsc_rfhl_transient_on_the_road       
      - c_hsc_rfhl_known       
      - c_hsc_outkc_lkr       
      - c_hsc_outkc_returning_to_area       
      - c_hsc_outkc_help_family_friends       
      - c_hsc_outkc_get_help       
      - c_hsc_outkc_cost_of_living       
      - c_hsc_outkc_employment       
      - c_hsc_outkc_education       
      - c_hsc_outkc_military_connection       
      - c_hsc_outkc_public_housing       
      - c_hsc_outkc_seeking_treatment       
      - c_hsc_outkc_social_services       
      - c_hsc_outkc_internet       
      - c_hsc_outkc_other       
      - c_hsc_zip       
      - c_CD_1_reasons_for_contact       
      - c_CD_2_reasons_for_contact       
      - c_CD_3_reasons_for_contact       
      - c_CD_4_reasons_for_contact       
      - c_CD_6_reasons_for_contact       
      - c_CD_7_reasons_for_contact       
      - c_CD_8_reasons_for_contact       
      - c_CD_9_reasons_for_contact       
      - c_CD_10_reasons_for_contact       
      - c_CD_12_reasons_for_contact       
      - c_CD_13_reasons_for_contact       
      - c_CD_14_reasons_for_contact       
      - c_CD_15_reasons_for_contact       
      - c_CD_16_reasons_for_contact       
      - c_CD_17_reasons_for_contact       
      - c_CD_18_reasons_for_contact       
      - c_CD_19_reasons_for_contact       
      - c_CD_1_pregnant       
      - c_CD_2_pregnant       
      - c_CD_1_how_long       
      - c_CD_1_stay_tonight       
      - c_CD_2_stay_tonight       
      - c_CD_1_how_did_you_hear       
      - c_CD_1_accessed_before       
      - c_CD_2_accessed_before       
      - c_CD_1_geographic       
      - c_CD_2_geographic       
      - c_CD_1_pets       
      - c_CD_2_pets       
      - c_CD_1_service_animal       
      - c_CD_3_pets       
      - c_CD_1_children_out_of_home       
      - c_CD_2_social_service_agency       
      - c_CD_1_criminal_convictions       
      - c_CD_3_criminal_convictions       
      - c_CD_4_criminal_convictions       
      - c_CD_5_criminal_convictions       
      - c_CD_6_criminal_convictions       
      - c_CD_7_criminal_convictions       
      - c_CD_8_criminal_convictions       
      - c_CD_9_criminal_convictions       
      - c_CD_10_criminal_convictions       
      - c_CD_11_criminal_convictions       
      - c_CD_12_criminal_convictions       
      - c_CD_13_criminal_convictions       
      - c_CD_14_criminal_convictions       
      - c_CD_15_criminal_convictions       
      - c_CD_16_criminal_convictions       
      - c_CD_17_criminal_convictions       
      - c_CD_18_criminal_convictions       
      - c_CD_1_gang       
      - c_CD_2_gang       
      - c_CD_1_currently_employed       
      - c_CD_2_currently_employed       
      - c_CD_6_currently_employed       
      - c_CD_7_currently_employed       
      - c_CD_1_education       
      - c_CD_2_education       
      - c_CD_3_education       
      - c_CD_4_education       
      - c_CD_1_score       
      - c_VI_Y_SPDAT       
      - c_VI_Y_SPDAT_Trimobidity       
      - c_hsc_rfhl_criminal_history       
      - c_hsc_outkc_fleeing_dv       
      - c_hsc_outkc_assigned_by_doc       
      - c_HopeCRCOtherRefSource       
      - c_ParNotif_CHINS       
      - c_Conflict_family       
      - c_Safety       
      - c_EmergencyPlacementYouth       
      - c_Other HOPE/CRCDestination       
      - c_LegalCustodyEntry       
      - c_LegalCustodyExit       
      - c_PrimaryReasonPlacement       
      - c_data_collection_stage       
      - c_iyhp_income       
      - c_iyhp_employment       
      - c_iyhp_shelter       
      - c_iyhp_food       
      - c_iyhp_childcare       
      - c_iyhp_children_education       
      - c_iyhp_adult_dducation       
      - c_iyhp_legal       
      - c_iyhp_notes       
      - c_iyhp_health_care       
      - c_iyhp_life_skills       
      - c_iyhp_mental_health       
      - c_iyhp_substance_abuse       
      - c_iyhp_family_social_relations       
      - c_iyhp_transportation_mobility       
      - c_iyhp_community_involvement       
      - c_iyhp_safety       
      - c_iyhp_parenting_skills       
      - c_iyhp_credit_history       
      - c_beyond_72_hours       
      - c_why_72       
      - c_person_released       
      - c_kc_cea_in_recovery       
      - c_kc_cea_hiv       
      - c_kc_cea_ex_offender       
      - c_kc_cea_hearing_impaired       
      - c_kc_cea_registered_va       
      - c_kc_cea_eligible_va_health       
      - c_kc_cea_one_day_active_duty       
      - c_custom_household_children       
      - c_children_household       
      - c_child_household_age       
      - c_unit_size       
      - c_discharge_status       
      - c_verteran_screening_score       
      - c_dd214_file       
      - c_family_type       
      - c_chronic_housing_eligible       
      - c_emergency_hospital_incidences       
      - c_hospital_overnight       
      - c_disability_mental_health       
      - c_manager_agency       
      - c_manager_name       
      - c_roi_filed       
      - c_eviction_notice       
      - c_owe_previous_landlord       
      - c_owe_balance       
      - c_owe_landlord_payments       
      - c_eviction_housing_authority       
      - c_owe_housing_authority       
      - c_owe_ha       
      - c_owe_ha_payments       
      - c_arson_charge       
      - c_meth_charge       
      - c_meth_charge_client       
      - c_violent_criminal_charge       
      - c_violent_criminal_charge_client       
      - c_checkin_date       
      - c_checkin_residence       
      - c_identify_hispanic       
      - c_wwe_turnaway_reason       
      - c_wwe_otherreason       
      - c_51_percent_custody       
      - c_disabled_adult_in_household       
      - c_immigrant_housing_pref       
      - c_custody_status       
      - c_military_member       
      - c_interpreter       
      - c_dd214       
      - c_safe       
      - c_violence_physical_verbal       
      - c_violence_date       
      - c_violence_member       
      - c_housing_crisis_cause       
      - c_specific_issues       
      - c_arrears_amount       
      - c_rental_agreement       
      - c_rent_amount       
      - c_water_sewer_gas       
      - c_rental_length       
      - c_rent_ontime       
      - c_mobilhome_rv_rent       
      - c_rent_due       
      - c_latefee_policy       
      - c_landlord_relationship       
      - c_landlord_interaction       
      - c_landlord_last_interaction       
      - c_notes_payments       
      - c_eviction_type       
      - c_eviction_date       
      - c_legal_aid       
      - c_income_recent       
      - c_income_householdmember       
      - c_income_source       
      - c_income_amount       
      - c_income_HH_total       
      - c_income_barrier       
      - c_employment_household       
      - c_income_none       
      - c_employed_hhmember       
      - c_employed_last       
      - c_employed_member2       
      - c_employed_previously       
      - c_employer_previous       
      - c_employer_current1       
      - c_workhours_member2       
      - c_workhours_member1       
      - c_employment_tenure1       
      - c_employment_tenure2       
      - c_employment_increase       
      - c_foodstamps       
      - c_energyassistance       
      - c_va_services       
      - c_ea_taxcredit       
      - c_commodities       
      - c_transportation_services       
      - c_aren_diversion       
      - c_section8_pubhousing_tbra       
      - c_hen_rent       
      - c_other_benefits       
      - c_housing_choice       
      - c_housingchoice_waitlist       
      - c_housingauthority       
      - c_ha_contact_info       
      - c_reliable_transport       
      - c_internet       
      - c_childcare       
      - c_campgear       
      - c_food_restrooms_laundry       
      - c_medically_fragile       
      - c_hh_assistance       
      - c_cooking       
      - c_cleaning       
      - c_laundry       
      - c_medication       
      - c_shopping       
      - c_money_mgt       
      - c_usetelephone       
      - c_personal_hygiene       
      - c_eating       
      - c_toilet       
      - c_walking       
      - c_credit_history       
      - c_credit_score       
      - c_loan_cashadvance       
      - c_other_services       
      - c_chob       
      - c_cowlitz_indian       
      - c_doc       
      - c_dshs       
      - c_dvr       
      - c_dapc       
      - c_ess       
      - c_fhc       
      - c_goodwill       
      - c_kalama_ha       
      - c_kelso_ha       
      - c_longview_ha       
      - c_love_inc       
      - c_love_overwhelming       
      - c_lower_columbia_cap       
      - c_columbia_PATH       
      - c_payee_services       
      - c_salvation_army       
      - c_slstart       
      - c_soar       
      - c_ssa       
      - c_vetadmin       
      - c_other_service_provider       
      - c_housinghistoryzip       
      - c_rentown       
      - c_hhistoryevicted       
      - c_hhistoryowelandlord       
      - c_reasonforeviction       
      - c_paymenttoprevlandlord       
      - c_subsidizedhousingha       
      - c_subsidizedwhen       
      - c_hhistorytransient       
      - c_hhistorydv       
      - c_hhistoryTHinpatient       
      - c_hhistoryHENARENEFH       
      - c_TBRARRHHP       
      - c_criminalhistoryhh1       
      - c_criminalhistoryhh2       
      - c_felonymisdemeanor       
      - c_felonymisdemeanor2       
      - c_felonymisdemeanor3       
      - c_timeserved1       
      - c_timeserved2       
      - c_timeserved3       
      - c_convictiondate       
      - c_convictiondate2       
      - c_convictiondate3       
      - c_convictionwhere       
      - c_convictionwhere2       
      - c_convictionwhere3       
      - c_opencase       
      - c_opencasename       
      - c_methhhmember       
      - c_RSOlevel       
      - c_RSOname       
      - c_RSOregistered       
      - c_criminalhistory       
      - c_householdchildren       
      - c_verteran1010EZ       