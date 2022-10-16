package main

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestAdd(t *testing.T) {
	const (
		a    = 1
		b    = 2
		want = 3
	)
	got := Add(a, b)
	assert.Equal(t, want, got)
}
