devnet-up:
	docker compose --project-name eip4844-interop up -d\
		execution-node\
		execution-node-2\
		prysm-beacon-node\
		prysm-beacon-node-follower\
		prysm-validator-node\
		jaeger-tracing

lodestar-up:
	docker compose --project-name eip4844-interop up -d\
		execution-node\
		ethereumjs\
		lodestar-beacon-node\
		lodestar-beacon-node-follower\

lodestar-ethjs-up:
	docker compose --project-name eip4844-interop up -d\
		ethereumjs\
		lodestar-beacon-node\

devnet-down:
	docker compose --project-name eip4844-interop down -v

devnet-restart: devnet-down devnet-up

devnet-clean:
	docker compose --project-name eip4844-interop down --rmi local --volumes
	docker image ls 'eip4844-interop*' --format='{{.Repository}}' | xargs -r docker rmi
	docker volume ls --filter name=eip4844-interop --format='{{.Name}}' | xargs -r docker volume rm

.PHONY: devnet-clean
