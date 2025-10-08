# ---------- Config ----------
PY_VENV := .venv/bin/python
PY      := $(if $(wildcard $(PY_VENV)),$(PY_VENV),python3)

# Defaults (overridable)
IN      ?= samples.python/input.txt

# VS Code passes SCRIPT=${file}; require it
ifndef SCRIPT
$(error Set SCRIPT, e.g. make run SCRIPT=path/to/file.py (VS Code task does this for you))
endif

# SCRIPT  ?= samples.python/basics.01.patterns/basics.py

# Derived
SCRIPT_DIR := $(dir $(SCRIPT))
BASE    := $(basename $(notdir $(SCRIPT)))
OUT     ?= samples.python/output.txt
OUTDIR  := $(dir $(OUT))

# ---------- Targets ----------
.PHONY: run run-ts clean help

## run: Execute $(SCRIPT) with redirected input; capture stdout+stderr to $(OUT). Never fail (silent on exceptions).
run: | $(OUTDIR)
	@$(PY) "$(SCRIPT)" < "$(IN)" > "$(OUT)" 2>&1 || true

## run-ts: Append timestamp + output (stdout+stderr) to $(OUT).
run-ts: | $(OUTDIR)
	@{ \
	  echo "---- Run @ $$(date '+%F %T')  [$(SCRIPT)] ----"; \
	  $(PY) "$(SCRIPT)" < "$(IN)" 2>&1 || true; \
	  echo; \
	} >> "$(OUT)"

# Create the output directory if missing
$(OUTDIR):
	@mkdir -p "$@"

## clean: Remove generated outputs.
clean:
	@rm -rf "$(OUTDIR)"

## help: Show available targets.
help:
	@grep -E '^\#\# ' -n Makefile | sed 's/^\#\# //'
