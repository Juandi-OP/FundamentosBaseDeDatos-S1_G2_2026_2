prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2026.04.07'
,p_release=>'26.2.0'
,p_default_workspace_id=>195393737499780866
,p_default_application_id=>181061
,p_default_id_offset=>0
,p_default_owner=>'WKSP_FDB202602'
);
end;
/
 
prompt APPLICATION 181061 - WheelsAlpes
--
-- Application Export:
--   Application:     181061
--   Name:            WheelsAlpes
--   Date and Time:   04:54 Monday October 26, 2026
--   Exported By:     M.DUQUEJ@UNIANDES.EDU.CO
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     18
--       Items:                   68
--       Computations:             2
--       Validations:              2
--       Processes:               17
--       Regions:                 35
--       Buttons:                 21
--     Shared Components:
--       Logic:
--         Items:                  1
--         Computations:           1
--         Build Options:          1
--       Navigation:
--         Lists:                  2
--         Breadcrumbs:            1
--           Entries:             10
--       Security:
--         Authentication:         2
--         Authorization:          3
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                   1
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         26.2.0
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_FDB202602')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'WheelsAlpes')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'WHEELSALPES')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'7F22A8F45C35A5F31B7E636C978C885447C5CE979776D5E28EC604493DF9E3DB'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'26.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix=>nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(7753404457299505421)
,p_application_tab_set=>0
,p_logo_type=>'T'
,p_logo_text=>'WheelsAlpes'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_deep_linking=>'Y'
,p_authorize_batch_job=>'N'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'WheelsAlpes'
,p_created_on=>wwv_flow_imp.dz('20261025171500Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261026044319Z')
,p_created_by=>'J.OCAMPOP'
,p_last_updated_by=>'J.OCAMPOP'
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>2461339171500
,p_version_scn=>'15849549925775'
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
,p_pwa_is_push_enabled=>'N'
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(7752497285859082517)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2471166859590295591
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(7752498002800082522)
,p_nav_bar_list_template_id=>2850970698196720012
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7752491937399082508)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>'SH256:NcagEyRP_F17oe14bnrSYSYienkBgpdRSvH17g_NxoE'
,p_created_on=>wwv_flow_imp.dz('20261025171500Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171500Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7752492238136082509)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>'SH256:FJR60MFzlfEjx0PvnpYBK4631rNeUHXaF3eGFKxcTgE'
,p_created_on=>wwv_flow_imp.dz('20261025171500Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171500Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7752492547412082510)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>'SH256:dQTHqehcDG0h-d-qmHe5lf-DuViElEHDw9zMkscLr6M'
,p_created_on=>wwv_flow_imp.dz('20261025171500Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171500Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7752492845316082510)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:CU9J9l4sUtY-UffjdBCosfDW6ER-I0swXpw8GekLiYQ'
,p_created_on=>wwv_flow_imp.dz('20261025171500Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171500Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7752493106888082511)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>'SH256:jJTPfH8wphTXe7ahDytF6PbWlPl1mXrDRYylCDda0k0'
,p_created_on=>wwv_flow_imp.dz('20261025171500Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171500Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7752493495479082511)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>'SH256:oAqKgc-cSRXHDMjfwwNIgo78WqYXKjQz8MWGBG6Euj0'
,p_created_on=>wwv_flow_imp.dz('20261025171500Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171500Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7752493792479082512)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>'SH256:uT4QhQbZQY61UFxAGl7ieo2urrCo8jUsFNprrg7lGHo'
,p_created_on=>wwv_flow_imp.dz('20261025171500Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171500Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7752494006268082512)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>'SH256:wAjuCAsVhoIbbuKGWTMQ__Rd_YS_sY9KgWhpqOO11mc'
,p_created_on=>wwv_flow_imp.dz('20261025171500Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171500Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7752494367390082512)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:GIeRbUJQ8yKfen6-dFvkghmSUZXFoUAXCCTNRhCJgh0'
,p_created_on=>wwv_flow_imp.dz('20261025171500Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171500Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7752494654336082513)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>'SH256:4M27aN0U-JyQ0prILtI8ITLXOphqUdO-xWNcwkSL1SI'
,p_created_on=>wwv_flow_imp.dz('20261025171500Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171500Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7752494972636082513)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG',
  'auto_ir_reset_button', 'Y')).to_clob
,p_version_scn=>'SH256:TC1mqO_n1hWvorH6XHVejgQzJq9VjDsWoq0rKaIQUNo'
,p_created_on=>wwv_flow_imp.dz('20261025171500Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171500Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7752495257081082513)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>'SH256:vJP7K77hiNj1R2RE6dHVyRAhlmxDg6KGn4yRE20J9Qw'
,p_created_on=>wwv_flow_imp.dz('20261025171500Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171500Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7752495556734082514)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>'SH256:fiSZ-OfcUl-d0e0dtJUYffG7q61xKsHlomsv7ZU1BMw'
,p_created_on=>wwv_flow_imp.dz('20261025171500Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171500Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7752495882318082514)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>'SH256:dRkCWi6vQMhdQUSqb0QlRls9iYcsZ93IPYrbTqFqJFE'
,p_created_on=>wwv_flow_imp.dz('20261025171500Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171500Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(7752498002800082522)
,p_name=>'Navigation Bar'
,p_static_id=>'navigation-bar'
,p_version_scn=>'SH256:vnb1-G39r80BPE-5P2Enpuf0sMSVvBeNQDVbFiNwRto'
,p_created_on=>wwv_flow_imp.dz('20261025171500Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171501Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7752511120211082571)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_static_id=>'app-user'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261025171501Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171501Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7752511756564082572)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_static_id=>'list_item'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(7752511120211082571)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261025171501Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171501Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7752512259081082572)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_static_id=>'sign-out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(7752511120211082571)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261025171501Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171501Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(7752497285859082517)
,p_name=>'Navigation Menu'
,p_static_id=>'navigation-menu'
,p_version_scn=>'SH256:u-MiBp1Ywv8PML_ysPJszq6BRvNAZAzhs5z1SAUaRAE'
,p_created_on=>wwv_flow_imp.dz('20261025171500Z')
,p_updated_on=>wwv_flow_imp.dz('20261026044319Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7752508585106082565)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Buscar viajes'
,p_static_id=>'home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261025171501Z')
,p_updated_on=>wwv_flow_imp.dz('20261026041817Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7877940771505134521)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Mi vehiculo'
,p_static_id=>'mi-vehiculo'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-forms'
,p_security_scheme=>wwv_flow_imp.id(7754653101854157939)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9'
,p_created_on=>wwv_flow_imp.dz('20261026032627Z')
,p_updated_on=>wwv_flow_imp.dz('20261026032840Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7891929186928135306)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Mis reservas'
,p_static_id=>'mis-reservas'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-o'
,p_security_scheme=>wwv_flow_imp.id(7754717739357163749)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'24'
,p_created_on=>wwv_flow_imp.dz('20261026043028Z')
,p_updated_on=>wwv_flow_imp.dz('20261026044319Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7887794755115075120)
,p_list_item_display_sequence=>25
,p_list_item_link_text=>'Reportes'
,p_static_id=>'reportes'
,p_list_item_icon=>'fa-bar-chart'
,p_security_scheme=>wwv_flow_imp.id(7754653101854157939)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261026042026Z')
,p_updated_on=>wwv_flow_imp.dz('20261026042026Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7876672743950744894)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Publicar viaje'
,p_static_id=>'rf3-publicar-viaje'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-o'
,p_security_scheme=>wwv_flow_imp.id(7754653101854157939)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10'
,p_created_on=>wwv_flow_imp.dz('20261026032524Z')
,p_updated_on=>wwv_flow_imp.dz('20261026042232Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7881027371394924334)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Actualizar estado'
,p_static_id=>'rf5-actualizar-estado-del-viaje'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-o'
,p_security_scheme=>wwv_flow_imp.id(7754653101854157939)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12'
,p_created_on=>wwv_flow_imp.dz('20261026035518Z')
,p_updated_on=>wwv_flow_imp.dz('20261026043607Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7886088840416015705)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Historial de viajes'
,p_static_id=>'rf6-historial-de-viajes'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_security_scheme=>wwv_flow_imp.id(7754653101854157939)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'13'
,p_created_on=>wwv_flow_imp.dz('20261026041032Z')
,p_updated_on=>wwv_flow_imp.dz('20261026043626Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7890343153800503504)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Mi cuenta'
,p_static_id=>'rf8-mi-cuenta'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-forms'
,p_security_scheme=>wwv_flow_imp.id(7754717739357163749)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14'
,p_created_on=>wwv_flow_imp.dz('20261026042757Z')
,p_updated_on=>wwv_flow_imp.dz('20261026043645Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7828710523550424666)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Demanda por localidad'
,p_static_id=>'rfc1-demanda-por-localidad'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-o'
,p_parent_list_item_id=>wwv_flow_imp.id(7887794755115075120)
,p_security_scheme=>wwv_flow_imp.id(7754653101854157939)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
,p_created_on=>wwv_flow_imp.dz('20261025234522Z')
,p_updated_on=>wwv_flow_imp.dz('20261026042053Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7831566527397968742)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Ingresos por localidad'
,p_static_id=>'rfc2-ingresos-por-localidad'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(7887794755115075120)
,p_security_scheme=>wwv_flow_imp.id(7754653101854157939)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6'
,p_created_on=>wwv_flow_imp.dz('20261026001209Z')
,p_updated_on=>wwv_flow_imp.dz('20261026042122Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7836374050994029858)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Viajes por conductor'
,p_static_id=>'rfc3-viajes-por-conductor'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(7887794755115075120)
,p_security_scheme=>wwv_flow_imp.id(7754653101854157939)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
,p_created_on=>wwv_flow_imp.dz('20261026002220Z')
,p_updated_on=>wwv_flow_imp.dz('20261026042144Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7878577586876203054)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Solicitar cupo'
,p_static_id=>'solicitar-cupo'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-o'
,p_security_scheme=>wwv_flow_imp.id(7754717739357163749)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'22'
,p_created_on=>wwv_flow_imp.dz('20261026033752Z')
,p_updated_on=>wwv_flow_imp.dz('20261026043543Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7886105981590020673)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Solicitudes Recibidas'
,p_static_id=>'solicitudes-recibidas'
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-o'
,p_security_scheme=>wwv_flow_imp.id(7754653101854157939)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'23'
,p_created_on=>wwv_flow_imp.dz('20261026041122Z')
,p_updated_on=>wwv_flow_imp.dz('20261026044259Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7755004264080192612)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Mi tablero'
,p_static_id=>'tablero-del-conductor'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-o'
,p_security_scheme=>wwv_flow_imp.id(7754653101854157939)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
,p_created_on=>wwv_flow_imp.dz('20261025173321Z')
,p_updated_on=>wwv_flow_imp.dz('20261026041855Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7853391728564405801)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Mi tablero'
,p_static_id=>'tablero-del-pasajero'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-o'
,p_security_scheme=>wwv_flow_imp.id(7754717739357163749)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8'
,p_created_on=>wwv_flow_imp.dz('20261026012500Z')
,p_updated_on=>wwv_flow_imp.dz('20261026042211Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800000B62494441547801EC9DDF8B1D6719C7DF3927C5366813625AADE056AA6D1A5B215E748348EDE6426F54F0424810AF12EC5FE04D41E80A8237FE054A7A25258B0A';
wwv_flow_imp.g_varchar2_table(2) := '82E6C60A4D7F40C9EE8501ADD556C446686D7B2C89956D25D91EE733679FDDD99399D939E77DE7CCCCFB3C4B9F3333EF8FE77DDEEFF3C9FBBE6777CF76E0ECCB14F050C000F210CFBA3A670019055E0A18405EF2596703C818F052C000F292CF3A1B40C6';
wwv_flow_imp.g_varchar2_table(3) := '8097027303E435AA758E460103289A54B6331103A81DDDA319D5008A2695ED4CC4006A47F768463580A249653B133180DAD13D9A51170FD03ED25D3EFDD307F6DA53DFB87C5ABBED6AB28F7C0BAF6E1DA097CEFC6C65E3CCF927D7CF3CF5ECFA99F3E324';
wwv_flow_imp.g_varchar2_table(4) := '19FE75AF8D7F9324DA6D571334DA48F5C2D06EE1C44C0DD80A404C7C7D1B98A11B3C3B766ED5B9F18AB3AF5A0A8C9D5BC5D02E0F54ADCE811B0D02FBAB7427E00C53689C0153A9D52C95C084094CB3F4F56D3BF07550A7FF46BAE432B9A18153472EAF36';
wwv_flow_imp.g_varchar2_table(5) := '8B0669E0156D8DCEC0C3A46A34B52601154073B40FE8B2D0556300C976C5440A47B6C2C61540FBF5F4AC492E9A1AAC11800878187CBB6A4A82D8FD8E57C805396962A683D04E097498C113DAB3F9F351809C901B1F1F457D0745853E6543377CD2A7BFF5';
wwv_flow_imp.g_varchar2_table(6) := '6D4E812672330819EE46FA6ECBD9DBF3909206F635CEBE691BD26930808087435BC8E0CC577805C811B90AE539184004162A28F3D3AC0221731504A09044372B9D791705421DA883001492689960C0ABB92A506018E8CDCEA0C0F74C45B6FACC2457871A';
wwv_flow_imp.g_varchar2_table(7) := '8F5742AC42DE007548110B654605860156A1C18C63DED2DCB6AF5B24E951C178C537582F80422C81BE13B0FE7E0AF8E6D00BA0036EF0985FF8D6BB6D057C73E80550DB93B7F1FD1518BBC46B1BF30268ECDCAA8BF84BC7D4C62B3EF39C1B203E39E133B0';
wwv_flow_imp.g_varchar2_table(8) := 'F5ED8E023EB99C1BA0EE4CDF2269530103A84DF52318DB03A0030F44307F9B82A7021E00798E6CDD3BA4C0FC8B8101D4A134F6311403A889AC29F2690055247BF4FE75875534515F650095200038A3F7AFA50061D74B5A59B10154C0C0285B79AEB92377';
wwv_flow_imp.g_varchar2_table(9) := '7F3CB351069241542095FDBF32A64519E5E0F9FCA35F7418208D0CA269A9B2675B813219262FA3297826A5CE2012210AAE06D0B628020F8FAC3A5CF3B674FCBEEC71642B51A683BC1840A912A3ED9527BD75271E7B84CB2DF6D1A38776EA4629449B373F';
wwv_flow_imp.g_varchar2_table(10) := 'B8A58D7F41FF3C184069CE0022BDB8FB1EBADF010AF745469D0076F53F6F15355157A61EA051BAFA9075E0F9D483F7725B6940445B1A495FEEB59A6A800060946E4724BF0E3CB4C3682BEFCCB46F65AA0192E4CB8A021C756DF750ADFBFB436A011AA55B';
wwv_flow_imp.g_varchar2_table(11) := 'D7E68D0FB2730F2B4A5D70A49D6C65F8C097946BBB2A06E85A96EB3B8F1E76FF1D5D9FCBE8AB7D2B5309507EC5B8F2DC86F3B177DFFE770662DE6756B0D897D646530AD064F559FEEE575D085B3A71BF632B9333556BD96C61607500C94A01389FFBF649';
wwv_flow_imp.g_varchar2_table(12) := '17C2BE70FA2B2DA4AE1B43AA03485609C009958243C7EFC95C099CD98392175500010F5B0DAB4FE8FC6ADDC6740174E37FB5B9B9FECA9BEEC5D5B5CCFEF6CBCBFBF6936D4CDB2AA40AA0D1F6779DABB62F01E7E213E7DDD52BAF65B6FEF367DCD3DFFA91';
wwv_flow_imp.g_varchar2_table(13) := 'A3AE8C24D9C6CAEA632D5703D028FDC62149DC6FFBFAE3DAF31934C71F3DE1BEF6FDD399714F5FEAB896591FB7B1B2B9D42D5703501D415861587500E6D3278FED74E1FEEE7BEFC9C0A2CD4EC5D48D6C639B37EA6F95532E7AF7A80EA0BB1E5A2A4DD23B';
wwv_flow_imp.g_varchar2_table(14) := '2F5F2DADFBEC971FCEEAAADA640DD2170EEBE945C57F6A0092A4569D55AAE0BAF6CF77F605A2CAF7BE9D7BDA400F40E90F4EEBE6E89517AEEC69FADE1BEF3A29AB3A80EFE9A4E4410D40E493432ED73263059143F6EF7EB2E6AEFCE2F9CC5E7AFA99AC8B';
wwv_flow_imp.g_varchar2_table(15) := 'D4650F252F8CB13903AC256E7A53AC0AA03A5961851150DE7EFD4D87D1EFEB3F3E97FDD8837BB35D05540024E79F4F3EFC99DD9957DC01D1777EFD0387010E5756A78A2E3B5532868CB95311DBCDF67C7400E4F1B6BA2E38DB7AAABBA800E8E06D1F5978';
wwv_flow_imp.g_varchar2_table(16) := '62373DA05D78B01E03AA00C8439FB9BBB601EDDCC17A745405D0BFFEF40F0FA9AC6B9102AA002A1220749936485500243F480D0D4B95BF36C6AC8AA7A9BAE801BAFADE5BD9EF2B23203F28E55AD7F8C1699DDF05CAFB933136D36F263276BE2EC6FBD901';
wwv_flow_imp.g_varchar2_table(17) := 'EA910A249044F2D11B8CD081826B1DBBF8C479C7EF02D5699B6FC30715198FB189215F17DB7DB4009138124822F9732DF249D22613985FAD1893B18981589A1CB74DDF510244C2481C0924917981F7FBA5B07CDB79EFE593AE8C4D0CC4424CF3FAEB72BF';
wwv_flow_imp.g_varchar2_table(18) := 'E800E2F04AC2481C0914F1F9283265724691F290D7A2ED8E18189798882DE4785DF0151540FCFC69B4FD7BCF24AE4CE059CE41653EA6CB65FBE2FC335D472C40446CC4385DDFE7E7A8001A6DFFDE73511249929C839ADCC6F8BC3C634D9B8C2D314ED7F7';
wwv_flow_imp.g_varchar2_table(19) := 'F5392A80D826F8972E6790E9A4B08D4D97857A96EDAB6C0CCA898D18438DD9053F0B04A8D9E9CAD670F8AE239503B13A710E0AB98D556D5FF960243689355FD7D7FB7800BA51EF9310B23A85DCC664F511DF6530C8F6B65933D6323F5D2A8F0620115592';
wwv_flow_imp.g_varchar2_table(20) := '24CF45D790AB50DDD5A7288E18CAA203A84E5264A508B10AD55D7DEAC4D5C7362A012251215621EDAB0F3AAA054856A18BE9CFBBE63D506B5F7D5403C4E4795BCD759EAD8CBFDC415FF1C1BD46EBC30AD4485EFEFCC21F9CFC7D43DED6CB76546730DAD2';
wwv_flow_imp.g_varchar2_table(21) := '87B6F8C017F71A4D1D40FC4556124EE20FDE76BB7BF0C8E4AFD3B31DD5D9CA8087B6C042DFA3771CCE40C427BE29D764AA0022C1FC4556E021F14B1FFB4496EBA53B2757CE435941C90B80093CF4A7D9D13B0E39EEF1896FC6A05C8BA901E88DBFBC9EFD';
wwv_flow_imp.g_varchar2_table(22) := '395F124BC2493CF7D8C103B7671070CF1F926295C178C6B8E7CC23804DF7C71765B40522C6E25E830D344C9284FEFDE5D7B2A9B2DA90F0EC21F7429940C02A834935F772E6A10D6DA54EAE9451C733633126F7B15BF4009148124A228187D586FB220302';
wwv_flow_imp.g_varchar2_table(23) := 'CE35B4C3A40DF71875B491F2E92B75B4A39C31199BFB982D5A80388B70B025917258AE82279F64DA6152C63D26CF5557DA011A63323631C40C527400710679F157BFCFCE3B1C6C49A41C96AB121FBA8E31D9D288019024A6D0E3B4ED2F1A80F82831B0E4';
wwv_flow_imp.g_varchar2_table(24) := '8DED8444CE2B320060F3F79FBC43C3473E2E629DD767D7FAC50350FA4E0A58F2C676E22338671A2C848F9071F9C413BA6F34008516C6FCD553C000AAA793B52A51C003A09BAF96F8B462450A7800A448A5E8A73AFF62600015C16165B51530806A4B650D';
wwv_flow_imp.g_varchar2_table(25) := '8B14981BA0936B8FDB19A848D11E96F9E4726E80263A259726577BEDAB028973ABCEE3CB0BA0C48D0D200FF163E8EA05D04DF7E1733188A0790EBE39F402E84B17BE672B50CFE9F3CDA1174013ED128368228473AE5F3789E7F987D97A03B4E5B67E8823';
wwv_flow_imp.g_varchar2_table(26) := '339D0A7803345902135B857AC8CF2317CE79FFE3F70608DD6C1542857E591260FB62C641009AAC42B833EB8B0221561FE61A04201C85221A5F66CD2A103257C10082E89081352BA15EEFE4885C85522018400434092CB1033562CC660B6A9D5C9AE428DC';
wwv_flow_imp.g_varchar2_table(27) := '704101222C3B50A34237AD89DC04078803F596FBF0543725D41B15392137A115080E10011228013B67DB996BFD2BB9442EC84913A13402108112F0F285B3A79240DF6FC0A7D96C0AA03D392017B3F5ACDFBA318024040E6D4C449EEDBA1805D01CED9B1E';
wwv_flow_imp.g_varchar2_table(28) := 'AD718098001359BE702E61523C9B35A5C064BB426B346F6A94BCDF8500240332292607489894DB757E05263D059CB3A79ADCAE2663ED7D5D284032342061C0C4010F9830A9B7EB7E0A249792F46C897668B89C9E35170D8E44D80A40323857260E4CD872';
wwv_flow_imp.g_varchar2_table(29) := 'BACD8DC75BC7762DF9E678ACDDF27A6C1D43A3E51418F4423B346CD35A07687AF27C4260D7CEFEF6E49A767BFCD55D3DBAF74998CE01340D943D775B0103A8DBF9E97C740650E753D4ED000DA06EE7A7B9E8027936800209A9D58D01A435F381E66D0005';
wwv_flow_imp.g_varchar2_table(30) := '1252AB1B03486BE603CDDB000A24A456370690D6CC079AB7011448483D6EF6CED400DAAB873DCDA8800134A360D67CAF02FF070000FFFF849951DB00000006494441540300C9E0707BFC2DCB000000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(7752499408148082525)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261025171500Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171500Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700000EE6494441547801EC5DCF8F1D47116E4544102B892D7B63134BAC9145848D415A0E214222C9295CB8E400328AB8F12F7089C42187485CF8177C43962C88C42517';
wwv_flow_imp.g_varchar2_table(2) := '920BC4124A3860094C40461159A404874914276863E448C9FB66B7FAD5F4CCBCE999E99E373DFD45EE9DFE515D5DFD557D3D35EFED4EEE7BE3C7573E632106B9C6C07D86FF11818C11200132763EB76E0C09C028C81A0112206BF773F3191380CE27024C';
wwv_flow_imp.g_varchar2_table(3) := '8118039923C03B40E60190FBF64980DC2320F3FD9300990740EEDB2701728C00EED9224002582858C91101122047AF73CF160112C042C14A8E089000397A9D7BB6089000160A567240C0DD2309E022C2765608900059B99B9B751120015C44D8CE0A0112';
wwv_flow_imp.g_varchar2_table(4) := '202B7773B32E0224808B08DB5921901101B2F22B37EB890009E00914C596890009B04CBF72579E0890009E40516C99089000CBF42B77E5890009E00954D26234BE150112A0151A0EE4800009908397B9C75604488056683890030224400E5EE61E5B1120';
wwv_flow_imp.g_varchar2_table(5) := '015AA1E1C01210E8DA0309D08510C7178D0009B068F772735D0890005D08717CD10890008B762F37D7850009D08510C7178DC08209B068BF7173811020010201493569224002A4E9375A1D0801122010905493260224409A7EA3D5811020010201392B35';
wwv_flow_imp.g_varchar2_table(6) := '34C61B0112C01B2A0A2E11011260895EE59EBC112001BCA1A2E01211200196E855EEC91B0112C01B2A0AA680405F1B4980BE8805923FF8F4AED9FFF87659500FA4966A7A224002F4042C8438027EFFA3DBE6E0DEDDB294F5152142E8A68E7E089000FDF0';
wwv_flow_imp.g_varchar2_table(7) := '1A2D2DC1EF2A22095C44A6699300D3E05CAED216FCE5E0EA0749B00261E27F24C044803705FFDED38F1B146D0249A0D1885F5F1001E283357485E2933B0681ADE723F01FDC396E5050D763900561741FEB71102001E2E06AB522908B4F3EB46D5410F008';
wwv_flow_imp.g_varchar2_table(8) := '7CD45150471FEA5248024122EE9504888B6FEDE43F7FE9B1F2D477976D2241B1BA73B8726C87458004088B67451B3EE7D71D08FEB317CEE9AE4A1D24808C74E2635257878CF11A060112200C8E352D38BD11C03280C0DE14FC220719C84A1B3AA04BDABC';
wwv_flow_imp.g_varchar2_table(9) := '86458004088B67A90D015BA8BC1F018DC02E073D7E4016734414BA8A4DE99008F2DA1B0112A037649B2720508B11C12FDA9B4880076A19E7350C022440181CAD161DFC274F9F3208643BD8B382B9D021D30ADE05048A605712201894C6B801BA7BF1FC68';
wwv_flow_imp.g_varchar2_table(10) := 'ED5A079E07F8503C1AD28A0212A002C7F00682BF70521F7CAA335CE3E14CE8D0CF03200153A1436C42FC240142A0B8D2A1831F690BD2975577907FD0059DA20C5F92493DF7EBD8FD930063115CCD2F9CDC5CA72DABE120FF5C9D4C8582C06A4880913822';
wwv_flow_imp.g_varchar2_table(11) := 'F88B08A98F6B1653211791306D1260248E6EF0235D19A9B2753A74EB54A870EE3CAD1339D08A0009D00A4DF7801B8008D0EE59E324742AC407E2715862360900140696C2497D06AAE935CD4D85F840DC0BBE9A70C204A8ED65D28EC2493FDEBA79CB5C7F';
wwv_flow_imp.g_varchar2_table(12) := 'E9D5490AD6D29B756DD163AC6F468004D88C4FEB68A14EFF56A18906E664CB445B0EB60C093000CAC239FD07A8083E855F8E0D83940418805BA14EFFEFFCE419F3DC6F7FBE95F2835FFCD45A5FCC9094D6B8195748809ECE7103ED6B3F7CA2A78670E2C7';
wwv_flow_imp.g_varchar2_table(13) := '2F3E6A95F113210B45AF0A09D00BAEAA304EFF6ACF442DB58CB6C125A71263B5050112A00598B6EE42A53FDB3CFDC5BE472EED4AB57CCB1C9F052C1C5E1512C00BA643A142E5D9FAE43D1CDDCE4FA441BB7B8FD9C5B58DB69395560448805668EA03853A';
wwv_flow_imp.g_varchar2_table(14) := 'FDEBA3DBEBF9D6E5A7B6B778E22B93009E0E74538B31E9CF3F7FF3BAB9FEC23573F5D917CB823AFA3C4DA989E12E209D7C181624FCAE24801F4EABFCFAFF567268FA73E7CD77CB807FE357AF98FD1BB7AC3ED4D107420C25824E83ACE20556426F8904F0';
wwv_flow_imp.g_varchar2_table(15) := '44D4BD03784EB36208EC979FBF62DB6D151001B26DE36DFD3A0D2AD4B34A9B3CFB0F1120010E71E8FC89D44284FAA63F38F911D832FFF4B947CD779F7BC67CFF6797CB72F1C93D833E19872CE648DBE7EAA6413E732863F807313E41A04FD421A9C65FAE';
wwv_flow_imp.g_varchar2_table(16) := 'FDC12E8360DFFBD153E6A1B3276DDF579EF8BA419F26819E63053B2ADAB6B177AC8EA51633CC3B404F577EF99B5FED39C354F27D047B9B029040C6F05CD0F72EA06DD3A4159DBCD6112001EA98D47AF469AABF78AA093674E87C1EA77F8348A54BDF052A';
wwv_flow_imp.g_varchar2_table(17) := '031E8DBEB679A85CBC484204D89E2F74FEAF73ED18169DDA3D63D5FEF7E6BEADF7AD689BFBCECD499E0488EC6D7D2ABFBF7F3BEA6A2E39F59D2BEAC2092B27013A9CA783483F64764C6B1C7EEFED771BFB75E79BAFDDB0CDBE9F3661E2581BA123A74202';
wwv_flow_imp.g_varchar2_table(18) := '7478FBE0DEFA0B30FD90D931CD0EE354D64179E3D7EB4F84ACD051E5DFAFFFE3A8668C9E633B7B56B4ED3DA766234E024CE06AFD2515EE0220810EF68FDFF9C0A04F9FFE7A4E1F13F53C7DF7EAA323275912A0C3DB3A88743EDF31AD328CBB80FEF50990';
wwv_flow_imp.g_varchar2_table(19) := '00C1FEBB5F5E33287FBCFA8A419F4C822CE648DBB0120D0112201AB455C5C8E711D8D5DE7A0B7FE608D9FA087B62204002C440B54527021B7F3F0C22E81C1F75F4618C277F0B7891BA498048C06E520B227CEF85CBF60FE95147DFA6391C8B830009D081';
wwv_flow_imp.g_varchar2_table(20) := 'EBC1BDBB562285D359DBA86DB79B60A58200095081838DB92110DB1E122036C2D43F6B04488059BB87C6C5468004E840F8D8FD5FB2127D7F3DD94E9CB0A26DD4B64F6842524B910049B98BC686468004088D28F52585C08C0990148EB33176CCDF10CC66';
wwv_flow_imp.g_varchar2_table(21) := '13131A420274807DEC0BEB670006570758090E93001B9C86BFAB2DD4DBE0FEF3D77F6D909EDF10BE082BF88A948D8E21015AE041E0142AF85BC466D7ED92147B284882563F91000DD020608A86E0C79B1A1AC40777E1958828FAA3CBC1CA8E2636D988BD';
wwv_flow_imp.g_varchar2_table(22) := '1424C11142D50B0950C5C320500A15FCE72FADDFBC0CD150C18AB745205851A0B7520235B4EDD8534112D490250114240890C209FEB317CE9993A74F29A9F0D5500FD7209558079B613B492088345F4980235C8AD5E95834043F864F3CB27E8BDB9037B6';
wwv_flow_imp.g_varchar2_table(23) := '41C7D4456C260936234F02ACF0293604FF6AD83CBC730297D917FD00AC6D2609DA5D973D01BA821FD03DB8731C97B2C4CCD9CB0546FCD0B6699BA19224000AF59235017C825F20434E2DF5500FC2A22FC4D5CDFF9B74A6408226BB63F6654B803EC1EF3A';
wwv_flow_imp.g_varchar2_table(24) := '60EECF0192FFBB76A3DD4402FDE60BC8E4543226C087D6CF38DD1118B6A3A1B27BF1BCEDD5A986EDDC7205FF4F0131A16B2F18C79E451E8781D473BB664900D7E1DF78F2DB9D7E474EAD83664E69904FFAE36E50EF19BF3291EB5D205302AC4F7FFD39B9';
wwv_flow_imp.g_varchar2_table(25) := '1B246E5BDF05E69A066D4A7FDCFDE8BDEF7F14F7C5BDEEDA7369674700F7A4433A30C419734A83FAA43F7AAFD8BBBEABB9D868D9A5D667448069203E502FBBD527A0CFEA6E1AA4530F9FF93164B40D7DF7E3DAE3A686EEF812DBF911E0D3F57B7E863854';
wwv_flow_imp.g_varchar2_table(26) := 'A741FA8BA721BA42CCD1A7FF107D7A3F43E6A73E273B026887E96F4B75FFA6BABE0B200DDAE6C3B03EFD6133521A5C59FC11C88E0007EA4D6F08667FA8D692FAD49CCBC3F0D0F44763A0B159EF76D9B5EC0810C29D3A68B67517C0E9AFD31F9EFEC33C4B';
wwv_flow_imp.g_varchar2_table(27) := '020CC3CDE81377F45D60800DFAF943DB324055D653488081EED727EED477019CFE58534CD7B6481FAF7E0890007E38354AED3DFDB8ED9FF22EA0531F9EFED605832A24C020D80E27E15940BE48C2898C93F97024DE4FBD06D6E6E93F0E6B12601C7E467F';
wwv_flow_imp.g_varchar2_table(28) := '22849339E6C7A2D08D35C4E43EBFF6207378AD22400254F1E8DDD277014C8E990A69DD487D9670FA03B36D16122000FAFA248E950A21F581EE00E6528542800450600CA9BEF3F7B7CD5B376F55A6224D41BA52E91CD1802EE8D42AB026D6D67DACF74780';
wwv_flow_imp.g_varchar2_table(29) := '04E88F999DF1B7D7FE5C0B7E19D4E98AF40DBD6A5DFA9DFF24C15044D7F348803516DEB5FF15770C82FF83F7DEB773761E38612E9C3C67244091AEE0AD6F566060C54D7D761F3A63B096A80309608BB479ED870009D00F2F83E0BFF1FB3F1937F8771E38';
wwv_flow_imp.g_varchar2_table(30) := '7C73845CA116244000A33EA460AE4E7D761F3E53AAC11A9A04B0E5FA4BAF96B69502FCE18DC01609E06DE36C04917323F8B541084404A4F4E175EAE893360218812C6DDF2BE660AEC8432774AFDBC72B7702F4C336D8883A8B1F0224801F4E0681857443';
wwv_flow_imp.g_varchar2_table(31) := '8BE344D6C12F63E843C04A1B818C8096F6A62B1E78218B3922075DD0296DB9A20F36481B57D8085B5167E9468004E8C6A816FCC8F31178FA4476D520382127FD08E8ABCFBE68A4A0DD34F6F2F3578C1E830EE81259F70A1BF4B307C64902A0E05748800E';
wwv_flow_imp.g_varchar2_table(32) := '9CF0808980123104241E441178D2D776851C4EEFB6F1AE7E59AB4B0EE3EE5AB099770220B3B990002DF8E06117C18F074C11413023D0A4ED73C5E98D79283EF2087A14DC6186AE25EB8004D883B479AD234002D431293F4DC103A51BFC08E606F1CE2ECC';
wwv_flow_imp.g_varchar2_table(33) := '4341AA5296D5C7A59A10A84B3F821EC5E70ED3B430D6813E19C31EF80991A051BF92000E26481B10FCBA1B0185C0D27D73AEC356D8AC6DC49EB037DDC7BA3124C02A0A90EEA0205D40DAB0EAB2FF908A20A06C472215D80CDBB5B9D81B4880A2FB73AE67';
wwv_flow_imp.g_varchar2_table(34) := '4D00A40628381D51902E4830481E3E3415113DDBBCC276A456D88BD80112A060DF52642CC76BD604687338D2873179789B5EDD7FECFE2FEA66D43AF6823D455D2451E5D911A029107042A2600C6903D28729FC893551A6580F6BE06E803DA234EDAFADBF';
wwv_flow_imp.g_varchar2_table(35) := '497668DFDCE6654880E3E52FAD2118A4E084444190206D98C24958076BA24CB19EAC813DA2C8DEF515FD2297CB353B02E4E258EED30F0112C00F274A2D14011260A18EE5B6FC102001FC70A2D442119890000B4590DB4A1A01122069F7D1F8B108900063';
wwv_flow_imp.g_varchar2_table(36) := '11E4FCA411200192761F8D1F8B0009301641CE4F1A0112600AF7718DD9224002CCD635346C0A0448802950E61AB345800498AD6B68D81408900053A0CC35668B0009305BD72CC3B0B9EF820498BB87685F54044880A8F052F9DC112001E6EE21DA171501';
wwv_flow_imp.g_varchar2_table(37) := '12202ABC543E77044880B97B88F64545202201A2DA4DE54420080224401018A92455044880543D47BB832040020481914A5245800448D573B43B0802244010181D256C26830009908CAB68680C04488018A8526732089000C9B88A86C640800488812A75';
wwv_flow_imp.g_varchar2_table(38) := '26830009908CABD23034352B4980D43C467B83224002048593CA5243800448CD63B437280224405038A92C35044880D43C467B832210900041EDA2322230090224C024307391B9224002CCD533B46B120448804960E6227345800498AB6768D724089000';
wwv_flow_imp.g_varchar2_table(39) := '2160A68E6411200192751D0D0F810009100245EA481601122059D7D1F0100890002150A48E641120019275DD3C0C4FDD8ACF010000FFFFA8FEBCDA000000064944415403009CDBC95B26A90BD80000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(7752499712519082525)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261025171500Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171500Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC9D5D8B25C779C76B662C1C0B5B5AE495140BBC0A4A4424CB81F585C69858D60AE2DCE426900409932B2FF906B91104BC86403E44585F0523';
wwv_flow_imp.g_varchar2_table(2) := '910472A32B07245B0AC6BB1716C46FC14988D660C7527B91A2B0B259C9E3FEF5993A5353D37DB64F9FEA7AE9FA2F5BA7BBABEBE5797E55CFBFAA7BCECEEE1BFD110111A8968004A0DAA197E322608C0440B340042A262001A878F0E57ADD04F05E020005';
wwv_flow_imp.g_varchar2_table(3) := '2511A8948004A0D28197DB2200010900149444A0520212804A075E6ED74DC07A2F01B0247414810A0948002A1C74B92C02968004C092D051042A242001A870D0E572DD045CEF25002E0D9D8B4065042400950DB8DC1501978004C0A5A17311A88C8004A0';
wwv_flow_imp.g_varchar2_table(4) := 'B20197BB7513F0BD9700F844742D02151190005434D87255047C0212009F88AE45A0220212808A065BAED64DA0CF7B09401F15E5894025042400950CB4DC14813E0212803E2ACA13814A0848002A1968B959378121EF25004364942F02151090000C0CF2';
wwv_flow_imp.g_varchar2_table(5) := 'B79FFBFB4B7DE9FA7357BFA2942F83BE31236F6098ABCFAE560098142482F9DA735F7BF9245D3DBAF6DCD5A303B3FF725F3A32E68A52BE0CFAC68C3CC6F424ADC6FBFAB198330F6A5582FD5A1C6790AFAD03FD24C00966638E2E9DA45A88D4ECE76ABC8F';
wwv_flow_imp.g_varchar2_table(6) := '8CE9C4FCA015FB95387CEDE5EBC7A2B0243A9B7CD9DF74B3E47B043C8379AD0BFA55C09B75A097EC996C9F8FC0D1252B0AAE203097E6EB336DCB8B1300068BA03F68559DC15C057D5AC8EABD54022B41602E2108D7DBDD41A99E0CD9BD3F74A3A47C1BF4';
wwv_flow_imp.g_varchar2_table(7) := '0CD2411BF80AFA9246AF1C5B595098630801A91CCB872DDD1FBE95FF1D1BF8070AFAFC076B4116220424448094B36B77B26DFF4E0572BCAFC0CF7154EAB3091120952C02C50900B00FB4E2D7176D197B8C08D847838CCDEC356DBF3737C34CBBEA033B43';
wwv_flow_imp.g_varchar2_table(8) := 'F364920818E6260B5449288A1000A01E68D52F695E556B2B2290CB6E60CC20EC8F2994B20CC10FD49436A86F11D896007396B9BB6DBDD8E5B316000002323614F527022108307799C321DA9AAB8D6C050070009CCB71B52B023108308799CB31FA9AD247';
wwv_flow_imp.g_varchar2_table(9) := '96020030C04D71487544203702CC65E6744CBBC6F6959D00000A60631D503911288100739AB99D9BAD5909008000951B24D92302210830B799E321DA0AD546560200A0508EA91D11C89100739CEFB4E4625B3602909B32E63240B26379040ECCC157E6F4';
wwv_flow_imp.g_varchar2_table(10) := '6A9BB6F7B7293C5759821F659CAB7DB52B02791138BAC49CCFC1A62C0440C19FC354900D310930E7737814482E00B92861CCC1575F220081830C1E05F631245522F851C254FDAB5F11484BE0A8FBCDD3216DD8B6ADA402B0ADB12A2F024B2370907817B0';
wwv_flow_imp.g_varchar2_table(11) := '9F0AA856FF54E4D56F5E04D2EE029209405E83206B44201D818384BB80FD546EEBD93F1579F59B1F81A34B216C9AD246120160FB3FC558D51181A51248F523C124027064CC15A33F2220026B0207891E03F6D716443A49A57491DC5337223091409A9781';
wwv_flow_imp.g_varchar2_table(12) := 'D105E04366FFE98984544D04164D6097D8980A26BA001C99BD4B538D553D1158328114B1115D004CF71F742E7918E59B084C2570147D718C2A007AFB3F7562A85E2D0462BF238B2A00B50CA2FC1481A9040E26FC34606A5FD4DBE723563AD2F37F2CD4EA';
wwv_flow_imp.g_varchar2_table(13) := '47044611882A007AFE1F35262A543581A3A8EF01A20940EC679BAAE7909C2F9A40CC58892600297EC659F42C90F1223082C0AE45A209C0AE86AABE08D44220E662194D008EF402B096F92B3F7724103356A209C08E4C545D04446006021105E028EADBCD';
wwv_flow_imp.g_varchar2_table(14) := '1958A94911C88A400863220A400873D58608D44020DE622901A8613EC94711182010450062FE5C73C04F658B40510462C54C1401288ABC8C1581020884325102108AA4DA1181020948000A1C34992C02A10848004291543B22502001094081832693EB26';
wwv_flow_imp.g_varchar2_table(15) := '10D2FB280210F3BBCD21E1A82D1148452056CC4411805410D5EF3081E6BD77CC8F6EBED125CE874BEACE92094800963CBA03BE11F0CD7B6FAFEF72DEB482B0CED04935042400D50CF5CA5102BD71827F956B0C798D44C0E2C8F618DA30094068A219B747';
wwv_flow_imp.g_varchar2_table(16) := '80373DC16F4DE65E2311B038AA384A00AA186656F877BA55DE75F7E2D34F1A929BD7B402D148045C248B3E97002C7A7857CE11D04D1BD8ABABD52781FFD1F3F71A12E7ABDCD527651B89C00AC6C23F25000B1F6002B97182FFBE073EDEADFA04BE759D73';
wwv_flow_imp.g_varchar2_table(17) := '8980A591EF710ECB24007350CDA4CDA65DC51B27F831EB534F7DA65BF539771322F0F93FFB238340D87CEADE7AFF97F652C7051290002C70507189C0258039B7C95FE56DBE7BBCF0F823EEA5B9F17F3F37B4752A53178B21200158CC509E76A469577F37';
wwv_flow_imp.g_varchar2_table(18) := '87E0679577F3FACE294359F79EDF967B4FE765139000943D7EBDD6DF78B75DB56F9F6CDD1F79E2D1DE6D7F6FE5361311A04E7BDAFDBDD5B6459BDD853E921098AB5309C05C6413B5CB6A4DC0DAEE09E4871E7BD85E8E3E5287BAB6026DD2B6BDD6711904';
wwv_flow_imp.g_varchar2_table(19) := '2400CB18C7CE0B02B4715EFA11C004727773C20775F5527002B882AA48000A1AAC3B99EA063F6509608EBB247E6AE08A002F0577694F75F3222001C86B3C265BD3F4BCF49BDC9857F1CC4F06DA770C5E115DCE4860CEA6250073D28DD436C1DF785B7F5E';
wwv_flow_imp.g_varchar2_table(20) := 'E485EA9EB6789CB0EDE97D802551FE510250FE189EFA8E3F811A62EBEF63A14DF75100C1D1F7037C4AE55D4B00CA1BB3531637DED69F403D5520E085FF28E0F71DB02B35158980042012E839BA21001B6FEB3F473FB6CDBE4701ED022C9D798E73B72A01';
wwv_flow_imp.g_varchar2_table(21) := '989BF08CEDBBC1CFF67CCED5DFBA411FF465AF1B6F0762F3752C838004A08C713A63A51F78E7EEBFEF4C99B932DC4701BD109C8B729C762500713807EFA5F1B6FEACCCC13B1968904781D3BB8093DF2F385045D999129000643A309BCC6ABC6DF7DB6FDD';
wwv_flow_imp.g_varchar2_table(22) := '343F78F5BB51936F9F6F937F5FD7DB1388514302108372E03E1A67F5A7E99B6FFEC2A448F46D1336E985A0A551CE510250CE58759636DEEADF6566F291B36D9920CACE0C09407643B2D9A0C659FD2F5C7CD41CFEE51793276B312F04EDB98E6510900094';
wwv_flow_imp.g_varchar2_table(23) := '314E9D958DB7FA7FFECAB3E6F7FEFCB349D3FD4F5CE86CB31F7A0CB024763BC6AA2D0188453A403F6E70B1F2076872E726EE7DFC13869D886DC817299BAF639E042400798ECB19AB08FE5CB7D87FF0EC17D6F66223B6AE33749235010940D6C37362DCAD';
wwv_flow_imp.g_varchar2_table(24) := 'DBBF3AB968CFD8FAB7872CFE6A1790C5304C32420230095BFC4A8DF3F22F97EDBF4BC1DF05B8F774BE1D8198A5250031694FECABF15EFE855AFDDFF9E1CF265A74B61ABB0037578F012E8D7CCF2500F98E4DAF65BBAEFE04FD6B575E345FFFD3BF352F3D';
wwv_flow_imp.g_varchar2_table(25) := '7FB53B724EDE7FFED3777AFB1C9BA997816349E5534E0290CF580C5AD238DBFFC142236E10E004FD8DD77F7CA63479D7FEE11B8632676E8ECCD063C04850191593006434187DA6F85BE9A9DB7F567902BCAF0F378F32EC06DCBCA9E7BEED53DBA9A95E6C';
wwv_flow_imp.g_varchar2_table(26) := '5F2500B1896FD99FFBF6DFDD626FD38CBFAA3FF0F027CCE7BEF445F3C77FFD6C971E7FEAA221CFB6C96EC0AF63EF6D3AF21EC0B5D1B57D533DDD4B474002908EFDA89EDD55F4B73FFD3BA3EAB88578E66755B77904FBC5BFF882F9D84327BF3FE0939FFD';
wwv_flow_imp.g_varchar2_table(27) := '7D431EF76C39EA50D75E4F39BAB64FA9AF3AF3139000CCCF78A71E6EDD3EF92FBEFCAFDD8E69F8ADEFDF38558C603F95E15C70CFDD09FCFB8BDF72EE8E3BD57B80719C72292501C865247AECF05750B6D83DC53666FDEFF7FE677DDF5DE1D799DEC9EFFE';
wwv_flow_imp.g_varchar2_table(28) := 'E1A7BD9CED2E7D1B7D1FB66BADAED229BC9500A4A03EB2CF5BB74FBEFDE73E5B8FACDE15E379BE3B693FCE7DF2FEF673FC5FB7EEF85AE6D4BF0DD8A69ECAC627200188CF7C528F539EFFE9685BE178FB276F512D586ABC2F31056B580D05212001088271';
wwv_flow_imp.g_varchar2_table(29) := '9E46426F9FFFEBDFBEB795A153BF743455ACB6324E858310900004C1384F23B79C1780537B705FCABDF9C6CFCCBB3FBD39D814F77EF8EAEB83F7C7DE705F5686F0616CBF25974B65BB042015F92DFB75836A9BAABC94731F03BEFDF56F989F7CE73FCE34';
wwv_flow_imp.g_varchar2_table(30) := '41F0FB3B84A95F3AF21B0FBD93F1DBD7F574021280E9EC66ADE9070D813CB5437717401BACF288804DAFFFE3B70CC2C00E81FBA4A9DB7FEAEE622BF595E2119000C4639DAC2702D20F6844C02637F03192B2A1567FDA53CA97800420DFB1096A19014D60';
wwv_flow_imp.g_varchar2_table(31) := '6F6A9447853FF9BBCBDDEF18DC546ECC3DDA1A534E658C49C940029092FE86BE6F05F80E80DF3C22F0A57FF99BF56F11264849080381CF2F1965B7E0D7DBF5DAF565D7B6543F2C010940589E45B4861090087812E773047E11302A37520250F90490FB75';
wwv_flow_imp.g_varchar2_table(32) := '1390001430FEFA624D018334D1C4D4D52400A9476044FFEE3FE819513C8B2212AD2C86E18E464800EE884805A6102851B4A6F8597A1D0940E92328FB4560070212801DE0CD59F5EEBB3E3C67F36A3B030239982001C86114166E83C42CDF019600E43B36';
wwv_flow_imp.g_varchar2_table(33) := '6BCBA6FE628E7503094E4AB43901A6E45D4A00920F810C108174042400E9D86FECD9FF4D3ABBFE86DE8D9D05BEE9DBEAFB12B8BB229BCBC56809402E23E1D871E3DD9F9B5B017E1988D364D453FF3711E30B3E4535429D8D2220011885295E21028580F1';
wwv_flow_imp.g_varchar2_table(34) := '7BF483CABF3FE59A959A34A5EEB675F009DFB6ADA7F2F3129000CCCB77ABD6091002A5AF52E82FD6F03FFFBCF4FCD5EE3F089508F411AF234F0290C938FBC17FDF031F37179F7E328A75A17717FCAF42D6F0479E78D4E08BBD46E0F0D55ED778CCC96709';
wwv_flow_imp.g_varchar2_table(35) := '4006A341401018D61402E6534F7DC65E76C7527FAC76CFF973065FF0A973A4FDC0577C6E4FF53731010940E201201008086B068142C070FDD1F3F77258A7585BF57587134E78B470AB591FF009DFEC3D7CC6777BAD631A02128034DCBB5E090002A1BB68';
wwv_flow_imp.g_varchar2_table(36) := '3F081002A53D5DFF25CF5E4CF9BFFA6CDD1447D776FAC737370FDF61C03DA53404240069B81B7E364E00D8EE090C02C45EDBE3B9FB4FFE175F9B97F3D17D59D9673B3EE2ABF50106358980F53B97A30420C14810FCCD7B6FAF7B2620088C758673C233B4';
wwv_flow_imp.g_varchar2_table(37) := 'BD2CE13D806BA36BBBF58123BEE233E72444A0D17F21068AE8490210193913BD1919FC98669FA13927E5FC1E60E8F91FBBFDE48B004C1A89808F69F66B09C0EC884F77D06C11FCB6A6BB5A96F21E801FFF59FB878E7D22305456F9F3109000CCC3B5B7D5';
wwv_flow_imp.g_varchar2_table(38) := 'C65BE12E3CFE486F393FD32DE76EB1FD72A9AFDD9FFF8FB5C5F58D3A4B7E1F807FB9250940C411699CD59F15D2DFDE0F99E297CBF131C0DFFE3FF4D8C343EE9CCAC73758D84CDE07F8FF2D9ABDA76378021280F04C7B5B6CBCD57F6C80D8C64A7A0C7003';
wwv_flow_imp.g_varchar2_table(39) := 'DADABFE9B82D8B4D6DE9DE76042400DBF19A5CDA5DD5B60D103A75B7CA3C06E4B60B70B7FF436FFFF16328B902E78BE5501DE5EF4E4002B03BC3512DB0B51D5570A0105B653748727A19E86FFFB175C08DC16C57E0766535D849C21BB9762D01883032EE';
wwv_flow_imp.g_varchar2_table(40) := 'EA4F7753B7BC6E90B00BA0AD1C92BBFA4FD9DDE0832F1A3E33CA288527200108CF74B61609127717E0AFBCB375BCA161DF86A9E2B6A10BDD9A9180046046B8B6E95BB77F654F4FFDD3D875E61627EED76BDDAFDD6ED144D0A221567F6B902B6E364FC779';
wwv_flow_imp.g_varchar2_table(41) := '094800E6E51BBC757785E531C05F818377B8A141BF6FD7B60DD546DD72457354858C0BE56C9A0420E7D119B0CD5D29DD1578A0F86CD96EDF539FFD67334E0D8F222001188529AF427C85D6B5C85F89DD7B739DFB7D865CFDE7B259ED9E25200138CBA488';
wwv_flow_imp.g_varchar2_table(42) := '1C77C565258EFDBD00FAB4A05C5B6C9E8E6510900094314E67AC64C5751F05627E2FC05DFDC41D44230000087849444154B1015BCE18A88C8E40EE1F1280DC4768837DFEF70262EC02087E77F5777F2AB1C154DDCA94800420D381196396FFBD80979EBF';
wwv_flow_imp.g_varchar2_table(43) := '3AA6DA4E65DCE067EBAFD57F279CC92B4B00920FC16E06F82BF06B575EDCADC10DB559FD37DCD6AD020948000A1C346BF24F7FF486F9EFEFFFD85E7647BE1B30C7A300C1EFAEFE7446DFD8C0B9D2590225E448004A18A51E1B093C02B0E7D62CFFDB8F1F';
wwv_flow_imp.g_varchar2_table(44) := 'FCB65F6CC0167BAD6359042400658D5767ED0F5EFDEE9995FFFC47CE75F7EC47C89F0AF88F1517EE79D076D31D25021D86223F2400850D1BC17FF3CD5FACADBEFBAEDF3204E4F98FDCDB1DCDF11F1E05FCC03DBEB5D581AD3F6DD94A08CDDD1F5AF549DF';
wwv_flow_imp.g_varchar2_table(45) := '361F11C0367BAD6319042400658C93F9FFE61DF3DA3FFFAB3913FC1F7BD01090B8C19100E59C44E012C09C4F49D475B7FEB48DD0D0167D5DA0EF5680B826611B36622BD735A7527C970014305204D4EBDFBC7ECA528291003C95D95E10A0EECA4C0013C8';
wwv_flow_imp.g_varchar2_table(46) := 'EDADADFE5287BAB612FDD1B6BDB6476CE09EBDE688AD7A2F0089FC930420F33122900828D74C02AE2F186D1982B24F04086A9BDC7F4ACCB9CDE7C8A3831BFCB4BBA93FEE6113E56CE29100DBEDB58E79129000E4392E9D55041081D45D1C7F106804DCF1';
wwv_flow_imp.g_varchar2_table(47) := 'E5E0C12F4340BB89C7035B99F3A17B94E11D03C74D89FEB0CD2D83EDF8E0E6E93C2F021280BCC6636D0D2FD408A075467B42201268EDE91DFFF28CFED87D0F1B772770C74A5E01EAD2276D79B77A2FB18DF2EE4D7CA84D045CFF733F9700643842043F2F';
wwv_flow_imp.g_varchar2_table(48) := 'D4AC69DB06A2ADC791C701566612EDD8C43D9B6C9E3D529640A6EED8E05FB7A59F105814451C2500190D132FFB788B7E26F879DBDE06D6545359994904B44D04B96D8F20B7F91C294B9EBDBFED91BAB483A0D8BAF8846FF868F3744C4F4002907E0C3A0B';
wwv_flow_imp.g_varchar2_table(49) := '088CBE977D045257A0C00F6C77850617F0518F0490C8234900128E03414F62CB4F60B8A61038ACC46E5E89E7F8802FAEEDF6BD004280FFEEBDD2CF4BB35F021079C4EC5698ED30414F22CF3583802170DCBC92CFF1059F5C1F100112FEC382E47370CBEB';
wwv_flow_imp.g_varchar2_table(50) := '7C1E02128079B89E6AF5EEBB3E7CEA7AE88267665EBE113043654ACDC7277E2AE10B41A9FE2CC56E09408491E4A5D85037043D89C0E7997953D9A136A6E48F15A5296D6FAA83102002A4A172F0A0DCD07DE58723200108C772634BAC7E5D90DFF360F78F';
wwv_flow_imp.g_varchar2_table(51) := '7638EFF2DA37FC3103DF1A89D0D03F2976B0D11F89BE49B038955A26D6CE928E25DA1A4500DE37BFFE66897042DB4CD0B92974FBA5B6E732E1BC543F42DA1D2B66A2084048306A4B0444201C01094038966A49048A232001286EC864708E044AB5490250';
wwv_flow_imp.g_varchar2_table(52) := 'EAC8C96E11084040021000A29A10815209441180CFBDF057AF940A48768B400A02B162268A00A400A83E4520168192FB8928007BDA05943C5364FB220944148045F2935322300381788BA5046086E1539322500A816802B0678EF40850CAAC909DA309CC';
wwv_flow_imp.g_varchar2_table(53) := '513066AC44138058DF6D9E6340D4A6082C95403401582A40F92502A109C45C2CA30940AC9F6B861E0CB52702B109C48C956802B08218EFEDE6AA3F7D8AC07C04E669396E8C4416807990A95511580A81982F00611655003E301F7C954E95444004F22010';
wwv_flow_imp.g_varchar2_table(54) := '5500623EDBE481575688C076049E7CE172D44532AA00AC50C47DC659F5A94F11084B609ED6E2C746740188FD8C33CF40A95511084F20456C441780F7F50B42C3CF1CB5B80802296223BA00ACDE03C4DFEA2C6286C889451358C5465C17A30B00EE7DA09F';
wwv_flow_imp.g_varchar2_table(55) := '068041A950027398BD67CC1593E04F120148A17409D8AA4B11184D20F6DB7F6B5812015875BEA77F1DB802A1CFCA09EC255AFDC19E4C00F418007E2511484B209900AC1E03F6B40B483BFEEA7D4B02A18BEFB5AB7FAAED3FBE2413003AD72E000A4A2290';
wwv_flow_imp.g_varchar2_table(56) := '8E405201D02E20DDC0ABE7F40452AFFE10482A0018A05D0014946A249072EB6F79271700760128A135484711C8954048BB7299F3C90500A82B25DCD30B4160282D9EC05EE2177F2EE02C040083F4280005A51A08AC16BC3C3CCD4600F42890C7849015F3';
wwv_flow_imp.g_varchar2_table(57) := '1260F59FB787ED5ACF4600301B65CC0D10762989400802CC6DE67888B642B5919500E0148000C5B992082C8500739AB99D9B3FD9090080000530CE9544A07402CC65E6748E7E642900800218E0385712815209308799CBB9DA9FAD00000C7000E45C4904';
wwv_flow_imp.g_varchar2_table(58) := '521198DA2F7397393CB57E8C7A590B0000000848CE9544A01402CC59E66EEEF6662F000004E4E10B97F780CAB59208E44B60EF950FCCAF9F61CEE66BE389654508803517A812014B43C7DC0830370F5FF8F2337CA72537DB86EC294A0070021138D46E00';
wwv_flow_imp.g_varchar2_table(59) := '144A11088CEBA2AC55DFF5A93801B0C62304282EC9E6E928027109AC02FFB0B055DF6554AC00E0042240420448E42989C0FC04CA0F7CCBA86801B04E2002A4433D1A58243A06276083FEF2DE61C12BBE8F651102E03A65858037B1AB5DC19EFE99B10B48';
wwv_flow_imp.g_varchar2_table(60) := 'E7A30918B3F7CA9E3157984B4B0A7AE3FC599C0058DF7813BB12832F3F7378BC3360304D3BA8467F44A097C05EBB589C5EE99943CCA5DEE20BC85CAC00F863C340920EDBEDDB612B08A8FA5EABEE24D389C25E3BF8467F164F80715EA5BD76FC990724E6';
wwv_flow_imp.g_varchar2_table(61) := 'C4613737CAFA31DEAEC3558D00F8A0507504816407FEB015069B98147D8949A364AEE4CAA06FCCC8B3E37A781CE41C197BE601C954FAA75A01B8D3783329FA129346E9F2577365D03766E4DD69BCFDFBB55C4B006A1969F929023D0424003D50942502B5';
wwv_flow_imp.g_varchar2_table(62) := '109000D432D2F253047A0848007AA028AB6E0235792F01A869B4E5AB08780424001E105D8A404D042400358DB67C15018F8004C003A2CBBA09D4E6BD04A0B61197BF22E01090003830742A02B5119000D436E2F257041C02120007864EEB2650A3F71280';
wwv_flow_imp.g_varchar2_table(63) := '1A475D3E8BC0310109C031081D44A0460212801A475D3E8BC0310109C031081DEA2650ABF712805A475E7E8B404B4002D042D05F11A8958004A0D69197DF22D0129000B410F4B76E02357B2F01A879F4E57BF5042400D54F0101A8998004A0E6D197EFD5';
wwv_flow_imp.g_varchar2_table(64) := '139000543F05EA0650BBF7BF010000FFFF1EE3AD5B0000000649444154030022E7769707FA12690000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(7752500099422082526)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261025171500Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171500Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000001B9494441547801EC945D4B024114860FB664D9FAB1B006692048427A1B54B775D97550D0BF09FA19FE80A06EBAE82E846EA20F08EC4383B02C48C10815324BCB';
wwv_flow_imp.g_varchar2_table(2) := '7AA776DB0A7667662F8458E1DD3973E678CE336777C677B09CEDF5533EEAF3CF03F03AE075C05507EE9F1A04B939C9D200281C4A46697C3AE50A420AC0281E9B4C90AA870920AD6E5BAA1152007E6D8415BB2B9609C204501845250C8042F1F90CCDAE2D';
wwv_flow_imp.g_varchar2_table(3) := 'FDD0DCEA0AC9744118003B9C589CC140E7D91C1326E1F418F9533A4C2109036899382BD02854E8B9FEC8C41C920F7180748C95C28E8389282517A6D81C0FED6B0D36AF8401AAA7D7666EBC0A80980E094308001FA05D0DC039C5FCFE3F370012E3BC2B9D';
wwv_flow_imp.g_varchar2_table(4) := 'EF14F80E20C38335C4889C066E804854235C3C213D42D6A246F1CB8D7DB68E98575531DC8E2337C05BF033296EBEF24EFE4FE2814ECFF4F9B580693B19DC00D644AD4A9DB063C307FB22776C4C854661005CBDDDDB2695360FE9647D976A6737CC56DB8A';
wwv_flow_imp.g_varchar2_table(5) := '792D8B107003D46B0F74B557A0C1CA0B059421D287C344A52655B7F2CC860F6BC5ED23422C2F848F3770B4AB52F06397D6781485AC3E8021D6EAB3B3B901EC92B859F300BC0EFCFF0E389D9077000000FFFFE7F63869000000064944415403005852E901';
wwv_flow_imp.g_varchar2_table(6) := '2F58CECE0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(7752499186887082524)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261025171500Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171500Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801ECDDCDCF6CC95D1FF01602052CB047C3D80E488C91130B8C89342C004589614536D9B0082242ECF22F64114B2CBC40CA86FF20F20E59B10292';
wwv_flow_imp.g_varchar2_table(2) := 'A5C89BC02280A3C8B0882320109920182460A083FC125D0FBA48E1F93EF7F69DE73EB7BBABBAFBBC549DFA58736E779F53A7AA7E9F3AEAFA9D977EFC2DBFFDAF3FF3FF2D0C1C038E01C78063C03130D631F02D3BFF234080000102040613D8ED2400C30D';
wwv_flow_imp.g_varchar2_table(3) := 'B98009102040808004C031408000010204861348C0AE0044C1428000010204061390000C36E0C22540800081D1059EC52F0178E6E05F02040810203094800460A8E1162C010204088C2E70885F027090F04A8000010204061290000C34D8422540800081';
wwv_flow_imp.g_varchar2_table(4) := 'D105DE8B5F02F09E8577040810204060180109C030432D5002040810185DE061FC1280871ADE13204080008141042400830CB4300910204060748197E39700BCECE11301020408101842400230C4300B92000102044617781CBF04E0B188CF0408102040';
wwv_flow_imp.g_varchar2_table(5) := '60000109C000832C4402040810185DE0D5F82500AF9A58438000010204362F2001D8FC100B900001020446173816BF04E0988A75040810204060E30212808D0FB0F008102040607481E3F14B008EBB584B8000010204362D2001D8F4F00A8E0001020446';
wwv_flow_imp.g_varchar2_table(6) := '173815BF04E0948CF5040810204060C30212800D0FAED008102040607481D3F14B004EDBD8428000010204362B2001D8ECD00A8C0001020446173817BF04E09C8E6D040810204060A30212808D0EACB008102040607481F3F14B00CEFBD84A8000010204';
wwv_flow_imp.g_varchar2_table(7) := '36292001D8E4B00A8A00010204461728C52F012809D94E800001020436282001D8E0A00A8900010204461728C72F01281B2941800001020436272001D8DC900A88000102044617A8895F0250A3A40C0102040810D89880046063032A1C02040810185DA0';
wwv_flow_imp.g_varchar2_table(8) := '2E7E09409D9352040810204060530212804D0DA76008102040607481DAF82500B552CA1120408000810D094800363498422140800081D105EAE39700D45B2949800001020436232001D8CC500A84000102044617B8247E09C0255ACA1220408000818D08';
wwv_flow_imp.g_varchar2_table(9) := '4800363290C22040800081D1052E8B5F02709997D2040810204060130212804D0CA320081020406074814BE397005C2AA63C0102040810D8808004600383280402040810185DE0F2F82500979BD9830001020408742F2001E87E08054080000102A30B5C';
wwv_flow_imp.g_varchar2_table(10) := '13BF04E01A35FB102040800081CE0524009D0FA0EE13204080C0E802D7C52F01B8CECD5E0408102040A06B010940D7C3A7F30408102030BAC0B5F14B00AE95B31F0102040810E8584002D0F1E0E93A010204088C2E707DFC1280EBEDEC498000010204BA';
wwv_flow_imp.g_varchar2_table(11) := '159000743B743A4E80000102A30BDC12BF04E0163DFB1220408000814E0524009D0E9C6E13204080C0E802B7C52F01B8CDCFDE0408102040A04B01094097C3A6D30408102030BAC0ADF14B006E15B43F0102040810E8504002D0E1A0E932010204088C2E';
wwv_flow_imp.g_varchar2_table(12) := '707BFC1280DB0DD5408000010204BA1390007437643A4C80000102A30B4C11BF04600A4575102040800081CE0424009D0D98EE12204080C0E802D3C42F0198C6512D0408102040A02B01094057C3A5B30408102030BAC054F14B00A692540F0102040810';
wwv_flow_imp.g_varchar2_table(13) := 'E8484002D0D160E92A010204088C2E305DFC1280E92CD5448000010204BA1190007433543A4A80000102A30B4C19BF04604A4D751120408000814E0424009D0C946E12204080C0E802D3C62F0198D6536D0408102040A00B01094017C3A4930408102030';
wwv_flow_imp.g_varchar2_table(14) := 'BAC0D4F14B00A616551F0102040810E8404002D0C120E922010204088C2E307DFC1280E94DD54880000102049A179000343F443A4880000102A30BCC11BF04600E5575122040800081C60524008D0F90EE11204080C0E802F3C42F0198C755AD04081020';
wwv_flow_imp.g_varchar2_table(15) := '40A069010940D3C3A3730408102030BAC05CF14B00E692552F010204081068584002D0F0E0E81A010204088C2E305FFC1280F96CD54C80000102049A159000343B343A4680000102A30BCC19BF04604E5D75132040800081460524008D0E8C6E11204080';
wwv_flow_imp.g_varchar2_table(16) := 'C0E802F3C62F0198D757ED0408102040A04901094093C3A2530408102030BAC0DCF14B00E616563F010204081068504002D0E0A0E812010204088C2E307FFC1280F98DB54080000102049A1390003437243A4480000102A30B2C11BF046009656D102040';
wwv_flow_imp.g_varchar2_table(17) := '800081C60424008D0D88EE10204080C0E802CBC42F0158C6592B0408102040A02901094053C3A1330408102030BAC052F14B009692D60E010204081068484002D0D060E80A010204088C2EB05CFC1280E5ACB54480000102049A1190003433143A428000';
wwv_flow_imp.g_varchar2_table(18) := '0102A30B2C19BF0460496D6D112040800081460424008D0C846E10204080C0E802CBC62F0158D65B6B0408102040A00901094013C3A0130408102030BAC0D2F14B009616D71E010204081068404002D0C020E802010204088C2EB07CFC1280E5CDB54880';
wwv_flow_imp.g_varchar2_table(19) := '0001020456179000AC3E043A4080000102A30BAC11BF04600D756D122040800081950524002B0F80E60910204060748175E29700ACE3AE550204081020B0AA800460557E8D13204080C0E8026BC52F01584B5EBB040810204060450109C08AF89A264080';
wwv_flow_imp.g_varchar2_table(20) := '0081D105D68B5F02B09EBD960910204080C06A021280D5E8354C80000102A30BAC19BF04604D7D6D132040800081950424002BC16B9600010204461758377E09C0BAFE5A274080000102AB0848005661D728010204088C2EB076FC1280B54740FB041616';
wwv_flow_imp.g_varchar2_table(21) := '78F277EFEEDEFEC63BBB3FFC9B3FBD5FF6DFFCDAC23DD01C01022D0848005A18057D20B090C0FDE4FFF577764F9EBEFBA2C5FD37BF7A9F0864DB8B95DE102030B3C0FAD54B00D61F033D20B088C0FEEE4CFFEDBBC9FF5463D99632A7B65B4F80C0B60424';
wwv_flow_imp.g_varchar2_table(22) := '00DB1A4FD110382A90897D7F77A67F74E3839529B3BF4B141EACF296008119045AA85202D0C228E80381190532A1EF2B26FF431752762F0938707825B0590109C0668756600476BB4CE4FB0B26FF8359F6D94B020E1C5E094C2CD04675128036C6412F08';
wwv_flow_imp.g_varchar2_table(23) := '4C2E90097C7FC5E47FE848F6DD4B020E1C5E096C4E4002B0B921151081EBCFFC1FDBEDEF1288BD24E0318BCF046E1268656709402B23A11F042612C884BDBF9BB827AAEEEE36C257EF167F2B602A4FF51068454002D0CA48E807810904F67767EBFBCAC9';
wwv_flow_imp.g_varchar2_table(24) := 'FFF50F7DF72E4B4DB3A9737F57774D596508103827D0CE3609403B63A127046E12C804BDBF60F2FFA14FFEC82E8B24E026763B13E8564002D0EDD0E93881F704F67767E7FB0B27FFC3DE928083845702F30BB4D48204A0A5D1D017025708EC6F98FC0FCD';
wwv_flow_imp.g_varchar2_table(25) := '49020E125E098C2320011867AC45BA41812926FF038B24E020E195C05C026DD52B01686B3CF48640B5C09493FFA15149C041C22B81ED0B4800B63FC622DCA0C01C93FF8149127090F04A605A81D66A9300B43622FA43A02030E7E47F685A127090F04A60';
wwv_flow_imp.g_varchar2_table(26) := 'BB021280ED8EADC83628F0E4EFDEDDEDAF7CDAFF528E24011FFDC4C7AA764B9FD2B7AAC20A111852A0BDA02500ED8D891E11382A9009F6EDAFBF7374DBE39599B833813F5E7FE9E7EFFDC18FEC5257CD7EE95BFA585356190204D6179000AC3F067A40A0';
wwv_flow_imp.g_varchar2_table(27) := '4A20136C4DC14CD899B86BCAD694495DA9B3A66CFA2809A8915266348116E39500B4382AFA44E091C0DBDFA83BF3CF5FF5CB84FD68F79B3FA6CED45D53D1FE9BFE7F036A9C9421B0B6800460ED11D03E81824026FF274FDF2D94DADDFF5DFF292EFB9F6A';
wwv_flow_imp.g_varchar2_table(28) := '2875D72401E96BFA7CAA1EEB098C27D066C4128036C745AF08DC0BE46C3A13EAFD87C23F6F7EFCA38512B76FAE6D237D4EDF6F6F510D0408CC252001984B56BD046E14C804BAAF7CE2FFAD9FFCD1DD77BEF1811B5B2CEF9E36D256B9E4EEFED70A7BB703';
wwv_flow_imp.g_varchar2_table(29) := '6AA894D9B840ABE149005A1D19FD1A5A2013E7BE72F2CF037A999897024B5B69B3A6BDC4E0A1C01A2965082C2F200158DE5C8B048A0299388B85EE0A6422CE037A776F17FD2F6DA6ED9A46FD32A0464999ED0AB41B9904A0DDB1D1B341056A1FA0CB049C';
wwv_flow_imp.g_varchar2_table(30) := '89782DA6B49D3ED4B4BF772BA0864919028B0A480016E5D61881F3029928F300DDF952BBFB3FCE9309B8546EEEEDE943ED2F0312DBDCFD513F81D6045AEE8F04A0E5D1D1B7A1043241EE2BEEFB67C2CDC4DB0A4EEDCF0313DBDE958056864D3F08EC2400';
wwv_flow_imp.g_varchar2_table(31) := '0E02020D086462DC574CFEE96A26DCBCB6B4D4FE3C30317A28B0A591D3977905DAAE5D02D0F6F8E8DD200299186B42ADFD095E4D5D5396C92F036AFB968702A76C5B5D04085C272001B8CECD5E042613D8575E16CF03779968276B78E28AD2B7F4B1A6DA';
wwv_flow_imp.g_varchar2_table(32) := 'DA071D6BEA528640AB02ADF74B02D0FA08E9DFA60532F9EF2B2EFD67626DE9BEFFA941491FD3D753DB0FEBF3A0E3BE32F139ECE395008169052400D37AAA8D40B540EE85EF2B26FFD61EFA2B059824207D2E954BEC312895B39D409F02EDF75A02D0FE18';
wwv_flow_imp.g_varchar2_table(33) := 'E9E146056AEF85D73E60D712536D9FF7AE02B4346CFA3298800460B001176E1B02B5135F2EA7E7DE7A1BBDAEEF45FA9CBE97F6702BA024647BAF023DF45B02D0C328E9E3A60432F9EF2B2EFD6702CDE5F45E834FDFDD0AE875F4F47B040109C008A32CC6';
wwv_flow_imp.g_varchar2_table(34) := 'A6046A26FF743813685E7B5E6AFF6641EDED909E2DF47D24813E629500F4314E7AB911817DE53DEF9CFD6F24E45DF5DF07F8C63B5B09591C04BA10900074314C3AB905814CFEFB012EFD3F1EAB4B9E07F0AB80C77A3EF728D04B9F2500BD8C947E762F50';
wwv_flow_imp.g_varchar2_table(35) := '33F9E79EF9162EFD3F1EACC494D81EAF7FFCD9AD80C7223E13984F4002309FAD9A09BC10D8575EFAAFBD67FEA2E28EDED4FE34D05F09EC685075F588403FAB2400FD8C959E762A90C97F5F79E9BFD310ABBA9D5B0135CF03E4A7816E0554912A44E02601';
wwv_flow_imp.g_varchar2_table(36) := '09C04D7C76265016A89DFC7399BC5C5BDF259204B815D0F718EAFD79819EB64A007A1A2D7DED4E605F79E97F84C9FF3078B5B7396AED0EF57A2540E0320109C0655E4A13A816C865ECBD4BFF47BD6A7EE618BB181EADC04A024D0AF4D52909405FE3A5B7';
wwv_flow_imp.g_varchar2_table(37) := '1D093C79FAB7C5DE66221CE9ECFF0092986B6E05EC2BAFA01CEAF54A8040BD8004A0DE4A4902D50299B8F61567FFEF7FE3B5EA3AB756B0E657014F9EBEBB7315606B23BFDD787A8B4C02D0DB88E96F170235937FCEFEF3505C1701CDD0C9C41E8352D57B';
wwv_flow_imp.g_varchar2_table(38) := '57014A44B613B84A400270159B9D089C16A89DB07219FC742D636CA931C855805AD331D444D9A6407FBD9200F437667ADCB8C0BEE2D27FCD996FE3614ED6BD9ABF0D1053B70226235711817B0109C03D837F084C23B0AFB85C9DC9BFE6CC779A1EB55F4B';
wwv_flow_imp.g_varchar2_table(39) := '6E057820B0FD71D2C3F3023D6E9500F4386AFADCA44026FF7DC5D9BFC9FFD5E1F340E0AB26D610985B400230B7B0FA093C10C8D9FF838FDE3E17C855801A9B7DC51596E7557A21B0A0409F4D4900FA1C37BD6E4C2013D3DED9FF4DA3922B23A55B017920';
wwv_flow_imp.g_varchar2_table(40) := 'D0B3003731DB99C00B0109C00B0A6F08CC2B5073863B6F0FDAAFBDE656C0DE5580F60772B01EF61AAE04A0D791D3EF66043221ED2BCEFEFFF8F7BFB2FBE2AFFEBAE58CC1977FE3778AE3EA2A4091480102550212802A2685089C16A899FC4FEF6DCB3502';
wwv_flow_imp.g_varchar2_table(41) := '7B5701AE61B3CF2C02FD562A01E877ECF4BC010113D13A83E02AC03AEE5ADD968004605BE3299A8505F61597FE17EED230CDED5D051866AC5B0EB4E7BE49007A1E3D7D5F55C004B42AFFCE558075FDB5DEBF8004A0FF3114C14A027E8EB612FC83662561';
wwv_flow_imp.g_varchar2_table(42) := '0F30BC5D41A0EF2625007D8F9FDEAF2490892767A02B35AFD9E702190389D8730C2F042E14729EBBA0000010004944415490005C08A63801026D0924196BAB477A338A40EF714A007A1F41FD5F45605F78F8EFC77EFEA7763FF7F95FB04C60F0E65B1F3B';
wwv_flow_imp.g_varchar2_table(43) := '3BC6AE029CE5B191C0490109C0491A1B081C17D8573C7DFEC14FBC797C676B2F16F8273FFB13C57D6AC6A4588902042E12E8BFB004A0FF3114C1C202FB8AB3FF0F7CFC7B16EED5769B8B65CD5580ED0A888CC03C021280795CD5BA51817DC5D9FF46435F';
wwv_flow_imp.g_varchar2_table(44) := '352C570156E5D7F811812DAC92006C6114C5B098C0BE70F69F8EFCE37FF5E379B14C28507315A0666C26EC92AA08742F2001E87E0805B094C0BEE2EC3F0FFF2DD59FD1DAA9B90AE02781A31D156BC5BB8D762500DB1847513422E0EC7FBE81A8BB0AF0B5';
wwv_flow_imp.g_varchar2_table(45) := 'F93AA066021B1390006C6C4085339FC0BE70F9DFD9FF7CF6879AFFE10F7FFFE1EDD1573F093CCA62E5C4025BA94E02B0959114C7AC02FB8ACBFFCEFE671D82FBCA6B7E5EF9E4E9DFDE97F50F0102E7052400E77D6C25702FB077F67FEFB0F63F35B7013C';
wwv_flow_imp.g_varchar2_table(46) := '07B0F6286DBDFDEDC42701D8CE588A6426817DC5D9FF4C4DABF68840E961C0274FDFDD49028EC05945E0918004E011888F04AE1170F9FF1AB5EBF6C95580D29E92B69290EDD70A6C693F09C09646532CB308EC5DFE9FC5F5964AFD65C05BF4EC4BE09980';
wwv_flow_imp.g_varchar2_table(47) := '04E099837F091C15D8575CFE77F67F946ED695A5DB0069DC6D802858A615D8566D12806D8DA7681616F0D3BF85C19F3797DB00A5AB0035C9DBF3EABC101852400230E4B00BBA56605FB8FC5F5B8F72D30B94AE02E461C0E95B55E3C8025B8B5D02B0B511';
wwv_flow_imp.g_varchar2_table(48) := '15CF6402FB0D5DFEFFDA1FFCC52ECB173FFDB9DD61F9EC4FFFE22ECBE1F31FFDCA97765926039CB9A25C052835E1364049C8F691052400238FBED86F12285D82BEA9F28976CE849E09FE0B9FFACC2ECBDB5FFECAEEB01C9A387CFEED5FFEB55D9624059F';
wwv_flow_imp.g_varchar2_table(49) := 'FF995FEA2219288D414D127770F04AE0BCC0F6B64A00B637A6229A48605FB8FC5FFAB3B41375E3AA6A32F16722CF849E09FED24A72F93CFBA68ED475E9FE4B95771B602969ED6C514002B0C55115D3CD02FB4E2FFFE7327F26ED4CDE37233CAF2075A5CE';
wwv_flow_imp.g_varchar2_table(50) := '961381E75D3DFAE236C051162B2F14D8627109C01647554CB30B942E3DCFDE81230D6482CE65FE239B26599544206D4C52D94495E43980D258D424731375473504BA12900074355C3ABB94C0BEB3CBFF99983341CFED9336D2D6DCED5C52BFDB00976829';
wwv_flow_imp.g_varchar2_table(51) := '7B9DC036F792006C735C45758340CD25E396FEF84F26E44CCC37847CD1AE692B6D5EB4D3CA856BC674E52E6A9EC0E2021280C5C935D8BAC093A7E7FFEF644B979C978C2F137126E425DB4C5B69336DE7FDDA4BCD6D80B5FBA8FDBE05B6DA7B09C0564756';
wwv_flow_imp.g_varchar2_table(52) := '5CB309B4F2F47F26E04CC4B5817EE823DFB3CBF24F7FEEA77659FEC5BFFDD95D96BCFFF827DFDA65A9AD2BE5D2761E3ACCFBD6977DC5439DADC7A07F04A61690004C2DAABEEE05F685FBFFAD049809B8A62F8749FFAD9FF9895D96EFFADED777590EFBE6';
wwv_flow_imp.g_varchar2_table(53) := 'FDF7FDF80FECB22421B82411F8C2A73E73A866D557CF01ACCABFF1C6B71B9E0460BB632BB22B046AEE15B770FF3F67FF35E165F23F4CFA35E553E6D244A0B62FA97BAE25B7014A75D78C6DA90EDB096C494002B0A5D114CBCD02BDDCFFAF39FBCF997C26';
wwv_flow_imp.g_varchar2_table(54) := 'FF6B519208A48ED2FE357D29D531C5F6D2B319A5B19DA20FEAD89EC0962392006C7974C576B140E92CB185FBFF3567DC99B833815F0CF06887D491AB088F56BFF2B1A64FAFEC34F18AD2D894C676E2EEA88E40F3021280E6874807971478F2F4DDB3CD7D';
wwv_flow_imp.g_varchar2_table(55) := 'F0136F9EDDBEC4C69A33EE4CDC53F52557114A49C05FFEDE9F4CD5DCD5F594C6A634B657376CC70D0B6C3B3409C0B6C757741708D49C21D6DC6BBEA0C9598AE6EC7FEA8AFFD13FFBE1B355E6FF6F60ED5F04D48C4DCD189F0DD446021B1290006C683085';
wwv_flow_imp.g_varchar2_table(56) := '729BC093A7EDFFFEBFE652FB9467FF07D1FC52A07415E05076CDD7D273006BF64DDBFD096CBDC71280AD8FB0F8261328DD639EACA11B2A9AE3ECBFB63BBFFBB9DFAC2DBA5AB9BDBF07B09ABD86DB139000B437267AB492400F9787D7BCD75EBA0DB0D2B0';
wwv_flow_imp.g_varchar2_table(57) := 'BDD46CE9EF01BC54D807026705B6BF5102B0FD311661A5C093C203802DFCFEBF14CA6BDFF7C15291A1B797C678681CC10F272001186EC8057C4CA087B3FFF43B0FDBE5F5D4927BF5A7B6DDBABE5477A96FB7B65FB3BF07016B9494A91118A18C04608451';
wwv_flow_imp.g_varchar2_table(58) := '166351E049070F00168350E05EC08380F70CFE215014900014891420B0DBB5F200E09B6F7DECEC707CE3CFFFE6ECF65B3696EA2EF5ED96B62FD9B734561E04BC4473D4B263C42D0118639C455910E8E51640218C59377FF5CFFE7AD6FAA7AABCF40781A6';
wwv_flow_imp.g_varchar2_table(59) := '6A473D047A179000F43E82FA3F89C093C20380BD4C2AFFE7BFFDDE241ED754523AF3BEA6CE39F6298DF51C6DAAB32F81517A2B011865A4C5799340CDC365373550B9F39A3F73FB83DFFA72652FD72D563356AEF8AC3B465A6F434002D0C638E8C58A02A5';
wwv_flow_imp.g_varchar2_table(60) := 'C9A0957BDB35447FF5A77FB12BDDABAFA9E771993FFBD2FF7EBCEA95CF2DFD4CB2A7317B05D28A9505C6695E0230CE588BF484C093C22F004EECB6CAEA9CDD9626B7396E0394CEFE3FF4C3EBFF9F24AD32201A25D0B18004A0E3C1D3F565045ABBB75DEA';
wwv_flow_imp.g_varchar2_table(61) := '4FAE027CF93F4DF767796BCEFEBFFFAD1F5866302A5B2919F594F45586ACD84402235523011869B4C57A54A0740BE0E84E2BAEACB9D49E24A066E22E85913A4A67FFA9A3A64F29B7D4527A68B3B7315FCA4D3B63094800C61A6FD15E21509A4CAEA8F2E6';
wwv_flow_imp.g_varchar2_table(62) := '5D7EECE77FAA584726EE4CE0C582270AE42A42EA38B1F9C5EA9ABEBC28EC0D81A605C6EA9C0460ACF116ED118127859F00E6BEFB91DD565D557BC69D09FCBFFCD2E776972402798830937FAE22D40459DB979ABA962A531AF3A5FAA11D026B0A4800D6D4';
wwv_flow_imp.g_varchar2_table(63) := 'D736811B04FEE5BFFF37D57B3F4C04920C64923FEC9CF75932E967F9EF9FFDB55DEDE4DFEAD97F8B49DBC1DB6BBB02A3F54C0230DA888BF725819EEF056792BB74024E229025937CAE0C64C9FB2C99F4B3BC0474E643DAEEF1ECFF1052CF637F88C12B81';
wwv_flow_imp.g_varchar2_table(64) := '5B042400B7E8D977F302A59FDCAD0D90093813F1D2FD489B697BE9762F69AFF5B1BB241665971018AF0D09C078632EE28D096422CE84BC5458692B6D2ED59E76081098474002308FAB5A3B117852F82340A5DF93B7126626E44CCC73F7276DA4ADB9DB59';
wwv_flow_imp.g_varchar2_table(65) := 'A2FED2D82FD1076DB42330624F2400238EBA98372990893913F45CC1E5A1C3B43157FD53D7DB4BF23675DCEA23502B2001A895528E40070299A07FEEF3BFB09B3211485DA9330F1D764050DD450F0156530D5070CC102500638EBBA89F0B6C7512B83511';
wwv_flow_imp.g_varchar2_table(66) := 'C8037487893F753DE7EAEAA5C53FE0D415A0CE6E5E4002B0F92116E02D02BD4F2299BC73F69E25137A964CEE590E2E797F5872993FCB3FFFF4CFEEB2EFA18C57025B1618353609C0A8232FEEE10432A167C9E49E25494196BC3F2CB9CC9F65381C011318';
wwv_flow_imp.g_varchar2_table(67) := '50400230E0A00B99000102040E02E3BE4A00C61D7B9113204080C0C002128081075FE8040810185D60E4F82500238FBED8774F3AFC7F02346C7502A567194A635FD78A5204FA159000F43B767A4E8000010237098CBDB30460ECF1173D010204080C2A20';
wwv_flow_imp.g_varchar2_table(68) := '011874E0854D800081D105468F5F0230FA11207E020408101852400230E4B00B9A000102A30B885F02E018207046E06B7FF01767B6DAD4B280B16B7974F4AD050109400BA3A00FAB09BCEFDBBE7DB5B6354C80C07A025ADEED24008E020204861490FC0D';
wwv_flow_imp.g_varchar2_table(69) := '39EC827E2020017880E12D010204088C2020C6084800A26021406073027FFDFB6F6F2E2601119852400230A5A6BA36276012D9DC900A88C00EC1330109C03307FF122040800081A1042400430DB76009103808BCEF5BFD02E46031D6AB680F0212808384';
wwv_flow_imp.g_varchar2_table(70) := 'D721054C02430EBBA00910B8139000DC21F88FC02981BFFCBD3F39B5C9FAC6058C5DE303B452F734FB9E8004E03D0BEF061478DFB7FD8301A31632010204FC2120C7000102830A48FE461C78313F147005E0A186F7041E09BCFDE5AF3C5AE3632F02C6AE';
wwv_flow_imp.g_varchar2_table(71) := '9791D2CFB50424006BC96BB709010F0136310CAB74C2D8AFC2BE6AA31A7F594002F0B2874F045E11F0FF2AF70A49F32B8C59F343A4830D0848001A18045D584FE0C9DFBDBB5EE35A9E4DA0E62F381AFBD9F81BAD58B71E0B48001E8BF83C8C402680B7BF';
wwv_flow_imp.g_varchar2_table(72) := 'FE4E31DE9AC9A4588902CD0964EC730C34D7311D22B0908004602168CDB425902FFE4C0035BDF27BF21AA53ECBE418C8B1D067EFF5FA1201655F159000BC6A62CDC605F2859F2FFE8D8739747897246D3916724C0C0D26F821052400430EFBB841E78B3E';
wwv_flow_imp.g_varchar2_table(73) := '5FF89708F839D9255A6D94BD74CC724CE4D868A3F77A31BD801A8F0948008EA958B749817CC1E78B7E93C109EA66811C1B39466EAE4805043A119000743250BA799B40BED8F3057F6D2D7E5676ADDCF2FBDD3256394672AC2CDF6B2DCE29A0EEE3021280';
wwv_flow_imp.g_varchar2_table(74) := 'E32ED66E48205FE8F962DF50483785F28D3F7C67F7C54F7F6EF7F99FF9A5DD677FFA17777FF42B5FBAA9BED676BEF5571B395672CCB41697FE10985A400230B5A8FA9A12C81779BED06FEDD4AD93CAADED4FB9FF7FFE77FF61977BE44F9E3EFB1B08BFFD';
wwv_flow_imp.g_varchar2_table(75) := 'CBBF769F08243198B29D9EEBCA319363A7E718F4FD20E0F5948004E0948CF5DD0BE40B3C5FE4530472C953E553B437571DE7CEF6FFE77FFCAF7335DB65BD3976720C75D9799D2650212001A84052A43F817C71E70BBCB6E71FFDC4C76A8B765D2E67FBA7';
wwv_flow_imp.g_varchar2_table(76) := '02C8558153DB7A5A5F4AD65EFFD0775787936328C752F50E0A3627A043A7052400A76D6CE954205FD8F9E2AEEDFE5B3FF9A3BBF7BFF1DAD9E25B991CCF06B9918DA5B17AF3E31FDD65CC6BC3CDB19463AAB6BC72047A119000F43252FA5925902FEA7C61';
wwv_flow_imp.g_varchar2_table(77) := '5715BE2B9489E03BDFF8C02ECBDDC7B3FFDDF274F9D98A6D9C4CE0DC2D8E432319EB2C19FBC3BAD26B8EA91C5BA572B6B726A03FE7042400E7746CEB4A205FD0F9A2AEED7426804C0487F2A54BC35B7A10F010F368AF0F6FF564EC730CD41AE4D8CA3156';
wwv_flow_imp.g_varchar2_table(78) := '5B5E3902AD0B48005A1F21FDAB12C81773BEA0AB0ADF15CA177F2680BBB72FFE7BED83AFBF787FEC4DE9DEF2B17DAC5B56E0D231CA319063A1B69739C672ACD596576E5D01AD9F1790009CF7B1B503817C21E78BB9B6ABF9C2CF17FFE3F29E03782CD2DF';
wwv_flow_imp.g_varchar2_table(79) := 'E7D2FDFF63639C6321C7446DB439D672CCD596578E40AB021280564746BFAA04F2459C2FE4AAC27785F2459F2FFCBBB7AFFC776AFDC3829E0378A8D1D6FB9AB13935C6599F63A336A21C7339F66ACB2BB78680364B0212809290EDCD0AE40B385FC4B51D';
wwv_flow_imp.g_varchar2_table(80) := 'CC177CBEE8CF95F71CC0399DB6B7959ED1288D6D8E8D1C23B551E6D8CB31585B5E3902AD0948005A1B11FDA912C8176FBE80AB0ADF15CA177BBEE0EFDE9EFDCF730067799ADE58BAFF5F1ADB04976324C74ADED72C3906732CD69455665901AD95052400';
wwv_flow_imp.g_varchar2_table(81) := '6523251A13C8176EBE786BBB952FF47CB1D7943F768FF8E17EA57BCC0FCB7ABFAC40696C4A637BE86D8E951C3387CFA5D71C8B39264BE56C27D09A8004A0B511D19FB302F9A2CD17EED9420F36E68B3C5FE80F569D7D5B53B6E65EF3D9466C9C5CA0664C';
wwv_flow_imp.g_varchar2_table(82) := '6AC6F6D0B194CDB173F85C7ACD319963B354CEF6A504B453232001A85152A609817CC1E68BB6B633F902CF17796DF943B9D2BDE24339AFED08DC7AFFFF58243976720C1DDB766C5D8ECD1CA3C7B65947A0450109408BA3A24F4705F2057B74C39195F9E2';
wwv_flow_imp.g_varchar2_table(83) := 'CE17F8914D37AFFADDCFFDE6CD75A86059819AFBFFC77A946328C7D2B16DC7D65D728C1EDBDFBA6904D45227201F4CC8AF000010004944415401A873526A6581B7BFF14E750FF2859D2FEEEA1D1E15CCDF8A7FB4EAA58FA57BCD2F15F661118173FF2747';
wwv_flow_imp.g_varchar2_table(84) := 'B77620C7528EA9DA7A2E39566BEB548EC01C0212803954D539A9C0FE9B5FDB3D79FA6E559DF9A2CE177655E113856AF6AFB9E77CA27AAB2716A8198BEFFDC18FDCD46A8E891C5B3595E458CD315B5356993904D4592B2001A895526E15817C91EEBFF9D5';
wwv_flow_imp.g_varchar2_table(85) := 'AAB6F3059D2FEAAAC28542A5E700DC0628002EB8798EFBFFC7BA9F632BC7D8B16D8FD7E598DDDF25AE8FD7FB4CA0250109404BA3A12F2F09E40B74BFC2E4FF52277C685EA074F9FFDAFBFFC702BF3409F050E031C579D7A9BD5E4002506FA5E4C2026B4E';
wwv_flow_imp.g_varchar2_table(86) := 'FE35CF01D45C7A5E986CB8E66AC6E0D6CBFF8F512F4902F250A024E0B1A0CFAD0848005A1909FD7849605F79F934FFF7AEF9427E69E7093EA44EB70126809CB98AA52EFF3F0E23C7478EBDC7EB8F7DAE3D968FED6BDDA502CA5F222001B8444BD94504F2';
wwv_flow_imp.g_varchar2_table(87) := '85B9AFB8F49F2FE0A9CFEE1E0658BA0AF0B0ACF7EB082C79F9FF718439F6720C3E5EFFF8731E0A7415E0B18ACF2D0848005A18057DB858205FBCF902BE78C70977C8CF016B2E414FD8A4AA1E08D4D8CF7D8CA4FED295A274795F79452B652DD70BD8F332';
wwv_flow_imp.g_varchar2_table(88) := '0109C0655E4ACF2C902FCA7DE1EC3F5FB8F9E29DB92BBB5CE64D5BE7DAF16B80733AF36E5BEBF2FFE3A87EE8933FB22B1D27AE023C56F3B9050109400BA3A00F2F044A937F0A2E7969BED456AE02A44F96E505D6BCFCFF38DAD27192F27B5701C230E3A2';
wwv_flow_imp.g_varchar2_table(89) := 'EA4B052400978A293F9B40CD17642EFDE7CC7CB64E5C5171CDA5E82BAAB5CB19813FFA952F9DD9FA6CD31257899EB5B4ABBA5AE42AC041CB6B2B0212805646423F76FBC2A5FF102DF9A59EF6926C942EEFBA0D10A9B696248A4BF7C85580A5C55F6ECFA7';
wwv_flow_imp.g_varchar2_table(90) := 'CB052400979BD96306819AA7A4D7F8524FA8A52F76B701A2B4EC52BAFCBF6C6F9EB556932CBA0AF0CCCABF6D084800DA1887E17BF1E4E9DF160D963EFB3F74285FEC87F7A75EDD06382533FDFAD62EFF3F8C300F043EFC7CECFDDEB300C7586E5C67F76B';
wwv_flow_imp.g_varchar2_table(91) := '042400D7A8D96772817DE1F2FF5A67FF8740DD063848B4FFBAF6B1B276FBED8F901EB6222001686524F4E3ACC0FBDF78EDECF6B937D6DC06701560EE5178567F8B97FF9FF5ECD9BFA563F5C9D3777735B7BC9ED5E6DF1A0165AE1390005CE766AF0905F6';
wwv_flow_imp.g_varchar2_table(92) := '1597446B2EC34FD8A557AAAA69BFF4BBF4572AB5E26281962FFF1F82C9B152BA627428EB95C09A02128035F5B57D2F503A1B6AE5926AE94BBDF533D37BECCEFF2919B772AC94986B92DE521DB61F04BC5E2B2001B856CE7E9309E492E86495CD5851E936';
wwv_flow_imp.g_varchar2_table(93) := '409A761B200AF32C3567FFF3B47C79ADA563A59763FEF2C8EDD1938004A0A7D1DA605F4B67FF0979ADA7FFD3F6C3A5E6D2AEBF09F0506CDAF73567FF2D1D2BA5E86B8EFD521DB6EF760CAE1790005C6F67CF09049E147EFED7DA25DDD2995DFE2680AB00';
wwv_flow_imp.g_varchar2_table(94) := '131C188FAAE8E9ECFFD0F5D22DA34339AF04D6129000AC25AFDD2E055C056877D85A39FB3F08BDF6C1D70F6F8FBE9692DFA33B59F948C0C75B042400B7E8D97748015701961FF69ACBFFCBF74A8B04FA169000F43D7EDDF7BE741FB4F49BEA35007215A0';
wwv_flow_imp.g_varchar2_table(95) := 'D4AE67014A42F5DB6B2EFFB776F69FE84AC76EE9D84F1D96F302B6DE262001B8CDCFDE830A949E4DC8B30083D24C1EB6B3FFC9495548E05E400270CFE09FB5049E3C7DF76CD33567DB672B986963CD1967CD99EB4CDDDB4CB535863563B11910813C10F0';
wwv_flow_imp.g_varchar2_table(96) := 'F6560109C0AD82F61F56A0F49477E9CC7558B80B022F1996AEC45CD0D4E4454BC96B29F99DBC432A24F0484002F008C44702B502A58701534FCD196CCA595E15A8B173F6FFAADB286BC479BB8004E07643350C2A90333C5701E61BFC9ECFFEE753513381';
wwv_flow_imp.g_varchar2_table(97) := 'E9042400D359AA6940015701E6197467FFF3B86EA756914C2120019842511DC30AD45E05F0D7012F3B449CFD5FE6A534816B042400D7A8D987C003819AAB00FE2EC003B0C2DB9AB3FF4215366F5C4078D3084800A67154CBC002355701F277015C05281F';
wwv_flow_imp.g_varchar2_table(98) := '2499FC6BCEFE3DFC57B65482404940025012B29D408580AB001548131529FD85BD899A514DB3023A36958004602A49F50C2DE02AC0EDC35F7BF61FEBDB5B530301021200C7008189047EE8933F52ACC9B300A7894A97FEB3A74BFF51187B11FD74021280';
wwv_flow_imp.g_varchar2_table(99) := 'E92CD5446057FACB749E05387E90E4ECFFF896F7D6966CDF2BE91D0102350212801A256508540AE40CB5F4C781BEF0A9CF54D6364EB1D2D97F4C633B8E88488F0B583BA58004604A4D7511B813A87920B0E68CF7AEAA21FEABB178ED83AF0F612148024B';
wwv_flow_imp.g_varchar2_table(100) := '0A480096D4D6D6100279482D67ACE782CD19AF9F053E138AC5B377C7FFCDA57F67FFC76D465B2BDE69052400D37AAA8DC0BD40CD55000F04EE763567FF26FFFB43CA3F04261790004C4EAA4202BB5DAE02E4CCF59C451E08AC9900CFD5D1F3B6C45E73F6';
wwv_flow_imp.g_varchar2_table(101) := 'DF738CFA3EA580BAA61690004C2DAA3E02CF0572E6EA56C0738C472FB9FD519AFCB34B0CF36A2140607A0109C0F4A66A24F042C0AD8017142FBDA9B9FD51BA82F252853E6C5E4080D30B4800A6375523811702B91550BA0A30DAAD805CFA4FCC2F908EBC';
wwv_flow_imp.g_varchar2_table(102) := 'C9E4EFECFF088C5504261490004C88A92A02C7046AAE02E472782E8B1FDB7F4BEB1263622DC564F22F098DB65DBC73084800E65055278107025FDF7FF5C1A7D36F6B2E8B9FDEBB8F2DB531FEF91FFE691F01E925818E0524001D0F9EAEB72F9089EC8F7F';
wwv_flow_imp.g_varchar2_table(103) := 'FF2B551DCD65F15C1EAF2ADC61A1C496186BBA1EB3D8D5945566FB02229C474002308FAB5A09EC32816522BB842297C77399FC927D7A289B9812DB257D8D5D0C2FD947590204EA052400F5564A12A816F85FBFF53F7699C0AA777850B0F632F9835D9A7F';
wwv_flow_imp.g_varchar2_table(104) := '7B6D4C318C65F301EAE08C02AA9E4B40023097AC7A8714F87FFBAFED3261FDCD5FFDDFABE3CF65F25C2EBFBA82C6764C2C89E9DA6EC5F28BBFFAEBBBD85E5B87FD081078554002F0AA893504AE12C804F5E5DFF89D5D26ACAB2A78B0532E9767E27CB0AA';
wwv_flow_imp.g_varchar2_table(105) := 'CBB78921B14CD1F9D8BA253085645F75E8ED7C021280F96CD53C904026A64C50B521BFEFDBBEBD58341367EE9D170B365A207D4F0C53762FB704623D659DEA2230AA800460D49117F7640299903231D55698C9FFCDEFFAF02EAFA57DAEBD775EAA7789ED';
wwv_flow_imp.g_varchar2_table(106) := '5FF8D4678ACDC4E0075FFFC8EE8DEF78AD58F65020D6313F7CF6BA6501B1CD292001985357DD9B17C8449409A936D04C7499FC53FE8DEFF8405ECE2EB977FEC54F7FEE6C991637D6F6F9A1456C6A638979EC6BCB2B4780C0AB021280574DAC2150259087';
wwv_flow_imp.g_varchar2_table(107) := 'FD32115515BE2B9409EEE1A4FFBE6FFDF6AA33DF2401B9977E574517FFA5AFE973A9B3F1785826368FD73DDCFEF87DEC33068FD7FBBC1D0191CC2BF02DF356AF7602DB13C8C37E99782E79D8EFCDF77FF86EB27FF58CBF76D2CBBDF44CACAD6BA68FE96B';
wwv_flow_imp.g_varchar2_table(108) := 'A99F99E813FBE37259976D8FD79FFA9C31F00B81533AD613382F200138EF632B81970432F9E761BF4C3C2F6D38F321937FCEF64F15C9A4977BE1A7B61FD66762CD837587CFADBDDE3AF91FE28947CC0E9F6B5E33266E09D448F554465FE7169000CC2DAC';
wwv_flow_imp.g_varchar2_table(109) := 'FECD086482C944531B5026F53CE0766EF23FD49549EFF0FEDC6B1EAC6B3509488272AEEF876D35B1C6ECDEAEE2D712877A734B206374F8EC950081F3021280F33EB612B817C8C49209E6FE43C53F99FC0F0FB85514DF65C2ABBDF4DDE22F03AA1FFABBBB';
wwv_flow_imp.g_varchar2_table(110) := '1552E3712813C35A97EC9331CA58E5BDA56F01BD9F5F400230BFB1163A17C8849289A5368C4C5899B86ACB1FCAE5CC38FB1E3E9F7ACD0376B9DC7E6AFBD2EBD397F4A9D46E624BA2532AF7787BADCB61BF8C55C6ECF0D92B0102C7052400C75DAC25702F';
wwv_flow_imp.g_varchar2_table(111) := '9087FD32A1DC7FA8F827935C26AC8AA2478B64DF5C3D38BAF1C1CA5C6ECFC4FB60D52A6FD387F4A5D4F8142EA9A3D4CE617BC62C6377F8ECB53701FD5D424002B084B236BA13C8C37E99402E7DD82F13F8ADC1D65E3DC8C49B4BEF6B3C139036D376FA50';
wwv_flow_imp.g_varchar2_table(112) := '8A3709CD142EA9E392242063E71702A5D1B17D640109C0C8A32FF6A30299FCF3B05F2690A3058EACCC53EBD75CDE3E52D5FDAAD477FFA6F04F2EBDE7C1C09C8967C9C45CD8E5EACDA93B4B26FEB499B66B2AAB4D686AEA4A12506B73A82F63E996C041A3';
wwv_flow_imp.g_varchar2_table(113) := '8F57BD5C464002B08CB3563A11C8449109A3B6BB39BBBD7F5AFD5BCB7FDBBFB6CE944B3271C9D96ECEC4B36462FEEC4FFFE2EED492BACF2DA7F6CBFAD49DA576E24F3B97C490F2354B6CEECDFD42A0864B19022705240027696C184D20937FEE1DD7C69D';
wwv_flow_imp.g_varchar2_table(114) := 'C97FCAB3DBC7EDE66C778E09F4713B737D4EDF13C35CF5C73E6DD4D69FB1CD18D796576E2D01ED2E252001584A5A3B4D0B6462C80451DBC94C3C99806ACB5F5B2E1368DABA76FFB5F64B9FD3F7B9DB4F1B69ABB69D8C71C6BAB6BC7204B62C2001D8F2E8';
wwv_flow_imp.g_varchar2_table(115) := '8AAD4A200FFB6562A82A7C5728134E269EBBB78BFC97B6D2E6228D4DD048FA9A3E4F50555515692B6D5615BE2B94B1CE98DFBDF55F8302BAB49C800460396B2D35269087FD32115CFAB05F269CA543499B974C724BF7EFD05EFA98BE1E3E2FF59A36D376';
wwv_flow_imp.g_varchar2_table(116) := '6D7B1973BF10A8D5526EAB021280AD8EACB8CE0A64F2CFC37E9908CE167CBEF1FE7EFFFB3F7CFF17FB9EAF5AFCE5D2496EC90E1E7CD2C725DB7DD856DAF60B8187223DBED7E7250524004B6A6BAB0981DC03CEE45FDB99FBC9EDBBD69DFC0F7DCD249727';
wwv_flow_imp.g_varchar2_table(117) := 'E073B69B7E1DD6AFF59A3E64D2CDF310793A7FAD7E1CDA4D1FE2937E1DD6955E734B20C744A99CED04B6262001D8DA888AE7AC40BEE8F3857FB6D0838D996833B93D58D5C4DB2402E95726BBF431135E96B93B9736B2DC4FFA775744D2874CBA73B77B69';
wwv_flow_imp.g_varchar2_table(118) := 'FDE9575C6AF7CB319163A3B6BC72F308A875590109C0B2DE5A5B51205FF0F9A2AFED4226904CB4B5E5D72A973E66C2CB9284E0DC52EAE3B97DB32D6D64C9A49FA554DF9ADBE39231ACED438E8D1C23B5E59523D0BB8004A0F711D4FF2A813CEC972FF8AA';
wwv_flow_imp.g_varchar2_table(119) := 'C2778532716402B97BEBBF8E05328619CBDA10728CE458A92DAFDC9402EA5A5A4002B0B4B8F61615C8C37EF942AF7DD82F9DCBE5ED4C1C796FE95F20637949129063C52F04FA1F7711940524006523253A15C8E49F87FDF2855E13C2E1DE76EB97B66B62';
wwv_flow_imp.g_varchar2_table(120) := '51E66581240149EC5E5E7BFE538E1DB704CE1B4DB9555DCB0B48009637D7E20202F9E2CE17786D53F7937F234FFAD7F659B9CB0492D8E539868C75ED9EB9259063A9B6BC72047A129000F4345AFA5A14C8597F2EF9E78BBB58F879815C1ECE836DCF3F7A';
wwv_flow_imp.g_varchar2_table(121) := 'D9B840C63A635E1B668E254940ADD6B5E5ECB7868004600D756D4E2E7098F873D65F7BC93F9DC84490CBC3796F194720639EB1AF8D3849409E0B9008D48A29D7838004A08751D2C7570432E167C9D97E964B27FE549809201341DE5BC613C8D8E718B824';
wwv_flow_imp.g_varchar2_table(122) := 'F2432290632EC940961C8797D4A1ECAB02D6AC23200158C75DAB950239EB3AB664C2CF92B3FD2C95D5BD289607C23201BC58E1CD900239062E4D020295632EC940961C87C78ED1AC4B590B8156052400AD8E8C7ECD229007C032F9E781B0591A50697702';
wwv_flow_imp.g_varchar2_table(123) := '4902724C74D7F1CD7458206B094800D692D7EEE202F793BF27FD1777EFA1C12484F985C03557037A884F1F091C1390001C53B16E7302F962CFD3DF9B0B4C40930AE46A408E95492B55D959011BD7139000AC67AFE50504EECFFADFFFE15DBED817684E13';
wwv_flow_imp.g_varchar2_table(124) := '1B10C8B1925B0212810D0CA610CE0A4800CEF2D838B74026E839DA48BDF912CF597F2EEFCED1468F75C6E554BF4D78EFC9E498492204CA8F7D000007D64944415410932CEF6D99EEDD5CF54ED7C3256AD2C69A02128035F5B53DE9997926B72C26FED307';
wwv_flow_imp.g_varchar2_table(125) := '5626B5535BCF6D3BB5CFD6D7C7E4D9F2DADDB1FADAA4E1A6DE492B5419810B0524001782293EAD40CEB4AE79F82A13FD61B99FF0EF2EF3E76C3F4BEA9CB697DBA92D368FBDE318C3ED44397D2499ACB3C42E56397BCF12BB2C97B498F2A9E3927DB65A56';
wwv_flow_imp.g_varchar2_table(126) := '5CEB0A4800D6F5D7FA7381C3976BBE606B964CF48725935A96E75579A91078E81D477E1568CF8BC42A7E596297A5E6983D9449F9D4F1BC3A2F0456139000AC46AF610204088C2C20F6B50524006B8F80F60910204080C00A02128015D03549800081D105';
wwv_flow_imp.g_varchar2_table(127) := 'C4BFBE800460FD31D0030204081020B0B880046071720D122040607401F1B7202001686114F48100010204082C2C200158185C73040810185D40FC6D084800DA1807BD2040800001028B0A480016E5D6180102044617107F2B0212805646423F08102040';
wwv_flow_imp.g_varchar2_table(128) := '80C08202128005B13545800081D105C4DF8E8004A09DB1D0130204081020B098800460316A0D112040607401F1B7242001686934F48500010204082C24200158085A33040810185D40FC6D094800DA1A0FBD2140800001028B0848001661D60801020446';
wwv_flow_imp.g_varchar2_table(129) := '17107F6B021280D646447F0810204080C00202128005903541800081D105C4DF9E8004A0BD31D123020408102030BB80046076620D102040607401F1B7282001687154F4890001020408CC2C2001981958F5040810185D40FC6D0A4800DA1C17BD224080';
wwv_flow_imp.g_varchar2_table(130) := '000102B30A480066E555390102044617107FAB021280564746BF0810204080C08C0212801971554D800081D105C4DFAE8004A0DDB1D1330204081020309B800460365A15132040607401F1B72C2001687974F48D0001020408CC242001980956B5040810';
wwv_flow_imp.g_varchar2_table(131) := '185D40FC6D0B4800DA1E1FBD234080000102B3084800666155290102044617107FEB021280D64748FF0810204080C00C02128019505549800081D105C4DFBE8004A0FD31D243020408102030B9800460725215122040607401F1F7202001E86194F49100';
wwv_flow_imp.g_varchar2_table(132) := '010204084C2C200198185475040810185D40FC7D084800FA1827BD244080000102930A480026E554190102044617107F2F0212805E464A3F0910204080C08402128009315545800081D105C4DF8F8004A09FB1D25302040810203099800460324A151120';
wwv_flow_imp.g_varchar2_table(133) := '40607401F1F7242001E869B4F49500010204084C24200198085235040810185D40FC7D094800FA1A2FBD25408000010293084800266154090102044617107F6F021280DE464C7F0910204080C00402128009105541800081D105C4DF9F8004A0BF31D363';
wwv_flow_imp.g_varchar2_table(134) := '020408102070B38004E0664215102040607401F1F7282001E871D4F4990001020408DC282001B811D0EE040810185D40FC7D0A4800FA1C37BD264080000102370948006EE2B3330102044617107FAF0212805E474EBF0910204080C00D0212801BF0EC4A';
wwv_flow_imp.g_varchar2_table(135) := '800081D105C4DFAF8004A0DFB1D373020408102070B58004E06A3A3B122040607401F1F72C2001E879F4F49D00010204085C292001B812CE6E040810185D40FC7D0B4800FA1E3FBD27408000010257094800AE62B3130102044617107FEF021280DE4750';
wwv_flow_imp.g_varchar2_table(136) := 'FF0910204080C0150212802BD0EC42800081D105C4DFBF8004A0FF3114010102040810B85840027031991D08102030BA80F8B7202001D8C2288A8100010204085C282001B8104C710204088C2E20FE6D084800B6318EA2204080000102170948002EE252';
wwv_flow_imp.g_varchar2_table(137) := '98000102A30B887F2B021280AD8CA4380810204080C0050212800BB014254080C0E802E2DF8E8004603B6329120204081020502D2001A8A65290000102A30B887F4B0212802D8DA658081020408040A58004A0124A310204088C2E20FE6D094800B6359E';
wwv_flow_imp.g_varchar2_table(138) := 'A2214080000102550212802A268508102030BA80F8B7262001D8DA888A870001020408540848002A9014214080C0E802E2DF9E8004607B632A22020408102050149000148914204080C0E802E2DFA28004608BA32A2602040810205010900014806C2640';
wwv_flow_imp.g_varchar2_table(139) := '80C0E802E2DFA68004609BE32A2A0204081020705640027096C7460204088C2E20FEAD0A4800B63AB2E22240800001026704240067706C224080C0E802E2DFAE800460BB632B320204081020705240027092C6060204088C2E20FE2D0B4800B63CBA6223';
wwv_flow_imp.g_varchar2_table(140) := '4080000102270424002760AC264080C0E802E2DFB6800460DBE32B3A0204081020705440027094C54A0204088C2E20FEAD0B4800B63EC2E2234080000102470424004750AC224080C0E802E2DFBE800460FB632C420204081020F08A8004E015122B0810';
wwv_flow_imp.g_varchar2_table(141) := '2030BA80F8471090008C30CA622440800001028F0424008F407C244080C0E802E21F43400230C6388B920001020408BC2420017889C3070204088C2E20FE51042400A38CB4380910204080C0030109C0030C6F09102030BA80F8C71190008C33D6222540';
wwv_flow_imp.g_varchar2_table(142) := '800001022F0424002F28BC214080C0E802E21F49400230D2688B9500010204083C1790003C87F042800081D105C43F96800460ACF1162D0102040810B8179000DC33F887000102A30B887F340109C068232E5E020408102070272001B843F01F01020446';
wwv_flow_imp.g_varchar2_table(143) := '1710FF78021280F1C65CC40408102040602701701010204060780100230A4800461C753113204080C0F0021280E10F010004088C2E20FE31052400638EBBA80910204060700109C0E00780F00910185D40FCA30A4800461D797113204080C0D0021280A1';
wwv_flow_imp.g_varchar2_table(144) := '875FF004088C2E20FE71052400E38EBDC80910204060600109C0C0832F740204461710FFC802128091475FEC0408102030AC800460D8A117380102A30B887F6C81BF070000FFFF7BD44E670000000649444154030079210E0F97E698B00000000049454E';
wwv_flow_imp.g_varchar2_table(145) := '44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(7752500352929082526)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261025171500Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171500Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(7752501655447082527)
,p_name=>'Administration Rights'
,p_static_id=>'administration-rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', 'return true;')).to_clob
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>'SH256:K94FzTYWdjDQ6WIg6w48Or20nhyD_tWnqCuRh9rK4CU'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20261025171500Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171500Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
end;
/
prompt --application/shared_components/security/authorizations/is_driver
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(7754653101854157939)
,p_name=>'IS_DRIVER'
,p_static_id=>'is-driver'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'sql_query', 'SELECT 1 FROM CONDUCTORES WHERE STUDENTID = :G_STUDENT_ID')).to_clob
,p_error_message=>'No tienes permiso para ver esta seccion'
,p_version_scn=>'SH256:LOK-7NQjTcz-hp-HfYT3rBWFJOGqDqAEjdR3Foy7JRE'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20261025172734Z')
,p_updated_on=>wwv_flow_imp.dz('20261025172915Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
end;
/
prompt --application/shared_components/security/authorizations/is_passanger
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(7754717739357163749)
,p_name=>'IS_PASSANGER'
,p_static_id=>'is-passanger'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'sql_query', 'SELECT 1 FROM PASAJEROS WHERE STUDENTID = :G_STUDENT_ID')).to_clob
,p_error_message=>'No tienes permiso para ver esta seccion'
,p_version_scn=>'SH256:wOtnBVnk5CeC0EOVc2jn3PWmo2XhDj1_5qv4ttaMVjg'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20261025172832Z')
,p_updated_on=>wwv_flow_imp.dz('20261025172931Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_items/g_student_id
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(7754462984044134827)
,p_name=>'G_STUDENT_ID'
,p_protection_level=>'I'
,p_version_scn=>'SH256:b7fgUFtY8kxaV1Eljzs62eTrFB6pNm1yWoosRIhqMco'
,p_created_on=>wwv_flow_imp.dz('20261025172343Z')
,p_updated_on=>wwv_flow_imp.dz('20261025172343Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
end;
/
prompt --application/shared_components/logic/application_computations/g_student_id
begin
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(7754594794882144097)
,p_computation_sequence=>10
,p_computation_item=>'G_STUDENT_ID'
,p_static_id=>'g-student-id'
,p_computation_point=>'AFTER_LOGIN'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select studentid from estudiantes',
'where lower(correoinstitucional) = lower(:APP_USER)'))
,p_version_scn=>'SH256:EOcQzKQr59mSRzYHwmiZjoFr_JR4EU2tMGqY8_QSTtE'
,p_created_on=>wwv_flow_imp.dz('20261025172516Z')
,p_updated_on=>wwv_flow_imp.dz('20261025172516Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/boolean
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(7752510006800082569)
,p_lov_name=>'BOOLEAN'
,p_static_id=>'boolean'
,p_lov_query=>'.'||wwv_flow_imp.id(7752510006800082569)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:CnCBOq-zabcz-aPWKwU8C5KDeZy6YuyjvpJoTrTywfI'
,p_created_on=>wwv_flow_imp.dz('20261025171501Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171501Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(7752510797735082570)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'FALSE'
,p_static_id=>'false'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(7752510316901082570)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'TRUE'
,p_static_id=>'true'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(7752501951798082528)
,p_group_name=>'Administration'
,p_static_id=>'administration'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(7752496784854082516)
,p_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_created_on=>wwv_flow_imp.dz('20261025171500Z')
,p_updated_on=>wwv_flow_imp.dz('20261026042757Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7752496957609082516)
,p_short_name=>'Home'
,p_static_id=>'home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
,p_created_on=>wwv_flow_imp.dz('20261025171500Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171500Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7876673716488744921)
,p_short_name=>'RF3 Publicar viaje'
,p_static_id=>'rf3-publicar-viaje'
,p_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10
,p_created_on=>wwv_flow_imp.dz('20261026032524Z')
,p_updated_on=>wwv_flow_imp.dz('20261026032524Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7881028407863924365)
,p_short_name=>'RF5 Actualizar estado del viaje'
,p_static_id=>'rf5-actualizar-estado-del-viaje'
,p_link=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>12
,p_created_on=>wwv_flow_imp.dz('20261026035519Z')
,p_updated_on=>wwv_flow_imp.dz('20261026035519Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7886093167787015762)
,p_short_name=>'RF6 Historial de viajes'
,p_static_id=>'rf6-historial-de-viajes'
,p_link=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13
,p_created_on=>wwv_flow_imp.dz('20261026041033Z')
,p_updated_on=>wwv_flow_imp.dz('20261026041033Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7890344113672503517)
,p_short_name=>'RF8 Mi cuenta'
,p_static_id=>'rf8-mi-cuenta'
,p_link=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>14
,p_created_on=>wwv_flow_imp.dz('20261026042757Z')
,p_updated_on=>wwv_flow_imp.dz('20261026042757Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7828711513206424700)
,p_short_name=>'RFC1 Demanda por localidad'
,p_static_id=>'rfc1-demanda-por-localidad'
,p_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>5
,p_created_on=>wwv_flow_imp.dz('20261025234522Z')
,p_updated_on=>wwv_flow_imp.dz('20261025234522Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7831572152812968777)
,p_short_name=>'RFC2 Ingresos por localidad'
,p_static_id=>'rfc2-ingresos-por-localidad'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
,p_created_on=>wwv_flow_imp.dz('20261026001210Z')
,p_updated_on=>wwv_flow_imp.dz('20261026001210Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7836379929850029893)
,p_short_name=>'RFC2 Ingresos por localidad'
,p_static_id=>'rfc2-ingresos-por-localidad-2'
,p_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>7
,p_created_on=>wwv_flow_imp.dz('20261026002221Z')
,p_updated_on=>wwv_flow_imp.dz('20261026002221Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7755005248572192644)
,p_short_name=>'Tablero del conductor'
,p_static_id=>'tablero-del-conductor'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
,p_created_on=>wwv_flow_imp.dz('20261025173321Z')
,p_updated_on=>wwv_flow_imp.dz('20261025173321Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7853393833633405834)
,p_short_name=>'Tablero del pasajero'
,p_static_id=>'tablero-del-pasajero'
,p_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>8
,p_created_on=>wwv_flow_imp.dz('20261026012500Z')
,p_updated_on=>wwv_flow_imp.dz('20261026012500Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(7752497684311082518)
,p_theme_id=>42
,p_static_id=>'universal-theme'
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'26.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_current_theme_style_id=>4194319937007846
,p_default_page_template=>4075783602716660119
,p_default_dialog_template=>2103835248774687739
,p_error_template=>2104585595298951431
,p_printer_friendly_template=>4075783602716660119
,p_login_template=>2104585595298951431
,p_default_button_template=>4075790603270660137
,p_default_region_template=>4075786578761660127
,p_default_chart_template=>4075786578761660127
,p_default_form_template=>4075786578761660127
,p_default_reportr_template=>4075786578761660127
,p_default_wizard_template=>4075786578761660127
,p_default_menur_template=>2534890969069732905
,p_default_listr_template=>4075786578761660127
,p_default_irr_template=>2103954283454391425
,p_default_report_template=>2542081983073888486
,p_default_label_template=>1612549609962752680
,p_default_menu_template=>4075790987805660140
,p_default_list_template=>4075788786379660133
,p_default_top_nav_list_temp=>2530182346535839887
,p_default_side_nav_list_temp=>2471166859590295591
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2129856781885180476
,p_default_dialogr_template=>4504868307683981366
,p_default_option_label=>1612549609962752680
,p_default_required_label=>1612549789555753698
,p_default_navbar_list_template=>2850970698196720012
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/26.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
,p_reference_id=>wwv_imp_util.get_subscription_id(4075791579648660165,2000,'universal-theme',8842.262)
,p_version_scn=>'SH256:_ZA2OCAT0oe8zXeYXS4pqku9eJXOHXBko77-CJUyv6E'
,p_version_scn_master=>'SH256:S3Fh7S4ZMPpy-ID1j0RgxJIrTUyM6ZXOJB4KD7haOtc'
,p_created_on=>wwv_flow_imp.dz('20261025171500Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171500Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(7752496009979082514)
,p_build_option_name=>'Commented Out'
,p_static_id=>'commented-out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>'SH256:1lQI3DW9n-0ZEGoDXUirkaB0JWCIATVWpJZCTCkODmI'
,p_created_on=>wwv_flow_imp.dz('20261025171500Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171500Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/login_wheels
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(7753404457299505421)
,p_name=>'Login Wheels'
,p_static_id=>'login-wheels'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'authentication_function', 'fn_auth',
  'enable_legacy_attributes', 'N')).to_clob
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'SH256:ZWuRo7Roa54Q3-8_qfxgFBxxVXcLcY8teMDYHSlq0Po'
,p_created_on=>wwv_flow_imp.dz('20261025172136Z')
,p_updated_on=>wwv_flow_imp.dz('20261025174429Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(7752496315445082515)
,p_name=>'Oracle APEX Accounts'
,p_static_id=>'oracle-apex-accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'SH256:MwlwV9vQNyvTGV3nRFfTrp5n7mJ1Ugme2lUrlsOYuxw'
,p_created_on=>wwv_flow_imp.dz('20261025171500Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171500Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_reload_on_submit=>null
,p_warn_on_unsaved_changes=>null
,p_autocomplete_on_off=>'OFF'
,p_protection_level=>'D'
,p_page_component_map=>'14'
,p_created_on=>wwv_flow_imp.dz('20261025171500Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261025171500Z')
,p_created_by=>'J.OCAMPOP'
,p_last_updated_by=>'J.OCAMPOP'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Buscar Viajes'
,p_alias=>'HOME'
,p_step_title=>'Buscar Viajes '
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_created_on=>wwv_flow_imp.dz('20261025171501Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261026040502Z')
,p_created_by=>'J.OCAMPOP'
,p_last_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7855775993061079202)
,p_plug_name=>'Filtros'
,p_static_id=>'filtros'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026020116Z')
,p_updated_on=>wwv_flow_imp.dz('20261026020116Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(7855776325205079206)
,p_name=>'Viajes'
,p_static_id=>'viajes'
,p_title=>'Viajes Disponibles'
,p_template=>4075786578761660127
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v.tripid,',
'       e.nombre || '' '' || e.apellido                    conductor,',
'       ve.marca || '' '' || ve.modelo || '' '' || ve.color  vehiculo,',
'       ve.placa,',
'       dor.referencia                                   origen,',
'       dde.referencia                                   destino,',
'       to_char(v.fechahorasalida,''DD/MM/YYYY HH24:MI'')  salida,',
'       v.cuposdisponibles                               cupos,',
'       v.costo,',
'       (select listagg(d.referencia, '' > '') within group (order by p.orden)',
'          from paradas p',
'          join direcciones d on d.direccionid = p.direccionid',
'         where p.tripid = v.tripid)                     puntos_recogida',
'        , ''Solicitar cupo'' solicitar',
'from viajes v',
'join conductores c   on c.studentid = v.conductor',
'join estudiantes e   on e.studentid = c.studentid',
'join vehiculo ve     on ve.placa = c.placa',
'join direcciones dor on dor.direccionid = v.direccionidorigen',
'join direcciones dde on dde.direccionid = v.direccioniddestino',
'where v.estado = ''programado''',
'  and v.cuposdisponibles > 0',
'   and (:P1_FECHA is null',
'       or trunc(v.fechahorasalida) = to_date(:P1_FECHA,''DD/MM/YYYY''))',
'  and (:P1_LOCALIDAD is null',
'       or exists (select 1',
'                    from paradas p',
'                    join direcciones d on d.direccionid = p.direccionid',
'                   where p.tripid = v.tripid',
'                     and d.localidadid = :P1_LOCALIDAD))',
'order by v.fechahorasalida'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1_FECHA,P1_LOCALIDAD'
,p_lazy_loading=>false
,p_query_row_template=>2542081983073888486
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026020116Z')
,p_updated_on=>wwv_flow_imp.dz('20261026040502Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7855776577678079208)
,p_query_column_id=>2
,p_column_alias=>'CONDUCTOR'
,p_column_display_sequence=>20
,p_column_heading=>'Conductor'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026020116Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7855777266289079215)
,p_query_column_id=>9
,p_column_alias=>'COSTO'
,p_column_display_sequence=>90
,p_column_heading=>'Costo'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026020116Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7855777189836079214)
,p_query_column_id=>8
,p_column_alias=>'CUPOS'
,p_column_display_sequence=>80
,p_column_heading=>'Cupos'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026020116Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7855776943880079212)
,p_query_column_id=>6
,p_column_alias=>'DESTINO'
,p_column_display_sequence=>60
,p_column_heading=>'Destino'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026020116Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7855776806030079211)
,p_query_column_id=>5
,p_column_alias=>'ORIGEN'
,p_column_display_sequence=>50
,p_column_heading=>'Origen'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026020116Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7855776715399079210)
,p_query_column_id=>4
,p_column_alias=>'PLACA'
,p_column_display_sequence=>40
,p_column_heading=>'Placa'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026020116Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7855777394809079216)
,p_query_column_id=>10
,p_column_alias=>'PUNTOS_RECOGIDA'
,p_column_display_sequence=>100
,p_column_heading=>'Puntos Recogida'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026020116Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7855777000396079213)
,p_query_column_id=>7
,p_column_alias=>'SALIDA'
,p_column_display_sequence=>70
,p_column_heading=>'Salida'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026020116Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7884129261165932103)
,p_query_column_id=>11
,p_column_alias=>'SOLICITAR'
,p_column_display_sequence=>110
,p_column_heading=>'Accion'
,p_column_link=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:22:P22_TRIPID:#TRIPID#'
,p_column_linktext=>'Solicitar Cupo'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026040502Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7855776492686079207)
,p_query_column_id=>1
,p_column_alias=>'TRIPID'
,p_column_display_sequence=>10
,p_column_heading=>'Tripid'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026020116Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7855776619304079209)
,p_query_column_id=>3
,p_column_alias=>'VEHICULO'
,p_column_display_sequence=>30
,p_column_heading=>'Vehiculo'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026020116Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7855776296417079205)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(7855775993061079202)
,p_button_name=>'BUSCAR'
,p_static_id=>'buscar_1'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Buscar'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261026020116Z')
,p_updated_on=>wwv_flow_imp.dz('20261026020116Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7855777442967079217)
,p_button_sequence=>30
,p_button_name=>'LOGIN'
,p_static_id=>'login'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Iniciar sesion'
,p_button_redirect_url=>'f?p=&APP_ID.:9999:&SESSION.::&DEBUG.:::'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'USER_IS_PUBLIC_USER'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261026020116Z')
,p_updated_on=>wwv_flow_imp.dz('20261026020116Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7855777547455079218)
,p_button_sequence=>40
,p_button_name=>'REGISTRO'
,p_static_id=>'registro'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Registrarme como pasajero'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'USER_IS_PUBLIC_USER'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261026020116Z')
,p_updated_on=>wwv_flow_imp.dz('20261026020116Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7855778612659079229)
,p_button_sequence=>50
,p_button_name=>'REGISTRO_CONDUCTOR'
,p_static_id=>'registro-conductor'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Registrarme como conductor'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'USER_IS_PUBLIC_USER'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261026031759Z')
,p_updated_on=>wwv_flow_imp.dz('20261026031759Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7855776062195079203)
,p_name=>'P1_FECHA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7855775993061079202)
,p_prompt=>'Fecha de Salida'
,p_format_mask=>'DD/MM/YYYY'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026020116Z')
,p_updated_on=>wwv_flow_imp.dz('20261026025732Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7855776170049079204)
,p_name=>'P1_LOCALIDAD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7855775993061079202)
,p_prompt=>'Zona de recogida'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select nombre d, localidadid r from localidad order by 1'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Todas -'
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026020116Z')
,p_updated_on=>wwv_flow_imp.dz('20261026020116Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Tablero del conductor'
,p_alias=>'TABLERO-DEL-CONDUCTOR'
,p_step_title=>'Tablero del conductor'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(7754653101854157939)
,p_protection_level=>'C'
,p_page_component_map=>'27'
,p_created_on=>wwv_flow_imp.dz('20261025173321Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261026033940Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_last_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7755004640397192614)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7752496784854082516)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261025173321Z')
,p_updated_on=>wwv_flow_imp.dz('20261025173321Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1691778215935039049)
,p_plug_name=>unistr('Mis m\00E9tricas como conductor')
,p_static_id=>unistr('mis-m\00E9tricas-como-conductor')
,p_title=>unistr('Mis m\00E9tricas como conductor')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3374665444246510938
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH aceptadas AS (',
'  SELECT p.tripId, COUNT(*) AS pasajeros',
'    FROM Paradas p',
'    JOIN Solicitudes s ON s.paradaID = p.paradaID',
'   WHERE s.estado = ''aceptada''',
'   GROUP BY p.tripId',
'),',
't AS (',
'  SELECT NVL(SUM(a.pasajeros), 0) AS pasajeros,',
'         NVL(SUM((v.fechaHoraLlegada - v.fechaHoraSalida) * 1440), 0) AS minutos,',
'         NVL(SUM(a.pasajeros * v.costo), 0) AS ingresos,',
'         NVL(SUM(v.distanciaKm), 0) AS km',
'    FROM Viajes v',
'    LEFT JOIN aceptadas a ON a.tripId = v.tripId',
'   WHERE v.conductor = :G_STUDENT_ID',
'     AND v.estado = ''completado''',
')',
'SELECT ''Pasajeros transportados'' AS etiqueta, pasajeros AS valor FROM t',
'UNION ALL SELECT ''Tiempo total (min)'', ROUND(minutos) FROM t',
'UNION ALL SELECT ''Ingresos (COP)'', ingresos FROM t',
'UNION ALL SELECT ''Distancia total (km)'', km FROM t'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$METRIC_CARD'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'AVATAR_ICON', 'fa-car',
  'AVATAR_POSITION', 't-MetricCard-body--avatarPositionTop',
  'AVATAR_SHAPE', 't-Avatar--rounded',
  'AVATAR_TYPE', 'icon',
  'DISPLAY_AVATAR', 'Y',
  'DISPLAY_BADGE', 'N',
  'LAYOUT', '2cols',
  'METRIC', '&VALOR.',
  'TITLE', '&ETIQUETA.')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026010935Z')
,p_updated_on=>wwv_flow_imp.dz('20261026012038Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7846386326165293203)
,p_name=>'ETIQUETA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ETIQUETA'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_available_clientside=>false
,p_updated_on=>wwv_flow_imp.dz('20261026011501Z')
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7846386427147293204)
,p_name=>'VALOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALOR'
,p_data_type=>'NUMBER'
,p_display_sequence=>20
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_available_clientside=>false
,p_updated_on=>wwv_flow_imp.dz('20261026011501Z')
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Registro Pasajero'
,p_alias=>'REGISTRO-PASAJERO'
,p_step_title=>'Registro Pasajero'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20261025175605Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261026014131Z')
,p_created_by=>'J.OCAMPOP'
,p_last_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7758248754321712471)
,p_plug_name=>'Registro Pasajero'
,p_static_id=>'registro-pasajero'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'ESTUDIANTES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261025175607Z')
,p_updated_on=>wwv_flow_imp.dz('20261025175607Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7758255967202712512)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7758248754321712471)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20261025175607Z')
,p_updated_on=>wwv_flow_imp.dz('20261025175607Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7758257252270712514)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7758248754321712471)
,p_button_name=>'Registrarme'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Registrarme'
,p_button_position=>'CREATE'
,p_button_condition=>'P3_STUDENTID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20261025175607Z')
,p_updated_on=>wwv_flow_imp.dz('20261026013732Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(7758257691393712514)
,p_branch_action=>'f?p=&APP_ID.:9999:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(7758257252270712514)
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20261025175607Z')
,p_updated_on=>wwv_flow_imp.dz('20261026013732Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7758250329231712507)
,p_name=>'P3_APELLIDO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7758248754321712471)
,p_item_source_plug_id=>wwv_flow_imp.id(7758248754321712471)
,p_prompt=>'Apellido'
,p_source=>'APELLIDO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>60
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261025175607Z')
,p_updated_on=>wwv_flow_imp.dz('20261025175607Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7758250737409712507)
,p_name=>'P3_CEDULA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7758248754321712471)
,p_item_source_plug_id=>wwv_flow_imp.id(7758248754321712471)
,p_prompt=>'Cedula'
,p_source=>'CEDULA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261025175607Z')
,p_updated_on=>wwv_flow_imp.dz('20261025175607Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7758251568119712508)
,p_name=>'P3_CELULAR'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7758248754321712471)
,p_item_source_plug_id=>wwv_flow_imp.id(7758248754321712471)
,p_prompt=>'Celular'
,p_source=>'CELULAR'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261025175607Z')
,p_updated_on=>wwv_flow_imp.dz('20261025175607Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7758252843171712509)
,p_name=>'P3_CONTRASENA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(7758248754321712471)
,p_item_source_plug_id=>wwv_flow_imp.id(7758248754321712471)
,p_prompt=>'Contrasena'
,p_source=>'CONTRASENA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261025175607Z')
,p_updated_on=>wwv_flow_imp.dz('20261025175607Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7758251106337712508)
,p_name=>'P3_CORREOINSTITUCIONAL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7758248754321712471)
,p_item_source_plug_id=>wwv_flow_imp.id(7758248754321712471)
,p_prompt=>'Correoinstitucional'
,p_source=>'CORREOINSTITUCIONAL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261025175607Z')
,p_updated_on=>wwv_flow_imp.dz('20261025175607Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7758249927352712506)
,p_name=>'P3_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7758248754321712471)
,p_item_source_plug_id=>wwv_flow_imp.id(7758248754321712471)
,p_prompt=>'Nombre'
,p_source=>'NOMBRE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>60
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261025175607Z')
,p_updated_on=>wwv_flow_imp.dz('20261025175607Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7758252409677712509)
,p_name=>'P3_PROGRAMA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(7758248754321712471)
,p_item_source_plug_id=>wwv_flow_imp.id(7758248754321712471)
,p_prompt=>'Programa'
,p_source=>'PROGRAMA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261025175607Z')
,p_updated_on=>wwv_flow_imp.dz('20261025175607Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7758249573861712505)
,p_name=>'P3_STUDENTID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7758248754321712471)
,p_item_source_plug_id=>wwv_flow_imp.id(7758248754321712471)
,p_source=>'STUDENTID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261025175607Z')
,p_updated_on=>wwv_flow_imp.dz('20261025175607Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7758252010002712508)
,p_name=>'P3_UNIVERSIDAD'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(7758248754321712471)
,p_item_source_plug_id=>wwv_flow_imp.id(7758248754321712471)
,p_prompt=>'Universidad'
,p_source=>'UNIVERSIDAD'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>60
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261025175607Z')
,p_updated_on=>wwv_flow_imp.dz('20261025175607Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7758258054822712515)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(7758248754321712471)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Registro Pasajero'
,p_static_id=>'initialize-form-registro-pasajero'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>7758258054822712515
,p_created_on=>wwv_flow_imp.dz('20261025175607Z')
,p_updated_on=>wwv_flow_imp.dz('20261025175607Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7855775810854079201)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Registrar Pasajero'
,p_static_id=>'registrar-pasajero'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_id estudiantes.studentid%type;',
'begin',
'  select nvl(max(studentid),0) + 1 into v_id from estudiantes;',
'',
'  insert into estudiantes',
'    (studentid, nombre, apellido, cedula, correoinstitucional,',
'     celular, universidad, programa, contrasena)',
'  values',
'    (v_id, :P3_NOMBRE, :P3_APELLIDO, :P3_CEDULA, :P3_CORREOINSTITUCIONAL,',
'     :P3_CELULAR, :P3_UNIVERSIDAD, :P3_PROGRAMA, :P3_CONTRASENA);',
'',
'  insert into pasajeros (studentid) values (v_id);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(7758257252270712514)
,p_process_success_message=>'Registro Exitoso, ya puede iniciar sesion'
,p_internal_uid=>7855775810854079201
,p_created_on=>wwv_flow_imp.dz('20261026013732Z')
,p_updated_on=>wwv_flow_imp.dz('20261026013732Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Registro Conductor'
,p_alias=>'REGISTRO-CONDUCTOR'
,p_step_title=>'Registro Conductor'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20261026030614Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261026032232Z')
,p_created_by=>'J.OCAMPOP'
,p_last_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7855777739440079220)
,p_plug_name=>'Datos del Vehiculo'
,p_static_id=>'datos-del-vehiculo'
,p_parent_plug_id=>wwv_flow_imp.id(15630235255119342385)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026031359Z')
,p_updated_on=>wwv_flow_imp.dz('20261026032231Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15630235255119342385)
,p_plug_name=>'Registro Conductor'
,p_static_id=>'registro-pasajero'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'ESTUDIANTES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261026030614Z')
,p_updated_on=>wwv_flow_imp.dz('20261026031359Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7871988072316629945)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(15630235255119342385)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20261026030614Z')
,p_updated_on=>wwv_flow_imp.dz('20261026030614Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7871988439943629947)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(15630235255119342385)
,p_button_name=>'Registrarme'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Registrarme'
,p_button_position=>'CREATE'
,p_button_condition=>'P4_STUDENTID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20261026030614Z')
,p_updated_on=>wwv_flow_imp.dz('20261026030614Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(7871995252368629956)
,p_branch_action=>'f?p=&APP_ID.:9999:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(7871988439943629947)
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20261026030615Z')
,p_updated_on=>wwv_flow_imp.dz('20261026030615Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7855778163850079224)
,p_name=>'P4_ANIO'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7855777739440079220)
,p_prompt=>'Anio'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'max_value', '2030',
  'min_value', '1990',
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026031359Z')
,p_updated_on=>wwv_flow_imp.dz('20261026032232Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15630239204767342455)
,p_name=>'P4_APELLIDO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(15630235255119342385)
,p_item_source_plug_id=>wwv_flow_imp.id(15630235255119342385)
,p_prompt=>'Apellido'
,p_source=>'APELLIDO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>60
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026030614Z')
,p_updated_on=>wwv_flow_imp.dz('20261026030614Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15630239612945342455)
,p_name=>'P4_CEDULA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(15630235255119342385)
,p_item_source_plug_id=>wwv_flow_imp.id(15630235255119342385)
,p_prompt=>'Cedula'
,p_source=>'CEDULA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026030614Z')
,p_updated_on=>wwv_flow_imp.dz('20261026030614Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15630240443655342456)
,p_name=>'P4_CELULAR'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(15630235255119342385)
,p_item_source_plug_id=>wwv_flow_imp.id(15630235255119342385)
,p_prompt=>'Celular'
,p_source=>'CELULAR'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026030614Z')
,p_updated_on=>wwv_flow_imp.dz('20261026030614Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7855778231884079225)
,p_name=>'P4_COLOR'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7855777739440079220)
,p_prompt=>'Color'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026031359Z')
,p_updated_on=>wwv_flow_imp.dz('20261026032232Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15630241718707342457)
,p_name=>'P4_CONTRASENA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(15630235255119342385)
,p_item_source_plug_id=>wwv_flow_imp.id(15630235255119342385)
,p_prompt=>'Contrasena'
,p_source=>'CONTRASENA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026030614Z')
,p_updated_on=>wwv_flow_imp.dz('20261026030614Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15630239981873342456)
,p_name=>'P4_CORREOINSTITUCIONAL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(15630235255119342385)
,p_item_source_plug_id=>wwv_flow_imp.id(15630235255119342385)
,p_prompt=>'Correoinstitucional'
,p_source=>'CORREOINSTITUCIONAL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026030614Z')
,p_updated_on=>wwv_flow_imp.dz('20261026030614Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7855778345838079226)
,p_name=>'P4_CUPOSDISP'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7855777739440079220)
,p_prompt=>'Cuposdisp'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'max_value', '8',
  'min_value', '1',
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026031359Z')
,p_updated_on=>wwv_flow_imp.dz('20261026032232Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7855777999174079222)
,p_name=>'P4_MARCA'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7855777739440079220)
,p_prompt=>'Marca'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026031359Z')
,p_updated_on=>wwv_flow_imp.dz('20261026032231Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7855778047265079223)
,p_name=>'P4_MODELO'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7855777739440079220)
,p_prompt=>'Modelo'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026031359Z')
,p_updated_on=>wwv_flow_imp.dz('20261026032232Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15630238802888342454)
,p_name=>'P4_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(15630235255119342385)
,p_item_source_plug_id=>wwv_flow_imp.id(15630235255119342385)
,p_prompt=>'Nombre'
,p_source=>'NOMBRE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>60
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026030614Z')
,p_updated_on=>wwv_flow_imp.dz('20261026030614Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7855777831366079221)
,p_name=>'P4_PLACA'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7855777739440079220)
,p_prompt=>'Placa'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>6
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026031359Z')
,p_updated_on=>wwv_flow_imp.dz('20261026032231Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15630241285213342457)
,p_name=>'P4_PROGRAMA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(15630235255119342385)
,p_item_source_plug_id=>wwv_flow_imp.id(15630235255119342385)
,p_prompt=>'Programa'
,p_source=>'PROGRAMA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026030614Z')
,p_updated_on=>wwv_flow_imp.dz('20261026030614Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15630238449397342453)
,p_name=>'P4_STUDENTID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(15630235255119342385)
,p_item_source_plug_id=>wwv_flow_imp.id(15630235255119342385)
,p_source=>'STUDENTID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026030614Z')
,p_updated_on=>wwv_flow_imp.dz('20261026030614Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15630240885538342456)
,p_name=>'P4_UNIVERSIDAD'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(15630235255119342385)
,p_item_source_plug_id=>wwv_flow_imp.id(15630235255119342385)
,p_prompt=>'Universidad'
,p_source=>'UNIVERSIDAD'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>60
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026030614Z')
,p_updated_on=>wwv_flow_imp.dz('20261026030614Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7855778586459079228)
,p_validation_name=>'Validacion Placa'
,p_static_id=>'validacion-placa'
,p_validation_sequence=>10
,p_validation=>'P4_PLACA'
,p_validation2=>'^[A-Za-z]{3}[0-9]{3}$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'La placa debe tener 3 letras y tres numeros (ABC123)'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20261026031631Z')
,p_updated_on=>wwv_flow_imp.dz('20261026031631Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7871994365304629954)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(15630235255119342385)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Registro Pasajero'
,p_static_id=>'initialize-form-registro-pasajero'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>7871994365304629954
,p_created_on=>wwv_flow_imp.dz('20261026030614Z')
,p_updated_on=>wwv_flow_imp.dz('20261026030614Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7855778454661079227)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Registrar Conductor'
,p_static_id=>'registrar-conductor'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_id    estudiantes.studentid%type;',
'  v_placa vehiculo.placa%type := upper(trim(:P4_PLACA));',
'begin',
'  select nvl(max(studentid),0) + 1 into v_id from estudiantes;',
'',
'  insert into estudiantes',
'    (studentid, nombre, apellido, cedula, correoinstitucional,',
'     celular, universidad, programa, contrasena)',
'  values',
'    (v_id, :P4_NOMBRE, :P4_APELLIDO, :P4_CEDULA, :P4_CORREOINSTITUCIONAL,',
'     :P4_CELULAR, :P4_UNIVERSIDAD, :P4_PROGRAMA, :P4_CONTRASENA);',
'',
'  insert into vehiculo (placa, marca, modelo, anio, cuposdisp, color)',
'  values (v_placa, :P4_MARCA, :P4_MODELO, :P4_ANIO, :P4_CUPOSDISP, :P4_COLOR);',
'',
'  insert into conductores (studentid, placa) values (v_id, v_placa);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(7871988439943629947)
,p_process_success_message=>'Registro Exitoso. Ya puede iniciar sesion.'
,p_internal_uid=>7855778454661079227
,p_created_on=>wwv_flow_imp.dz('20261026031359Z')
,p_updated_on=>wwv_flow_imp.dz('20261026031359Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'RFC1 Demanda por localidad'
,p_alias=>'RFC1-DEMANDA-POR-LOCALIDAD'
,p_step_title=>'Demanda por localidad'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(7754653101854157939)
,p_protection_level=>'C'
,p_page_component_map=>'04'
,p_created_on=>wwv_flow_imp.dz('20261025234522Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261026043838Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_last_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7828710930315424668)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(7752496784854082516)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261025234522Z')
,p_updated_on=>wwv_flow_imp.dz('20261026000230Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1691777436122039041)
,p_plug_name=>'Demanda por localidad'
,p_static_id=>'demanda-por-localidad'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'DEMANDA POR LOCALIDAD'
,p_created_on=>wwv_flow_imp.dz('20261026000230Z')
,p_updated_on=>wwv_flow_imp.dz('20261026000230Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(1691777558063039042)
,p_region_id=>wwv_flow_imp.id(1691777436122039041)
,p_chart_type=>'bar'
,p_height=>'400'
,p_lazy_loading=>false
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_created_on=>wwv_flow_imp.dz('20261026000230Z')
,p_updated_on=>wwv_flow_imp.dz('20261026000230Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(1691777657494039043)
,p_chart_id=>wwv_flow_imp.id(1691777558063039042)
,p_static_id=>'solicitudes'
,p_seq=>10
,p_name=>'Solicitudes'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT l.nombre AS localidad,',
'       COUNT(s.solicitudID) AS solicitudes',
'  FROM Localidad l',
'  LEFT JOIN Direcciones d ON d.localidadID = l.localidadID',
'  LEFT JOIN Paradas     p ON p.direccionId = d.direccionID',
'  LEFT JOIN Solicitudes s ON s.paradaID = p.paradaID',
'                         AND s.fechaSolicitud >= TRUNC(TO_DATE(:P5_FECHA_INI, ''YYYY-MM-DD''))',
'                         AND s.fechaSolicitud <  TRUNC(TO_DATE(:P5_FECHA_FIN, ''YYYY-MM-DD'')) + 1',
' GROUP BY l.nombre',
' ORDER BY solicitudes DESC'))
,p_items_value_column_name=>'SOLICITUDES'
,p_items_label_column_name=>'LOCALIDAD'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_created_on=>wwv_flow_imp.dz('20261026000230Z')
,p_updated_on=>wwv_flow_imp.dz('20261026000230Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(1691777762359039044)
,p_chart_id=>wwv_flow_imp.id(1691777558063039042)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20261026000230Z')
,p_updated_on=>wwv_flow_imp.dz('20261026000230Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(1691777893960039045)
,p_chart_id=>wwv_flow_imp.id(1691777558063039042)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20261026000230Z')
,p_updated_on=>wwv_flow_imp.dz('20261026000230Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1691777009197039037)
,p_plug_name=>'Filtros'
,p_static_id=>'filtros'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261025235401Z')
,p_updated_on=>wwv_flow_imp.dz('20261025235401Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1691777322725039040)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(1691777009197039037)
,p_button_name=>'BUSCAR'
,p_static_id=>'buscar'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2086257187394300437
,p_button_image_alt=>'BUSCAR'
,p_icon_css_classes=>'fa-asl-interpreting'
,p_created_on=>wwv_flow_imp.dz('20261025235401Z')
,p_updated_on=>wwv_flow_imp.dz('20261026000523Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1691777216190039039)
,p_name=>'P5_FECHA_FIN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1691777009197039037)
,p_item_default=>'2026-09-15'
,p_prompt=>'Fecha final'
,p_format_mask=>'YYYY-MM-DD'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261025235401Z')
,p_updated_on=>wwv_flow_imp.dz('20261026000422Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1691777171904039038)
,p_name=>'P5_FECHA_INI'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1691777009197039037)
,p_item_default=>'2026-09-01'
,p_prompt=>'Fecha inicial'
,p_format_mask=>'YYYY-MM-DD'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261025235401Z')
,p_updated_on=>wwv_flow_imp.dz('20261025235401Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'RFC2 Ingresos por localidad'
,p_alias=>'RFC2-INGRESOS-POR-LOCALIDAD'
,p_step_title=>'Ingresos por localidad'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(7754653101854157939)
,p_protection_level=>'C'
,p_page_component_map=>'04'
,p_created_on=>wwv_flow_imp.dz('20261026001209Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261026043858Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_last_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15660277174295393409)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(7752496784854082516)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261026001209Z')
,p_updated_on=>wwv_flow_imp.dz('20261026001209Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9523343680102007782)
,p_plug_name=>'Ingresos por localidad'
,p_static_id=>'demanda-por-localidad'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'DEMANDA POR LOCALIDAD'
,p_created_on=>wwv_flow_imp.dz('20261026001209Z')
,p_updated_on=>wwv_flow_imp.dz('20261026001447Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(7831568008606968773)
,p_region_id=>wwv_flow_imp.id(9523343680102007782)
,p_chart_type=>'bar'
,p_height=>'400'
,p_lazy_loading=>false
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_created_on=>wwv_flow_imp.dz('20261026001209Z')
,p_updated_on=>wwv_flow_imp.dz('20261026001447Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(7831569667694968774)
,p_chart_id=>wwv_flow_imp.id(7831568008606968773)
,p_static_id=>'solicitudes'
,p_seq=>10
,p_name=>'Ingresos'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT l.nombre AS localidad,',
'       NVL(SUM(aceptadas.costo), 0) AS ingresos',
'  FROM Localidad l',
'  LEFT JOIN Direcciones d ON d.localidadID = l.localidadID',
'  LEFT JOIN (SELECT p.direccionId, s.solicitudID, v.costo',
'               FROM Solicitudes s',
'               JOIN Paradas p ON p.paradaID = s.paradaID',
'               JOIN Viajes  v ON v.tripId = p.tripId',
'              WHERE s.estado = ''aceptada''',
'                AND s.fechaSolicitud >= TRUNC(TO_DATE(:P6_FECHA_INI, ''YYYY-MM-DD''))',
'                AND s.fechaSolicitud <  TRUNC(TO_DATE(:P6_FECHA_FIN, ''YYYY-MM-DD'')) + 1) aceptadas',
'         ON aceptadas.direccionId = d.direccionID',
' GROUP BY l.nombre',
' ORDER BY ingresos DESC'))
,p_items_value_column_name=>'INGRESOS'
,p_items_label_column_name=>'LOCALIDAD'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_created_on=>wwv_flow_imp.dz('20261026001210Z')
,p_updated_on=>wwv_flow_imp.dz('20261026001447Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(7831568546095968773)
,p_chart_id=>wwv_flow_imp.id(7831568008606968773)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20261026001209Z')
,p_updated_on=>wwv_flow_imp.dz('20261026001209Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(7831569157297968774)
,p_chart_id=>wwv_flow_imp.id(7831568008606968773)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20261026001209Z')
,p_updated_on=>wwv_flow_imp.dz('20261026001209Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9523343253177007778)
,p_plug_name=>'Filtros'
,p_static_id=>'filtros'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026001210Z')
,p_updated_on=>wwv_flow_imp.dz('20261026001210Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7831570829171968775)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(9523343253177007778)
,p_button_name=>'BUSCAR'
,p_static_id=>'buscar'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2086257187394300437
,p_button_image_alt=>'BUSCAR'
,p_icon_css_classes=>'fa-asl-interpreting'
,p_created_on=>wwv_flow_imp.dz('20261026001210Z')
,p_updated_on=>wwv_flow_imp.dz('20261026001210Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9523348480898007815)
,p_name=>'P6_FECHA_FIN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9523343253177007778)
,p_item_default=>'2026-09-15'
,p_prompt=>'Fecha final'
,p_format_mask=>'YYYY-MM-DD'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026001210Z')
,p_updated_on=>wwv_flow_imp.dz('20261026001210Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9523348436612007814)
,p_name=>'P6_FECHA_INI'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9523343253177007778)
,p_item_default=>'2026-09-01'
,p_prompt=>'Fecha inicial'
,p_format_mask=>'YYYY-MM-DD'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026001210Z')
,p_updated_on=>wwv_flow_imp.dz('20261026001210Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'RFC3 Viajes por conductor'
,p_alias=>'RFC3'
,p_step_title=>'Viajes por conductor'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(7754653101854157939)
,p_protection_level=>'C'
,p_page_component_map=>'04'
,p_created_on=>wwv_flow_imp.dz('20261026002220Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261026043909Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_last_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17359716963063037635)
,p_plug_name=>'Filtros'
,p_static_id=>'filtros'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026002221Z')
,p_updated_on=>wwv_flow_imp.dz('20261026002221Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17359717389988037639)
,p_plug_name=>'Viajes por conductor'
,p_static_id=>'rf3'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20261026002221Z')
,p_updated_on=>wwv_flow_imp.dz('20261026004331Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(7836375744036029889)
,p_region_id=>wwv_flow_imp.id(17359717389988037639)
,p_chart_type=>'bar'
,p_height=>'400'
,p_lazy_loading=>false
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'on'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_created_on=>wwv_flow_imp.dz('20261026002221Z')
,p_updated_on=>wwv_flow_imp.dz('20261026003752Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(7836377463411029890)
,p_chart_id=>wwv_flow_imp.id(7836375744036029889)
,p_static_id=>'solicitudes'
,p_seq=>10
,p_name=>'Ingresos'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT conductor_nombre,',
'       periodo,',
'       COUNT(*) AS viajes',
'  FROM (SELECT v.conductor,',
'               CONCAT(CONCAT(e.nombre, '' ''), e.apellido) AS conductor_nombre,',
'               TO_CHAR(v.fechaHoraSalida, :P7_FORMATO) AS periodo',
'          FROM Viajes v',
'          JOIN Estudiantes e ON e.studentId = v.conductor',
'         WHERE v.estado <> ''cancelado''',
'           AND v.fechaHoraSalida >= TRUNC(TO_DATE(:P7_FECHA_INI, ''YYYY-MM-DD''))',
'           AND v.fechaHoraSalida <  TRUNC(TO_DATE(:P7_FECHA_FIN, ''YYYY-MM-DD'')) + 1',
'           AND (:P7_CONDUCTOR IS NULL OR v.conductor = :P7_CONDUCTOR)',
'           AND (:P7_LOCALIDAD IS NULL OR v.tripId IN (SELECT p.tripId',
'                                                        FROM Paradas p',
'                                                        JOIN Direcciones d ON d.direccionID = p.direccionId',
'                                                       WHERE d.localidadID = :P7_LOCALIDAD)))',
' GROUP BY conductor, conductor_nombre, periodo',
' ORDER BY conductor, periodo'))
,p_series_name_column_name=>'CONDUCTOR_NOMBRE'
,p_items_value_column_name=>'VIAJES'
,p_items_label_column_name=>'PERIODO'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_created_on=>wwv_flow_imp.dz('20261026002221Z')
,p_updated_on=>wwv_flow_imp.dz('20261026003752Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(7836376260396029889)
,p_chart_id=>wwv_flow_imp.id(7836375744036029889)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20261026002221Z')
,p_updated_on=>wwv_flow_imp.dz('20261026002221Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(7836376847907029890)
,p_chart_id=>wwv_flow_imp.id(7836375744036029889)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20261026002221Z')
,p_updated_on=>wwv_flow_imp.dz('20261026002221Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7836378690361029891)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(17359716963063037635)
,p_button_name=>'BUSCAR'
,p_static_id=>'buscar'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2086257187394300437
,p_button_image_alt=>'BUSCAR'
,p_icon_css_classes=>'fa-asl-interpreting'
,p_created_on=>wwv_flow_imp.dz('20261026002221Z')
,p_updated_on=>wwv_flow_imp.dz('20261026003224Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1691777976246039046)
,p_name=>'P7_CONDUCTOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(17359716963063037635)
,p_prompt=>'Conductor'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT e.nombre || '' '' || e.apellido AS d, e.studentId AS r',
'  FROM Conductores c',
'  JOIN Estudiantes e ON e.studentId = c.studentId',
' ORDER BY e.nombre ASC'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Todos -'
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026002918Z')
,p_updated_on=>wwv_flow_imp.dz('20261026002918Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17359727577389037707)
,p_name=>'P7_FECHA_FIN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(17359716963063037635)
,p_item_default=>'2026-09-15'
,p_prompt=>'Fecha final'
,p_format_mask=>'YYYY-MM-DD'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026002221Z')
,p_updated_on=>wwv_flow_imp.dz('20261026002221Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17359727533103037706)
,p_name=>'P7_FECHA_INI'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(17359716963063037635)
,p_item_default=>'2026-09-01'
,p_prompt=>'Fecha inicial'
,p_format_mask=>'YYYY-MM-DD'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026002221Z')
,p_updated_on=>wwv_flow_imp.dz('20261026002221Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1691778183325039048)
,p_name=>'P7_FORMATO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(17359716963063037635)
,p_item_default=>'YYYY-MM-DD'
,p_prompt=>'Ver por'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:Por d\00EDa;YYYY-MM-DD,Por mes;YYYY-MM')
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026003224Z')
,p_updated_on=>wwv_flow_imp.dz('20261026003229Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1691778098919039047)
,p_name=>'P7_LOCALIDAD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(17359716963063037635)
,p_prompt=>'Localidad'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nombre AS d, localidadID AS r',
'  FROM Localidad',
' ORDER BY nombre'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Todos -'
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026002918Z')
,p_updated_on=>wwv_flow_imp.dz('20261026002918Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Tablero del pasajero'
,p_alias=>'TABLERO-DEL-PASAJERO'
,p_step_title=>'Tablero del pasajero'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(7754717739357163749)
,p_protection_level=>'C'
,p_page_component_map=>'27'
,p_created_on=>wwv_flow_imp.dz('20261026012500Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261026034221Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_last_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7853392194481405802)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7752496784854082516)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261026012500Z')
,p_updated_on=>wwv_flow_imp.dz('20261026012500Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7846386588211293205)
,p_plug_name=>'New'
,p_static_id=>'new'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3374665444246510938
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH mis AS (',
'  SELECT v.tripId, v.costo, v.distanciaKm,',
'         (v.fechaHoraLlegada - v.fechaHoraSalida) * 1440 AS minutos,',
'         p.direccionId',
'    FROM Solicitudes s',
'    JOIN Paradas p ON p.paradaID = s.paradaID',
'    JOIN Viajes v  ON v.tripId = p.tripId',
'   WHERE s.studentId = :G_STUDENT_ID',
'     AND s.estado = ''aceptada''',
'     AND v.estado = ''completado''',
'),',
'zona AS (',
'  SELECT l.nombre',
'    FROM mis m',
'    JOIN Direcciones d ON d.direccionID = m.direccionId',
'    JOIN Localidad l   ON l.localidadID = d.localidadID',
'   GROUP BY l.nombre',
'   ORDER BY COUNT(*) DESC',
'   FETCH FIRST 1 ROWS ONLY',
')',
'SELECT ''Viajes tomados'' AS etiqueta, TO_CHAR(COUNT(*)) AS valor FROM mis',
'UNION ALL SELECT ''Gastos totales (COP)'', TO_CHAR(NVL(SUM(costo), 0)) FROM mis',
'UNION ALL SELECT ''Distancia promedio (km)'', TO_CHAR(NVL(ROUND(AVG(distanciaKm), 1), 0)) FROM mis',
'UNION ALL SELECT ''Tiempo promedio (min)'', TO_CHAR(NVL(ROUND(AVG(minutos)), 0)) FROM mis',
unistr('UNION ALL SELECT ''Zona m\00E1s frecuente'', NVL((SELECT nombre FROM zona), ''Sin viajes'') FROM dual')))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$METRIC_CARD'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'AVATAR_ICON', 'fa-awesome-face',
  'AVATAR_POSITION', 't-MetricCard-body--avatarPositionTop',
  'AVATAR_SHAPE', 't-Avatar--rounded',
  'AVATAR_TYPE', 'icon',
  'DISPLAY_AVATAR', 'Y',
  'DISPLAY_BADGE', 'N',
  'LAYOUT', '2cols',
  'METRIC', '&VALOR.',
  'TITLE', '&ETIQUETA.')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026012713Z')
,p_updated_on=>wwv_flow_imp.dz('20261026012713Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7846386654387293206)
,p_name=>'ETIQUETA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ETIQUETA'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_available_clientside=>false
,p_updated_on=>wwv_flow_imp.dz('20261026012713Z')
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7846386797417293207)
,p_name=>'VALOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALOR'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_available_clientside=>false
,p_updated_on=>wwv_flow_imp.dz('20261026012713Z')
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Mi vehiculo'
,p_alias=>'MI-VEHICULO'
,p_step_title=>'Mi vehiculo'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20261026032627Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261026032759Z')
,p_created_by=>'J.OCAMPOP'
,p_last_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7877942037487134666)
,p_plug_name=>'Mi vehiculo'
,p_static_id=>'mi-vehiculo'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'VEHICULO'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_required_role=>wwv_flow_imp.id(7754653101854157939)
,p_created_on=>wwv_flow_imp.dz('20261026032629Z')
,p_updated_on=>wwv_flow_imp.dz('20261026032759Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7877946510775134701)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7877942037487134666)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20261026032629Z')
,p_updated_on=>wwv_flow_imp.dz('20261026032629Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7877947460775134704)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(7877942037487134666)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P9_PLACA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20261026032629Z')
,p_updated_on=>wwv_flow_imp.dz('20261026032629Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(7877948201040134705)
,p_branch_action=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20261026032629Z')
,p_updated_on=>wwv_flow_imp.dz('20261026032629Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7877943544586134698)
,p_name=>'P9_ANIO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7877942037487134666)
,p_item_source_plug_id=>wwv_flow_imp.id(7877942037487134666)
,p_prompt=>'Anio'
,p_source=>'ANIO'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026032629Z')
,p_updated_on=>wwv_flow_imp.dz('20261026032629Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7877944369875134699)
,p_name=>'P9_COLOR'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7877942037487134666)
,p_item_source_plug_id=>wwv_flow_imp.id(7877942037487134666)
,p_prompt=>'Color'
,p_source=>'COLOR'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026032629Z')
,p_updated_on=>wwv_flow_imp.dz('20261026032629Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7877943914571134699)
,p_name=>'P9_CUPOSDISP'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7877942037487134666)
,p_item_source_plug_id=>wwv_flow_imp.id(7877942037487134666)
,p_prompt=>'Cuposdisp'
,p_source=>'CUPOSDISP'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026032629Z')
,p_updated_on=>wwv_flow_imp.dz('20261026032629Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7877942706779134698)
,p_name=>'P9_MARCA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7877942037487134666)
,p_item_source_plug_id=>wwv_flow_imp.id(7877942037487134666)
,p_prompt=>'Marca'
,p_source=>'MARCA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026032629Z')
,p_updated_on=>wwv_flow_imp.dz('20261026032629Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7877943177620134698)
,p_name=>'P9_MODELO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7877942037487134666)
,p_item_source_plug_id=>wwv_flow_imp.id(7877942037487134666)
,p_prompt=>'Modelo'
,p_source=>'MODELO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>60
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026032629Z')
,p_updated_on=>wwv_flow_imp.dz('20261026032629Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7877942333637134696)
,p_name=>'P9_PLACA'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7877942037487134666)
,p_item_source_plug_id=>wwv_flow_imp.id(7877942037487134666)
,p_source=>'PLACA'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026032629Z')
,p_updated_on=>wwv_flow_imp.dz('20261026032629Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(7855778783812079230)
,p_computation_sequence=>10
,p_computation_item=>'P9_PLACA'
,p_static_id=>'p9-placa'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select placa from conductores where studentid = :G_STUDENT_ID'
,p_created_on=>wwv_flow_imp.dz('20261026032759Z')
,p_updated_on=>wwv_flow_imp.dz('20261026032759Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7877948690491134706)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(7877942037487134666)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Mi vehiculo'
,p_static_id=>'initialize-form-mi-vehiculo'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>7877948690491134706
,p_created_on=>wwv_flow_imp.dz('20261026032629Z')
,p_updated_on=>wwv_flow_imp.dz('20261026032629Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7877949008204134706)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(7877942037487134666)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Mi vehiculo'
,p_static_id=>'process-form-mi-vehiculo'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7877949008204134706
,p_created_on=>wwv_flow_imp.dz('20261026032629Z')
,p_updated_on=>wwv_flow_imp.dz('20261026032629Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'RF3 Publicar viaje'
,p_alias=>'RF3-PUBLICAR-VIAJE'
,p_step_title=>'Publicar viaje'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(7754653101854157939)
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20261026032524Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261026043931Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_last_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7876673142181744896)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7752496784854082516)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261026032524Z')
,p_updated_on=>wwv_flow_imp.dz('20261026032524Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7846386849377293208)
,p_plug_name=>'Publicar viaje'
,p_static_id=>'publicar-viaje'
,p_title=>'Publicar viaje'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026032705Z')
,p_updated_on=>wwv_flow_imp.dz('20261026032705Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7846387577287293215)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(7846386849377293208)
,p_button_name=>'BTN_PUBLICAR'
,p_static_id=>'btn-publicar'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Publicar viaje'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261026033024Z')
,p_updated_on=>wwv_flow_imp.dz('20261026033024Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7846387419595293214)
,p_name=>'P10_COSTO'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7846386849377293208)
,p_prompt=>'Costo por pasajero (COP)'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'min_value', '0',
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026033024Z')
,p_updated_on=>wwv_flow_imp.dz('20261026033024Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7846387391222293213)
,p_name=>'P10_CUPOS'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7846386849377293208)
,p_prompt=>'Cupos ofrecidos'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'min_value', '1',
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026033024Z')
,p_updated_on=>wwv_flow_imp.dz('20261026033024Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7846387010043293210)
,p_name=>'P10_DESTINO'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7846386849377293208)
,p_prompt=>'Destino'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT CASE WHEN s.sedeID IS NOT NULL THEN ''SEDE: '' || d.referencia ELSE d.referencia END AS d, d.direccionID AS r FROM Direcciones d LEFT JOIN Sedes s ON s.direccionID = d.direccionID ORDER BY CASE WHEN s.sedeID IS NULL THEN 1 ELSE 0 END, d.referenc'
||'ia'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione -'
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026032834Z')
,p_updated_on=>wwv_flow_imp.dz('20261026033511Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7846386986568293209)
,p_name=>'P10_ORIGEN'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7846386849377293208)
,p_prompt=>'Origen'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT CASE WHEN s.sedeID IS NOT NULL THEN ''SEDE: '' || d.referencia ELSE d.referencia END AS d, d.direccionID AS r FROM Direcciones d LEFT JOIN Sedes s ON s.direccionID = d.direccionID ORDER BY CASE WHEN s.sedeID IS NULL THEN 1 ELSE 0 END, d.referenc'
||'ia'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione -'
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026032705Z')
,p_updated_on=>wwv_flow_imp.dz('20261026033510Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7846387138984293211)
,p_name=>'P10_PARADA'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7846386849377293208)
,p_prompt=>'Parada de la ruta'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT referencia AS d, direccionID AS r FROM Direcciones ORDER BY 1'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione -'
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026032834Z')
,p_updated_on=>wwv_flow_imp.dz('20261026032834Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7846387284503293212)
,p_name=>'P10_SALIDA'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7846386849377293208)
,p_prompt=>'Fecha y hora de salida'
,p_format_mask=>'YYYY-MM-DD HH24:MI'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026032834Z')
,p_updated_on=>wwv_flow_imp.dz('20261026033024Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7846387698854293216)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Publicar viaje'
,p_static_id=>'publicar-viaje'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_id  VARCHAR2(10) := ''V'' || LPAD(seq_viaje.NEXTVAL, 4, ''0'');',
'  v_max NUMBER;',
'BEGIN',
'  SELECT ve.cuposDisp INTO v_max',
'    FROM Vehiculo ve',
'    JOIN Conductores c ON c.placa = ve.placa',
'   WHERE c.studentId = :G_STUDENT_ID;',
'',
'  IF :P10_CUPOS > v_max THEN',
'    RAISE_APPLICATION_ERROR(-20010, ''Los cupos no pueden superar la capacidad de tu vehiculo ('' || v_max || '').'');',
'  END IF;',
'',
'  INSERT INTO Viajes (tripId, conductor, direccionIdOrigen, direccionIdDestino, fechaHoraSalida, estado, cuposDisponibles, costo)',
'  VALUES (v_id, :G_STUDENT_ID, :P10_ORIGEN, :P10_DESTINO, TO_DATE(:P10_SALIDA, ''YYYY-MM-DD HH24:MI''), ''programado'', :P10_CUPOS, :P10_COSTO);',
'',
'  INSERT INTO Paradas (paradaID, tripId, direccionId, orden)',
'  VALUES (''P'' || LPAD(seq_parada.NEXTVAL, 5, ''0''), v_id, :P10_PARADA, 1);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(7846387577287293215)
,p_process_success_message=>'Viaje publicado correctamente.'
,p_internal_uid=>7846387698854293216
,p_created_on=>wwv_flow_imp.dz('20261026033058Z')
,p_updated_on=>wwv_flow_imp.dz('20261026033058Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'RF5 Actualizar estado del viaje'
,p_alias=>'RF5-ACTUALIZAR-ESTADO-DEL-VIAJE'
,p_step_title=>'Actualizar estado del viaje'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(7754653101854157939)
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20261026035518Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261026043942Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_last_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7846387749668293217)
,p_plug_name=>'Actualizar estado del viaje'
,p_static_id=>'actualizar-estado-del-viaje'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026035908Z')
,p_updated_on=>wwv_flow_imp.dz('20261026035909Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7881027756320924336)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7752496784854082516)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261026035519Z')
,p_updated_on=>wwv_flow_imp.dz('20261026035519Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7846388244299293222)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(7846387749668293217)
,p_button_name=>'BTN_ACTUALIZAR'
,p_static_id=>'btn-actualizar'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Actualizar estado'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261026040033Z')
,p_updated_on=>wwv_flow_imp.dz('20261026040033Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7846387977884293219)
,p_name=>'P12_ACCION'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7846387749668293217)
,p_prompt=>'Accion'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT ''Iniciar viaje'' AS d, ''INICIAR'' AS r FROM dual UNION ALL SELECT ''Completar viaje'', ''COMPLETAR'' FROM dual UNION ALL SELECT ''Cancelar viaje'', ''CANCELAR'' FROM dual'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026035909Z')
,p_updated_on=>wwv_flow_imp.dz('20261026035909Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7846388065700293220)
,p_name=>'P12_DISTANCIA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7846387749668293217)
,p_prompt=>'Distancia recorrida (km) - solo al completar'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026035909Z')
,p_updated_on=>wwv_flow_imp.dz('20261026035909Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7846388116803293221)
,p_name=>'P12_LLEGADA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7846387749668293217)
,p_prompt=>'Hora de llegada (vacio = ahora) - solo al completar'
,p_format_mask=>'YYYY-MM-DD HH24:MI'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026035909Z')
,p_updated_on=>wwv_flow_imp.dz('20261026035909Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7846387871064293218)
,p_name=>'P12_VIAJE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7846387749668293217)
,p_prompt=>'Viaje'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT tripId || '' - '' || TO_CHAR(fechaHoraSalida, ''YYYY-MM-DD HH24:MI'') || '' ('' || estado || '')'' AS d, tripId AS r FROM Viajes WHERE conductor = :G_STUDENT_ID ORDER BY fechaHoraSalida DESC'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Selecciona un viaje -'
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026035909Z')
,p_updated_on=>wwv_flow_imp.dz('20261026035909Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7846388365153293223)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Actualizar estado del viaje'
,p_static_id=>'actualizar-estado-del-viaje'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_estado VARCHAR2(15);',
'BEGIN',
'  v_estado := CASE :P12_ACCION WHEN ''INICIAR'' THEN ''en curso'' WHEN ''COMPLETAR'' THEN ''completado'' WHEN ''CANCELAR'' THEN ''cancelado'' END;',
'  IF :P12_ACCION = ''COMPLETAR'' THEN',
'    IF :P12_DISTANCIA IS NULL THEN',
'      RAISE_APPLICATION_ERROR(-20011, ''Indica la distancia recorrida (km) para completar el viaje.'');',
'    END IF;',
'    UPDATE Viajes SET estado = v_estado, fechaHoraLlegada = NVL(TO_DATE(:P12_LLEGADA, ''YYYY-MM-DD HH24:MI''), SYSDATE), distanciaKm = :P12_DISTANCIA WHERE tripId = :P12_VIAJE AND conductor = :G_STUDENT_ID;',
'  ELSE',
'    UPDATE Viajes SET estado = v_estado WHERE tripId = :P12_VIAJE AND conductor = :G_STUDENT_ID;',
'  END IF;',
'  IF SQL%ROWCOUNT = 0 THEN',
'    RAISE_APPLICATION_ERROR(-20012, ''El viaje no existe o no es tuyo.'');',
'  END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(7846388244299293222)
,p_process_success_message=>'Estado del viaje actualizado.'
,p_internal_uid=>7846388365153293223
,p_created_on=>wwv_flow_imp.dz('20261026040033Z')
,p_updated_on=>wwv_flow_imp.dz('20261026040033Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'RF6 Historial de viajes'
,p_alias=>'RF6-HISTORIAL-DE-VIAJES'
,p_step_title=>'Historial de viajes'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(7754653101854157939)
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20261026041032Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261026044010Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_last_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7886089238763015708)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7752496784854082516)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261026041033Z')
,p_updated_on=>wwv_flow_imp.dz('20261026041033Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7886094318262016104)
,p_plug_name=>'RF6 Historial de viajes'
,p_static_id=>'rf6-historial-de-viajes'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>'SELECT v.tripId AS "Viaje", o.referencia AS "Origen", d.referencia AS "Destino", TO_CHAR(v.fechaHoraSalida, ''YYYY-MM-DD HH24:MI'') AS "Salida", v.estado AS "Estado", v.costo AS "Costo", (SELECT COUNT(*) FROM Solicitudes s JOIN Paradas p ON p.paradaID '
||'= s.paradaID WHERE p.tripId = v.tripId AND s.estado = ''aceptada'') AS "Confirmados", (SELECT LISTAGG(e.nombre || '' '' || e.apellido, '', '') WITHIN GROUP (ORDER BY e.nombre) FROM Solicitudes s JOIN Paradas p ON p.paradaID = s.paradaID JOIN Estudiantes e '
||'ON e.studentId = s.studentId WHERE p.tripId = v.tripId AND s.estado = ''aceptada'') AS "Pasajeros confirmados" FROM Viajes v JOIN Direcciones o ON o.direccionID = v.direccionIdOrigen JOIN Direcciones d ON d.direccionID = v.direccionIdDestino WHERE v.co'
||'nductor = :G_STUDENT_ID ORDER BY v.fechaHoraSalida DESC'
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261026041036Z')
,p_updated_on=>wwv_flow_imp.dz('20261026041100Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'EST1@JAVERIANA.EDU.CO'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(7886094448549016104)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>7886094448549016104
,p_created_on=>wwv_flow_imp.dz('20261026041036Z')
,p_updated_on=>wwv_flow_imp.dz('20261026041100Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'EST1@JAVERIANA.EDU.CO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7886098024352016120)
,p_db_column_name=>'Confirmados'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Confirmados'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026041036Z')
,p_updated_on=>wwv_flow_imp.dz('20261026041036Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7886097691534016118)
,p_db_column_name=>'Costo'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Costo'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026041036Z')
,p_updated_on=>wwv_flow_imp.dz('20261026041036Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7886096401720016114)
,p_db_column_name=>'Destino'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Destino'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026041036Z')
,p_updated_on=>wwv_flow_imp.dz('20261026041036Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7886097221100016117)
,p_db_column_name=>'Estado'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026041036Z')
,p_updated_on=>wwv_flow_imp.dz('20261026041036Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7886096041043016112)
,p_db_column_name=>'Origen'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Origen'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026041036Z')
,p_updated_on=>wwv_flow_imp.dz('20261026041036Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7886098443393016121)
,p_db_column_name=>'Pasajeros confirmados'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Pasajeros Confirmados'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026041036Z')
,p_updated_on=>wwv_flow_imp.dz('20261026041036Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7886096817231016115)
,p_db_column_name=>'Salida'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Salida'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026041036Z')
,p_updated_on=>wwv_flow_imp.dz('20261026041036Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7886095636248016109)
,p_db_column_name=>'Viaje'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Viaje'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026041036Z')
,p_updated_on=>wwv_flow_imp.dz('20261026041036Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7886102155754018501)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'Viaje:Origen:Destino:Salida:Estado:Costo:Confirmados:Pasajeros confirmados'
,p_created_on=>wwv_flow_imp.dz('20261026041100Z')
,p_updated_on=>wwv_flow_imp.dz('20261026041100Z')
,p_created_by=>'EST1@JAVERIANA.EDU.CO'
,p_updated_by=>'EST1@JAVERIANA.EDU.CO'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
,p_name=>'RF8 Mi cuenta'
,p_alias=>'RF8-MI-CUENTA'
,p_step_title=>'Mi cuenta'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(7754717739357163749)
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20261026042757Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261026044025Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_last_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7890343515857503506)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7752496784854082516)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261026042757Z')
,p_updated_on=>wwv_flow_imp.dz('20261026042757Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7890344742811503678)
,p_plug_name=>'RF8 Mi cuenta'
,p_static_id=>'rf8-mi-cuenta'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'ESTUDIANTES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261026042759Z')
,p_updated_on=>wwv_flow_imp.dz('20261026042759Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7890351367898503686)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7890344742811503678)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20261026042759Z')
,p_updated_on=>wwv_flow_imp.dz('20261026042759Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7890352661081503687)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7890344742811503678)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P14_STUDENTID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20261026042759Z')
,p_updated_on=>wwv_flow_imp.dz('20261026042759Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7890351862616503687)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7890344742811503678)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P14_STUDENTID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20261026042759Z')
,p_updated_on=>wwv_flow_imp.dz('20261026042759Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7890352263021503687)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(7890344742811503678)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P14_STUDENTID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20261026042759Z')
,p_updated_on=>wwv_flow_imp.dz('20261026042759Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(7890353044737503688)
,p_branch_action=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20261026042759Z')
,p_updated_on=>wwv_flow_imp.dz('20261026042759Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7890345803416503680)
,p_name=>'P14_APELLIDO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7890344742811503678)
,p_item_source_plug_id=>wwv_flow_imp.id(7890344742811503678)
,p_prompt=>'Apellido'
,p_source=>'APELLIDO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>60
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026042759Z')
,p_updated_on=>wwv_flow_imp.dz('20261026042759Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7890346250259503680)
,p_name=>'P14_CEDULA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7890344742811503678)
,p_item_source_plug_id=>wwv_flow_imp.id(7890344742811503678)
,p_prompt=>'Cedula'
,p_source=>'CEDULA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026042759Z')
,p_updated_on=>wwv_flow_imp.dz('20261026042759Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7890347055903503681)
,p_name=>'P14_CELULAR'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7890344742811503678)
,p_item_source_plug_id=>wwv_flow_imp.id(7890344742811503678)
,p_prompt=>'Celular'
,p_source=>'CELULAR'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026042759Z')
,p_updated_on=>wwv_flow_imp.dz('20261026042759Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7890348276084503683)
,p_name=>'P14_CONTRASENA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(7890344742811503678)
,p_item_source_plug_id=>wwv_flow_imp.id(7890344742811503678)
,p_prompt=>'Contrasena'
,p_source=>'CONTRASENA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026042759Z')
,p_updated_on=>wwv_flow_imp.dz('20261026042759Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7890346671966503681)
,p_name=>'P14_CORREOINSTITUCIONAL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7890344742811503678)
,p_item_source_plug_id=>wwv_flow_imp.id(7890344742811503678)
,p_prompt=>'Correoinstitucional'
,p_source=>'CORREOINSTITUCIONAL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026042759Z')
,p_updated_on=>wwv_flow_imp.dz('20261026042759Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7890345418501503679)
,p_name=>'P14_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7890344742811503678)
,p_item_source_plug_id=>wwv_flow_imp.id(7890344742811503678)
,p_prompt=>'Nombre'
,p_source=>'NOMBRE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>60
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026042759Z')
,p_updated_on=>wwv_flow_imp.dz('20261026042759Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7890347888287503682)
,p_name=>'P14_PROGRAMA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(7890344742811503678)
,p_item_source_plug_id=>wwv_flow_imp.id(7890344742811503678)
,p_prompt=>'Programa'
,p_source=>'PROGRAMA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026042759Z')
,p_updated_on=>wwv_flow_imp.dz('20261026042759Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7890345054200503678)
,p_name=>'P14_STUDENTID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7890344742811503678)
,p_item_source_plug_id=>wwv_flow_imp.id(7890344742811503678)
,p_source=>'STUDENTID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026042759Z')
,p_updated_on=>wwv_flow_imp.dz('20261026042759Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7890347412082503682)
,p_name=>'P14_UNIVERSIDAD'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(7890344742811503678)
,p_item_source_plug_id=>wwv_flow_imp.id(7890344742811503678)
,p_prompt=>'Universidad'
,p_source=>'UNIVERSIDAD'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>60
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026042759Z')
,p_updated_on=>wwv_flow_imp.dz('20261026042759Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(7846388463228293224)
,p_computation_sequence=>10
,p_computation_item=>'P14_STUDENTID'
,p_static_id=>'p14-studentid'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'SELECT :G_STUDENT_ID FROM dual'
,p_created_on=>wwv_flow_imp.dz('20261026043036Z')
,p_updated_on=>wwv_flow_imp.dz('20261026043036Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7890353417270503689)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(7890344742811503678)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form RF8 Mi cuenta'
,p_static_id=>'initialize-form-rf8-mi-cuenta'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>7890353417270503689
,p_created_on=>wwv_flow_imp.dz('20261026042759Z')
,p_updated_on=>wwv_flow_imp.dz('20261026042759Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7890353813849503690)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(7890344742811503678)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form RF8 Mi cuenta'
,p_static_id=>'process-form-rf8-mi-cuenta'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7890353813849503690
,p_created_on=>wwv_flow_imp.dz('20261026042759Z')
,p_updated_on=>wwv_flow_imp.dz('20261026042759Z')
,p_created_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
,p_updated_by=>'M.DUQUEJ@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_imp_page.create_page(
 p_id=>22
,p_name=>'Solicitar cupo'
,p_alias=>'SOLICITAR-CUPO'
,p_step_title=>'Solicitar cupo'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(7754717739357163749)
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_created_on=>wwv_flow_imp.dz('20261026033752Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261026035716Z')
,p_created_by=>'J.OCAMPOP'
,p_last_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(7855778813062079231)
,p_name=>'Detalle del viaje'
,p_static_id=>'detalle-del-viaje'
,p_template=>4075786578761660127
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v.tripid,',
'       e.nombre || '' '' || e.apellido                    conductor,',
'       ve.marca || '' '' || ve.modelo || '' '' || ve.color  vehiculo,',
'       dor.referencia                                   origen,',
'       dde.referencia                                   destino,',
'       to_char(v.fechahorasalida,''DD/MM/YYYY HH24:MI'')  salida,',
'       v.cuposdisponibles                               cupos,',
'       v.costo',
'from viajes v',
'join conductores c   on c.studentid = v.conductor',
'join estudiantes e   on e.studentid = c.studentid',
'join vehiculo ve     on ve.placa = c.placa',
'join direcciones dor on dor.direccionid = v.direccionidorigen',
'join direcciones dde on dde.direccionid = v.direccioniddestino',
'where v.tripid = :P22_TRIPID'))
,p_display_when_condition=>'P22_TRIPID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2542081983073888486
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026034456Z')
,p_updated_on=>wwv_flow_imp.dz('20261026034456Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7855779051200079233)
,p_query_column_id=>2
,p_column_alias=>'CONDUCTOR'
,p_column_display_sequence=>20
,p_column_heading=>'Conductor'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026034456Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7855779696180079239)
,p_query_column_id=>8
,p_column_alias=>'COSTO'
,p_column_display_sequence=>80
,p_column_heading=>'Costo'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026034456Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7855779523873079238)
,p_query_column_id=>7
,p_column_alias=>'CUPOS'
,p_column_display_sequence=>70
,p_column_heading=>'Cupos'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026034456Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7855779308982079236)
,p_query_column_id=>5
,p_column_alias=>'DESTINO'
,p_column_display_sequence=>50
,p_column_heading=>'Destino'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026034456Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7855779283957079235)
,p_query_column_id=>4
,p_column_alias=>'ORIGEN'
,p_column_display_sequence=>40
,p_column_heading=>'Origen'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026034456Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7855779483873079237)
,p_query_column_id=>6
,p_column_alias=>'SALIDA'
,p_column_display_sequence=>60
,p_column_heading=>'Salida'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026034456Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7855778936614079232)
,p_query_column_id=>1
,p_column_alias=>'TRIPID'
,p_column_display_sequence=>10
,p_column_heading=>'Tripid'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026034456Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7855779166216079234)
,p_query_column_id=>3
,p_column_alias=>'VEHICULO'
,p_column_display_sequence=>30
,p_column_heading=>'Vehiculo'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026034456Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(7855780345022079246)
,p_name=>'Mis solicitudes'
,p_static_id=>'mis-solicitudes'
,p_template=>4075786578761660127
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.solicitudid,',
'       p.tripid,',
'       to_char(v.fechahorasalida,''DD/MM/YYYY HH24:MI'') salida,',
'       d.referencia parada,',
'       s.estado,',
'       to_char(s.fechasolicitud,''DD/MM/YYYY HH24:MI'') solicitada',
'from solicitudes s',
'join paradas p     on p.paradaid = s.paradaid',
'join viajes v      on v.tripid = p.tripid',
'join direcciones d on d.direccionid = p.direccionid',
'where s.studentid = :G_STUDENT_ID',
'order by s.fechasolicitud desc'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2542081983073888486
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026035715Z')
,p_updated_on=>wwv_flow_imp.dz('20261026035716Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7884129092919932101)
,p_query_column_id=>5
,p_column_alias=>'ESTADO'
,p_column_display_sequence=>50
,p_column_heading=>'Estado'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026035716Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7855780732591079250)
,p_query_column_id=>4
,p_column_alias=>'PARADA'
,p_column_display_sequence=>40
,p_column_heading=>'Parada'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026035716Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7855780657264079249)
,p_query_column_id=>3
,p_column_alias=>'SALIDA'
,p_column_display_sequence=>30
,p_column_heading=>'Salida'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026035716Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7884129139885932102)
,p_query_column_id=>6
,p_column_alias=>'SOLICITADA'
,p_column_display_sequence=>60
,p_column_heading=>'Solicitada'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026035716Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7855780443060079247)
,p_query_column_id=>1
,p_column_alias=>'SOLICITUDID'
,p_column_display_sequence=>10
,p_column_heading=>'Solicitudid'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026035716Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7855780596415079248)
,p_query_column_id=>2
,p_column_alias=>'TRIPID'
,p_column_display_sequence=>20
,p_column_heading=>'Tripid'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026035716Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7855779737517079240)
,p_plug_name=>'Solicitar cupo'
,p_static_id=>'solicitar-cupo'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P22_TRIPID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026035715Z')
,p_updated_on=>wwv_flow_imp.dz('20261026035716Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7855780033292079243)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(7855779737517079240)
,p_button_name=>'SOLICITAR'
,p_static_id=>'solicitar'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Solicitar cupo'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261026035716Z')
,p_updated_on=>wwv_flow_imp.dz('20261026035716Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7855779927394079242)
,p_name=>'P22_PARADA'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7855779737517079240)
,p_prompt=>'Punto de recogida'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d.referencia || '' - '' || l.nombre d, p.paradaid r',
'from paradas p',
'join direcciones d on d.direccionid = p.direccionid',
'join localidad l   on l.localidadid = d.localidadid',
'where p.tripid = :P22_TRIPID',
'order by p.orden'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026035716Z')
,p_updated_on=>wwv_flow_imp.dz('20261026035716Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7855779807493079241)
,p_name=>'P22_TRIPID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7855779737517079240)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026035715Z')
,p_updated_on=>wwv_flow_imp.dz('20261026035715Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7855780161891079244)
,p_validation_name=>'Reglas de solicitud'
,p_static_id=>'reglas-de-solicitud'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_estado viajes.estado%type;',
'  v_cupos  viajes.cuposdisponibles%type;',
'  v_cond   viajes.conductor%type;',
'  v_n      number;',
'begin',
'  select estado, cuposdisponibles, conductor',
'    into v_estado, v_cupos, v_cond',
'    from viajes where tripid = :P22_TRIPID;',
'',
'  if lower(v_estado) != ''programado'' then',
'    return ''El viaje ya no admite reservas.'';',
'  end if;',
'  if v_cupos <= 0 then',
'    return ''El viaje no tiene cupos disponibles.'';',
'  end if;',
'  if v_cond = :G_STUDENT_ID then',
'    return ''No puedes solicitar cupo en tu propio viaje.'';',
'  end if;',
'',
'  select count(*) into v_n',
'    from paradas where paradaid = :P22_PARADA and tripid = :P22_TRIPID;',
'  if v_n = 0 then',
'    return ''La parada no pertenece a este viaje.'';',
'  end if;',
'',
'  select count(*) into v_n',
'    from solicitudes s join paradas p on p.paradaid = s.paradaid',
'   where p.tripid = :P22_TRIPID',
'     and s.studentid = :G_STUDENT_ID',
'     and lower(s.estado) in (''pendiente'',''aceptada'');',
'  if v_n > 0 then',
'    return ''Ya tienes una solicitud activa para este viaje.'';',
'  end if;',
'',
'  return null;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(7855780033292079243)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20261026035716Z')
,p_updated_on=>wwv_flow_imp.dz('20261026035716Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7855780267171079245)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Crear solicitud'
,p_static_id=>'crear-solicitud'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_id solicitudes.solicitudid%type;',
'begin',
'  select ''S'' || lpad(nvl(max(to_number(regexp_substr(solicitudid,''\d+''))),0) + 1, 4, ''0'')',
'    into v_id',
'    from solicitudes;',
'',
'  insert into solicitudes (solicitudid, paradaid, studentid, fechasolicitud, estado)',
'  values (v_id, :P22_PARADA, :G_STUDENT_ID, sysdate, ''pendiente'');',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(7855780033292079243)
,p_process_success_message=>'Solicitud enviada. El conductor la revisara.'
,p_internal_uid=>7855780267171079245
,p_created_on=>wwv_flow_imp.dz('20261026035716Z')
,p_updated_on=>wwv_flow_imp.dz('20261026035716Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_imp_page.create_page(
 p_id=>23
,p_name=>'Solicitudes Recibidas'
,p_alias=>'SOLICITUDES-RECIBIDAS'
,p_step_title=>'Solicitudes Recibidas'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(7754653101854157939)
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_created_on=>wwv_flow_imp.dz('20261026041122Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261026042704Z')
,p_created_by=>'J.OCAMPOP'
,p_last_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(7884130859124932119)
,p_name=>'Historial Solicitudes'
,p_static_id=>'historial-solicitudes'
,p_template=>4075786578761660127
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.solicitudid, p.tripid,',
'       e.nombre || '' '' || e.apellido pasajero,',
'       d.referencia parada, s.estado,',
'       to_char(s.fechasolicitud,''DD/MM/YYYY HH24:MI'') solicitada',
'from solicitudes s',
'join paradas p     on p.paradaid = s.paradaid',
'join viajes v      on v.tripid = p.tripid',
'join estudiantes e on e.studentid = s.studentid',
'join direcciones d on d.direccionid = p.direccionid',
'where v.conductor = :G_STUDENT_ID',
'order by s.fechasolicitud desc'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2542081983073888486
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026041958Z')
,p_updated_on=>wwv_flow_imp.dz('20261026041958Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7884131361425932124)
,p_query_column_id=>5
,p_column_alias=>'ESTADO'
,p_column_display_sequence=>50
,p_column_heading=>'Estado'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026041958Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7884131221856932123)
,p_query_column_id=>4
,p_column_alias=>'PARADA'
,p_column_display_sequence=>40
,p_column_heading=>'Parada'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026041958Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7884131172722932122)
,p_query_column_id=>3
,p_column_alias=>'PASAJERO'
,p_column_display_sequence=>30
,p_column_heading=>'Pasajero'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026041958Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7884131419180932125)
,p_query_column_id=>6
,p_column_alias=>'SOLICITADA'
,p_column_display_sequence=>60
,p_column_heading=>'Solicitada'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026041958Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7884130903416932120)
,p_query_column_id=>1
,p_column_alias=>'SOLICITUDID'
,p_column_display_sequence=>10
,p_column_heading=>'Solicitudid'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026041958Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7884131066350932121)
,p_query_column_id=>2
,p_column_alias=>'TRIPID'
,p_column_display_sequence=>20
,p_column_heading=>'Tripid'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026041958Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7884129326087932104)
,p_plug_name=>'New'
,p_static_id=>'new'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026041958Z')
,p_updated_on=>wwv_flow_imp.dz('20261026041958Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(7884129605860932107)
,p_name=>'Solicitudes Pendientes'
,p_static_id=>'solicitudes-pendientes'
,p_template=>4075786578761660127
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.solicitudid,',
'       p.tripid,',
'       to_char(v.fechahorasalida,''DD/MM/YYYY HH24:MI'') salida,',
'       e.nombre || '' '' || e.apellido                   pasajero,',
'       e.celular,',
'       d.referencia                                    parada,',
'       v.cuposdisponibles                              cupos,',
'       ''Aceptar''                                       aceptar,',
'       ''Rechazar''                                      rechazar',
'from solicitudes s',
'join paradas p     on p.paradaid = s.paradaid',
'join viajes v      on v.tripid = p.tripid',
'join estudiantes e on e.studentid = s.studentid',
'join direcciones d on d.direccionid = p.direccionid',
'where v.conductor = :G_STUDENT_ID',
'  and lower(s.estado) = ''pendiente''',
'  and lower(v.estado) = ''programado''',
'order by v.fechahorasalida, s.fechasolicitud'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2542081983073888486
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026041958Z')
,p_updated_on=>wwv_flow_imp.dz('20261026041958Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7884130485475932115)
,p_query_column_id=>8
,p_column_alias=>'ACEPTAR'
,p_column_display_sequence=>80
,p_column_heading=>'Aceptar'
,p_column_link=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::P23_SOLICITUD,P23_ACCION:#SOLICITUDID#,aceptar'
,p_column_linktext=>'Aceptar'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026041958Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7884130103172932112)
,p_query_column_id=>5
,p_column_alias=>'CELULAR'
,p_column_display_sequence=>50
,p_column_heading=>'Celular'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026041958Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7884130317358932114)
,p_query_column_id=>7
,p_column_alias=>'CUPOS'
,p_column_display_sequence=>70
,p_column_heading=>'Cupos'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026041958Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7884130251014932113)
,p_query_column_id=>6
,p_column_alias=>'PARADA'
,p_column_display_sequence=>60
,p_column_heading=>'Parada'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026041958Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7884130074148932111)
,p_query_column_id=>4
,p_column_alias=>'PASAJERO'
,p_column_display_sequence=>40
,p_column_heading=>'Pasajero'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026041958Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7884130563508932116)
,p_query_column_id=>9
,p_column_alias=>'RECHAZAR'
,p_column_display_sequence=>90
,p_column_heading=>'Rechazar'
,p_column_link=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::P23_SOLICITUD,P23_ACCION:#SOLICITUDID#,rechazar'
,p_column_linktext=>'Rechazar'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026041958Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7884129934351932110)
,p_query_column_id=>3
,p_column_alias=>'SALIDA'
,p_column_display_sequence=>30
,p_column_heading=>'Salida'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026041958Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7884129742815932108)
,p_query_column_id=>1
,p_column_alias=>'SOLICITUDID'
,p_column_display_sequence=>10
,p_column_heading=>'Solicitudid'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026041958Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7884129881136932109)
,p_query_column_id=>2
,p_column_alias=>'TRIPID'
,p_column_display_sequence=>20
,p_column_heading=>'Tripid'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026041958Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7884129537552932106)
,p_name=>'P23_ACCION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7884129326087932104)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026041958Z')
,p_updated_on=>wwv_flow_imp.dz('20261026041958Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7884129464734932105)
,p_name=>'P23_SOLICITUD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7884129326087932104)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026041958Z')
,p_updated_on=>wwv_flow_imp.dz('20261026041958Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7884130636607932117)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Gestionar solicitud'
,p_static_id=>'gestionar-solicitud'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_trip    viajes.tripid%type;',
'  v_cond    viajes.conductor%type;',
'  v_vestado viajes.estado%type;',
'  v_cupos   viajes.cuposdisponibles%type;',
'  v_sestado solicitudes.estado%type;',
'begin',
'  select p.tripid, s.estado',
'    into v_trip, v_sestado',
'    from solicitudes s',
'    join paradas p on p.paradaid = s.paradaid',
'   where s.solicitudid = :P23_SOLICITUD;',
'',
unistr('  -- bloquea el viaje para evitar que dos aceptaciones simult\00E1neas pasen el l\00EDmite de cupos'),
'  select conductor, estado, cuposdisponibles',
'    into v_cond, v_vestado, v_cupos',
'    from viajes',
'   where tripid = v_trip',
'     for update;',
'',
'  if v_cond != :G_STUDENT_ID then',
'    raise_application_error(-20010, ''Esta solicitud no pertenece a uno de tus viajes.'');',
'  end if;',
'  if lower(v_sestado) != ''pendiente'' then',
'    raise_application_error(-20011, ''La solicitud ya fue gestionada.'');',
'  end if;',
'  if lower(v_vestado) != ''programado'' then',
'    raise_application_error(-20012, ''El viaje ya no admite cambios en sus solicitudes.'');',
'  end if;',
'',
'  if :P23_ACCION = ''aceptar'' then',
'    if v_cupos <= 0 then',
'      raise_application_error(-20013, ''El viaje no tiene cupos disponibles.'');',
'    end if;',
'    update viajes',
'       set cuposdisponibles = cuposdisponibles - 1',
'     where tripid = v_trip;',
'    update solicitudes set estado = ''aceptada''',
'     where solicitudid = :P23_SOLICITUD;',
'    apex_application.g_print_success_message := ''Solicitud aceptada. Cupos restantes: '' || (v_cupos - 1);',
'  elsif :P23_ACCION = ''rechazar'' then',
'    update solicitudes set estado = ''rechazada''',
'     where solicitudid = :P23_SOLICITUD;',
'    apex_application.g_print_success_message := ''Solicitud rechazada.'';',
'  end if;',
'  :P23_ACCION    := null;',
'  :P23_SOLICITUD := null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P23_ACCION'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>7884130636607932117
,p_created_on=>wwv_flow_imp.dz('20261026041958Z')
,p_updated_on=>wwv_flow_imp.dz('20261026042704Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_imp_page.create_page(
 p_id=>24
,p_name=>'Mis reservas'
,p_alias=>'MIS-RESERVAS'
,p_step_title=>'Mis reservas'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(7754717739357163749)
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_created_on=>wwv_flow_imp.dz('20261026043028Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261026043432Z')
,p_created_by=>'J.OCAMPOP'
,p_last_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(7884131986014932130)
,p_name=>'Mis reservas'
,p_static_id=>'mis-reservas'
,p_template=>4075786578761660127
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.solicitudid,',
'       p.tripid,',
'       to_char(v.fechahorasalida,''DD/MM/YYYY HH24:MI'') salida,',
'       e.nombre || '' '' || e.apellido                   conductor,',
'       d.referencia                                    parada,',
'       v.costo,',
'       s.estado,',
'       case when lower(trim(s.estado)) = ''aceptada'' then ''Cancelar'' end cancelar',
'from solicitudes s',
'join paradas p     on p.paradaid = s.paradaid',
'join viajes v      on v.tripid = p.tripid',
'join estudiantes e on e.studentid = v.conductor',
'join direcciones d on d.direccionid = p.direccionid',
'where s.studentid = :G_STUDENT_ID',
'order by v.fechahorasalida desc'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2542081983073888486
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20261026043432Z')
,p_updated_on=>wwv_flow_imp.dz('20261026043432Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7884132709580932138)
,p_query_column_id=>8
,p_column_alias=>'CANCELAR'
,p_column_display_sequence=>80
,p_column_heading=>'Cancelar'
,p_column_link=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.::P24_SOLICITUD:#SOLICITUDID#'
,p_column_linktext=>'#CANCELAR#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026043432Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7884132311111932134)
,p_query_column_id=>4
,p_column_alias=>'CONDUCTOR'
,p_column_display_sequence=>40
,p_column_heading=>'Conductor'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026043432Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7884132558222932136)
,p_query_column_id=>6
,p_column_alias=>'COSTO'
,p_column_display_sequence=>60
,p_column_heading=>'Costo'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026043432Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7884132678823932137)
,p_query_column_id=>7
,p_column_alias=>'ESTADO'
,p_column_display_sequence=>70
,p_column_heading=>'Estado'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026043432Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7884132417757932135)
,p_query_column_id=>5
,p_column_alias=>'PARADA'
,p_column_display_sequence=>50
,p_column_heading=>'Parada'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026043432Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7884132217865932133)
,p_query_column_id=>3
,p_column_alias=>'SALIDA'
,p_column_display_sequence=>30
,p_column_heading=>'Salida'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026043432Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7884132074574932131)
,p_query_column_id=>1
,p_column_alias=>'SOLICITUDID'
,p_column_display_sequence=>10
,p_column_heading=>'Solicitudid'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026043432Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7884132105767932132)
,p_query_column_id=>2
,p_column_alias=>'TRIPID'
,p_column_display_sequence=>20
,p_column_heading=>'Tripid'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261026043432Z')
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7884131710807932128)
,p_plug_name=>'New'
,p_static_id=>'new'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026043432Z')
,p_updated_on=>wwv_flow_imp.dz('20261026043432Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7884131807552932129)
,p_name=>'P24_SOLICITUD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7884131710807932128)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261026043432Z')
,p_updated_on=>wwv_flow_imp.dz('20261026043432Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7884132828798932139)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Cancelar Solicitud'
,p_static_id=>'cancelar-solicitud'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_trip    viajes.tripid%type;',
'  v_salida  viajes.fechahorasalida%type;',
'  v_vestado viajes.estado%type;',
'  v_sestado solicitudes.estado%type;',
'  v_stud    solicitudes.studentid%type;',
'begin',
'  select p.tripid, s.estado, s.studentid',
'    into v_trip, v_sestado, v_stud',
'    from solicitudes s',
'    join paradas p on p.paradaid = s.paradaid',
'   where s.solicitudid = :P24_SOLICITUD;',
'',
'  select fechahorasalida, estado',
'    into v_salida, v_vestado',
'    from viajes',
'   where tripid = v_trip',
'     for update;',
'',
'  if v_stud != :G_STUDENT_ID then',
'    raise_application_error(-20020, ''Esta solicitud no es tuya.'');',
'  end if;',
'  if lower(trim(v_sestado)) != ''aceptada'' then',
'    raise_application_error(-20021, ''Solo se pueden cancelar solicitudes confirmadas.'');',
'  end if;',
'  if lower(trim(v_vestado)) != ''programado'' then',
unistr('    raise_application_error(-20022, ''El viaje ya no est\00E1 programado.'');'),
'  end if;',
'  if sysdate > v_salida - 2/24 then',
unistr('    raise_application_error(-20023, ''Solo se puede cancelar con al menos 2 horas de anticipaci\00F3n.'');'),
'  end if;',
'',
'  update solicitudes set estado = ''cancelada''',
'   where solicitudid = :P24_SOLICITUD;',
'  update viajes set cuposdisponibles = cuposdisponibles + 1',
'   where tripid = v_trip;',
'',
'  :P24_SOLICITUD := null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P24_SOLICITUD'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'Solicitud exitosa, el cupo fue liberado'
,p_internal_uid=>7884132828798932139
,p_created_on=>wwv_flow_imp.dz('20261026043432Z')
,p_updated_on=>wwv_flow_imp.dz('20261026043432Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'WheelsAlpes - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2104585595298951431
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
,p_created_on=>wwv_flow_imp.dz('20261025171500Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261025171501Z')
,p_created_by=>'J.OCAMPOP'
,p_last_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7752502576351082529)
,p_plug_name=>'WheelsAlpes'
,p_static_id=>'wheelsalpes'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2677585639786677191
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261025171501Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171501Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7752504005214082561)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7752502576351082529)
,p_button_name=>'LOGIN'
,p_static_id=>'login'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261025171501Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171501Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7752503318505082560)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7752502576351082529)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2044213549383960320
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261025171501Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171501Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7752503715485082561)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7752502576351082529)
,p_prompt=>'Remember username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2044213549383960320
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261025171501Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171501Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7752502906319082560)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7752502576351082529)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2044213549383960320
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261025171501Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171501Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7752508103894082565)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7752508103894082565
,p_created_on=>wwv_flow_imp.dz('20261025171501Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171501Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7752507711389082564)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_static_id=>'get-username-cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>7752507711389082564
,p_created_on=>wwv_flow_imp.dz('20261025171501Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171501Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7752504446413082562)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_static_id=>'login'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'LOGIN',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7752504446413082562
,p_created_on=>wwv_flow_imp.dz('20261025171501Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171501Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(7752505484604082563)
,p_page_process_id=>wwv_flow_imp.id(7752504446413082562)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
,p_created_on=>wwv_flow_imp.dz('20261025171501Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171501Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(7752505927310082563)
,p_page_process_id=>wwv_flow_imp.id(7752504446413082562)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
,p_created_on=>wwv_flow_imp.dz('20261025171501Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171501Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(7752504945463082562)
,p_page_process_id=>wwv_flow_imp.id(7752504446413082562)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
,p_created_on=>wwv_flow_imp.dz('20261025171501Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171501Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7752506319664082563)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_static_id=>'set-username-cookie'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'SEND_LOGIN_USERNAME_COOKIE',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7752506319664082563
,p_created_on=>wwv_flow_imp.dz('20261025171501Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171501Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(7752507379659082564)
,p_page_process_id=>wwv_flow_imp.id(7752506319664082563)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
,p_created_on=>wwv_flow_imp.dz('20261025171501Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171501Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(7752506825918082563)
,p_page_process_id=>wwv_flow_imp.id(7752506319664082563)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
,p_created_on=>wwv_flow_imp.dz('20261025171501Z')
,p_updated_on=>wwv_flow_imp.dz('20261025171501Z')
,p_created_by=>'J.OCAMPOP'
,p_updated_by=>'J.OCAMPOP'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
