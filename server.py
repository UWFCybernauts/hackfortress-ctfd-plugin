import exchange_pb2_grpc
import exchange_pb2
import grpc
from concurrent import futures
from time import sleep

class ExchangeServicer(exchange_pb2_grpc.ExchangeServicer):
    def GetData(self, request, context):
        return exchange_pb2.DataResponse(response="100")

def serve():
    server = grpc.server(futures.ThreadPoolExecutor(max_workers=10))
    exchange_pb2_grpc.add_ExchangeServicer_to_server(
        ExchangeServicer(), server
    )
    server.add_insecure_port('[::]:50051')
    server.start()
    while True:
        sleep(1)

if __name__ == '__main__':
    print("Starting server :D")
    serve()