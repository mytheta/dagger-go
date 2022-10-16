package todoapp

import (
	"dagger.io/dagger"

	"dagger.io/dagger/core"
	"universe.dagger.io/go"
)

dagger.#Plan & {
	actions: {
		source: core.#Source & {
			path: "."
			exclude: [
				"*.cue",
				"*.md",
				".git",
			]
		}

		// Build 
		build: go.#Build & {
			source: actions.source.output
		}

		// Test
		test: go.#Test & {
			source: actions.source.output
		}
	}
}
