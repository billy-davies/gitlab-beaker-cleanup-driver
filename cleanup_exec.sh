#!/bin/bash -Eeu
# ------------------------------------------------------------------------------
# GitLab Runner custom executor cleanup script
# ------------------------------------------------------------------------------
# * Clean up any of the environments that might have been set up
# * This script is executed even if one of the previous stages failed
# * STDERR will be printed to logs when Runner `log_level = 'warn'` or higher
# * STDOUT will be printed to logs when Runner `log_level = 'debug'`
# * See: https://docs.gitlab.com/runner/executors/custom.html#cleanup
# ------------------------------------------------------------------------------
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
# shellcheck source=base.sh
source "${script_dir}/base.sh"
banner "$(basename --suffix='.sh' "${BASH_SOURCE[0]}")"

ci_job stop

