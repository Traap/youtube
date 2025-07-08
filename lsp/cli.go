package main

import (
	"flag"
	"fmt"
	"os"
	"time"
)

func main() {
	// 1. Define the flags (both optional)
	startStr := flag.String("start-date", "", "Start date in YYYY-MM-DD format")
	endStr := flag.String("end-date", "", "End date in YYYY-MM-DD format")
	flag.Parse()

	// 2. If either is non‐empty, require both
	if (*startStr != "") != (*endStr != "") {
		fmt.Fprintln(os.Stderr, "Error: if you specify --start-date you must also specify --end-date (and vice versa)")
		os.Exit(1)
	}

	// 3. If both are provided, parse and compare
	if *startStr != "" && *endStr != "" {
		const layout = "2006-01-02"
		startDate, err := time.Parse(layout, *startStr)
		if err != nil {
			fmt.Fprintf(os.Stderr, "Error: invalid --start-date: %v\n", err)
			os.Exit(1)
		}
		endDate, err := time.Parse(layout, *endStr)
		if err != nil {
			fmt.Fprintf(os.Stderr, "Error: invalid --end-date: %v\n", err)
			os.Exit(1)
		}
		if startDate.After(endDate) {
			fmt.Fprintln(os.Stderr, "Error: --start-date must be on or before --end-date")
			os.Exit(1)
		}
		// At this point, both dates are valid and startDate ≤ endDate
		fmt.Printf("Using start = %s, end = %s\n", startDate.Format(layout), endDate.Format(layout))
	}

	// Your regular program logic goes here.
	fmt.Println("Program continues...")
}
