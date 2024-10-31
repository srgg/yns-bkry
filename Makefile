.PHONY: all clean dist deploy install serve

# Variables
DIST_DIR = dist
NODE_MODULES = node_modules
BRANCH = gh-pages

# Check if we're on main branch
CURRENT_BRANCH := $(shell git rev-parse --abbrev-ref HEAD)

all: dist

clean:
	npm run clean

$(NODE_MODULES):
	npm install

install: $(NODE_MODULES)

dist: install
	npm run build

deploy: dist
	@if [ "$(CURRENT_BRANCH)" != "main" ]; then \
		echo "Please switch to main branch before deploying"; \
		exit 1; \
	fi
	@if [ -n "`git status --porcelain`" ]; then \
		echo "Please commit or stash your changes before deploying"; \
		exit 1; \
	fi
	git add -f $(DIST_DIR)
	git commit -m "Build for deployment" || true
	git push origin `git subtree split --prefix $(DIST_DIR) main`:$(BRANCH) --force
	@echo "Deployed dist/ to $(BRANCH) branch"

serve: dist
	npm run preview

