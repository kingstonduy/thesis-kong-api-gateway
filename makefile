add-all:
	curl -i -X POST http://localhost:8001/services/ \
	--data "name=product-service" \
	--data "url=http://product-service:7002"

	curl -i -X POST http://localhost:8001/services/ \
	--data "name=order-service" \
	--data "url=http://order-service:7005"

	curl -i -X POST http://localhost:8001/services/ \
	--data "name=cart-service" \
	--data "url=http://cart-service:7003"

	curl -i -X POST http://localhost:8001/services/ \
	--data "name=user-service" \
	--data "url=http://user-service:7001"

	curl -i -X POST http://localhost:8001/routes/ \
	--data "paths[]=/product-service" \
	--data "service.name=product-service"

	curl -i -X POST http://localhost:8001/routes/ \
	--data "paths[]=/order-service" \
	--data "service.name=order-service"

	curl -i -X POST http://localhost:8001/routes/ \
	--data "paths[]=/cart-service" \
	--data "service.name=cart-service"

	curl -i -X POST http://localhost:8001/routes/ \
	--data "paths[]=/user-service" \
	--data "service.name=user-service"
