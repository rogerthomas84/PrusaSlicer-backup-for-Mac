#!/usr/bin/env bash

DIRECTORY=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd "${DIRECTORY}" || exit

PRUSA_SLICER_DIR="${HOME}/Library/Application Support/PrusaSlicer"
if [ ! -d "${PRUSA_SLICER_DIR}" ]; then
  echo "PrusaSlicer directory was not found at location:"
  echo "  ${PRUSA_SLICER_DIR}"
  exit 1
fi

FILAMENT_DIR="${PRUSA_SLICER_DIR}/filament"
PRINTER_DIR="${PRUSA_SLICER_DIR}/printer"
PRINT_DIR="${PRUSA_SLICER_DIR}/print"

echo "The following directories have been backed up"

if [ -d "${FILAMENT_DIR}" ]; then
  /bin/cp -r "${FILAMENT_DIR}/" "${DIRECTORY}/filament/"
  echo "  * ${FILAMENT_DIR}"
fi

if [ -d "${PRINTER_DIR}" ]; then
  /bin/cp -r "${PRINTER_DIR}/" "${DIRECTORY}/printer/"
  echo "  * ${PRINTER_DIR}"
fi

if [ -d "${PRINT_DIR}" ]; then
  /bin/cp -r "${PRINT_DIR}/" "${DIRECTORY}/print/"
  echo "  * ${PRINT_DIR}"
fi
