# fearnought

Fearnought was the heavy woollen cloth sailors' coats were made from: the gear that let a crew work in any weather. This repo equips agent harnesses (Claude Code, the Claude Agent SDK, Codex and others) so that any surface can watch and talk to them: Wheelhouse, Flotilla, a script.

It is planned to hold:

- **The Agent View protocol:** the conversation event contract and its client. These move here from flotilla-org/wheelhouse (`conversation-events`, `wheelhouse-agent`).
- **The server:** one server per account or vessel. It holds many conversations, with many routes into each, and redirects history it no longer keeps to wherever that history was offloaded.
- **Feeders:** one process per harness, in whatever language its SDK needs. A feeder writes contract events as JSON lines on stdout and reads input and controls on stdin. The server serves them. Translators, which turn a harness's native session log into contract events, are watch-only feeders.

No harness is reached in only one way. Several routes (SDK, TUI, app-server, followed logs) can serve the same conversation, together or one after another.

Decisions so far: [placement](https://github.com/flotilla-org/wheelhouse/issues/733) and [transport across machines (Tender)](https://github.com/flotilla-org/flotilla/issues/3995#issuecomment-6953784738).

## License

Licensed under either of [Apache License, Version 2.0](LICENSE-APACHE) or [MIT license](LICENSE-MIT), at your option.
