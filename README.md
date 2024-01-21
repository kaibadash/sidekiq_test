<!-- @format -->

Sidekiq のテスト

# Redis の起動

あえて port 6000 を使用しています。

```bash
docker compose up -d
```

# Rails

```bash
cd backend
rails s
open http://localhost:3000/sidekiq
```

# Sidekiq

```bash
cd backend
bundle exec sidekiq -C config/sidekiq_easy.yml
bundle exec sidekiq -C config/sidekiq_hard.yml
```

# see

https://docs.google.com/presentation/d/1SF3N-B7Ea2L2CG15yQuSwd4GWyimackTiHQ4qBPfogA
