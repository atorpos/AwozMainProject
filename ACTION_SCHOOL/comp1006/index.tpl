{$PAGE_TITLE = "COMP1006"}
{tpl /header}
<!--begin::Main-->
<div class="app-main flex-column flex-row-fluid" id="kt_app_main">
    <!--begin::Content wrapper-->
    <div class="d-flex flex-column flex-column-fluid">
        <!--begin::Toolbar-->
        <div id="kt_app_toolbar" class="app-toolbar py-3 py-lg-6">
            <!--begin::Toolbar container-->
            <div id="kt_app_toolbar_container" class="app-container container-xxl d-flex flex-stack">
                <!--begin::Page title-->
                <div class="page-title d-flex flex-column justify-content-center flex-wrap me-3">
                    <!--begin::Title-->
                    <h1 class="page-heading d-flex text-dark fw-bold fs-3 flex-column justify-content-center my-0">Users
                        List</h1>
                    <!--end::Title-->
                    <!--begin::Breadcrumb-->
                    <ul class="breadcrumb breadcrumb-separatorless fw-semibold fs-7 my-0 pt-1">
                        <!--begin::Item-->
                        <li class="breadcrumb-item text-muted">
                            <a href="../../demo1/dist/index.html" class="text-muted text-hover-primary">Home</a>
                        </li>
                        <!--end::Item-->
                        <!--begin::Item-->
                        <li class="breadcrumb-item">
                            <span class="bullet bg-gray-400 w-5px h-2px"></span>
                        </li>
                        <!--end::Item-->
                        <!--begin::Item-->
                        <li class="breadcrumb-item text-muted">User Management</li>
                        <!--end::Item-->
                        <!--begin::Item-->
                        <li class="breadcrumb-item">
                            <span class="bullet bg-gray-400 w-5px h-2px"></span>
                        </li>
                        <!--end::Item-->
                        <!--begin::Item-->
                        <li class="breadcrumb-item text-muted">Users</li>
                        <!--end::Item-->
                    </ul>
                    <!--end::Breadcrumb-->
                </div>
                <!--end::Page title-->
                <!--begin::Actions-->
                {*                <div class="d-flex align-items-center gap-2 gap-lg-3">*}
                {*                    <!--begin::Filter menu-->*}
                {*                    <div class="m-0">*}
                {*                        <!--begin::Menu toggle-->*}
                {*                        <a href="#" class="btn btn-sm btn-flex btn-secondary fw-bold" data-kt-menu-trigger="click"*}
                {*                           data-kt-menu-placement="bottom-end">*}
                {*                            <i class="ki-duotone ki-filter fs-6 text-muted me-1">*}
                {*                                <span class="path1"></span>*}
                {*                                <span class="path2"></span>*}
                {*                            </i>Filter</a>*}
                {*                        <!--end::Menu toggle-->*}
                {*                        <!--begin::Menu 1-->*}
                {*                        <div class="menu menu-sub menu-sub-dropdown w-250px w-md-300px" data-kt-menu="true"*}
                {*                             id="kt_menu_64b77617dd0a2">*}
                {*                            <!--begin::Header-->*}
                {*                            <div class="px-7 py-5">*}
                {*                                <div class="fs-5 text-dark fw-bold">Filter Options</div>*}
                {*                            </div>*}
                {*                            <!--end::Header-->*}
                {*                            <!--begin::Menu separator-->*}
                {*                            <div class="separator border-gray-200"></div>*}
                {*                            <!--end::Menu separator-->*}
                {*                            <!--begin::Form-->*}
                {*                            <div class="px-7 py-5">*}
                {*                                <!--begin::Input group-->*}
                {*                                <div class="mb-10">*}
                {*                                    <!--begin::Label-->*}
                {*                                    <label class="form-label fw-semibold">Status:</label>*}
                {*                                    <!--end::Label-->*}
                {*                                    <!--begin::Input-->*}
                {*                                    <div>*}
                {*                                        <select class="form-select form-select-solid select2-hidden-accessible"*}
                {*                                                multiple="" data-kt-select2="true" data-close-on-select="false"*}
                {*                                                data-placeholder="Select option"*}
                {*                                                data-dropdown-parent="#kt_menu_64b77617dd0a2" data-allow-clear="true"*}
                {*                                                data-select2-id="select2-data-7-gst9" tabindex="-1" aria-hidden="true"*}
                {*                                                data-kt-initialized="1">*}
                {*                                            <option></option>*}
                {*                                            <option value="1">Approved</option>*}
                {*                                            <option value="2">Pending</option>*}
                {*                                            <option value="2">In Process</option>*}
                {*                                            <option value="2">Rejected</option>*}
                {*                                        </select><span class="select2 select2-container select2-container--bootstrap5"*}
                {*                                                       dir="ltr" data-select2-id="select2-data-8-lhe1"*}
                {*                                                       style="width: 100%;"><span class="selection"><span*}
                {*                                                        class="select2-selection select2-selection--multiple form-select form-select-solid"*}
                {*                                                        role="combobox" aria-haspopup="true" aria-expanded="false"*}
                {*                                                        tabindex="-1" aria-disabled="false"><ul*}
                {*                                                            class="select2-selection__rendered"*}
                {*                                                            id="select2-a1lg-container"></ul><span*}
                {*                                                            class="select2-search select2-search--inline"><textarea*}
                {*                                                                class="select2-search__field" type="search" tabindex="0"*}
                {*                                                                autocorrect="off" autocapitalize="none"*}
                {*                                                                spellcheck="false" role="searchbox"*}
                {*                                                                aria-autocomplete="list" autocomplete="off"*}
                {*                                                                aria-label="Search"*}
                {*                                                                aria-describedby="select2-a1lg-container"*}
                {*                                                                placeholder="Select option"*}
                {*                                                                style="width: 100%;"></textarea></span></span></span><span*}
                {*                                                    class="dropdown-wrapper" aria-hidden="true"></span></span>*}
                {*                                    </div>*}
                {*                                    <!--end::Input-->*}
                {*                                </div>*}
                {*                                <!--end::Input group-->*}
                {*                                <!--begin::Input group-->*}
                {*                                <div class="mb-10">*}
                {*                                    <!--begin::Label-->*}
                {*                                    <label class="form-label fw-semibold">Member Type:</label>*}
                {*                                    <!--end::Label-->*}
                {*                                    <!--begin::Options-->*}
                {*                                    <div class="d-flex">*}
                {*                                        <!--begin::Options-->*}
                {*                                        <label class="form-check form-check-sm form-check-custom form-check-solid me-5">*}
                {*                                            <input class="form-check-input" type="checkbox" value="1">*}
                {*                                            <span class="form-check-label">Author</span>*}
                {*                                        </label>*}
                {*                                        <!--end::Options-->*}
                {*                                        <!--begin::Options-->*}
                {*                                        <label class="form-check form-check-sm form-check-custom form-check-solid">*}
                {*                                            <input class="form-check-input" type="checkbox" value="2" checked="checked">*}
                {*                                            <span class="form-check-label">Customer</span>*}
                {*                                        </label>*}
                {*                                        <!--end::Options-->*}
                {*                                    </div>*}
                {*                                    <!--end::Options-->*}
                {*                                </div>*}
                {*                                <!--end::Input group-->*}
                {*                                <!--begin::Input group-->*}
                {*                                <div class="mb-10">*}
                {*                                    <!--begin::Label-->*}
                {*                                    <label class="form-label fw-semibold">Notifications:</label>*}
                {*                                    <!--end::Label-->*}
                {*                                    <!--begin::Switch-->*}
                {*                                    <div class="form-check form-switch form-switch-sm form-check-custom form-check-solid">*}
                {*                                        <input class="form-check-input" type="checkbox" value="" name="notifications"*}
                {*                                               checked="checked">*}
                {*                                        <label class="form-check-label">Enabled</label>*}
                {*                                    </div>*}
                {*                                    <!--end::Switch-->*}
                {*                                </div>*}
                {*                                <!--end::Input group-->*}
                {*                                <!--begin::Actions-->*}
                {*                                <div class="d-flex justify-content-end">*}
                {*                                    <button type="reset" class="btn btn-sm btn-light btn-active-light-primary me-2"*}
                {*                                            data-kt-menu-dismiss="true">Reset*}
                {*                                    </button>*}
                {*                                    <button type="submit" class="btn btn-sm btn-primary" data-kt-menu-dismiss="true">*}
                {*                                        Apply*}
                {*                                    </button>*}
                {*                                </div>*}
                {*                                <!--end::Actions-->*}
                {*                            </div>*}
                {*                            <!--end::Form-->*}
                {*                        </div>*}
                {*                        <!--end::Menu 1-->*}
                {*                    </div>*}
                {*                    <!--end::Filter menu-->*}
                {*                    <!--begin::Secondary button-->*}
                {*                    <!--end::Secondary button-->*}
                {*                    <!--begin::Primary button-->*}
                {*                    <a href="#" class="btn btn-sm fw-bold btn-primary" data-bs-toggle="modal"*}
                {*                       data-bs-target="#kt_modal_create_app">Create</a>*}
                {*                    <!--end::Primary button-->*}
                {*                </div>*}
                <!--end::Actions-->
            </div>
            <!--end::Toolbar container-->
        </div>
        <!--end::Toolbar-->
        <!--begin::Content-->
        <div id="kt_app_content" class="app-content flex-column-fluid">
            <!--begin::Content container-->
            <div id="kt_app_content_container" class="app-container container-xxl">
                <!--begin::Card-->
                <div class="card">
                    <!--begin::Card header-->
                    <div class="card-header border-0 pt-6">
                        <!--begin::Card title-->
                        <div class="card-title">
                            {*                            <!--begin::Search-->*}
                            {*                            <div class="d-flex align-items-center position-relative my-1">*}
                            {*                                <i class="ki-duotone ki-magnifier fs-3 position-absolute ms-5">*}
                            {*                                    <span class="path1"></span>*}
                            {*                                    <span class="path2"></span>*}
                            {*                                </i>*}
                            {*                                <input type="text" data-kt-user-table-filter="search"*}
                            {*                                       class="form-control form-control-solid w-250px ps-13" placeholder="Search user">*}
                            {*                            </div>*}
                            {*                            <!--end::Search-->*}
                        </div>
                        <!--begin::Card title-->
                        <div class="card-toolbar">
                            <div class="d-flex justify-content-end" data-kt-user-table-toolbar="base">
                                <!--begin::Add user-->
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#kt_modal_add_customer">Add User</button>
                                <!--end::Add user-->
                            </div>
                            {tpl add_user}
                        </div>
                    </div>
                    <!--begin::Card body-->
                    <div class="card-body py-4">
                        <!--begin::Table-->
                        <div id="kt_table_users_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                            <div class="table-responsive">
                                <table class="table align-middle table-row-dashed fs-6 gy-5 dataTable no-footer"
                                       id="kt_table_users">
                                    <thead>
                                    <tr class="text-start text-muted fw-bold fs-7 text-uppercase gs-0">
                                        <th class="w-10px pe-2 sorting_disabled" rowspan="1" colspan="1" aria-label=""
                                            style="width: 29.890625px;">
                                            <div class="form-check form-check-sm form-check-custom form-check-solid me-3">
                                                <input class="form-check-input" type="checkbox" data-kt-check="true"
                                                       data-kt-check-target="#kt_table_users .form-check-input"
                                                       value="1">
                                            </div>
                                        </th>
                                        <th class="min-w-125px sorting" tabindex="0" aria-controls="kt_table_users"
                                            rowspan="1" colspan="1" aria-label="User: activate to sort column ascending"
                                            style="width: 270.71875px;">Active User
                                        </th>
                                        <th class="min-w-125px sorting" tabindex="0" aria-controls="kt_table_users"
                                            rowspan="1" colspan="1" aria-label="Role: activate to sort column ascending"
                                            style="width: 165.078125px;">Country
                                        </th>
                                        <th class="min-w-125px sorting" tabindex="0" aria-controls="kt_table_users"
                                            rowspan="1" colspan="1"
                                            aria-label="Last login: activate to sort column ascending"
                                            style="width: 165.078125px;">Last Active
                                        </th>
                                        <th class="min-w-125px sorting" tabindex="0" aria-controls="kt_table_users"
                                            rowspan="1" colspan="1"
                                            aria-label="Two-step: activate to sort column ascending"
                                            style="width: 165.078125px;">Type of Sport
                                        </th>
                                        <th class="min-w-125px sorting" tabindex="0" aria-controls="kt_table_users"
                                            rowspan="1" colspan="1"
                                            aria-label="Joined Date: activate to sort column ascending"
                                            style="width: 206.0625px;">Joined Date
                                        </th>
                                        <th class="text-end min-w-100px sorting_disabled" rowspan="1" colspan="1"
                                            aria-label="Actions" style="width: 132.640625px;">Actions
                                        </th>
                                    </tr>
                                    </thead>
                                    <tbody class="text-gray-600 fw-semibold">
                                    {foreach $active_user $_active_user}
                                        {tpl activeuser-row}
                                    {/foreach}
                                    </tbody>
                                </table>
                            </div>
                            <div class="row">
                                <div class="col-sm-12 col-md-5 d-flex align-items-center justify-content-center justify-content-md-start"></div>
                                <div class="col-sm-12 col-md-7 d-flex align-items-center justify-content-center justify-content-md-end">
                                    <div class="dataTables_paginate paging_simple_numbers" id="kt_table_users_paginate">
                                        <ul class="pagination">
                                            <li class="paginate_button page-item previous disabled"
                                                id="kt_table_users_previous"><a href="#" aria-controls="kt_table_users"
                                                                                data-dt-idx="0" tabindex="0"
                                                                                class="page-link"><i
                                                            class="previous"></i></a></li>
                                            <li class="paginate_button page-item active"><a href="#"
                                                                                            aria-controls="kt_table_users"
                                                                                            data-dt-idx="1" tabindex="0"
                                                                                            class="page-link">1</a></li>
                                            <li class="paginate_button page-item "><a href="#"
                                                                                      aria-controls="kt_table_users"
                                                                                      data-dt-idx="2" tabindex="0"
                                                                                      class="page-link">2</a></li>
                                            <li class="paginate_button page-item "><a href="#"
                                                                                      aria-controls="kt_table_users"
                                                                                      data-dt-idx="3" tabindex="0"
                                                                                      class="page-link">3</a></li>
                                            <li class="paginate_button page-item next" id="kt_table_users_next"><a
                                                        href="#" aria-controls="kt_table_users" data-dt-idx="4"
                                                        tabindex="0" class="page-link"><i class="next"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

{tpl /footer}