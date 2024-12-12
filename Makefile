.PHONY: all clean dist /*deploy*/ serve served check-hugo

# Variables
DIST_DIR = public
BRANCH = gh-pages

# Check if we're on main branch
CURRENT_BRANCH := $(shell git rev-parse --abbrev-ref HEAD)

# Check if Hugo is installed
check-hugo:
	@command -v hugo >/dev/null 2>&1 || { echo "Error: Hugo is not installed. Please install Hugo to proceed."; exit 1; }

all: check-hugo dist

clean:
	rm -rf public resources

dist: check-hugo
	HUGO_PARAMS_DEBUG=false hugo --minify -d "${DIST_DIR}"

# deploy: dist
# 	@if [ "$(CURRENT_BRANCH)" != "main" ]; then \
# 		echo "Please switch to main branch before deploying"; \
# 		exit 1; \
# 	fi
# 	@if [ -n "`git status --porcelain`" ]; then \
# 		echo "Please commit or stash your changes before deploying"; \
# 		exit 1; \
# 	fi
# 	@if ! git rev-parse --verify main > /dev/null 2>&1; then \
# 		echo "The main branch doesn't exist"; \
# 		exit 1; \
# 	fi
# 	git add -f $(DIST_DIR)
# 	git commit -m "Build for deployment" || true
# 	@SPLIT_SHA=$$(git subtree split --prefix $(DIST_DIR) main) && \
# 		git push origin $$SPLIT_SHA:refs/heads/$(BRANCH) --force
# 	@echo "Deployed $DIST_DIR/ to $(BRANCH) branch"

served:
	 env HUGO_PARAMS_DEBUG=true hugo server -D --printI18nWarnings --cleanDestinationDir --buildDrafts --disableFastRender

serve:
	hugo server --printI18nWarnings --cleanDestinationDir --disableFastRender
