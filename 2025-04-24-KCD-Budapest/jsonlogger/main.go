package main

import (
	"log/slog"
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
		time.Sleep(1 * time.Second)
	}
}
