package main

import "math/rand"

var (
	names      = []string{"erwin", "reinier", "fabian", "rio", "rob", "TrueFullstaq", "budapest", "kcd"}
	adjectives = []string{"awesome", "epic", "cool", "fantastic", "fun", "fast", "fantastic", "super", "superb", "outstanding", "good", "ace"}
)

func randInt(max int) int {
	return rand.Intn(max)
}

func randName() string {
	return names[randInt(len(names))]
}

func randAdjective() string {
	return adjectives[randInt(len(adjectives))]
}

func randID() string {
	return randAdjective() + "_" + randName()
}
