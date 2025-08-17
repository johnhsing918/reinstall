#!/bin/bash
# ==================== Security Confirmation Module ====================

# --- Color Palette ---
CYAN='\033[0;36m'
BRIGHT_CYAN='\033[1;36m'
MAGENTA='\033[1;35m'
BRIGHT_PINK='\033[5;38;5;197m'
BRIGHT_RED='\033[1;31m'
BOLD_WHITE='\033[1;37m'
NC='\033[0m'

# --- Unicode Character ---
H='═'

# --- Get Hostname ---
HOSTNAME=$(hostname)

# --- Generate a 70-character wide horizontal line ---
H_LINE_TEMPLATE=$(printf '%0.s=' {1..70})
H_LINE=${H_LINE_TEMPLATE//=/$H}

# --- Print Warning Message ---
printf "\n"
printf "${CYAN}${H_LINE}${NC}\n"
printf "  ${MAGENTA}[  W A R N I N G  ] :: High-risk operation.${NC}\n"
printf "${CYAN}${H_LINE}${NC}\n"
printf "  ${CYAN}Hostname :: ${BRIGHT_PINK}%s${NC}\n" "$HOSTNAME"
printf "${CYAN}${H_LINE}${NC}\n"
printf "\n"

# --- Read user input for confirmation ---
read -p "$(printf "${BRIGHT_CYAN}>> Please type '${BOLD_WHITE}YES${BRIGHT_CYAN}' to proceed: ${NC}")" CONFIRMATION

# --- Check if input is "YES" ---
if [ "$CONFIRMATION" != "YES" ]; then
    printf "\n${BRIGHT_RED}[ !! ] Operation aborted by user.${NC}\n"
    exit 1
fi

# --- Confirmation Successful ---
printf "\n${BRIGHT_PINK}[ OK ] Confirmation received. Resuming script execution...${NC}\n\n"
# ==================== End of Security Confirmation Module ====================


# ==================== Script Source Selection ====================
# 預設使用你自己的 GitHub 版本
SCRIPT_URL="https://raw.githubusercontent.com/johnhsing918/reinstall/main/reinstall.sh"

# 如果加了 --upstream 參數，改用 bin456789 的原始版本
if [ "$1" == "--upstream" ]; then
    SCRIPT_URL="https://raw.githubusercontent.com/bin456789/reinstall/main/reinstall.sh"
    echo -e "${BRIGHT_CYAN}[INFO] Using upstream version from bin456789${NC}"
else
    echo -e "${BRIGHT_CYAN}[INFO] Using your GitHub version (johnhsing918/reinstall)${NC}"
fi

# ==================== Execute ====================
bash <(curl -sL "$SCRIPT_URL")
