DEPS_SUCCESS = Dependencies installed.
PROTO_PATH = ./hackfortress-grpc-protocol-spec

all: deps-check
	@echo "Dependencies are installed. Continuing to build gRPC"
	@echo "Generating gRPC files"
	@$(shell python -m grpc_tools.protoc -I $(PROTO_PATH) --python_out=. --grpc_python_out=. exchange.proto)
	@echo "Generated gRPC files"

deps-check:
ifneq "$(DEPS_SUCCESS)" "$(shell /bin/bash check-deps.sh)"
	@echo "It doesn't appear as though you have the required dependencies installed."
	@echo "Please install them using pip install -r requirements.txt"
	@exit 1
endif