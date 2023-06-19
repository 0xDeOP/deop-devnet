#!/usr/bin/env bash
while true; do chainhook predicates scan ./ordinals-indexer/ordinals.chainhook.json --config-path=./ordinals-indexer/chainhook.toml; sleep 60; done