﻿var dataTable;

$(document).ready(function () {
    loadDataTable();
});

function loadDataTable() {
    dataTable = $('#tblData').DataTable({
        "ajax": { url: '/moderator/report/getallreportartwork' },
        "columns": [
            { data: 'title', "width": "25%" },
            { data: 'description', "width": "25%" },
            { data: 'applicationUser.fullName', "width": "10%" },
            { data: 'price', "width": "10%" },
            { data: 'category.categoryName', "width": "10%" }, // Accessing displayOrder within the category object //need to fix here
            // Corrected here
            {
                data: 'artworkId',
                "render": function (data) {
                    return `<div class="w-75 btn-group" role="group">
                     <a href="/creator/artwork/upsert?id=${data}" class="btn btn-primary mx-2"> <i class="bi bi-pencil-square"></i> Edit</a>
                     <a onClick=Delete('/creator/artwork/delete/${data}') class="btn btn-danger mx-2"> <i class="bi bi-trash-fill"></i> Delete</a>
                    </div>`
                },
                "width": "25%"
            }
        ]
    });
}


function Delete(url) {
    Swal.fire({
        title: 'Are you sure?',
        text: "You won't be able to revert this!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes, delete it!'
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
                url: url,
                type: 'DELETE',
                success: function (data) {
                    dataTable.ajax.reload();
                    toastr.success(data.message);
                }
            })
        }
    })
}
