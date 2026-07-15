#!/bin/bash
pushd "${RAVEN_WORKSPACE_DIRECTORY}"/work_directory/src/think_interface_ros/
conan install .
conan build .
popd

