<?php
echo "<tr>
    <td>
        <p style=\"margin-top: -100px;\"> </p>
    </td>
    <td>
        <div class=\"galeri\">
            <img src=\"resources/foto/".$books['pic']."\">
        </div>
    </td>
    <td>
        <div id=\"detail\">
            <h5>".$books['judul']."</h5>
            <p>by ".$books['penulis']."</p>
            <p>Kategori : ".$books['kategori']."</p>
            <a><button class=\"button\" data-toggle=\"modal\" data-target=\"#modal".$books['id_buku']."\">Detail...</button></a>
        </div>
    </td>
</tr>";
?>
