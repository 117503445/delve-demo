package main

import (
	"fmt"
	"github.com/gofiber/fiber/v3"
	"log"
)

func main() {
	a := 1
	fmt.Println("1")
	fmt.Println(a)

	// Initialize a new Fiber app
	app := fiber.New()

	// Define a route for the GET method on the root path '/'
	app.Get("/", func(c fiber.Ctx) error {
		b := 2
		fmt.Println(b)
		// Send a string response to the client
		return c.SendString("Hello, World 👋!")
	})

	// Start the server on port 3000
	log.Fatal(app.Listen(":3000"))
}
