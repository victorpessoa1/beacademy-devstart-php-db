<h1>Editar Categoria</h1>

<form action="" method="POST">

    <label for="name">Nome</label>
    <input value="<?php echo $data['name'] ?>" id="name" name="name" class="form-control" >

    <label for="description">Descrição</label>
    <textarea id="description" name="description" class="form-control" ><?php echo $data['description'] ?> </textarea>

    <button class="btn btn-primary">Atualizar</button>

</form>