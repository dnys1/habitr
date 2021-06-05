package main

// Request holds the parameters for a GraphQL query. Query must be included.
type Request struct {
	Query         string                 `json:"query"`
	OperationName string                 `json:"operationName,omitempty"`
	Variables     map[string]interface{} `json:"variables,omitempty"`
}

// Error is an error returned from the database for a GraphQL query.
type Error struct {
	Message   string `json:"message"`
	Locations []struct {
		Line   int `json:"line"`
		Column int `json:"column"`
	} `json:"locations"`
}

// Response is the response returned from the database for a GraphQL query.
type Response struct {
	Data   interface{} `json:"data"`
	Errors []Error     `json:"errors"`
}
