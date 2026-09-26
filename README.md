# Sistema ERP em Delphi

Projeto de ERP desenvolvido em Delphi (VCL / Windows) seguindo boas práticas de arquitetura em camadas e organização corporativa.

## Estrutura do Projeto

```text
MeuERP/
│
├── bin/          # Executáveis gerados (.exe) e dependências de runtime
├── dcu/          # Arquivos de compilação intermediários (.dcu)
├── database/     # Scripts de banco de dados, DDL e base local
├── assets/       # Ícones, imagens e recursos visuais
│
└── src/          # Código-fonte
    ├── view/     # Telas (VCL Forms .pas e .dfm)
    ├── model/    # Entidades e modelos de dados
    ├── dao/      # Acesso a banco de dados (DataModules, FireDAC)
    ├── service/  # Regras de negócio e serviços
    └── util/     # Helpers, formatadores e utilitários
```

## Requisitos
- Embarcadero Delphi (Community Edition 13 ou superior)
- FireDAC / SQLite
