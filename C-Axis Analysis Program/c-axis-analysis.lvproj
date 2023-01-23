<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="19008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="scratch" Type="Folder">
			<Item Name="test_ni_lm_optimization.vi" Type="VI" URL="../test_ni_lm_optimization.vi"/>
			<Item Name="Untitled 8.vi" Type="VI" URL="../Untitled 8.vi"/>
		</Item>
		<Item Name="subvis" Type="Folder">
			<Item Name="caxis minimization" Type="Folder">
				<Item Name="calculate_r_squared.vi" Type="VI" URL="../calculate_r_squared.vi"/>
				<Item Name="caxis_best_fit_for_trials.vi" Type="VI" URL="../caxis_best_fit_for_trials.vi"/>
				<Item Name="caxis_fine_fit.vi" Type="VI" URL="../caxis_fine_fit.vi"/>
				<Item Name="caxis_rough_fit.vi" Type="VI" URL="../caxis_rough_fit.vi"/>
				<Item Name="create_caxis_fine_sweep.vi" Type="VI" URL="../create_caxis_fine_sweep.vi"/>
				<Item Name="create_caxis_rough_calculation_grid.vi" Type="VI" URL="../create_caxis_rough_calculation_grid.vi"/>
				<Item Name="fit_c_axis.vi" Type="VI" URL="../fit_c_axis.vi"/>
				<Item Name="refraction_polarization_correction.vi" Type="VI" URL="../refraction_polarization_correction.vi"/>
				<Item Name="time_to_stop_optimization.vi" Type="VI" URL="../time_to_stop_optimization.vi"/>
			</Item>
			<Item Name="Determine c Parameter" Type="Folder">
				<Item Name="do_determine_c_parameter.vi" Type="VI" URL="../do_determine_c_parameter.vi"/>
				<Item Name="outline_boundaries_for_c_parameter.vi" Type="VI" URL="../outline_boundaries_for_c_parameter.vi"/>
				<Item Name="select_sample_for_c_parameter.vi" Type="VI" URL="../select_sample_for_c_parameter.vi"/>
				<Item Name="tune_c_parameter.vi" Type="VI" URL="../tune_c_parameter.vi"/>
			</Item>
			<Item Name="edge detection" Type="Folder">
				<Item Name="detect_edges.vi" Type="VI" URL="../detect_edges.vi"/>
			</Item>
			<Item Name="extinction prediction" Type="Folder">
				<Item Name="calculate_extinction_angle_with_tilt_correction.vi" Type="VI" URL="../calculate_extinction_angle_with_tilt_correction.vi"/>
				<Item Name="calculate_extinction_center_xi_non_zero.vi" Type="VI" URL="../calculate_extinction_center_xi_non_zero.vi"/>
				<Item Name="calculate_extinction_center_xi_zero.vi" Type="VI" URL="../calculate_extinction_center_xi_zero.vi"/>
				<Item Name="predict_extinction.vi" Type="VI" URL="../predict_extinction.vi"/>
			</Item>
			<Item Name="files" Type="Folder">
				<Item Name="filter_images_by_phi.vi" Type="VI" URL="../filter_images_by_phi.vi"/>
				<Item Name="filter_images_by_xi.vi" Type="VI" URL="../filter_images_by_xi.vi"/>
				<Item Name="get_image_sequences.vi" Type="VI" URL="../get_image_sequences.vi"/>
				<Item Name="get_images_for_sample.vi" Type="VI" URL="../get_images_for_sample.vi"/>
				<Item Name="get_samples_in_directory.vi" Type="VI" URL="../get_samples_in_directory.vi"/>
				<Item Name="parse_details_from_image_name.vi" Type="VI" URL="../parse_details_from_image_name.vi"/>
				<Item Name="read_sample_parameters.vi" Type="VI" URL="../read_sample_parameters.vi"/>
				<Item Name="set_sample_parameters.vi" Type="VI" URL="../set_sample_parameters.vi"/>
			</Item>
			<Item Name="mapping and coordinates" Type="Folder">
				<Item Name="grain_coords_from_ROI.vi" Type="VI" URL="../grain_coords_from_ROI.vi"/>
				<Item Name="grain_coords_to_a_b.vi" Type="VI" URL="../grain_coords_to_a_b.vi"/>
				<Item Name="map_coordinates.vi" Type="VI" URL="../map_coordinates.vi"/>
				<Item Name="map_coordinates_xi_fourtyfive.vi" Type="VI" URL="../map_coordinates_xi_fourtyfive.vi"/>
				<Item Name="map_coordinates_xi_zero.vi" Type="VI" URL="../map_coordinates_xi_zero.vi"/>
				<Item Name="map_roi.vi" Type="VI" URL="../map_roi.vi"/>
				<Item Name="rectangle_to_freehand_line.vi" Type="VI" URL="../rectangle_to_freehand_line.vi"/>
				<Item Name="square_roi.vi" Type="VI" URL="../square_roi.vi"/>
			</Item>
			<Item Name="results file" Type="Folder">
				<Item Name="read_sample_results_files.vi" Type="VI" URL="../read_sample_results_files.vi"/>
				<Item Name="section_parameters_cluster_from_writeable_section_parameters_cluster.vi" Type="VI" URL="../section_parameters_cluster_from_writeable_section_parameters_cluster.vi"/>
				<Item Name="section_parameters_cluster_to_writeable_section_parameters_cluster.vi" Type="VI" URL="../section_parameters_cluster_to_writeable_section_parameters_cluster.vi"/>
				<Item Name="write_rois_to_results_file.vi" Type="VI" URL="../write_rois_to_results_file.vi"/>
				<Item Name="write_sample_parameters_to_results_file.vi" Type="VI" URL="../write_sample_parameters_to_results_file.vi"/>
				<Item Name="write_sample_results_files.vi" Type="VI" URL="../write_sample_results_files.vi"/>
				<Item Name="write_section_analysis_parameters_to_results_file.vi" Type="VI" URL="../write_section_analysis_parameters_to_results_file.vi"/>
			</Item>
			<Item Name="section_analysis" Type="Folder">
				<Item Name="choose_crystals.vi" Type="VI" URL="../choose_crystals.vi"/>
				<Item Name="create_grid.vi" Type="VI" URL="../create_grid.vi"/>
				<Item Name="do_caxis_fit.vi" Type="VI" URL="../do_caxis_fit.vi"/>
				<Item Name="do_section_analysis.vi" Type="VI" URL="../do_section_analysis.vi"/>
				<Item Name="draw_circle_on_section.vi" Type="VI" URL="../draw_circle_on_section.vi"/>
				<Item Name="get_all_intensity.vi" Type="VI" URL="../get_all_intensity.vi"/>
				<Item Name="get_all_lm_fits.vi" Type="VI" URL="../get_all_lm_fits.vi"/>
				<Item Name="get_all_refr_pol_corrections.vi" Type="VI" URL="../get_all_refr_pol_corrections.vi"/>
				<Item Name="get_roi_intensity.vi" Type="VI" URL="../get_roi_intensity.vi"/>
				<Item Name="get_rois.vi" Type="VI" URL="../get_rois.vi"/>
				<Item Name="initial_guess.vi" Type="VI" URL="../initial_guess.vi"/>
				<Item Name="intensity_function.vi" Type="VI" URL="../intensity_function.vi"/>
				<Item Name="intensity_function_derivatives.vi" Type="VI" URL="../intensity_function_derivatives.vi"/>
				<Item Name="is_roi_inside_roi.vi" Type="VI" URL="../is_roi_inside_roi.vi"/>
				<Item Name="LM model function and gradient.vi" Type="VI" URL="../LM model function and gradient.vi"/>
				<Item Name="LM_fit.vi" Type="VI" URL="../LM_fit.vi"/>
				<Item Name="mask_off_ROIs.vi" Type="VI" URL="../mask_off_ROIs.vi"/>
				<Item Name="read_mask_from_file.vi" Type="VI" URL="../read_mask_from_file.vi"/>
				<Item Name="select_mask.vi" Type="VI" URL="../select_mask.vi"/>
				<Item Name="setup_sections.vi" Type="VI" URL="../setup_sections.vi"/>
			</Item>
		</Item>
		<Item Name="typedefs" Type="Folder">
			<Item Name="analysis_main_states_enum_typedef.ctl" Type="VI" URL="../analysis_main_states_enum_typedef.ctl"/>
			<Item Name="choose_crystals_states_enum_typedef.ctl" Type="VI" URL="../choose_crystals_states_enum_typedef.ctl"/>
			<Item Name="grain_results_cluster_typedef.ctl" Type="VI" URL="../grain_results_cluster_typedef.ctl"/>
			<Item Name="image_property_cluster_typedef.ctl" Type="VI" URL="../image_property_cluster_typedef.ctl"/>
			<Item Name="outline_boundaries_for_c_parameter_states_enum_typedef.ctl" Type="VI" URL="../outline_boundaries_for_c_parameter_states_enum_typedef.ctl"/>
			<Item Name="parameters_cluster_typedef.ctl" Type="VI" URL="../parameters_cluster_typedef.ctl"/>
			<Item Name="sample_results_cluster_typedef.ctl" Type="VI" URL="../sample_results_cluster_typedef.ctl"/>
			<Item Name="section_parameters_cluster_typedef.ctl" Type="VI" URL="../section_parameters_cluster_typedef.ctl"/>
			<Item Name="sections_edge_mode_enum_typedef.ctl" Type="VI" URL="../sections_edge_mode_enum_typedef.ctl"/>
			<Item Name="sections_method_enum_typedef.ctl" Type="VI" URL="../sections_method_enum_typedef.ctl"/>
			<Item Name="sections_roi_size_enum_typedef.ctl" Type="VI" URL="../sections_roi_size_enum_typedef.ctl"/>
			<Item Name="select_mask_states_enum_typedef.ctl" Type="VI" URL="../select_mask_states_enum_typedef.ctl"/>
			<Item Name="select_sample_states_enum_typedef.ctl" Type="VI" URL="../select_sample_states_enum_typedef.ctl"/>
			<Item Name="set_sample_parameters_states_enum_typedef.ctl" Type="VI" URL="../set_sample_parameters_states_enum_typedef.ctl"/>
			<Item Name="setup_sections_states_enum_typedef.ctl" Type="VI" URL="../setup_sections_states_enum_typedef.ctl"/>
			<Item Name="thetac_phic_enum_typedef.ctl" Type="VI" URL="../thetac_phic_enum_typedef.ctl"/>
			<Item Name="tune_c_parameter_states_enum_typedef.ctl" Type="VI" URL="../tune_c_parameter_states_enum_typedef.ctl"/>
			<Item Name="writeable_section_parameters_cluster_typedef.ctl" Type="VI" URL="../writeable_section_parameters_cluster_typedef.ctl"/>
			<Item Name="xi_angles_enum_typedef.ctl" Type="VI" URL="../xi_angles_enum_typedef.ctl"/>
			<Item Name="xtal_description_for_prediction_cluster_typedef.ctl" Type="VI" URL="../xtal_description_for_prediction_cluster_typedef.ctl"/>
		</Item>
		<Item Name="unused" Type="Folder">
			<Item Name="calculate_c_hat.vi" Type="VI" URL="../calculate_c_hat.vi"/>
			<Item Name="calculate_cap_theta.vi" Type="VI" URL="../calculate_cap_theta.vi"/>
			<Item Name="calculate_p_hat_parallel.vi" Type="VI" URL="../calculate_p_hat_parallel.vi"/>
			<Item Name="calculate_p_hat_perpendicular.vi" Type="VI" URL="../calculate_p_hat_perpendicular.vi"/>
			<Item Name="calculate_phi.vi" Type="VI" URL="../calculate_phi.vi"/>
			<Item Name="calculate_phi_p.vi" Type="VI" URL="../calculate_phi_p.vi"/>
			<Item Name="map_coordinates_xi_fourtyfive_old.vi" Type="VI" URL="../map_coordinates_xi_fourtyfive_old.vi"/>
			<Item Name="predict_extinction_angle.vi" Type="VI" URL="../predict_extinction_angle.vi"/>
			<Item Name="sample_parameter_cluster_typedef.ctl" Type="VI" URL="../sample_parameter_cluster_typedef.ctl"/>
		</Item>
		<Item Name="MAIN.vi" Type="VI" URL="../MAIN.vi"/>
		<Item Name="mask_off_rois_states_enum_typedef.ctl" Type="VI" URL="../mask_off_rois_states_enum_typedef.ctl"/>
		<Item Name="test_mapping_coordinates.vi" Type="VI" URL="../test_mapping_coordinates.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Cast Image 2 Method.ctl" Type="VI" URL="/&lt;vilib&gt;/vision/Management.llb/Cast Image 2 Method.ctl"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="Find First Error.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find First Error.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Image Type" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/Image Type"/>
				<Item Name="IMAQ Cast Image 2" Type="VI" URL="/&lt;vilib&gt;/vision/Management.llb/IMAQ Cast Image 2"/>
				<Item Name="IMAQ Create" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/IMAQ Create"/>
				<Item Name="IMAQ GetImageSize" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/IMAQ GetImageSize"/>
				<Item Name="IMAQ Group ROIs" Type="VI" URL="/&lt;vilib&gt;/vision/ROI Tools.llb/IMAQ Group ROIs"/>
				<Item Name="IMAQ Image.ctl" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/IMAQ Image.ctl"/>
				<Item Name="IMAQ ReadFile 2" Type="VI" URL="/&lt;vilib&gt;/vision/Files.llb/IMAQ ReadFile 2"/>
				<Item Name="IMAQ Ungroup ROIs" Type="VI" URL="/&lt;vilib&gt;/vision/ROI Tools.llb/IMAQ Ungroup ROIs"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_Gmath.lvlib" Type="Library" URL="/&lt;vilib&gt;/gmath/NI_Gmath.lvlib"/>
				<Item Name="NI_Matrix.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/Matrix/NI_Matrix.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="NI_Vision_Development_Module.lvlib" Type="Library" URL="/&lt;vilib&gt;/vision/NI_Vision_Development_Module.lvlib"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="ROI Descriptor" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/ROI Descriptor"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="subFile Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/FileDialogBlock.llb/subFile Dialog.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="nivision.dll" Type="Document" URL="nivision.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="nivissvc.dll" Type="Document" URL="nivissvc.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="C Axis Analysis Post Processing" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{1CD2ADC0-EA2D-4B8C-AD8F-2D89972BC65D}</Property>
				<Property Name="App_INI_GUID" Type="Str">{EC559E50-6B89-4807-8B0A-E8F53750E9B4}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{ED2C717A-A3CF-45FD-A08D-AACE94FFA362}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">C Axis Analysis Post Processing</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/C Axis Analysis Post Processing</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{987E0EFC-3382-4B0D-831C-A0F1337333EC}</Property>
				<Property Name="Bld_version.build" Type="Int">1</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">caxispost.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/C Axis Analysis Post Processing/caxispost.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/C Axis Analysis Post Processing/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{1B44A469-6591-4579-8752-A91F757AB85B}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/MAIN.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">Leeman Geophysical</Property>
				<Property Name="TgtF_fileDescription" Type="Str">C Axis Analysis Post Processing</Property>
				<Property Name="TgtF_internalName" Type="Str">C Axis Analysis Post Processing</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2021 Leeman Geophysical</Property>
				<Property Name="TgtF_productName" Type="Str">C Axis Analysis Post Processing</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{9BDEBCD2-0071-4822-BEBD-749F76E67620}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">caxispost.exe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
			<Item Name="CAxis Analyzer Post Processor Installer" Type="Installer">
				<Property Name="Destination[0].name" Type="Str">c-axis-analysis</Property>
				<Property Name="Destination[0].parent" Type="Str">{3912416A-D2E5-411B-AFEE-B63654D690C0}</Property>
				<Property Name="Destination[0].tag" Type="Str">{464E0945-6F40-4244-A326-806BCAF7F963}</Property>
				<Property Name="Destination[0].type" Type="Str">userFolder</Property>
				<Property Name="DestinationCount" Type="Int">1</Property>
				<Property Name="DistPart[0].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[0].productID" Type="Str">{1D64A5FC-338A-4C3D-A3BD-8FC65A2B5D36}</Property>
				<Property Name="DistPart[0].productName" Type="Str">NI Vision Common Resources 2019 SP1</Property>
				<Property Name="DistPart[0].upgradeCode" Type="Str">{409BEFA9-EB3E-472F-AD77-271A4A1D5927}</Property>
				<Property Name="DistPart[1].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[1].productID" Type="Str">{BFF07050-00F5-4C45-94E7-2B61AD921B32}</Property>
				<Property Name="DistPart[1].productName" Type="Str">NI Vision Runtime 2019</Property>
				<Property Name="DistPart[1].upgradeCode" Type="Str">{63DF74E5-A5C9-11D4-814E-005004D6CDD6}</Property>
				<Property Name="DistPart[2].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[2].productID" Type="Str">{1E3C5D81-5D10-421A-AE16-1FC585D2FB7D}</Property>
				<Property Name="DistPart[2].productName" Type="Str">NI LabVIEW Runtime 2019 SP1 f3</Property>
				<Property Name="DistPart[2].SoftDep[0].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[0].productName" Type="Str">NI ActiveX Container</Property>
				<Property Name="DistPart[2].SoftDep[0].upgradeCode" Type="Str">{1038A887-23E1-4289-B0BD-0C4B83C6BA21}</Property>
				<Property Name="DistPart[2].SoftDep[1].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[1].productName" Type="Str">NI Deployment Framework 2019</Property>
				<Property Name="DistPart[2].SoftDep[1].upgradeCode" Type="Str">{838942E4-B73C-492E-81A3-AA1E291FD0DC}</Property>
				<Property Name="DistPart[2].SoftDep[10].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[10].productName" Type="Str">NI VC2015 Runtime</Property>
				<Property Name="DistPart[2].SoftDep[10].upgradeCode" Type="Str">{D42E7BAE-6589-4570-B6A3-3E28889392E7}</Property>
				<Property Name="DistPart[2].SoftDep[11].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[11].productName" Type="Str">NI TDM Streaming 19.0</Property>
				<Property Name="DistPart[2].SoftDep[11].upgradeCode" Type="Str">{4CD11BE6-6BB7-4082-8A27-C13771BC309B}</Property>
				<Property Name="DistPart[2].SoftDep[2].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[2].productName" Type="Str">NI Error Reporting 2019</Property>
				<Property Name="DistPart[2].SoftDep[2].upgradeCode" Type="Str">{42E818C6-2B08-4DE7-BD91-B0FD704C119A}</Property>
				<Property Name="DistPart[2].SoftDep[3].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[3].productName" Type="Str">NI LabVIEW Real-Time NBFifo 2019</Property>
				<Property Name="DistPart[2].SoftDep[3].upgradeCode" Type="Str">{8386B074-C90C-43A8-99F2-203BAAB4111C}</Property>
				<Property Name="DistPart[2].SoftDep[4].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[4].productName" Type="Str">NI LabVIEW Runtime 2019 SP1 Non-English Support.</Property>
				<Property Name="DistPart[2].SoftDep[4].upgradeCode" Type="Str">{446D49A5-F830-4ADF-8C78-F03284D6882D}</Property>
				<Property Name="DistPart[2].SoftDep[5].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[5].productName" Type="Str">NI Logos 19.0</Property>
				<Property Name="DistPart[2].SoftDep[5].upgradeCode" Type="Str">{5E4A4CE3-4D06-11D4-8B22-006008C16337}</Property>
				<Property Name="DistPart[2].SoftDep[6].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[6].productName" Type="Str">NI LabVIEW Web Server 2019</Property>
				<Property Name="DistPart[2].SoftDep[6].upgradeCode" Type="Str">{0960380B-EA86-4E0C-8B57-14CD8CCF2C15}</Property>
				<Property Name="DistPart[2].SoftDep[7].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[7].productName" Type="Str">NI mDNS Responder 19.0</Property>
				<Property Name="DistPart[2].SoftDep[7].upgradeCode" Type="Str">{9607874B-4BB3-42CB-B450-A2F5EF60BA3B}</Property>
				<Property Name="DistPart[2].SoftDep[8].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[8].productName" Type="Str">Math Kernel Libraries 2017</Property>
				<Property Name="DistPart[2].SoftDep[8].upgradeCode" Type="Str">{699C1AC5-2CF2-4745-9674-B19536EBA8A3}</Property>
				<Property Name="DistPart[2].SoftDep[9].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[9].productName" Type="Str">Math Kernel Libraries 2018</Property>
				<Property Name="DistPart[2].SoftDep[9].upgradeCode" Type="Str">{33A780B9-8BDE-4A3A-9672-24778EFBEFC4}</Property>
				<Property Name="DistPart[2].SoftDepCount" Type="Int">12</Property>
				<Property Name="DistPart[2].upgradeCode" Type="Str">{7D6295E5-8FB8-4BCE-B1CD-B5B396FA1D3F}</Property>
				<Property Name="DistPartCount" Type="Int">3</Property>
				<Property Name="INST_author" Type="Str">Leeman Geophysical</Property>
				<Property Name="INST_autoIncrement" Type="Bool">true</Property>
				<Property Name="INST_buildLocation" Type="Path">../builds/c-axis-analysis/CAxis Analyzer Post Processor Installer</Property>
				<Property Name="INST_buildLocation.type" Type="Str">relativeToCommon</Property>
				<Property Name="INST_buildSpecName" Type="Str">CAxis Analyzer Post Processor Installer</Property>
				<Property Name="INST_defaultDir" Type="Str">{464E0945-6F40-4244-A326-806BCAF7F963}</Property>
				<Property Name="INST_installerName" Type="Str">install.exe</Property>
				<Property Name="INST_productName" Type="Str">c-axis-analysis</Property>
				<Property Name="INST_productVersion" Type="Str">1.0.1</Property>
				<Property Name="InstSpecBitness" Type="Str">32-bit</Property>
				<Property Name="InstSpecVersion" Type="Str">19008009</Property>
				<Property Name="MSI_arpCompany" Type="Str">Leeman Geophysical</Property>
				<Property Name="MSI_autoselectDrivers" Type="Bool">true</Property>
				<Property Name="MSI_distID" Type="Str">{B9521A0D-6068-4171-9D09-D1E87A919445}</Property>
				<Property Name="MSI_hideNonRuntimes" Type="Bool">true</Property>
				<Property Name="MSI_osCheck" Type="Int">0</Property>
				<Property Name="MSI_upgradeCode" Type="Str">{C029DFF5-82B3-44E5-BD1F-D62BC5A6EF1C}</Property>
				<Property Name="RegDest[0].dirName" Type="Str">Software</Property>
				<Property Name="RegDest[0].dirTag" Type="Str">{DDFAFC8B-E728-4AC8-96DE-B920EBB97A86}</Property>
				<Property Name="RegDest[0].parentTag" Type="Str">2</Property>
				<Property Name="RegDestCount" Type="Int">1</Property>
				<Property Name="Source[0].dest" Type="Str">{464E0945-6F40-4244-A326-806BCAF7F963}</Property>
				<Property Name="Source[0].File[0].dest" Type="Str">{464E0945-6F40-4244-A326-806BCAF7F963}</Property>
				<Property Name="Source[0].File[0].name" Type="Str">caxispost.exe</Property>
				<Property Name="Source[0].File[0].Shortcut[0].destIndex" Type="Int">0</Property>
				<Property Name="Source[0].File[0].Shortcut[0].name" Type="Str">caxispost</Property>
				<Property Name="Source[0].File[0].Shortcut[0].subDir" Type="Str">c-axis-analysis</Property>
				<Property Name="Source[0].File[0].ShortcutCount" Type="Int">1</Property>
				<Property Name="Source[0].File[0].tag" Type="Str">{9BDEBCD2-0071-4822-BEBD-749F76E67620}</Property>
				<Property Name="Source[0].FileCount" Type="Int">1</Property>
				<Property Name="Source[0].name" Type="Str">C Axis Analysis Post Processing</Property>
				<Property Name="Source[0].tag" Type="Ref">/My Computer/Build Specifications/C Axis Analysis Post Processing</Property>
				<Property Name="Source[0].type" Type="Str">EXE</Property>
				<Property Name="SourceCount" Type="Int">1</Property>
			</Item>
		</Item>
	</Item>
</Project>
