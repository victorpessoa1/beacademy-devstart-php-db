<h1>Listar Produtos</h1>
<div class="mb-3">
    <a href="/produtos/novo" class="btn btn-outline-primary">Novo Produto</a>
    <a href="/produtos/relatorio" class="btn btn-dark">Gerar PDF</a>
</div>

<table class="table table-hover table-striped">
    <thead class="table-dark">
        <tr>
            <th>#ID</th>
            <th>Nome</th>
            <th>Descrição</th>
            <th>Imagem</th>
            <th>Preço</th>
            <th>Quantidade</th>
            <th>Data de cadastro</th>
            <th>Ações</th>
        </tr>
    </thead>
    <tbody>
        <?php
            while($product = $data->fetch(\PDO::FETCH_ASSOC)) {
                extract($product);
                echo "
                    <tr>
                        <td>{$id}</td>
                        <td>{$name}</td>
                        <td>{$description}</td>
                        <td> <img width='80px' src='{$photo}'> </td>
                        <td>{$value}</td>
                        <td>{$quantity}</td>
                        <td>{$created_at}</td>
                        <td>
                            <a href='/produtos/excluir?id={$id}' class='btn btn-outline-danger btn-sm'>Excluir</a>
                            <a href='/produtos/editar?id={$id}' class='btn btn-outline-warning btn-sm'>Editar</a>

                        </td>
                    </tr>
                ";
            }
        ?>
    </tbody>
</table>