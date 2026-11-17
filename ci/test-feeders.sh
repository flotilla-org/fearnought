#!/usr/bin/env bash
# CI runs this script for the feeder tests. Crew credentials can't change
# .github/workflows, so add each feeder's tests here, not in the workflow.
# Node 24 and Python 3.12 are installed; install a feeder's own packages here
# (for example `npm ci --prefix feeders/<name>`) before running its tests.
set -euo pipefail
cd "$(dirname "$0")/.."
