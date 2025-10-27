<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Minimalista</title>
    <style>
        /* Estilos Globais e do Corpo */
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0; 
            display: flex;
            flex-direction: column; 
            align-items: center; /* Centraliza horizontalmente (o cabeçalho e o rodapé) */
            min-height: 100vh; 
            margin: 0;
            padding: 0;
        }

        /* Cabeçalho */
        .header {
            width: 100%;
            padding: 20px 0;
            text-align: center;
            background-color: white; 
            border-bottom: 1px solid #ccc; 
            margin-bottom: 0; /* Remove a margem para deixar o espaço de centralização livre */
        }

        .header h1 {
            margin: 0;
            color: #333;
            font-size: 28px;
            font-weight: bold; 
        }

        /* Container Principal do Formulário - CORREÇÃO DE TAMANHO */
        .login-container {
            background-color: white;
            border: 1px solid #a9a9a9; /* Borda cinza mais escura */
            border-radius: 4px;
            padding: 40px;
            width: 100%;
            max-width: 350px; /* Largura fixa para caber bem */
            height: auto; /* Garante que a altura seja apenas o necessário */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.05); 
            
            /* A chave para a centralização vertical e horizontal: */
            margin: auto 0; /* Centraliza verticalmente (acima e abaixo) */
            margin-top: 50px; /* Adiciona um espaço fixo para afastar um pouco mais do cabeçalho */
            margin-bottom: 50px; /* Adiciona um espaço fixo para afastar um pouco mais do rodapé */
            /* Alternativa para o margin: auto 0 é usar `justify-content: center;` em um container pai
               que ocupe o espaço entre header e footer. Mas esta solução é mais direta. */
        }
        
        /* Ajuste: Para garantir a centralização vertical perfeita no espaço restante,
        vamos envolver o .login-container em um wrapper que ocupe o espaço central */
        .main-content {
            display: flex;
            justify-content: center; /* Centraliza o formulário verticalmente */
            align-items: center; /* Centraliza o formulário horizontalmente */
            flex-grow: 1; /* Faz este container preencher o espaço restante entre header e footer */
            width: 100%;
            padding: 20px; /* Adiciona um pouco de padding para telas pequenas */
        }
        
        /* O restante do CSS do login-container permanece */
        .login-container h2 {
            font-size: 24px;
            margin-bottom: 25px;
            color: #111;
            font-weight: 400;
            text-align: left;
        }

        /* Estilos do Formulário */
        .login-form label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            font-size: 13px;
            color: #333;
        }

        .login-form input[type="text"],
        .login-form input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-sizing: border-box; 
            font-size: 14px;
        }

        .login-form input[type="text"]:focus,
        .login-form input[type="password"]:focus {
            border-color: #007185; 
            outline: none;
            box-shadow: 0 0 0 3px rgba(0, 113, 133, 0.2);
        }

        /* Estilo do Botão Amarelo */
        .login-form button {
            background-color: #ffc220; 
            color: #111;
            font-weight: bold;
            padding: 10px;
            width: 100%;
            border: 1px solid #ffac0e; 
            border-radius: 3px;
            cursor: pointer;
            font-size: 14px;
            transition: background-color 0.2s;
        }

        .login-form button:hover {
            background-color: #ffb700; 
        }

        /* Link de "Criar Conta" */
        .create-account {
            margin-top: 20px;
            text-align: center;
            font-size: 13px;
        }

        .create-account a {
            color: #0066c0;
            text-decoration: none;
        }

        .create-account a:hover {
            text-decoration: underline;
        }

        /* Rodapé */
        .footer {
            width: 100%;
            max-width: none; /* Deixa o rodapé com largura total */
            text-align: center;
            padding: 20px 0;
            border-top: 1px solid #ccc;
            background-color: white; /* Fundo branco para o rodapé */
            margin-top: auto; /* Garante que o rodapé vá para o final da página */
        }

        .footer-links {
            max-width: 500px;
            margin: 0 auto; /* Centraliza os links do rodapé */
        }
        
        .footer a {
            color: #0066c0;
            margin: 0 10px;
            text-decoration: none;
            font-size: 12px;
        }

        .footer a:hover {
            text-decoration: underline;
        }

        .footer p {
            font-size: 11px;
            color: #555;
            margin-top: 10px;
        }
    </style>
</head>
<body>

    <header class="header">
        <h1>#SuaLogoAqui</h1>
    </header>

    <div class="main-content">
        <div class="login-container">
            <h2>Fazer Login</h2>
            <form class="login-form">
                <label for="email">E-mail ou Telefone</label>
                <input type="text" id="email" name="email" required>

                <label for="password">Senha</label>
                <input type="password" id="password" name="password" required>

                <button type="submit">Entrar</button>
            </form>
            
            <div class="create-account">
                <p>Novo por aqui? <a href="#">Crie sua conta.</a></p>
            </div>
        </div>
    </div>
    
    <footer class="footer">
        <div class="footer-links">
            <a href="#">Condições de Uso</a>
            <a href="#">Política de Privacidade</a>
            <a href="#">Ajuda</a>
            <p>&copy; 2025 Seu Nome ou Empresa</p>
        </div>
    </footer>

</body>
</html>
