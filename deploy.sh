#!/bin/bash

# Nzubia Mobile App - Automated Deployment Script
# This script automates the deployment process for both Android and iOS

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Project root
PROJECT_ROOT="/Users/felixkwamenaawortwe/Desktop/NZUBIA/GLOBAL-NOW/GIT/customer-nzubia-global"

echo -e "${GREEN}🚀 Nzubia Mobile Deployment Automation${NC}"
echo "=========================================="

# Check if fastlane is installed
if ! command -v fastlane &> /dev/null; then
    echo -e "${RED}❌ Fastlane is not installed${NC}"
    echo "Install with: brew install fastlane"
    exit 1
fi

# Function to deploy Android
deploy_android() {
    echo -e "\n${YELLOW}📱 Deploying Android App...${NC}"
    cd "$PROJECT_ROOT/android"
    
    # Check if service account exists
    if [ ! -f "fastlane/google-play-service-account.json" ]; then
        echo -e "${RED}❌ Google Play service account JSON not found${NC}"
        echo "Place it at: android/fastlane/google-play-service-account.json"
        exit 1
    fi
    
    # Select track
    echo "Select deployment track:"
    echo "1) Internal Testing"
    echo "2) Beta"
    echo "3) Production"
    read -p "Enter choice (1-3): " track_choice
    
    case $track_choice in
        1)
            fastlane internal
            ;;
        2)
            fastlane beta
            ;;
        3)
            fastlane production
            ;;
        *)
            echo -e "${RED}Invalid choice${NC}"
            exit 1
            ;;
    esac
    
    echo -e "${GREEN}✅ Android deployment complete!${NC}"
}

# Function to deploy iOS
deploy_ios() {
    echo -e "\n${YELLOW}🍎 Deploying iOS App...${NC}"
    cd "$PROJECT_ROOT/ios"
    
    # Check if API key exists
    if [ ! -f "fastlane/.env" ]; then
        echo -e "${RED}❌ App Store Connect API configuration not found${NC}"
        echo "Create fastlane/.env with API credentials"
        exit 1
    fi
    
    # Select deployment type
    echo "Select deployment type:"
    echo "1) TestFlight (Beta)"
    echo "2) App Store (Production)"
    read -p "Enter choice (1-2): " deploy_choice
    
    case $deploy_choice in
        1)
            fastlane beta
            ;;
        2)
            fastlane release
            ;;
        *)
            echo -e "${RED}Invalid choice${NC}"
            exit 1
            ;;
    esac
    
    echo -e "${GREEN}✅ iOS deployment complete!${NC}"
}

# Main menu
echo ""
echo "Select platform to deploy:"
echo "1) Android"
echo "2) iOS"
echo "3) Both"
read -p "Enter choice (1-3): " platform_choice

case $platform_choice in
    1)
        deploy_android
        ;;
    2)
        deploy_ios
        ;;
    3)
        deploy_android
        deploy_ios
        ;;
    *)
        echo -e "${RED}Invalid choice${NC}"
        exit 1
        ;;
esac

echo -e "\n${GREEN}🎉 Deployment completed successfully!${NC}"
