<tr class="odd">
    <td>
        <div class="symbol symbol-40px symbol-circle">
            <img alt="Pic" src="{$_image_files['location']}">
        </div>
    </td>
    <td>
        <a class="d-block overlay" data-fslightbox="gallery" href="{$_image_files['location']}">
            <div class="overlay-wrapper min-h-40px">{$_image_files['name']}</div>
            <div class="overlay-layer card-rounded bg-dark bg-opacity-25 shadow">
                <i class="bi bi-eye-fill text-white fs-3x"></i>
            </div>
        </a>
    </td>
    <td>
        {$_image_files['size']}
    </td>
    <td>
        {$_image_files['updated_time']|datetime}
    </td>
    <td>

    </td>
</tr>