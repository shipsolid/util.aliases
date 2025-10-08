# ---------- Config ----------
PY_VENV := .venv/bin/python
PY      := $(if $(wildcard $(PY_VENV)),$(PY_VENV),python3)

ifndef SCRIPT
$(error Set SCRIPT, e.g. make run SCRIPT=path/to/file.py)
endif

SCRIPT_DIR := $(dir $(SCRIPT))
BASE       := $(basename $(notdir $(SCRIPT)))

IN_DEFAULT := samples.python/input.txt
IN         ?= $(or $(firstword $(wildcard $(SCRIPT_DIR)input.txt)), $(IN_DEFAULT))

OUT        ?= samples.python/output.txt
OUTDIR     := $(dir $(OUT))

# ---------- Targets ----------
.PHONY: run run-ts clean help

## run: Overwrite $(OUT), capture stdout+stderr, never fail.
run: | $(OUTDIR)
	@{ \
	  $(PY) "$(SCRIPT)" < "$(IN)" > "$(OUT)" 2>&1; \
	} || true

## run-ts: Overwrite $(OUT), prepend timestamp header, never fail.
run-ts: | $(OUTDIR)
	@{ \
	  echo "---- Run @ $$(date '+%F %T')  [$(SCRIPT)] ----"; \
	  $(PY) "$(SCRIPT)" < "$(IN)" 2>&1; \
	  echo; \
	} > "$(OUT)" || true

$(OUTDIR):
	@mkdir -p "$@"

clean:
	@rm -f "$(OUT)"

help:
	@grep -E '^\#\# ' -n $(lastword $(MAKEFILE_LIST)) | sed 's/^\#\# //'
