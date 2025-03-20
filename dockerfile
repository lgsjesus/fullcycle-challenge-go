### Step 1: Build stage
FROM golang:alpine AS builder

WORKDIR /src

# Copy the Go module files and download dependencies
COPY go.mod ./
RUN go mod download

# Copy the application source code and build the binary
COPY . .
RUN go build -ldflags '-s -w' hello.go
#RUN CGO_ENABLED=0 GOOS=linux go build -o myapp

### 
## Step 2: Runtime stage
FROM scratch

# Copy only the binary from the build stage to the final image
COPY --from=builder /src /

# Set the entry point for the container
ENTRYPOINT ["/hello"]