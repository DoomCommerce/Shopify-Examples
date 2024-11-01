#!/usr/bin/env bash

clear

#
#   Starts a Shopify preview given store
#
#   Usage:
#   bun run theme 𝗡𝗮𝗺𝗲
#   bun run theme test-store
#
#   𝗡𝗮𝗺𝗲 is the same as in your store ( 𝗡𝗮𝗺𝗲.myshopify.com )
#


store='doomcommerce'


set -a
config=.config/.env && test -f $config && source $config
set +a


store="${1:-$store}"


shopify theme dev \
    --store="$store"