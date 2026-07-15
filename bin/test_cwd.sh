#!/bin/bash

#git checkout daxl-raven_workspace-2.2.270
#git checkout task/TCD-5260-fix-create_work_directory-to-use-proper-baseline -- scripts/dependencies.py

#source setup.bash
#git checkout daxl-raven_workspace-2.2.270 -- deps.yaml
#git checkout daxl-raven_workspace-2.2.270 -- conanfile.py
#cwd think_utils
cwd tactical_planner 

#daxl-think_utils-0.2.51
#daxl-map_interpreter-0.2.56
#daxl-controller_interface-0.2.53
#daxl-converter_kea-0.2.53
#daxl-cubix_emulator-0.2.51
#daxl-local_trajectory_planner-0.2.93
#daxl-mission_control_rviz_plugin-0.2.56
#daxl-mission_element_distributor-0.2.60
#daxl-object_motion_prediction-0.2.86
#daxl-object_motion_prediction_visualization-0.2.52
#daxl-priority_parser-0.2.60
#daxl-scm_observers-0.2.57
#daxl-system_control_master-0.2.55
#daxl-tactical_planner-0.2.64
#daxl-threat_assessment-0.1.59
#daxl-transformer-0.2.53
#daxl-dynamic_recorder-0.1.31
#daxl-dynamic_rosbag_recorder-0.2.51
#daxl-project_raven-0.2.217
#daxl-simulation_ltp-0.2.121
#daxl-simulation_tap-0.2.57


