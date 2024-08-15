# Use a base Go image
FROM golang:1.20-alpine

# Define a build argument with an empty default value
ARG CUSTOM_GOPROXY=""

# Set the GOPROXY environment variable, using the specified value if provided, or a default if not
ENV GOPROXY=${CUSTOM_GOPROXY:-https://proxy.golang.org}

# Continue with the rest of your Dockerfile commands
# For example, setting the work directory
WORKDIR /app

# Copy your source code
COPY . .

# Download dependencies using the configured GOPROXY
RUN go mod download

# Build the Go application
RUN go build -o myapp .

# Specify the entry point for the container
CMD ["./myapp"]

