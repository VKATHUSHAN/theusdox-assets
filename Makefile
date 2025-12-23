# Makefile for TWUSD Token Asset Management
# Provides convenient commands for validation and submission automation

.PHONY: help validate submit complete trust report clean

# Default target
.DEFAULT_GOAL := help

# Colors for output
GREEN := \033[0;32m
YELLOW := \033[1;33m
BLUE := \033[0;34m
NC := \033[0m

help: ## Display available commands
	@echo ""
	@echo "$(BLUE)╔═══════════════════════════════════════════════════════╗$(NC)"
	@echo "$(BLUE)║                                                       ║$(NC)"
	@echo "$(BLUE)║        $(GREEN)TWUSD Token Asset Management$(BLUE)              ║$(NC)"
	@echo "$(BLUE)║                                                       ║$(NC)"
	@echo "$(BLUE)╚═══════════════════════════════════════════════════════╝$(NC)"
	@echo ""
	@echo "$(YELLOW)Available commands:$(NC)"
	@echo ""
	@awk 'BEGIN {FS = ":.*##"; printf ""} /^[a-zA-Z_-]+:.*?##/ { printf "  $(GREEN)%-12s$(NC) %s\n", $$1, $$2 }' $(MAKEFILE_LIST)
	@echo ""
	@echo "$(YELLOW)Quick Start:$(NC)"
	@echo "  1. make validate    # Validate assets"
	@echo "  2. make submit      # Interactive submission menu"
	@echo "  3. make trust       # Push to Trust Wallet fork"
	@echo "  4. make complete    # Complete and merge PR"
	@echo ""

validate: ## Validate token assets and metadata
	@echo "$(BLUE)Running asset validation...$(NC)"
	@chmod +x scripts/validate-assets.sh
	@./scripts/validate-assets.sh

submit: ## Run interactive submission automation
	@echo "$(BLUE)Starting submission automation...$(NC)"
	@chmod +x scripts/automate-submissions.sh
	@./scripts/automate-submissions.sh

complete: ## Complete and merge PR using GitHub CLI
	@echo "$(BLUE)Running PR completion tool...$(NC)"
	@chmod +x scripts/complete-pr.sh
	@./scripts/complete-pr.sh

trust: ## Push Trust Wallet branch to fork
	@echo "$(BLUE)Pushing to Trust Wallet fork...$(NC)"
	@chmod +x scripts/push-to-trust-wallet.sh
	@./scripts/push-to-trust-wallet.sh

report: ## Generate submission status report
	@echo "$(BLUE)Generating submission report...$(NC)"
	@chmod +x scripts/automate-submissions.sh
	@./scripts/automate-submissions.sh <<< "5"

clean: ## Remove temporary files and directories
	@echo "$(BLUE)Cleaning temporary files...$(NC)"
	@if [ -d temp ]; then \
		echo "Removing temp/ directory..."; \
		rm -rf temp; \
		echo "$(GREEN)✓$(NC) temp/ directory removed"; \
	else \
		echo "$(YELLOW)⚠$(NC) No temp/ directory to clean"; \
	fi
	@echo "$(GREEN)✓$(NC) Cleanup complete"

# Development targets (not shown in help)
.PHONY: chmod-scripts
chmod-scripts:
	@chmod +x scripts/*.sh
	@echo "$(GREEN)✓$(NC) All scripts are now executable"