#================ Workspace generator finished with external process errors. ================
# Command '"conan install /repo/work_directory/src/raven_workspace -j /tmp/tmp2r5vm0te/raven_workspace/conan_info.json -if /repo/work_directory/build/raven_workspace -s build_type=Debug -s conan_catkin_base_recipes/2.0.3@adcp/stable:build_type=Release -s clang-format-gen/0.0.1@adcp/stable:build_type=Release -s clang-format_installer/11.0.0@conan_zf/stable:build_type=Release -s eigen/3.3.5@conan/stable:build_type=Release -s json/3.9.1@conan/stable:build_type=Release -s ALGO_LIBS_Bayes/2017.3.3@DAXL/stable:build_type=Release -s doxygen_installer/1.8.15@bincrafters/stable:build_type=Release -s conan_catkin_base_recipes/2.0.1@adcp/stable:build_type=Release -s ALGO_LIBS_ipopt/3.13.2@DAXL/stable:build_type=Release -s MatlabRT/R2018b@zkm/stable:build_type=Release -s clang_format_config/1.0.2@adcp/stable:build_type=Release -s catkin_generator/1.0.2@adcp/stable:build_type=Release -s conan_base_recipes/3.3.2@adcp/stable:build_type=Release -s ALGO_LIBS_libtorch/1.4.1@DAXL/stable:build_type=Release -s cmake_installer/3.14.5@conan/stable:build_type=Release -s ALGO_LIBS_qpoases/3.2.2@DAXL/stable:build_type=Release -s gtest/1.8.1@bincrafters/stable:build_type=Release -s conan_base_recipes/5.0.2@adcp/stable:build_type=Release -s catkin_generator/1.1.1@adcp/stable:build_type=Release -s perc_base_types/1.0.0@algo_interfaces/stable:build_type=Release -s ALGO_LIBS_casadi/3.4.7@DAXL/stable:build_type=Release -s zkm_tools/555be8fd5d7c6b6c75e73d08c941e47320dc1a29@ZKMSimulator_ROS/hashed:build_type=Release -s conan_workspace_generator/0.5.5@adcp/stable:build_type=Release -s base/0.2.3@daxl/stable:build_type=Release -s think_scripts/0.2.51@daxl/integ-master:build_type=Release -s msgs_eme_kinematics_ironfly/0.0.0@algo_interfaces/stable:build_type=Release -s map_interface_ros/1.0.1@v2x_digitalenvironment/stable:build_type=Release -s perc_common_types/1.0.0@algo_interfaces/stable:build_type=Release -s think_interface_ros/0.2.17@daxl/integ-master:build_type=Release -s models/0.1.35@daxl/integ-master:build_type=Release -s omp_report/0.1.4@daxl/integ-master:build_type=Release -s vehicles/0.2.7@daxl/integ-master:build_type=Release -s think_interface_ros/0.2.16@daxl/integ-master:build_type=Release -s odr_maps/0.2.10@daxl/integ-master:build_type=Release -s simulation_one_click/0.2.26@daxl/integ-master:build_type=Release -s graph_rviz_plugin/0.2.18@daxl/integ-master:build_type=Release -s raven/0.2.27@daxl/integ-master:build_type=Release -s think_scripts/0.2.45@daxl/integ-master:build_type=Release -s odr_maps/0.2.8@daxl/integ-master:build_type=Release -s raven/0.2.30@daxl/integ-master:build_type=Release -s perc_interface_output/1.0.0@algo_interfaces/stable:build_type=Release -s graph_rviz_plugin/0.2.17@daxl/integ-master:build_type=Release -s perc_common_types_ros/1.0.1@algo_interfaces/stable:build_type=Release -s perc_interface_output_ros/1.0.1@algo_interfaces/stable:build_type=Release -s mission_planner_ros/1.0.3@v2x_digitalenvironment/stable:build_type=Release -s mission_planner_ros/1.0.4@v2x_digitalenvironment/stable:build_type=Release -s think_utils/0.2.51@daxl/integ-master:build_type=Release -s think_utils/0.2.53@daxl/integ-master:build_type=Release -s controller_interface/0.2.56@daxl/integ-master:build_type=Release -s transformer/0.2.55@daxl/integ-master:build_type=Release -s mission_control_rviz_plugin/0.2.58@daxl/integ-master:build_type=Release -s simulation_carla/0.2.31@daxl/integ-master:build_type=Release -s simulation_zkm/0.2.1@daxl/integ-master:build_type=Release -s map_interpreter/0.2.56@daxl/integ-master:build_type=Release -s mission_element_distributor/0.2.60@daxl/integ-master:build_type=Release -s object_motion_prediction_visualization/0.2.54@daxl/integ-master:build_type=Release -s local_trajectory_planner/0.2.98@daxl/integ-master:build_type=Release -s dynamic_recorder/0.1.36@daxl/integ-master:build_type=Release -s converter_kea/0.2.55@daxl/integ-master:build_type=Release -s transformer/0.2.53@daxl/integ-master:build_type=Release -s cubix_emulator/0.2.51@daxl/integ-master:build_type=Release -s cubix_emulator/0.2.53@daxl/integ-master:build_type=Release -s scm_observers/0.2.59@daxl/integ-master:build_type=Release -s scm_observers/0.2.57@daxl/integ-master:build_type=Release -s object_motion_prediction_visualization/0.2.52@daxl/integ-master:build_type=Release -s threat_assessment/0.1.59@daxl/integ-master:build_type=Release -s map_interpreter/0.2.59@daxl/integ-master:build_type=Release -s priority_parser/0.2.63@daxl/integ-master:build_type=Release -s system_control_master/0.2.57@daxl/integ-master:build_type=Release -s object_motion_prediction/0.2.86@daxl/integ-master:build_type=Release -s object_motion_prediction/0.2.90@daxl/integ-master:build_type=Release -s mission_control_rviz_plugin/0.2.56@daxl/integ-master:build_type=Release -s converter_kea/0.2.53@daxl/integ-master:build_type=Release -s simulation_ltp/0.2.129@daxl/integ-master:build_type=Release -s system_control_master/0.2.55@daxl/integ-master:build_type=Release -s threat_assessment/0.1.64@daxl/integ-master:build_type=Release -s controller_interface/0.2.53@daxl/integ-master:build_type=Release -s simulation_tap/0.2.60@daxl/integ-master:build_type=Release -s local_trajectory_planner/0.2.93@daxl/integ-master:build_type=Release -s priority_parser/0.2.60@daxl/integ-master:build_type=Release -s tactical_planner/0.2.64@daxl/integ-master:build_type=Release -s mission_element_distributor/0.2.63@daxl/integ-master:build_type=Release -g virtualenv -g virtualrunenv"' returned non-zero exit status 1
# ==== Last error message was : ====
# ERROR: Conflict in controller_interface/0.2.53@daxl/integ-master:
#    'controller_interface/0.2.53@daxl/integ-master' requires 'think_interface_ros/0.2.16@daxl/integ-master' while 'simulation_carla/0.2.31@daxl/integ-master' requires 'think_interface_ros/0.2.17@daxl/integ-master'.
#    To fix this conflict you need to override the package 'think_interface_ros' in your root package.

