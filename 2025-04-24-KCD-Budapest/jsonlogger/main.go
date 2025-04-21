package main

import (
	"log/slog"
	"math/rand"
	"os"
	"time"
)

func main() {
	id := randID()
	logger := slog.New(slog.NewJSONHandler(os.Stdout, nil))
	count := 0
	for {
		logger.Info("current time", "id", id, "epoch", time.Now().Unix(), "count", count)
		count += 1

		msJitter := time.Duration(500 + rand.Intn(1000))
		time.Sleep(msJitter * time.Millisecond)
	}
}
