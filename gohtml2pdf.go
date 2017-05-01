package main

import (
	"log"
	"net/http"
	"os/exec"
)

func main() {
	http.HandleFunc("/fromUrl", func(writer http.ResponseWriter, request *http.Request) {
		query := request.URL.Query()

		cmd := exec.Command("wkhtmltopdf", query["url"][0], "files/stront.pdf")
		output, err := cmd.CombinedOutput()

		if err != nil {
			log.Printf("%s\n", output)
			log.Println(err)
		} else {
			log.Printf("%s\n", output)
		}
	})

	log.Fatal(http.ListenAndServe(":8080", nil))
}
