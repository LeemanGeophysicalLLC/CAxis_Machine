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
			<Item Name="set_sample_parameters.vi" Type="VI" URL="../set_sample_parameters.vi"/>
			<Item Name="set_sample_parameters_states_enum_typedef.ctl" Type="VI" URL="../set_sample_parameters_states_enum_typedef.ctl"/>
			<Item Name="Untitled 8.vi" Type="VI" URL="../Untitled 8.vi"/>
		</Item>
		<Item Name="subvis" Type="Folder">
			<Item Name="Determine c Parameter" Type="Folder">
				<Item Name="do_determine_c_parameter.vi" Type="VI" URL="../do_determine_c_parameter.vi"/>
				<Item Name="outline_boundaries_for_c_parameter.vi" Type="VI" URL="../outline_boundaries_for_c_parameter.vi"/>
				<Item Name="select_sample_for_c_parameter.vi" Type="VI" URL="../select_sample_for_c_parameter.vi"/>
				<Item Name="tune_c_parameter.vi" Type="VI" URL="../tune_c_parameter.vi"/>
			</Item>
			<Item Name="files" Type="Folder">
				<Item Name="filter_images_by_phi.vi" Type="VI" URL="../filter_images_by_phi.vi"/>
				<Item Name="filter_images_by_xi.vi" Type="VI" URL="../filter_images_by_xi.vi"/>
				<Item Name="get_images_for_sample.vi" Type="VI" URL="../get_images_for_sample.vi"/>
				<Item Name="get_samples_in_directory.vi" Type="VI" URL="../get_samples_in_directory.vi"/>
				<Item Name="parse_details_from_image_name.vi" Type="VI" URL="../parse_details_from_image_name.vi"/>
				<Item Name="read_sample_parameters.vi" Type="VI" URL="../read_sample_parameters.vi"/>
			</Item>
			<Item Name="mapping and coordinates" Type="Folder">
				<Item Name="map_coordinates.vi" Type="VI" URL="../map_coordinates.vi"/>
				<Item Name="map_coordinates_xi_fourtyfive.vi" Type="VI" URL="../map_coordinates_xi_fourtyfive.vi"/>
				<Item Name="map_coordinates_xi_zero.vi" Type="VI" URL="../map_coordinates_xi_zero.vi"/>
				<Item Name="map_roi.vi" Type="VI" URL="../map_roi.vi"/>
				<Item Name="square_roi.vi" Type="VI" URL="../square_roi.vi"/>
			</Item>
			<Item Name="section_analysis" Type="Folder">
				<Item Name="choose_crystals.vi" Type="VI" URL="../choose_crystals.vi"/>
				<Item Name="do_section_analysis.vi" Type="VI" URL="../do_section_analysis.vi"/>
				<Item Name="draw_circle_on_section.vi" Type="VI" URL="../draw_circle_on_section.vi"/>
				<Item Name="get_all_intensity.vi" Type="VI" URL="../get_all_intensity.vi"/>
				<Item Name="get_roi_intensity.vi" Type="VI" URL="../get_roi_intensity.vi"/>
				<Item Name="get_rois.vi" Type="VI" URL="../get_rois.vi"/>
				<Item Name="read_mask_from_file.vi" Type="VI" URL="../read_mask_from_file.vi"/>
				<Item Name="select_mask.vi" Type="VI" URL="../select_mask.vi"/>
				<Item Name="setup_sections.vi" Type="VI" URL="../setup_sections.vi"/>
			</Item>
			<Item Name="intensity_function.vi" Type="VI" URL="../intensity_function.vi"/>
			<Item Name="MAIN.vi" Type="VI" URL="../MAIN.vi"/>
		</Item>
		<Item Name="typedefs" Type="Folder">
			<Item Name="image_property_cluster_typedef.ctl" Type="VI" URL="../image_property_cluster_typedef.ctl"/>
			<Item Name="parameters_cluster_typedef.ctl" Type="VI" URL="../parameters_cluster_typedef.ctl"/>
			<Item Name="xi_angles_enum_typedef.ctl" Type="VI" URL="../xi_angles_enum_typedef.ctl"/>
		</Item>
		<Item Name="unused" Type="Folder">
			<Item Name="map_coordinates_xi_fourtyfive_old.vi" Type="VI" URL="../map_coordinates_xi_fourtyfive_old.vi"/>
			<Item Name="sample_parameter_cluster_typedef.ctl" Type="VI" URL="../sample_parameter_cluster_typedef.ctl"/>
		</Item>
		<Item Name="choose_crystals_states_enum_typedef.ctl" Type="VI" URL="../choose_crystals_states_enum_typedef.ctl"/>
		<Item Name="outline_boundaries_for_c_parameter_states_enum_typedef.ctl" Type="VI" URL="../outline_boundaries_for_c_parameter_states_enum_typedef.ctl"/>
		<Item Name="section_parameters_cluster_typedef.ctl" Type="VI" URL="../section_parameters_cluster_typedef.ctl"/>
		<Item Name="sections_edge_mode_enum_typedef.ctl" Type="VI" URL="../sections_edge_mode_enum_typedef.ctl"/>
		<Item Name="sections_method_enum_typedef.ctl" Type="VI" URL="../sections_method_enum_typedef.ctl"/>
		<Item Name="sections_roi_size_enum_typedef.ctl" Type="VI" URL="../sections_roi_size_enum_typedef.ctl"/>
		<Item Name="select_mask_states_enum_typedef.ctl" Type="VI" URL="../select_mask_states_enum_typedef.ctl"/>
		<Item Name="select_sample_states_enum_typedef.ctl" Type="VI" URL="../select_sample_states_enum_typedef.ctl"/>
		<Item Name="setup_sections_states_enum_typedef.ctl" Type="VI" URL="../setup_sections_states_enum_typedef.ctl"/>
		<Item Name="tune_c_parameter_states_enum_typedef.ctl" Type="VI" URL="../tune_c_parameter_states_enum_typedef.ctl"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
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
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Image Type" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/Image Type"/>
				<Item Name="IMAQ Create" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/IMAQ Create"/>
				<Item Name="IMAQ GetImageSize" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/IMAQ GetImageSize"/>
				<Item Name="IMAQ Image.ctl" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/IMAQ Image.ctl"/>
				<Item Name="IMAQ ReadFile 2" Type="VI" URL="/&lt;vilib&gt;/vision/Files.llb/IMAQ ReadFile 2"/>
				<Item Name="IMAQ Ungroup ROIs" Type="VI" URL="/&lt;vilib&gt;/vision/ROI Tools.llb/IMAQ Ungroup ROIs"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
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
			<Item Name="nivision.dll" Type="Document" URL="nivision.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="nivissvc.dll" Type="Document" URL="nivissvc.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
