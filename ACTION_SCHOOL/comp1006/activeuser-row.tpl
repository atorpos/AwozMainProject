<tr class="even">
    <td>
        <div class="form-check form-check-sm form-check-custom form-check-solid">
            <input class="form-check-input" type="checkbox" value="1">
        </div>
    </td>
    <td class="d-flex align-items-center">
        <!--begin:: Avatar -->
        <div class="symbol symbol-circle symbol-50px overflow-hidden me-3">
            <a href="active-user-details/index?token={$_active_user['token']}">
                <div class="symbol-label fs-3 bg-light-danger text-danger">M</div>
            </a>
        </div>
        <!--end::Avatar-->
        <!--begin::User details-->
        <div class="d-flex flex-column">
            <a href="active-user-details/index?token={$_active_user['token']}"
               class="text-gray-800 text-hover-primary mb-1">{$_active_user['first_name']}</a>
            <span>{$_active_user['email']}</span>
        </div>
        <!--begin::User details-->
    </td>
    <td>{$_active_user['country']}</td>
    <td data-order="2023-10-05T00:38:20-04:00">
        <div class="badge badge-light fw-bold">20 mins ago</div>
    </td>
    <td>
        <div class="badge badge-light-success fw-bold">
            {if $_active_user['type'] == 1}
                Swimmer
            {/if}
            {if $_active_user['type'] == 2}
                Runner
            {/if}
        </div>
    </td>
    <td data-order="2023-09-22T14:40:00-04:00">{$_active_user['created_date']|datetime}</td>
    <td class="text-end">
        <a href="#"
           class="btn btn-light btn-active-light-primary btn-flex btn-center btn-sm"
           data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end">Actions
            <i class="ki-duotone ki-down fs-5 ms-1"></i></a>
        <!--begin::Menu-->
        <div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-600 menu-state-bg-light-primary fw-semibold fs-7 w-125px py-4"
             data-kt-menu="true">
            <!--begin::Menu item-->
            <div class="menu-item px-3">
                <a href="active-user-details/index?token={$_active_user['token']}"
                   class="menu-link px-3">Edit</a>
            </div>
            <!--end::Menu item-->
            <!--begin::Menu item-->
            <div class="menu-item px-3">
                <a href="#" class="menu-link px-3"
                   data-kt-users-table-filter="delete_row">Delete</a>
            </div>
            <!--end::Menu item-->
        </div>
        <!--end::Menu-->
    </td>
</tr>