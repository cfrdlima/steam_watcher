Projeto criado pela IA Claude 3.5

Steam Watcher 🎮🔔
Visão Geral do Projeto
O Rastreador de Atualizações de Jogos Steam é um aplicativo móvel que ajuda jogadores a ficarem informados sobre as últimas atualizações de seus jogos Steam favoritos. Desenvolvido com Flutter no frontend e Spring Boot no backend, este app fornece notificações em tempo real sobre patches e atualizações de jogos.
Principais Recursos

🕹️ Acompanhamento de múltiplos jogos Steam
🔔 Notificações de atualização em tempo real
📱 Suporte móvel multiplataforma (Android & iOS)
🔒 Autenticação segura
🌐 Integração com API Steam

Pilha Tecnológica
Frontend

Flutter
Provider para Gerenciamento de Estado
Flutter Local Notifications
HTTP para comunicação de API

Backend

Spring Boot
Spring Security
API REST
Integração com API Web Steam

Pré-requisitos

SDK Flutter (versão estável mais recente)
Java 11 ou superior
Android Studio / IntelliJ IDEA
Chave de API Web Steam

Instalação
Configuração do Backend

Clone o repositório

bashCopygit clone https://github.com/seuusuario/rastreador-atualizacoes-steam.git
cd rastreador-atualizacoes-steam/backend

Configure o application.properties

propertiesCopysteam.api.key=SUA_CHAVE_API_WEB_STEAM
spring.security.user.name=seu_usuario
spring.security.user.password=sua_senha

Compile e execute a aplicação Spring Boot

bashCopy./mvnw spring-boot:run
Configuração do Frontend

Navegue até o diretório frontend

bashCopycd ../frontend

Instale as dependências

bashCopyflutter pub get

Execute o aplicativo

bashCopyflutter run
Configuração
Jogos Rastreados
Modifique \_trackedGameIds no GameUpdatesProvider para adicionar/remover jogos:
dartCopyList<int> \_trackedGameIds = [
730, // Counter-Strike 2
570, // Dota 2
440 // Team Fortress 2
];
Segurança

Implementa autenticação básica
Utiliza armazenamento seguro para credenciais
Comunicação via HTTPS
Implementa autenticação baseada em token

Padrões de Projeto Utilizados

Padrão Provider
Padrão Repositório
Padrão de Serviço
Injeção de Dependência
Padrão Strategy

Roadmap

Suporte para mais plataformas de jogos
Frequência personalizável de verificação de atualizações
Modo offline
Análise detalhada de notas de patch
Gerenciamento de biblioteca de jogos do usuário

Resolução de Problemas

Verifique se a chave de API Web Steam é válida
Verifique a conectividade de rede
Confirme as permissões de notificação

Contribuindo

Faça um fork do repositório
Crie sua branch de feature (git checkout -b feature/RecursoIncrivel)
Commit suas alterações (git commit -m 'Adiciona algum RecursoIncrivel')
Envie para a branch (git push origin feature/RecursoIncrivel)
Abra um Pull Request

Licença
Distribuído sob a Licença MIT. Veja LICENÇA para mais informações.
Contato
Seu Nome - seu.email@exemplo.com
Link do Projeto: https://github.com/seuusuario/rastreador-atualizacoes-steam
Reconhecimentos

Flutter
Spring Boot
API Web Steam

Capturas de Tela e Demonstração (Futura Seção)
Adicione aqui capturas de tela do aplicativo e, se possível, um link para um vídeo de demonstração ou download na loja de aplicativos.
Doações e Suporte
Se este projeto foi útil para você, considere:

⭐ Dar uma estrela no GitHub
💰 Fazer uma doação via PayPal/PIX
📢 Compartilhar o projeto com outros desenvolvedores
