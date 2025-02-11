#STAGE 1: Use the latest stable Go version for the build stage
FROM golang:1.23.6 AS build

WORKDIR /app

# Copy the module file
COPY go.mod .

RUN go mod download

# Download dependencies (this will create go.sum if needed)
RUN go mod tidy 

COPY . .

RUN go build -o main .

#STAGE 2: Use the latest distroless base image
FROM gcr.io/distroless/base-debian12

WORKDIR /app

# Copy the compiled Go binary
COPY --from=build /app/main .

# Copy the static files
COPY --from=build /app/static ./static

EXPOSE 8080

CMD ["./main"]
