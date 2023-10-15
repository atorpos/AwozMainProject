{tpl /header}
<div class="d-flex flex-column flex-column-fluid">
    <!--begin::Toolbar-->
    <div id="kt_app_toolbar" class="app-toolbar py-3 py-lg-6">
        <!--begin::Toolbar container-->
        <div id="kt_app_toolbar_container" class="app-container container-xxl d-flex flex-stack">
            <!--begin::Page title-->
            <div class="page-title d-flex flex-column justify-content-center flex-wrap me-3">
                <!--begin::Title-->
                <h1 class="page-heading d-flex text-dark fw-bold fs-3 flex-column justify-content-center my-0">User Overview</h1>
                <!--end::Title-->
                <!--begin::Breadcrumb-->
                <ul class="breadcrumb breadcrumb-separatorless fw-semibold fs-7 my-0 pt-1">
                    <!--begin::Item-->
                    <li class="breadcrumb-item text-muted">
                        <a href="../" class="text-muted text-hover-primary">Home</a>
                    </li>
                    <!--end::Item-->
                    <!--begin::Item-->
                    <li class="breadcrumb-item">
                        <span class="bullet bg-gray-400 w-5px h-2px"></span>
                    </li>
                    <!--end::Item-->
                    <!--begin::Item-->
                    <li class="breadcrumb-item text-muted">User Details</li>
                    <!--end::Item-->
                </ul>
                <!--end::Breadcrumb-->
            </div>
            <!--end::Page title-->
            <!--begin::Actions-->
            <div class="d-flex align-items-center gap-2 gap-lg-3">
                <!--begin::Secondary button-->
                <!--end::Secondary button-->
                <!--begin::Primary button-->
                <a href="#" class="btn btn-sm fw-bold btn-primary" data-bs-toggle="modal" data-bs-target="#kt_modal_create_app">Delete</a>
                <!--end::Primary button-->
            </div>
            <!--end::Actions-->
        </div>
        <!--end::Toolbar container-->
    </div>
    <!--end::Toolbar-->
    <!--begin::Content-->
    <div id="kt_app_content" class="app-content flex-column-fluid">
        <!--begin::Content container-->
        <div id="kt_app_content_container" class="app-container container-xxl">
            <!--begin::Navbar-->
            <div class="card mb-5 mb-xl-10">
                <div class="card-body pt-9 pb-0">
                    <!--begin::Details-->
                    <div class="d-flex flex-wrap flex-sm-nowrap">
                        <!--begin: Pic-->
                        <div class="me-7 mb-4">
                            <div class="symbol symbol-100px symbol-lg-160px symbol-fixed position-relative">
                                <img src="/assets/media/avatars/300-1.jpg" alt="image">
                                <div class="position-absolute translate-middle bottom-0 start-100 mb-6 bg-success rounded-circle border border-4 border-body h-20px w-20px"></div>
                            </div>
                        </div>
                        <!--end::Pic-->
                        <!--begin::Info-->
                        <div class="flex-grow-1">
                            <!--begin::Title-->
                            <div class="d-flex justify-content-between align-items-start flex-wrap mb-2">
                                <!--begin::User-->
                                <div class="d-flex flex-column">
                                    <!--begin::Name-->
                                    <div class="d-flex align-items-center mb-2">
                                        <a href="#" class="text-gray-900 text-hover-primary fs-2 fw-bold me-1">{$user_name}</a>
                                        <a href="#">
                                            <i class="ki-duotone ki-verify fs-1 text-primary">
                                                <span class="path1"></span>
                                                <span class="path2"></span>
                                            </i>
                                        </a>
                                    </div>
                                    <!--end::Name-->
                                    <!--begin::Info-->
                                    <div class="d-flex flex-wrap fw-semibold fs-6 mb-4 pe-2">
                                        <a href="#" class="d-flex align-items-center text-gray-400 text-hover-primary me-5 mb-2">
                                            <i class="ki-duotone ki-profile-circle fs-4 me-1">
                                                <span class="path1"></span>
                                                <span class="path2"></span>
                                                <span class="path3"></span>
                                            </i>{if $active_type == 1}
                                                Swimmer
                                            {/if}
                                            {if $active_type == 2}
                                                Runner
                                            {/if}
                                        </a>
                                        <a href="#" class="d-flex align-items-center text-gray-400 text-hover-primary me-5 mb-2">
                                            <i class="ki-duotone ki-telephone-geolocation fs-4 me-1">
                                                <span class="path1"></span>
                                                <span class="path2"></span>
                                            </i>{$telephone}</a>
                                        <a href="#" class="d-flex align-items-center text-gray-400 text-hover-primary mb-2">
                                            <i class="ki-duotone ki-sms fs-4">
                                                <span class="path1"></span>
                                                <span class="path2"></span>
                                            </i>{$email}</a>
                                    </div>
                                    <!--end::Info-->
                                </div>
                                <!--end::User-->
                                <!--begin::Actions-->
                                <div class="d-flex my-4">
{*                                    <a href="#" class="btn btn-sm btn-light me-2" id="kt_user_follow_button">*}
{*                                        <i class="ki-duotone ki-check fs-3 d-none"></i>*}
{*                                        <!--begin::Indicator label-->*}
{*                                        <span class="indicator-label">Follow</span>*}
{*                                        <!--end::Indicator label-->*}
{*                                        <!--begin::Indicator progress-->*}
{*                                        <span class="indicator-progress">Please wait...*}
{*																<span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>*}
{*                                        <!--end::Indicator progress-->*}
{*                                    </a>*}
{*                                    <a href="#" class="btn btn-sm btn-primary me-3" data-bs-toggle="modal" data-bs-target="#kt_modal_offer_a_deal">Hire Me</a>*}
                                    <!--begin::Menu-->
                                    <div class="me-0">
                                        <button class="btn btn-sm btn-icon btn-bg-light btn-active-color-primary" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end">
                                            <i class="ki-solid ki-dots-horizontal fs-2x"></i>
                                        </button>
                                        <!--begin::Menu 3-->
                                        <div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-800 menu-state-bg-light-primary fw-semibold w-200px py-3" data-kt-menu="true">
                                            <!--begin::Heading-->
                                            <div class="menu-item px-3">
                                                <div class="menu-content text-muted pb-2 px-3 fs-7 text-uppercase">Actives</div>
                                            </div>
                                            <!--end::Heading-->
                                            <!--begin::Menu item-->
                                            <!--end::Menu item-->
                                            <!--begin::Menu item-->
{*                                            <div class="menu-item px-3">*}
{*                                                <a href="#" class="menu-link flex-stack px-3">Create Active*}
{*                                                    <span class="ms-2" data-bs-toggle="tooltip" aria-label="Specify a target name for future usage and reference" data-bs-original-title="Specify a target name for future usage and reference" data-kt-initialized="1">*}
{*																			<i class="ki-duotone ki-information fs-6">*}
{*																				<span class="path1"></span>*}
{*																				<span class="path2"></span>*}
{*																				<span class="path3"></span>*}
{*																			</i>*}
{*																		</span></a>*}
{*                                            </div>*}
                                            <!--end::Menu item-->
                                            <!--begin::Menu item-->
                                            <div class="menu-item px-3">
                                                <a href="#" class="menu-link px-3">Edit Profile</a>
                                            </div>
                                            <!--end::Menu item-->
                                            <!--begin::Menu item-->
                                            <div class="menu-item px-3" data-kt-menu-trigger="hover" data-kt-menu-placement="right-end">
                                                <a href="#" class="menu-link px-3">
                                                    <span class="menu-title">Add Active</span>
                                                    <span class="menu-arrow"></span>
                                                </a>
                                                <!--begin::Menu sub-->
                                                <div class="menu-sub menu-sub-dropdown w-175px py-4">
                                                    <!--begin::Menu item-->
                                                    <div class="menu-item px-3">
                                                        <a href="#" class="menu-link px-3">Swimming</a>
                                                    </div>
                                                    <!--end::Menu item-->
                                                    <!--begin::Menu item-->
                                                    <div class="menu-item px-3">
                                                        <a href="#" class="menu-link px-3">Running</a>
                                                    </div>
                                                    <!--end::Menu item-->
                                                    <!--begin::Menu separator-->
                                                    <div class="separator my-2"></div>
                                                    <!--end::Menu separator-->
                                                    <!--begin::Menu item-->
                                                    <div class="menu-item px-3">
                                                        <a href="#" class="menu-link px-3">Triathlon</a>
                                                    </div>
                                                    <!--end::Menu item-->

{*                                                    <!--begin::Menu item-->*}
{*                                                    <div class="menu-item px-3">*}
{*                                                        <div class="menu-content px-3">*}
{*                                                            <!--begin::Switch-->*}
{*                                                            <label class="form-check form-switch form-check-custom form-check-solid">*}
{*                                                                <!--begin::Input-->*}
{*                                                                <input class="form-check-input w-30px h-20px" type="checkbox" value="1" checked="checked" name="notifications">*}
{*                                                                <!--end::Input-->*}
{*                                                                <!--end::Label-->*}
{*                                                                <span class="form-check-label text-muted fs-6">Recuring</span>*}
{*                                                                <!--end::Label-->*}
{*                                                            </label>*}
{*                                                            <!--end::Switch-->*}
{*                                                        </div>*}
{*                                                    </div>*}
{*                                                    <!--end::Menu item-->*}
                                                </div>
                                                <!--end::Menu sub-->
                                            </div>
                                            <!--end::Menu item-->
                                            <!--begin::Menu item-->
                                            <div class="menu-item px-3 my-1">
                                                <a href="#" class="menu-link px-3">Settings</a>
                                            </div>
                                            <!--end::Menu item-->
                                        </div>
                                        <!--end::Menu 3-->
                                    </div>
                                    <!--end::Menu-->
                                </div>
                                <!--end::Actions-->
                            </div>
                            <!--end::Title-->
                            <!--begin::Stats-->
                            <div class="d-flex flex-wrap flex-stack">
                                <!--begin::Wrapper-->
                                <div class="d-flex flex-column flex-grow-1 pe-8">
                                    <!--begin::Stats-->
                                    <div class="d-flex flex-wrap">
                                        <!--begin::Stat-->
                                        <div class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 me-6 mb-3">
                                            <!--begin::Number-->
                                            <div class="d-flex align-items-center">
                                                <i class="ki-duotone ki-arrow-up fs-3 text-success me-2">
                                                    <span class="path1"></span>
                                                    <span class="path2"></span>
                                                </i>
                                                <div class="fs-2 fw-bold counted" data-kt-countup="true" data-kt-countup-value="0" data-kt-countup-prefix="" data-kt-initialized="1">{$total_count}</div>
                                            </div>
                                            <!--end::Number-->
                                            <!--begin::Label-->
                                            <div class="fw-semibold fs-6 text-gray-400">Total Active Count</div>
                                            <!--end::Label-->
                                        </div>
                                        <!--end::Stat-->
                                        <!--begin::Stat-->
                                        <div class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 me-6 mb-3">
                                            <!--begin::Number-->
                                            <div class="d-flex align-items-center">
                                                <i class="ki-duotone ki-arrow-down fs-3 text-danger me-2">
                                                    <span class="path1"></span>
                                                    <span class="path2"></span>
                                                </i>
                                                <div class="fs-2 fw-bold counted" data-kt-countup="true" data-kt-countup-value="0" data-kt-initialized="1">{$total_length}</div>
                                            </div>
                                            <!--end::Number-->
                                            <!--begin::Label-->
                                            <div class="fw-semibold fs-6 text-gray-400">Total Length</div>
                                            <!--end::Label-->
                                        </div>
                                        <!--end::Stat-->
                                        <!--begin::Stat-->
                                        <div class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 me-6 mb-3">
                                            <!--begin::Number-->
                                            <div class="d-flex align-items-center">
                                                <i class="ki-duotone ki-arrow-up fs-3 text-success me-2">
                                                    <span class="path1"></span>
                                                    <span class="path2"></span>
                                                </i>
                                                <div class="fs-2 fw-bold counted" data-kt-countup="true" data-kt-countup-value="60" data-kt-countup-prefix="%" data-kt-initialized="1">{$average_hb}</div>
                                            </div>
                                            <!--end::Number-->
                                            <!--begin::Label-->
                                            <div class="fw-semibold fs-6 text-gray-400">Average Heartbeat</div>
                                            <!--end::Label-->
                                        </div>
                                        <!--end::Stat-->
                                    </div>
                                    <!--end::Stats-->
                                </div>
                                <!--end::Wrapper-->
                                <!--begin::Progress-->
                                <div class="d-flex align-items-center w-200px w-sm-300px flex-column mt-3">
                                    <div class="d-flex justify-content-between w-100 mt-auto mb-2">
                                        <span class="fw-semibold fs-6 text-gray-400">Target Compleation</span>
                                        <span class="fw-bold fs-6">0%</span>
                                    </div>
                                    <div class="h-5px mx-3 w-100 bg-light mb-3">
                                        <div class="bg-success rounded h-5px" role="progressbar" style="width: 0%;" aria-valuenow="00" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                                <!--end::Progress-->
                            </div>
                            <!--end::Stats-->
                        </div>
                        <!--end::Info-->
                    </div>
                    <!--end::Details-->
                    <!--begin::Navs-->
                    <ul class="nav nav-stretch nav-line-tabs nav-line-tabs-2x border-transparent fs-5 fw-bold">
                        <!--begin::Nav item-->
                        <li class="nav-item mt-2">
                            <a class="nav-link text-active-primary ms-0 me-10 py-5 active" href="../../demo1/dist/account/overview.html">Overview</a>
                        </li>
                        <!--end::Nav item-->
                        <!--begin::Nav item-->
                        <li class="nav-item mt-2">
                            <a class="nav-link text-active-primary ms-0 me-10 py-5" href="../../demo1/dist/account/api-keys.html">API Keys</a>
                        </li>
                        <!--end::Nav item-->
                        <!--begin::Nav item-->
                        <li class="nav-item mt-2">
                            <a class="nav-link text-active-primary ms-0 me-10 py-5" href="../../demo1/dist/account/logs.html">Logs</a>
                        </li>
                        <!--end::Nav item-->
                    </ul>
                    <!--begin::Navs-->
                </div>
            </div>
            <!--end::Navbar-->
            <!--begin::details View-->
            <div class="card mb-5 mb-xl-10" id="kt_profile_details_view">
                <!--begin::Card header-->
                <div class="card-header cursor-pointer">
                    <!--begin::Card title-->
                    <div class="card-title m-0">
                        <h3 class="fw-bold m-0">Profile Details</h3>
                    </div>
                    <!--end::Card title-->
                    <!--begin::Action-->
                    <a href="#" class="btn btn-sm btn-primary align-self-center">Edit Profile</a>
                    <!--end::Action-->
                </div>
                <!--begin::Card header-->
                <!--begin::Card body-->
                <div class="card-body p-9">
                    <!--begin::Row-->
                    <div class="row mb-7">
                        <!--begin::Label-->
                        <label class="col-lg-4 fw-semibold text-muted">Full Name</label>
                        <!--end::Label-->
                        <!--begin::Col-->
                        <div class="col-lg-8">
                            <span class="fw-bold fs-6 text-gray-800">{$user_name}</span>
                        </div>
                        <!--end::Col-->
                    </div>
                    <!--end::Row-->
                    <!--begin::Input group-->
                    <div class="row mb-7">
                        <!--begin::Label-->
                        <label class="col-lg-4 fw-semibold text-muted">Group</label>
                        <!--end::Label-->
                        <!--begin::Col-->
                        <div class="col-lg-8 fv-row">
                            <span class="fw-semibold text-gray-800 fs-6">{$group}</span>
                        </div>
                        <!--end::Col-->
                    </div>
                    <!--end::Input group-->
                    <!--begin::Input group-->
                    <div class="row mb-7">
                        <!--begin::Label-->
                        <label class="col-lg-4 fw-semibold text-muted">Contact Phone
                            <span class="ms-1" data-bs-toggle="tooltip" aria-label="Phone number must be active" data-bs-original-title="Phone number must be active" data-kt-initialized="1">
													<i class="ki-duotone ki-information fs-7">
														<span class="path1"></span>
														<span class="path2"></span>
														<span class="path3"></span>
													</i>
												</span></label>
                        <!--end::Label-->
                        <!--begin::Col-->
                        <div class="col-lg-8 d-flex align-items-center">
                            <span class="fw-bold fs-6 text-gray-800 me-2">{$telephone}</span>
                            <span class="badge badge-success">Verified</span>
                        </div>
                        <!--end::Col-->
                    </div>
                    <!--end::Input group-->
                    <!--begin::Input group-->
                    <div class="row mb-7">
                        <!--begin::Label-->
                        <label class="col-lg-4 fw-semibold text-muted">Email</label>
                        <!--end::Label-->
                        <!--begin::Col-->
                        <div class="col-lg-8">
                            <a href="#" class="fw-semibold fs-6 text-gray-800 text-hover-primary">{$email}</a>
                        </div>
                        <!--end::Col-->
                    </div>
                    <!--end::Input group-->
                    <!--begin::Input group-->
                    <div class="row mb-7">
                        <!--begin::Label-->
                        <label class="col-lg-4 fw-semibold text-muted">Country
                            <span class="ms-1" data-bs-toggle="tooltip" aria-label="Country of origination" data-bs-original-title="Country of origination" data-kt-initialized="1">
													<i class="ki-duotone ki-information fs-7">
														<span class="path1"></span>
														<span class="path2"></span>
														<span class="path3"></span>
													</i>
												</span></label>
                        <!--end::Label-->
                        <!--begin::Col-->
                        <div class="col-lg-8">
                            <span class="fw-bold fs-6 text-gray-800">{$country}</span>
                        </div>
                        <!--end::Col-->
                    </div>
                    <!--end::Input group-->
                    <!--begin::Input group-->
                    <div class="row mb-7">
                        <!--begin::Label-->
                        <label class="col-lg-4 fw-semibold text-muted">Communication</label>
                        <!--end::Label-->
                        <!--begin::Col-->
                        <div class="col-lg-8">
                            <span class="fw-bold fs-6 text-gray-800">Email, Phone</span>
                        </div>
                        <!--end::Col-->
                    </div>
                    <!--end::Input group-->
                    <!--begin::Input group-->
                    <div class="row mb-10">
                        <!--begin::Label-->
                        <label class="col-lg-4 fw-semibold text-muted">Allow Changes</label>
                        <!--begin::Label-->
                        <!--begin::Label-->
                        <div class="col-lg-8">
                            <span class="fw-semibold fs-6 text-gray-800">Yes</span>
                        </div>
                        <!--begin::Label-->
                    </div>
                    <!--end::Input group-->
                    <!--begin::Notice-->
                    <div class="notice d-flex bg-light-warning rounded border-warning border border-dashed p-6">
                        <!--begin::Icon-->
                        <i class="ki-duotone ki-information fs-2tx text-warning me-4">
                            <span class="path1"></span>
                            <span class="path2"></span>
                            <span class="path3"></span>
                        </i>
                        <!--end::Icon-->
                        <!--begin::Wrapper-->
                        <div class="d-flex flex-stack flex-grow-1">
                            <!--begin::Content-->
                            <div class="fw-semibold">
                                <h4 class="text-gray-900 fw-bold">We need your attention!</h4>
                                <div class="fs-6 text-gray-700">Your payment was declined. To start using tools, please
                                    <a class="fw-bold" href="../../demo1/dist/account/billing.html">Add Payment Method</a>.</div>
                            </div>
                            <!--end::Content-->
                        </div>
                        <!--end::Wrapper-->
                    </div>
                    <!--end::Notice-->
                </div>
                <!--end::Card body-->
            </div>
            <!--end::details View-->
            <!--begin::Row-->
            <div class="row gy-5 g-xl-10">
                <!--begin::Col-->
                <div class="col-xl-8 mb-xl-10">
                    <!--begin::Chart widget 5-->
                    <div class="card card-flush h-lg-100">
                        <!--begin::Header-->
                        <div class="card-header flex-nowrap pt-5">
                            <!--begin::Title-->
                            <h3 class="card-title align-items-start flex-column">
                                <span class="card-label fw-bold text-dark">Top Selling Categories</span>
                                <span class="text-gray-400 pt-2 fw-semibold fs-6">8k social visitors</span>
                            </h3>
                            <!--end::Title-->
                            <!--begin::Toolbar-->
                            <div class="card-toolbar">
                                <!--begin::Menu-->
                                <button class="btn btn-icon btn-color-gray-400 btn-active-color-primary justify-content-end" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end" data-kt-menu-overflow="true">
                                    <i class="ki-duotone ki-dots-square fs-1 text-gray-400 me-n1">
                                        <span class="path1"></span>
                                        <span class="path2"></span>
                                        <span class="path3"></span>
                                        <span class="path4"></span>
                                    </i>
                                </button>
                                <!--begin::Menu 2-->
                                <div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-800 menu-state-bg-light-primary fw-semibold w-200px" data-kt-menu="true">
                                    <!--begin::Menu item-->
                                    <div class="menu-item px-3">
                                        <div class="menu-content fs-6 text-dark fw-bold px-3 py-4">Quick Actions</div>
                                    </div>
                                    <!--end::Menu item-->
                                    <!--begin::Menu separator-->
                                    <div class="separator mb-3 opacity-75"></div>
                                    <!--end::Menu separator-->
                                    <!--begin::Menu item-->
                                    <div class="menu-item px-3">
                                        <a href="#" class="menu-link px-3">New Ticket</a>
                                    </div>
                                    <!--end::Menu item-->
                                    <!--begin::Menu item-->
                                    <div class="menu-item px-3">
                                        <a href="#" class="menu-link px-3">New Customer</a>
                                    </div>
                                    <!--end::Menu item-->
                                    <!--begin::Menu item-->
                                    <div class="menu-item px-3" data-kt-menu-trigger="hover" data-kt-menu-placement="right-start">
                                        <!--begin::Menu item-->
                                        <a href="#" class="menu-link px-3">
                                            <span class="menu-title">New Group</span>
                                            <span class="menu-arrow"></span>
                                        </a>
                                        <!--end::Menu item-->
                                        <!--begin::Menu sub-->
                                        <div class="menu-sub menu-sub-dropdown w-175px py-4">
                                            <!--begin::Menu item-->
                                            <div class="menu-item px-3">
                                                <a href="#" class="menu-link px-3">Admin Group</a>
                                            </div>
                                            <!--end::Menu item-->
                                            <!--begin::Menu item-->
                                            <div class="menu-item px-3">
                                                <a href="#" class="menu-link px-3">Staff Group</a>
                                            </div>
                                            <!--end::Menu item-->
                                            <!--begin::Menu item-->
                                            <div class="menu-item px-3">
                                                <a href="#" class="menu-link px-3">Member Group</a>
                                            </div>
                                            <!--end::Menu item-->
                                        </div>
                                        <!--end::Menu sub-->
                                    </div>
                                    <!--end::Menu item-->
                                    <!--begin::Menu item-->
                                    <div class="menu-item px-3">
                                        <a href="#" class="menu-link px-3">New Contact</a>
                                    </div>
                                    <!--end::Menu item-->
                                    <!--begin::Menu separator-->
                                    <div class="separator mt-3 opacity-75"></div>
                                    <!--end::Menu separator-->
                                    <!--begin::Menu item-->
                                    <div class="menu-item px-3">
                                        <div class="menu-content px-3 py-3">
                                            <a class="btn btn-primary btn-sm px-4" href="#">Generate Reports</a>
                                        </div>
                                    </div>
                                    <!--end::Menu item-->
                                </div>
                                <!--end::Menu 2-->
                                <!--end::Menu-->
                            </div>
                            <!--end::Toolbar-->
                        </div>
                        <!--end::Header-->
                        <!--begin::Body-->
                        <div class="card-body pt-5 ps-6">
                            <div id="kt_charts_widget_5" class="min-h-auto" style="min-height: 365px;"><div id="apexchartseh9a6mf2" class="apexcharts-canvas apexchartseh9a6mf2 apexcharts-theme-light" style="width: 778px; height: 350px;"><svg id="SvgjsSvg1006" width="778" height="350" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;"><foreignObject x="0" y="0" width="778" height="350"><div class="apexcharts-legend" xmlns="http://www.w3.org/1999/xhtml" style="max-height: 175px;"></div></foreignObject><g id="SvgjsG1008" class="apexcharts-inner apexcharts-graphical" transform="translate(105, 30)"><defs id="SvgjsDefs1007"><linearGradient id="SvgjsLinearGradient1011" x1="0" y1="0" x2="0" y2="1"><stop id="SvgjsStop1012" stop-opacity="0.4" stop-color="rgba(216,227,240,0.4)" offset="0"></stop><stop id="SvgjsStop1013" stop-opacity="0.5" stop-color="rgba(190,209,230,0.5)" offset="1"></stop><stop id="SvgjsStop1014" stop-opacity="0.5" stop-color="rgba(190,209,230,0.5)" offset="1"></stop></linearGradient><clipPath id="gridRectMaskeh9a6mf2"><rect id="SvgjsRect1016" width="653.81640625" height="277.494" x="-2" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="forecastMaskeh9a6mf2"></clipPath><clipPath id="nonForecastMaskeh9a6mf2"></clipPath><clipPath id="gridRectMarkerMaskeh9a6mf2"><rect id="SvgjsRect1017" width="653.81640625" height="281.494" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath></defs><rect id="SvgjsRect1015" width="0" height="277.494" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke-dasharray="3" fill="url(#SvgjsLinearGradient1011)" class="apexcharts-xcrosshairs" y2="277.494" filter="none" fill-opacity="0.9"></rect><line id="SvgjsLine1042" x1="0" y1="278.494" x2="0" y2="284.494" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1044" x1="162.7541015625" y1="278.494" x2="162.7541015625" y2="284.494" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1046" x1="325.508203125" y1="278.494" x2="325.508203125" y2="284.494" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1048" x1="488.26230468750003" y1="278.494" x2="488.26230468750003" y2="284.494" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1050" x1="651.01640625" y1="278.494" x2="651.01640625" y2="284.494" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><g id="SvgjsG1037" class="apexcharts-grid"><g id="SvgjsG1038" class="apexcharts-gridlines-horizontal"></g><g id="SvgjsG1039" class="apexcharts-gridlines-vertical"><line id="SvgjsLine1043" x1="162.7541015625" y1="0" x2="162.7541015625" y2="277.494" stroke="#dbdfe9" stroke-dasharray="4" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine1045" x1="325.508203125" y1="0" x2="325.508203125" y2="277.494" stroke="#dbdfe9" stroke-dasharray="4" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine1047" x1="488.26230468750003" y1="0" x2="488.26230468750003" y2="277.494" stroke="#dbdfe9" stroke-dasharray="4" stroke-linecap="butt" class="apexcharts-gridline"></line></g><line id="SvgjsLine1052" x1="0" y1="277.494" x2="649.81640625" y2="277.494" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line><line id="SvgjsLine1051" x1="0" y1="1" x2="0" y2="277.494" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line></g><g id="SvgjsG1018" class="apexcharts-bar-series apexcharts-plot-series"><g id="SvgjsG1019" class="apexcharts-series" rel="1" seriesName="series-1" data:realIndex="0"><path id="SvgjsPath1024" d="M4.101 8.321000000000002L605.303880859375 8.321000000000002C607.303880859375 8.321000000000002 609.303880859375 10.321000000000002 609.303880859375 12.321000000000002L609.303880859375 27.321C609.303880859375 29.321 607.303880859375 31.321 605.303880859375 31.321L4.101 31.321C2.101 31.321 0.101 29.321 0.101 27.321L0.101 12.321000000000002C0.101 10.321000000000002 2.101 8.321000000000002 4.101 8.321000000000002C4.101 8.321000000000002 4.101 8.321000000000002 4.101 8.321000000000002 " fill="rgba(62,151,255,0.85)" fill-opacity="1" stroke-opacity="1" stroke-linecap="round" stroke-width="0" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskeh9a6mf2)" pathTo="M 4.101 8.321000000000002 L 605.303880859375 8.321000000000002 C 607.303880859375 8.321000000000002 609.303880859375 10.321000000000002 609.303880859375 12.321000000000002 L 609.303880859375 27.321 C 609.303880859375 29.321 607.303880859375 31.321 605.303880859375 31.321 L 4.101 31.321 C 2.101 31.321 0.101 29.321 0.101 27.321 L 0.101 12.321000000000002 C 0.101 10.321000000000002 2.101 8.321000000000002 4.101 8.321000000000002 Z " pathFrom="M 0.101 8.321000000000002 L 0.101 8.321000000000002 L 0.101 31.321 L 0.101 31.321 L 0.101 31.321 L 0.101 31.321 L 0.101 31.321 L 0.101 8.321000000000002 Z" cy="47.96300000000001" cx="609.302880859375" j="0" val="15" barHeight="23" barWidth="609.202880859375"></path><path id="SvgjsPath1026" d="M4.101 47.96300000000001L483.4633046875 47.96300000000001C485.4633046875 47.96300000000001 487.4633046875 49.96300000000001 487.4633046875 51.96300000000001L487.4633046875 66.96300000000001C487.4633046875 68.96300000000001 485.4633046875 70.96300000000001 483.4633046875 70.96300000000001L4.101 70.96300000000001C2.101 70.96300000000001 0.101 68.96300000000001 0.101 66.96300000000001L0.101 51.96300000000001C0.101 49.96300000000001 2.101 47.96300000000001 4.101 47.96300000000001C4.101 47.96300000000001 4.101 47.96300000000001 4.101 47.96300000000001 " fill="rgba(241,65,108,0.85)" fill-opacity="1" stroke-opacity="1" stroke-linecap="round" stroke-width="0" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskeh9a6mf2)" pathTo="M 4.101 47.96300000000001 L 483.4633046875 47.96300000000001 C 485.4633046875 47.96300000000001 487.4633046875 49.96300000000001 487.4633046875 51.96300000000001 L 487.4633046875 66.96300000000001 C 487.4633046875 68.96300000000001 485.4633046875 70.96300000000001 483.4633046875 70.96300000000001 L 4.101 70.96300000000001 C 2.101 70.96300000000001 0.101 68.96300000000001 0.101 66.96300000000001 L 0.101 51.96300000000001 C 0.101 49.96300000000001 2.101 47.96300000000001 4.101 47.96300000000001 Z " pathFrom="M 0.101 47.96300000000001 L 0.101 47.96300000000001 L 0.101 70.96300000000001 L 0.101 70.96300000000001 L 0.101 70.96300000000001 L 0.101 70.96300000000001 L 0.101 70.96300000000001 L 0.101 47.96300000000001 Z" cy="87.60500000000002" cx="487.4623046875" j="1" val="12" barHeight="23" barWidth="487.3623046875"></path><path id="SvgjsPath1028" d="M4.101 87.60500000000002L402.23625390625 87.60500000000002C404.23625390625 87.60500000000002 406.23625390625 89.60500000000002 406.23625390625 91.60500000000002L406.23625390625 106.60500000000002C406.23625390625 108.60500000000002 404.23625390625 110.60500000000002 402.23625390625 110.60500000000002L4.101 110.60500000000002C2.101 110.60500000000002 0.101 108.60500000000002 0.101 106.60500000000002L0.101 91.60500000000002C0.101 89.60500000000002 2.101 87.60500000000002 4.101 87.60500000000002C4.101 87.60500000000002 4.101 87.60500000000002 4.101 87.60500000000002 " fill="rgba(80,205,137,0.85)" fill-opacity="1" stroke-opacity="1" stroke-linecap="round" stroke-width="0" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskeh9a6mf2)" pathTo="M 4.101 87.60500000000002 L 402.23625390625 87.60500000000002 C 404.23625390625 87.60500000000002 406.23625390625 89.60500000000002 406.23625390625 91.60500000000002 L 406.23625390625 106.60500000000002 C 406.23625390625 108.60500000000002 404.23625390625 110.60500000000002 402.23625390625 110.60500000000002 L 4.101 110.60500000000002 C 2.101 110.60500000000002 0.101 108.60500000000002 0.101 106.60500000000002 L 0.101 91.60500000000002 C 0.101 89.60500000000002 2.101 87.60500000000002 4.101 87.60500000000002 Z " pathFrom="M 0.101 87.60500000000002 L 0.101 87.60500000000002 L 0.101 110.60500000000002 L 0.101 110.60500000000002 L 0.101 110.60500000000002 L 0.101 110.60500000000002 L 0.101 110.60500000000002 L 0.101 87.60500000000002 Z" cy="127.24700000000001" cx="406.23525390625" j="2" val="10" barHeight="23" barWidth="406.13525390625"></path><path id="SvgjsPath1030" d="M4.101 127.24700000000001L321.009203125 127.24700000000001C323.009203125 127.24700000000001 325.009203125 129.247 325.009203125 131.247L325.009203125 146.247C325.009203125 148.247 323.009203125 150.247 321.009203125 150.247L4.101 150.247C2.101 150.247 0.101 148.247 0.101 146.247L0.101 131.247C0.101 129.247 2.101 127.24700000000001 4.101 127.24700000000001C4.101 127.24700000000001 4.101 127.24700000000001 4.101 127.24700000000001 " fill="rgba(255,199,0,0.85)" fill-opacity="1" stroke-opacity="1" stroke-linecap="round" stroke-width="0" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskeh9a6mf2)" pathTo="M 4.101 127.24700000000001 L 321.009203125 127.24700000000001 C 323.009203125 127.24700000000001 325.009203125 129.247 325.009203125 131.247 L 325.009203125 146.247 C 325.009203125 148.247 323.009203125 150.247 321.009203125 150.247 L 4.101 150.247 C 2.101 150.247 0.101 148.247 0.101 146.247 L 0.101 131.247 C 0.101 129.247 2.101 127.24700000000001 4.101 127.24700000000001 Z " pathFrom="M 0.101 127.24700000000001 L 0.101 127.24700000000001 L 0.101 150.247 L 0.101 150.247 L 0.101 150.247 L 0.101 150.247 L 0.101 150.247 L 0.101 127.24700000000001 Z" cy="166.889" cx="325.008203125" j="3" val="8" barHeight="23" barWidth="324.908203125"></path><path id="SvgjsPath1032" d="M4.101 166.889L280.395677734375 166.889C282.395677734375 166.889 284.395677734375 168.889 284.395677734375 170.889L284.395677734375 185.889C284.395677734375 187.889 282.395677734375 189.889 280.395677734375 189.889L4.101 189.889C2.101 189.889 0.101 187.889 0.101 185.889L0.101 170.889C0.101 168.889 2.101 166.889 4.101 166.889C4.101 166.889 4.101 166.889 4.101 166.889 " fill="rgba(114,57,234,0.85)" fill-opacity="1" stroke-opacity="1" stroke-linecap="round" stroke-width="0" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskeh9a6mf2)" pathTo="M 4.101 166.889 L 280.395677734375 166.889 C 282.395677734375 166.889 284.395677734375 168.889 284.395677734375 170.889 L 284.395677734375 185.889 C 284.395677734375 187.889 282.395677734375 189.889 280.395677734375 189.889 L 4.101 189.889 C 2.101 189.889 0.101 187.889 0.101 185.889 L 0.101 170.889 C 0.101 168.889 2.101 166.889 4.101 166.889 Z " pathFrom="M 0.101 166.889 L 0.101 166.889 L 0.101 189.889 L 0.101 189.889 L 0.101 189.889 L 0.101 189.889 L 0.101 189.889 L 0.101 166.889 Z" cy="206.531" cx="284.394677734375" j="4" val="7" barHeight="23" barWidth="284.294677734375"></path><path id="SvgjsPath1034" d="M4.101 206.531L158.5551015625 206.531C160.5551015625 206.531 162.5551015625 208.531 162.5551015625 210.531L162.5551015625 225.531C162.5551015625 227.531 160.5551015625 229.531 158.5551015625 229.531L4.101 229.531C2.101 229.531 0.101 227.531 0.101 225.531L0.101 210.531C0.101 208.531 2.101 206.531 4.101 206.531C4.101 206.531 4.101 206.531 4.101 206.531 " fill="rgba(80,205,205,0.85)" fill-opacity="1" stroke-opacity="1" stroke-linecap="round" stroke-width="0" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskeh9a6mf2)" pathTo="M 4.101 206.531 L 158.5551015625 206.531 C 160.5551015625 206.531 162.5551015625 208.531 162.5551015625 210.531 L 162.5551015625 225.531 C 162.5551015625 227.531 160.5551015625 229.531 158.5551015625 229.531 L 4.101 229.531 C 2.101 229.531 0.101 227.531 0.101 225.531 L 0.101 210.531 C 0.101 208.531 2.101 206.531 4.101 206.531 Z " pathFrom="M 0.101 206.531 L 0.101 206.531 L 0.101 229.531 L 0.101 229.531 L 0.101 229.531 L 0.101 229.531 L 0.101 229.531 L 0.101 206.531 Z" cy="246.173" cx="162.5541015625" j="5" val="4" barHeight="23" barWidth="162.4541015625"></path><path id="SvgjsPath1036" d="M4.101 246.173L117.941576171875 246.173C119.941576171875 246.173 121.941576171875 248.173 121.941576171875 250.173L121.941576171875 265.173C121.941576171875 267.173 119.941576171875 269.173 117.941576171875 269.173L4.101 269.173C2.101 269.173 0.101 267.173 0.101 265.173L0.101 250.173C0.101 248.173 2.101 246.173 4.101 246.173C4.101 246.173 4.101 246.173 4.101 246.173 " fill="rgba(63,66,84,0.85)" fill-opacity="1" stroke-opacity="1" stroke-linecap="round" stroke-width="0" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskeh9a6mf2)" pathTo="M 4.101 246.173 L 117.941576171875 246.173 C 119.941576171875 246.173 121.941576171875 248.173 121.941576171875 250.173 L 121.941576171875 265.173 C 121.941576171875 267.173 119.941576171875 269.173 117.941576171875 269.173 L 4.101 269.173 C 2.101 269.173 0.101 267.173 0.101 265.173 L 0.101 250.173 C 0.101 248.173 2.101 246.173 4.101 246.173 Z " pathFrom="M 0.101 246.173 L 0.101 246.173 L 0.101 269.173 L 0.101 269.173 L 0.101 269.173 L 0.101 269.173 L 0.101 269.173 L 0.101 246.173 Z" cy="285.815" cx="121.940576171875" j="6" val="3" barHeight="23" barWidth="121.840576171875"></path><g id="SvgjsG1021" class="apexcharts-bar-goals-markers" style="pointer-events: none"><g id="SvgjsG1023" className="apexcharts-bar-goals-groups" class="apexcharts-hidden-element-shown" clip-path="url(#gridRectMarkerMaskeh9a6mf2)"></g><g id="SvgjsG1025" className="apexcharts-bar-goals-groups" class="apexcharts-hidden-element-shown" clip-path="url(#gridRectMarkerMaskeh9a6mf2)"></g><g id="SvgjsG1027" className="apexcharts-bar-goals-groups" class="apexcharts-hidden-element-shown" clip-path="url(#gridRectMarkerMaskeh9a6mf2)"></g><g id="SvgjsG1029" className="apexcharts-bar-goals-groups" class="apexcharts-hidden-element-shown" clip-path="url(#gridRectMarkerMaskeh9a6mf2)"></g><g id="SvgjsG1031" className="apexcharts-bar-goals-groups" class="apexcharts-hidden-element-shown" clip-path="url(#gridRectMarkerMaskeh9a6mf2)"></g><g id="SvgjsG1033" className="apexcharts-bar-goals-groups" class="apexcharts-hidden-element-shown" clip-path="url(#gridRectMarkerMaskeh9a6mf2)"></g><g id="SvgjsG1035" className="apexcharts-bar-goals-groups" class="apexcharts-hidden-element-shown" clip-path="url(#gridRectMarkerMaskeh9a6mf2)"></g></g><g id="SvgjsG1022" class="apexcharts-bar-shadows apexcharts-hidden-element-shown" style="pointer-events: none"></g></g><g id="SvgjsG1020" class="apexcharts-datalabels apexcharts-hidden-element-shown" data:realIndex="0"></g></g><g id="SvgjsG1040" class="apexcharts-grid-borders"><line id="SvgjsLine1041" x1="0" y1="0" x2="0" y2="277.494" stroke="#dbdfe9" stroke-dasharray="4" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine1049" x1="651.01640625" y1="0" x2="651.01640625" y2="277.494" stroke="#dbdfe9" stroke-dasharray="4" stroke-linecap="butt" class="apexcharts-gridline"></line></g><line id="SvgjsLine1053" x1="0" y1="0" x2="649.81640625" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine1054" x1="0" y1="0" x2="649.81640625" y2="0" stroke-dasharray="0" stroke-width="0" stroke-linecap="butt" class="apexcharts-ycrosshairs-hidden"></line><g id="SvgjsG1072" class="apexcharts-yaxis apexcharts-xaxis-inversed" rel="0"><g id="SvgjsG1073" class="apexcharts-yaxis-texts-g apexcharts-xaxis-inversed-texts-g" transform="translate(-80.2578125, 0)"><text id="SvgjsText1075" font-family="Helvetica, Arial, sans-serif" x="0" y="23.622909090909094" text-anchor="start" dominant-baseline="auto" font-size="14px" font-weight="600" fill="#252f4a" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1076">Phones</tspan><title>Phones</title></text><text id="SvgjsText1078" font-family="Helvetica, Arial, sans-serif" x="0" y="63.2649090909091" text-anchor="start" dominant-baseline="auto" font-size="14px" font-weight="600" fill="#252f4a" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1079">Laptops</tspan><title>Laptops</title></text><text id="SvgjsText1081" font-family="Helvetica, Arial, sans-serif" x="0" y="102.9069090909091" text-anchor="start" dominant-baseline="auto" font-size="14px" font-weight="600" fill="#252f4a" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1082">Headsets</tspan><title>Headsets</title></text><text id="SvgjsText1084" font-family="Helvetica, Arial, sans-serif" x="0" y="142.5489090909091" text-anchor="start" dominant-baseline="auto" font-size="14px" font-weight="600" fill="#252f4a" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1085">Games</tspan><title>Games</title></text><text id="SvgjsText1087" font-family="Helvetica, Arial, sans-serif" x="0" y="182.1909090909091" text-anchor="start" dominant-baseline="auto" font-size="14px" font-weight="600" fill="#252f4a" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1088">Keyboardsy</tspan><title>Keyboardsy</title></text><text id="SvgjsText1090" font-family="Helvetica, Arial, sans-serif" x="0" y="221.83290909090908" text-anchor="start" dominant-baseline="auto" font-size="14px" font-weight="600" fill="#252f4a" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1091">Monitors</tspan><title>Monitors</title></text><text id="SvgjsText1093" font-family="Helvetica, Arial, sans-serif" x="0" y="261.4749090909091" text-anchor="start" dominant-baseline="auto" font-size="14px" font-weight="600" fill="#252f4a" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1094">Speakers</tspan><title>Speakers</title></text></g></g><g id="SvgjsG1055" class="apexcharts-xaxis apexcharts-yaxis-inversed"><g id="SvgjsG1056" class="apexcharts-xaxis-texts-g" transform="translate(0, -9.333333333333334)"><text id="SvgjsText1057" font-family="Helvetica, Arial, sans-serif" x="649.81640625" y="307.494" text-anchor="middle" dominant-baseline="auto" font-size="14px" font-weight="600" fill="#b5b5c3" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1059">16K</tspan><title>16K</title></text><text id="SvgjsText1060" font-family="Helvetica, Arial, sans-serif" x="487.2623046875" y="307.494" text-anchor="middle" dominant-baseline="auto" font-size="14px" font-weight="600" fill="#b5b5c3" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1062">12K</tspan><title>12K</title></text><text id="SvgjsText1063" font-family="Helvetica, Arial, sans-serif" x="324.70820312500007" y="307.494" text-anchor="middle" dominant-baseline="auto" font-size="14px" font-weight="600" fill="#b5b5c3" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1065">8K</tspan><title>8K</title></text><text id="SvgjsText1066" font-family="Helvetica, Arial, sans-serif" x="162.15410156250005" y="307.494" text-anchor="middle" dominant-baseline="auto" font-size="14px" font-weight="600" fill="#b5b5c3" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1068">4K</tspan><title>4K</title></text><text id="SvgjsText1069" font-family="Helvetica, Arial, sans-serif" x="-0.39999999999997726" y="307.494" text-anchor="middle" dominant-baseline="auto" font-size="14px" font-weight="600" fill="#b5b5c3" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1071">0K</tspan><title>0K</title></text></g></g><g id="SvgjsG1095" class="apexcharts-yaxis-annotations apexcharts-hidden-element-shown"></g><g id="SvgjsG1096" class="apexcharts-xaxis-annotations apexcharts-hidden-element-shown"></g><g id="SvgjsG1097" class="apexcharts-point-annotations apexcharts-hidden-element-shown"></g></g></svg><div class="apexcharts-tooltip apexcharts-theme-light" style="left: 267px; top: 178.858px;"><div class="apexcharts-tooltip-title" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;">Monitors</div><div class="apexcharts-tooltip-series-group apexcharts-active" style="order: 1; display: flex;"><span class="apexcharts-tooltip-marker" style="background-color: rgba(80, 205, 205, 0.85);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label">series-1: </span><span class="apexcharts-tooltip-text-y-value">4</span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div></div><div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light"><div class="apexcharts-yaxistooltip-text"></div></div></div></div>
                        </div>
                        <!--end::Body-->
                    </div>
                    <!--end::Chart widget 5-->
                </div>
                <!--end::Col-->
                <!--begin::Col-->
                <div class="col-xl-4 mb-5 mb-xl-10">
                    <!--begin::Engage widget 1-->
                    <div class="card h-md-100" dir="ltr">
                        <!--begin::Body-->
                        <div class="card-body d-flex flex-column flex-center">
                            <!--begin::Heading-->
                            <div class="mb-2">
                                <!--begin::Title-->
                                <h1 class="fw-semibold text-gray-800 text-center lh-lg">Have you tried
                                    <br>new
                                    <span class="fw-bolder">Mobile Application ?</span></h1>
                                <!--end::Title-->
                                <!--begin::Illustration-->
                                <div class="py-10 text-center">
                                    <img src="assets/media/svg/illustrations/easy/1.svg" class="theme-light-show w-200px" alt="">
                                    <img src="assets/media/svg/illustrations/easy/1-dark.svg" class="theme-dark-show w-200px" alt="">
                                </div>
                                <!--end::Illustration-->
                            </div>
                            <!--end::Heading-->
                            <!--begin::Links-->
                            <div class="text-center mb-1">
                                <!--begin::Link-->
                                <a class="btn btn-sm btn-primary me-2" data-bs-target="#kt_modal_create_app" data-bs-toggle="modal">Try now</a>
                                <!--end::Link-->
                                <!--begin::Link-->
                                <a class="btn btn-sm btn-light" href="../../demo1/dist/apps/invoices/view/invoice-1.html">Learn more</a>
                                <!--end::Link-->
                            </div>
                            <!--end::Links-->
                        </div>
                        <!--end::Body-->
                    </div>
                    <!--end::Engage widget 1-->
                </div>
                <!--end::Col-->
            </div>
            <!--end::Row-->
            <!--begin::Row-->
            <div class="row gy-5 g-xl-10">
                <!--begin::Col-->
                <div class="col-xl-4">
                    <!--begin::List widget 5-->
                    <div class="card card-flush h-xl-100">
                        <!--begin::Header-->
                        <div class="card-header pt-7">
                            <!--begin::Title-->
                            <h3 class="card-title align-items-start flex-column">
                                <span class="card-label fw-bold text-dark">Product Delivery</span>
                                <span class="text-gray-400 mt-1 fw-semibold fs-6">1M Products Shipped so far</span>
                            </h3>
                            <!--end::Title-->
                            <!--begin::Toolbar-->
                            <div class="card-toolbar">
                                <a href="../../demo1/dist/apps/ecommerce/sales/details.html" class="btn btn-sm btn-light">Order Details</a>
                            </div>
                            <!--end::Toolbar-->
                        </div>
                        <!--end::Header-->
                        <!--begin::Body-->
                        <div class="card-body">
                            <!--begin::Scroll-->
                            <div class="hover-scroll-overlay-y pe-6 me-n6" style="height: 415px">
                                <!--begin::Item-->
                                <div class="border border-dashed border-gray-300 rounded px-7 py-3 mb-6">
                                    <!--begin::Info-->
                                    <div class="d-flex flex-stack mb-3">
                                        <!--begin::Wrapper-->
                                        <div class="me-3">
                                            <!--begin::Icon-->
                                            <img src="assets/media/stock/ecommerce/210.png" class="w-50px ms-n1 me-1" alt="">
                                            <!--end::Icon-->
                                            <!--begin::Title-->
                                            <a href="../../demo1/dist/apps/ecommerce/catalog/edit-product.html" class="text-gray-800 text-hover-primary fw-bold">Elephant 1802</a>
                                            <!--end::Title-->
                                        </div>
                                        <!--end::Wrapper-->
                                        <!--begin::Action-->
                                        <div class="m-0">
                                            <!--begin::Menu-->
                                            <button class="btn btn-icon btn-color-gray-400 btn-active-color-primary justify-content-end" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end" data-kt-menu-overflow="true">
                                                <i class="ki-duotone ki-dots-square fs-1">
                                                    <span class="path1"></span>
                                                    <span class="path2"></span>
                                                    <span class="path3"></span>
                                                    <span class="path4"></span>
                                                </i>
                                            </button>
                                            <!--begin::Menu 2-->
                                            <div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-800 menu-state-bg-light-primary fw-semibold w-200px" data-kt-menu="true">
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <div class="menu-content fs-6 text-dark fw-bold px-3 py-4">Quick Actions</div>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu separator-->
                                                <div class="separator mb-3 opacity-75"></div>
                                                <!--end::Menu separator-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="#" class="menu-link px-3">New Ticket</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="#" class="menu-link px-3">New Customer</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3" data-kt-menu-trigger="hover" data-kt-menu-placement="right-start">
                                                    <!--begin::Menu item-->
                                                    <a href="#" class="menu-link px-3">
                                                        <span class="menu-title">New Group</span>
                                                        <span class="menu-arrow"></span>
                                                    </a>
                                                    <!--end::Menu item-->
                                                    <!--begin::Menu sub-->
                                                    <div class="menu-sub menu-sub-dropdown w-175px py-4">
                                                        <!--begin::Menu item-->
                                                        <div class="menu-item px-3">
                                                            <a href="#" class="menu-link px-3">Admin Group</a>
                                                        </div>
                                                        <!--end::Menu item-->
                                                        <!--begin::Menu item-->
                                                        <div class="menu-item px-3">
                                                            <a href="#" class="menu-link px-3">Staff Group</a>
                                                        </div>
                                                        <!--end::Menu item-->
                                                        <!--begin::Menu item-->
                                                        <div class="menu-item px-3">
                                                            <a href="#" class="menu-link px-3">Member Group</a>
                                                        </div>
                                                        <!--end::Menu item-->
                                                    </div>
                                                    <!--end::Menu sub-->
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="#" class="menu-link px-3">New Contact</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu separator-->
                                                <div class="separator mt-3 opacity-75"></div>
                                                <!--end::Menu separator-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <div class="menu-content px-3 py-3">
                                                        <a class="btn btn-primary btn-sm px-4" href="#">Generate Reports</a>
                                                    </div>
                                                </div>
                                                <!--end::Menu item-->
                                            </div>
                                            <!--end::Menu 2-->
                                            <!--end::Menu-->
                                        </div>
                                        <!--end::Action-->
                                    </div>
                                    <!--end::Info-->
                                    <!--begin::Customer-->
                                    <div class="d-flex flex-stack">
                                        <!--begin::Name-->
                                        <span class="text-gray-400 fw-bold">To:
																<a href="../../demo1/dist/apps/ecommerce/sales/details.html" class="text-gray-800 text-hover-primary fw-bold">Jason Bourne</a></span>
                                        <!--end::Name-->
                                        <!--begin::Label-->
                                        <span class="badge badge-light-success">Delivered</span>
                                        <!--end::Label-->
                                    </div>
                                    <!--end::Customer-->
                                </div>
                                <!--end::Item-->
                                <!--begin::Item-->
                                <div class="border border-dashed border-gray-300 rounded px-7 py-3 mb-6">
                                    <!--begin::Info-->
                                    <div class="d-flex flex-stack mb-3">
                                        <!--begin::Wrapper-->
                                        <div class="me-3">
                                            <!--begin::Icon-->
                                            <img src="assets/media/stock/ecommerce/209.png" class="w-50px ms-n1 me-1" alt="">
                                            <!--end::Icon-->
                                            <!--begin::Title-->
                                            <a href="../../demo1/dist/apps/ecommerce/catalog/edit-product.html" class="text-gray-800 text-hover-primary fw-bold">RiseUP</a>
                                            <!--end::Title-->
                                        </div>
                                        <!--end::Wrapper-->
                                        <!--begin::Action-->
                                        <div class="m-0">
                                            <!--begin::Menu-->
                                            <button class="btn btn-icon btn-color-gray-400 btn-active-color-primary justify-content-end" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end" data-kt-menu-overflow="true">
                                                <i class="ki-duotone ki-dots-square fs-1">
                                                    <span class="path1"></span>
                                                    <span class="path2"></span>
                                                    <span class="path3"></span>
                                                    <span class="path4"></span>
                                                </i>
                                            </button>
                                            <!--begin::Menu 2-->
                                            <div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-800 menu-state-bg-light-primary fw-semibold w-200px" data-kt-menu="true">
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <div class="menu-content fs-6 text-dark fw-bold px-3 py-4">Quick Actions</div>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu separator-->
                                                <div class="separator mb-3 opacity-75"></div>
                                                <!--end::Menu separator-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="#" class="menu-link px-3">New Ticket</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="#" class="menu-link px-3">New Customer</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3" data-kt-menu-trigger="hover" data-kt-menu-placement="right-start">
                                                    <!--begin::Menu item-->
                                                    <a href="#" class="menu-link px-3">
                                                        <span class="menu-title">New Group</span>
                                                        <span class="menu-arrow"></span>
                                                    </a>
                                                    <!--end::Menu item-->
                                                    <!--begin::Menu sub-->
                                                    <div class="menu-sub menu-sub-dropdown w-175px py-4">
                                                        <!--begin::Menu item-->
                                                        <div class="menu-item px-3">
                                                            <a href="#" class="menu-link px-3">Admin Group</a>
                                                        </div>
                                                        <!--end::Menu item-->
                                                        <!--begin::Menu item-->
                                                        <div class="menu-item px-3">
                                                            <a href="#" class="menu-link px-3">Staff Group</a>
                                                        </div>
                                                        <!--end::Menu item-->
                                                        <!--begin::Menu item-->
                                                        <div class="menu-item px-3">
                                                            <a href="#" class="menu-link px-3">Member Group</a>
                                                        </div>
                                                        <!--end::Menu item-->
                                                    </div>
                                                    <!--end::Menu sub-->
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="#" class="menu-link px-3">New Contact</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu separator-->
                                                <div class="separator mt-3 opacity-75"></div>
                                                <!--end::Menu separator-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <div class="menu-content px-3 py-3">
                                                        <a class="btn btn-primary btn-sm px-4" href="#">Generate Reports</a>
                                                    </div>
                                                </div>
                                                <!--end::Menu item-->
                                            </div>
                                            <!--end::Menu 2-->
                                            <!--end::Menu-->
                                        </div>
                                        <!--end::Action-->
                                    </div>
                                    <!--end::Info-->
                                    <!--begin::Customer-->
                                    <div class="d-flex flex-stack">
                                        <!--begin::Name-->
                                        <span class="text-gray-400 fw-bold">To:
																<a href="../../demo1/dist/apps/ecommerce/sales/details.html" class="text-gray-800 text-hover-primary fw-bold">Marie Durant</a></span>
                                        <!--end::Name-->
                                        <!--begin::Label-->
                                        <span class="badge badge-light-primary">Shipping</span>
                                        <!--end::Label-->
                                    </div>
                                    <!--end::Customer-->
                                </div>
                                <!--end::Item-->
                                <!--begin::Item-->
                                <div class="border border-dashed border-gray-300 rounded px-7 py-3 mb-6">
                                    <!--begin::Info-->
                                    <div class="d-flex flex-stack mb-3">
                                        <!--begin::Wrapper-->
                                        <div class="me-3">
                                            <!--begin::Icon-->
                                            <img src="assets/media/stock/ecommerce/214.png" class="w-50px ms-n1 me-1" alt="">
                                            <!--end::Icon-->
                                            <!--begin::Title-->
                                            <a href="../../demo1/dist/apps/ecommerce/catalog/edit-product.html" class="text-gray-800 text-hover-primary fw-bold">Yellow Stone</a>
                                            <!--end::Title-->
                                        </div>
                                        <!--end::Wrapper-->
                                        <!--begin::Action-->
                                        <div class="m-0">
                                            <!--begin::Menu-->
                                            <button class="btn btn-icon btn-color-gray-400 btn-active-color-primary justify-content-end" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end" data-kt-menu-overflow="true">
                                                <i class="ki-duotone ki-dots-square fs-1">
                                                    <span class="path1"></span>
                                                    <span class="path2"></span>
                                                    <span class="path3"></span>
                                                    <span class="path4"></span>
                                                </i>
                                            </button>
                                            <!--begin::Menu 2-->
                                            <div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-800 menu-state-bg-light-primary fw-semibold w-200px" data-kt-menu="true">
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <div class="menu-content fs-6 text-dark fw-bold px-3 py-4">Quick Actions</div>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu separator-->
                                                <div class="separator mb-3 opacity-75"></div>
                                                <!--end::Menu separator-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="#" class="menu-link px-3">New Ticket</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="#" class="menu-link px-3">New Customer</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3" data-kt-menu-trigger="hover" data-kt-menu-placement="right-start">
                                                    <!--begin::Menu item-->
                                                    <a href="#" class="menu-link px-3">
                                                        <span class="menu-title">New Group</span>
                                                        <span class="menu-arrow"></span>
                                                    </a>
                                                    <!--end::Menu item-->
                                                    <!--begin::Menu sub-->
                                                    <div class="menu-sub menu-sub-dropdown w-175px py-4">
                                                        <!--begin::Menu item-->
                                                        <div class="menu-item px-3">
                                                            <a href="#" class="menu-link px-3">Admin Group</a>
                                                        </div>
                                                        <!--end::Menu item-->
                                                        <!--begin::Menu item-->
                                                        <div class="menu-item px-3">
                                                            <a href="#" class="menu-link px-3">Staff Group</a>
                                                        </div>
                                                        <!--end::Menu item-->
                                                        <!--begin::Menu item-->
                                                        <div class="menu-item px-3">
                                                            <a href="#" class="menu-link px-3">Member Group</a>
                                                        </div>
                                                        <!--end::Menu item-->
                                                    </div>
                                                    <!--end::Menu sub-->
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="#" class="menu-link px-3">New Contact</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu separator-->
                                                <div class="separator mt-3 opacity-75"></div>
                                                <!--end::Menu separator-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <div class="menu-content px-3 py-3">
                                                        <a class="btn btn-primary btn-sm px-4" href="#">Generate Reports</a>
                                                    </div>
                                                </div>
                                                <!--end::Menu item-->
                                            </div>
                                            <!--end::Menu 2-->
                                            <!--end::Menu-->
                                        </div>
                                        <!--end::Action-->
                                    </div>
                                    <!--end::Info-->
                                    <!--begin::Customer-->
                                    <div class="d-flex flex-stack">
                                        <!--begin::Name-->
                                        <span class="text-gray-400 fw-bold">To:
																<a href="../../demo1/dist/apps/ecommerce/sales/details.html" class="text-gray-800 text-hover-primary fw-bold">Dan Wilson</a></span>
                                        <!--end::Name-->
                                        <!--begin::Label-->
                                        <span class="badge badge-light-danger">Confirmed</span>
                                        <!--end::Label-->
                                    </div>
                                    <!--end::Customer-->
                                </div>
                                <!--end::Item-->
                                <!--begin::Item-->
                                <div class="border border-dashed border-gray-300 rounded px-7 py-3 mb-6">
                                    <!--begin::Info-->
                                    <div class="d-flex flex-stack mb-3">
                                        <!--begin::Wrapper-->
                                        <div class="me-3">
                                            <!--begin::Icon-->
                                            <img src="assets/media/stock/ecommerce/211.png" class="w-50px ms-n1 me-1" alt="">
                                            <!--end::Icon-->
                                            <!--begin::Title-->
                                            <a href="../../demo1/dist/apps/ecommerce/catalog/edit-product.html" class="text-gray-800 text-hover-primary fw-bold">Elephant 1802</a>
                                            <!--end::Title-->
                                        </div>
                                        <!--end::Wrapper-->
                                        <!--begin::Action-->
                                        <div class="m-0">
                                            <!--begin::Menu-->
                                            <button class="btn btn-icon btn-color-gray-400 btn-active-color-primary justify-content-end" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end" data-kt-menu-overflow="true">
                                                <i class="ki-duotone ki-dots-square fs-1">
                                                    <span class="path1"></span>
                                                    <span class="path2"></span>
                                                    <span class="path3"></span>
                                                    <span class="path4"></span>
                                                </i>
                                            </button>
                                            <!--begin::Menu 2-->
                                            <div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-800 menu-state-bg-light-primary fw-semibold w-200px" data-kt-menu="true">
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <div class="menu-content fs-6 text-dark fw-bold px-3 py-4">Quick Actions</div>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu separator-->
                                                <div class="separator mb-3 opacity-75"></div>
                                                <!--end::Menu separator-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="#" class="menu-link px-3">New Ticket</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="#" class="menu-link px-3">New Customer</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3" data-kt-menu-trigger="hover" data-kt-menu-placement="right-start">
                                                    <!--begin::Menu item-->
                                                    <a href="#" class="menu-link px-3">
                                                        <span class="menu-title">New Group</span>
                                                        <span class="menu-arrow"></span>
                                                    </a>
                                                    <!--end::Menu item-->
                                                    <!--begin::Menu sub-->
                                                    <div class="menu-sub menu-sub-dropdown w-175px py-4">
                                                        <!--begin::Menu item-->
                                                        <div class="menu-item px-3">
                                                            <a href="#" class="menu-link px-3">Admin Group</a>
                                                        </div>
                                                        <!--end::Menu item-->
                                                        <!--begin::Menu item-->
                                                        <div class="menu-item px-3">
                                                            <a href="#" class="menu-link px-3">Staff Group</a>
                                                        </div>
                                                        <!--end::Menu item-->
                                                        <!--begin::Menu item-->
                                                        <div class="menu-item px-3">
                                                            <a href="#" class="menu-link px-3">Member Group</a>
                                                        </div>
                                                        <!--end::Menu item-->
                                                    </div>
                                                    <!--end::Menu sub-->
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="#" class="menu-link px-3">New Contact</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu separator-->
                                                <div class="separator mt-3 opacity-75"></div>
                                                <!--end::Menu separator-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <div class="menu-content px-3 py-3">
                                                        <a class="btn btn-primary btn-sm px-4" href="#">Generate Reports</a>
                                                    </div>
                                                </div>
                                                <!--end::Menu item-->
                                            </div>
                                            <!--end::Menu 2-->
                                            <!--end::Menu-->
                                        </div>
                                        <!--end::Action-->
                                    </div>
                                    <!--end::Info-->
                                    <!--begin::Customer-->
                                    <div class="d-flex flex-stack">
                                        <!--begin::Name-->
                                        <span class="text-gray-400 fw-bold">To:
																<a href="../../demo1/dist/apps/ecommerce/sales/details.html" class="text-gray-800 text-hover-primary fw-bold">Lebron Wayde</a></span>
                                        <!--end::Name-->
                                        <!--begin::Label-->
                                        <span class="badge badge-light-success">Delivered</span>
                                        <!--end::Label-->
                                    </div>
                                    <!--end::Customer-->
                                </div>
                                <!--end::Item-->
                                <!--begin::Item-->
                                <div class="border border-dashed border-gray-300 rounded px-7 py-3 mb-6">
                                    <!--begin::Info-->
                                    <div class="d-flex flex-stack mb-3">
                                        <!--begin::Wrapper-->
                                        <div class="me-3">
                                            <!--begin::Icon-->
                                            <img src="assets/media/stock/ecommerce/215.png" class="w-50px ms-n1 me-1" alt="">
                                            <!--end::Icon-->
                                            <!--begin::Title-->
                                            <a href="../../demo1/dist/apps/ecommerce/catalog/edit-product.html" class="text-gray-800 text-hover-primary fw-bold">RiseUP</a>
                                            <!--end::Title-->
                                        </div>
                                        <!--end::Wrapper-->
                                        <!--begin::Action-->
                                        <div class="m-0">
                                            <!--begin::Menu-->
                                            <button class="btn btn-icon btn-color-gray-400 btn-active-color-primary justify-content-end" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end" data-kt-menu-overflow="true">
                                                <i class="ki-duotone ki-dots-square fs-1">
                                                    <span class="path1"></span>
                                                    <span class="path2"></span>
                                                    <span class="path3"></span>
                                                    <span class="path4"></span>
                                                </i>
                                            </button>
                                            <!--begin::Menu 2-->
                                            <div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-800 menu-state-bg-light-primary fw-semibold w-200px" data-kt-menu="true">
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <div class="menu-content fs-6 text-dark fw-bold px-3 py-4">Quick Actions</div>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu separator-->
                                                <div class="separator mb-3 opacity-75"></div>
                                                <!--end::Menu separator-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="#" class="menu-link px-3">New Ticket</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="#" class="menu-link px-3">New Customer</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3" data-kt-menu-trigger="hover" data-kt-menu-placement="right-start">
                                                    <!--begin::Menu item-->
                                                    <a href="#" class="menu-link px-3">
                                                        <span class="menu-title">New Group</span>
                                                        <span class="menu-arrow"></span>
                                                    </a>
                                                    <!--end::Menu item-->
                                                    <!--begin::Menu sub-->
                                                    <div class="menu-sub menu-sub-dropdown w-175px py-4">
                                                        <!--begin::Menu item-->
                                                        <div class="menu-item px-3">
                                                            <a href="#" class="menu-link px-3">Admin Group</a>
                                                        </div>
                                                        <!--end::Menu item-->
                                                        <!--begin::Menu item-->
                                                        <div class="menu-item px-3">
                                                            <a href="#" class="menu-link px-3">Staff Group</a>
                                                        </div>
                                                        <!--end::Menu item-->
                                                        <!--begin::Menu item-->
                                                        <div class="menu-item px-3">
                                                            <a href="#" class="menu-link px-3">Member Group</a>
                                                        </div>
                                                        <!--end::Menu item-->
                                                    </div>
                                                    <!--end::Menu sub-->
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="#" class="menu-link px-3">New Contact</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu separator-->
                                                <div class="separator mt-3 opacity-75"></div>
                                                <!--end::Menu separator-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <div class="menu-content px-3 py-3">
                                                        <a class="btn btn-primary btn-sm px-4" href="#">Generate Reports</a>
                                                    </div>
                                                </div>
                                                <!--end::Menu item-->
                                            </div>
                                            <!--end::Menu 2-->
                                            <!--end::Menu-->
                                        </div>
                                        <!--end::Action-->
                                    </div>
                                    <!--end::Info-->
                                    <!--begin::Customer-->
                                    <div class="d-flex flex-stack">
                                        <!--begin::Name-->
                                        <span class="text-gray-400 fw-bold">To:
																<a href="../../demo1/dist/apps/ecommerce/sales/details.html" class="text-gray-800 text-hover-primary fw-bold">Ana Simmons</a></span>
                                        <!--end::Name-->
                                        <!--begin::Label-->
                                        <span class="badge badge-light-primary">Shipping</span>
                                        <!--end::Label-->
                                    </div>
                                    <!--end::Customer-->
                                </div>
                                <!--end::Item-->
                                <!--begin::Item-->
                                <div class="border border-dashed border-gray-300 rounded px-7 py-3">
                                    <!--begin::Info-->
                                    <div class="d-flex flex-stack mb-3">
                                        <!--begin::Wrapper-->
                                        <div class="me-3">
                                            <!--begin::Icon-->
                                            <img src="assets/media/stock/ecommerce/192.png" class="w-50px ms-n1 me-1" alt="">
                                            <!--end::Icon-->
                                            <!--begin::Title-->
                                            <a href="../../demo1/dist/apps/ecommerce/catalog/edit-product.html" class="text-gray-800 text-hover-primary fw-bold">Yellow Stone</a>
                                            <!--end::Title-->
                                        </div>
                                        <!--end::Wrapper-->
                                        <!--begin::Action-->
                                        <div class="m-0">
                                            <!--begin::Menu-->
                                            <button class="btn btn-icon btn-color-gray-400 btn-active-color-primary justify-content-end" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end" data-kt-menu-overflow="true">
                                                <i class="ki-duotone ki-dots-square fs-1">
                                                    <span class="path1"></span>
                                                    <span class="path2"></span>
                                                    <span class="path3"></span>
                                                    <span class="path4"></span>
                                                </i>
                                            </button>
                                            <!--begin::Menu 2-->
                                            <div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-800 menu-state-bg-light-primary fw-semibold w-200px" data-kt-menu="true">
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <div class="menu-content fs-6 text-dark fw-bold px-3 py-4">Quick Actions</div>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu separator-->
                                                <div class="separator mb-3 opacity-75"></div>
                                                <!--end::Menu separator-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="#" class="menu-link px-3">New Ticket</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="#" class="menu-link px-3">New Customer</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3" data-kt-menu-trigger="hover" data-kt-menu-placement="right-start">
                                                    <!--begin::Menu item-->
                                                    <a href="#" class="menu-link px-3">
                                                        <span class="menu-title">New Group</span>
                                                        <span class="menu-arrow"></span>
                                                    </a>
                                                    <!--end::Menu item-->
                                                    <!--begin::Menu sub-->
                                                    <div class="menu-sub menu-sub-dropdown w-175px py-4">
                                                        <!--begin::Menu item-->
                                                        <div class="menu-item px-3">
                                                            <a href="#" class="menu-link px-3">Admin Group</a>
                                                        </div>
                                                        <!--end::Menu item-->
                                                        <!--begin::Menu item-->
                                                        <div class="menu-item px-3">
                                                            <a href="#" class="menu-link px-3">Staff Group</a>
                                                        </div>
                                                        <!--end::Menu item-->
                                                        <!--begin::Menu item-->
                                                        <div class="menu-item px-3">
                                                            <a href="#" class="menu-link px-3">Member Group</a>
                                                        </div>
                                                        <!--end::Menu item-->
                                                    </div>
                                                    <!--end::Menu sub-->
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="#" class="menu-link px-3">New Contact</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu separator-->
                                                <div class="separator mt-3 opacity-75"></div>
                                                <!--end::Menu separator-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <div class="menu-content px-3 py-3">
                                                        <a class="btn btn-primary btn-sm px-4" href="#">Generate Reports</a>
                                                    </div>
                                                </div>
                                                <!--end::Menu item-->
                                            </div>
                                            <!--end::Menu 2-->
                                            <!--end::Menu-->
                                        </div>
                                        <!--end::Action-->
                                    </div>
                                    <!--end::Info-->
                                    <!--begin::Customer-->
                                    <div class="d-flex flex-stack">
                                        <!--begin::Name-->
                                        <span class="text-gray-400 fw-bold">To:
																<a href="../../demo1/dist/apps/ecommerce/sales/details.html" class="text-gray-800 text-hover-primary fw-bold">Kevin Leonard</a></span>
                                        <!--end::Name-->
                                        <!--begin::Label-->
                                        <span class="badge badge-light-danger">Confirmed</span>
                                        <!--end::Label-->
                                    </div>
                                    <!--end::Customer-->
                                </div>
                                <!--end::Item-->
                            </div>
                            <!--end::Scroll-->
                        </div>
                        <!--end::Body-->
                    </div>
                    <!--end::List widget 5-->
                </div>
                <!--end::Col-->
                <!--begin::Col-->
                <div class="col-xl-8">
                    <!--begin::Table Widget 5-->
                    <div class="card card-flush h-xl-100">
                        <!--begin::Card header-->
                        <div class="card-header pt-7">
                            <!--begin::Title-->
                            <h3 class="card-title align-items-start flex-column">
                                <span class="card-label fw-bold text-dark">Stock Report</span>
                                <span class="text-gray-400 mt-1 fw-semibold fs-6">Total 2,356 Items in the Stock</span>
                            </h3>
                            <!--end::Title-->
                            <!--begin::Actions-->
                            <div class="card-toolbar">
                                <!--begin::Filters-->
                                <div class="d-flex flex-stack flex-wrap gap-4">
                                    <!--begin::Destination-->
                                    <div class="d-flex align-items-center fw-bold">
                                        <!--begin::Label-->
                                        <div class="text-muted fs-7 me-2">Cateogry</div>
                                        <!--end::Label-->
                                        <!--begin::Select-->
                                        <select class="form-select form-select-transparent text-dark fs-7 lh-1 fw-bold py-0 ps-3 w-auto select2-hidden-accessible" data-control="select2" data-hide-search="true" data-dropdown-css-class="w-150px" data-placeholder="Select an option" data-select2-id="select2-data-9-miqv" tabindex="-1" aria-hidden="true" data-kt-initialized="1">
                                            <option></option>
                                            <option value="Show All" selected="selected" data-select2-id="select2-data-11-n662">Show All</option>
                                            <option value="a">Category A</option>
                                            <option value="b">Category B</option>
                                        </select><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-10-y028" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-transparent text-dark fs-7 lh-1 fw-bold py-0 ps-3 w-auto" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-7pu6-container" aria-controls="select2-7pu6-container"><span class="select2-selection__rendered" id="select2-7pu6-container" role="textbox" aria-readonly="true" title="Show All">Show All</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                                        <!--end::Select-->
                                    </div>
                                    <!--end::Destination-->
                                    <!--begin::Status-->
                                    <div class="d-flex align-items-center fw-bold">
                                        <!--begin::Label-->
                                        <div class="text-muted fs-7 me-2">Status</div>
                                        <!--end::Label-->
                                        <!--begin::Select-->
                                        <select class="form-select form-select-transparent text-dark fs-7 lh-1 fw-bold py-0 ps-3 w-auto select2-hidden-accessible" data-control="select2" data-hide-search="true" data-dropdown-css-class="w-150px" data-placeholder="Select an option" data-kt-table-widget-5="filter_status" data-select2-id="select2-data-12-9axy" tabindex="-1" aria-hidden="true" data-kt-initialized="1">
                                            <option></option>
                                            <option value="Show All" selected="selected" data-select2-id="select2-data-14-f8tm">Show All</option>
                                            <option value="In Stock">In Stock</option>
                                            <option value="Out of Stock">Out of Stock</option>
                                            <option value="Low Stock">Low Stock</option>
                                        </select><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-13-85gn" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-transparent text-dark fs-7 lh-1 fw-bold py-0 ps-3 w-auto" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-vzr3-container" aria-controls="select2-vzr3-container"><span class="select2-selection__rendered" id="select2-vzr3-container" role="textbox" aria-readonly="true" title="Show All">Show All</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                                        <!--end::Select-->
                                    </div>
                                    <!--end::Status-->
                                    <!--begin::Search-->
                                    <a href="../../demo1/dist/apps/ecommerce/catalog/products.html" class="btn btn-light btn-sm">View Stock</a>
                                    <!--end::Search-->
                                </div>
                                <!--begin::Filters-->
                            </div>
                            <!--end::Actions-->
                        </div>
                        <!--end::Card header-->
                        <!--begin::Card body-->
                        <div class="card-body">
                            <!--begin::Table-->
                            <div id="kt_table_widget_5_table_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer"><div class="table-responsive"><table class="table align-middle table-row-dashed fs-6 gy-3 dataTable no-footer" id="kt_table_widget_5_table">
                                        <!--begin::Table head-->
                                        <thead>
                                        <!--begin::Table row-->
                                        <tr class="text-start text-gray-400 fw-bold fs-7 text-uppercase gs-0"><th class="min-w-150px sorting" tabindex="0" aria-controls="kt_table_widget_5_table" rowspan="1" colspan="1" aria-label="Item: activate to sort column ascending" style="width: 151.078px;">Item</th><th class="text-end pe-3 min-w-100px sorting_disabled" rowspan="1" colspan="1" aria-label="Product ID" style="width: 100.859px;">Product ID</th><th class="text-end pe-3 min-w-150px sorting" tabindex="0" aria-controls="kt_table_widget_5_table" rowspan="1" colspan="1" aria-label="Date Added: activate to sort column ascending" style="width: 151.227px;">Date Added</th><th class="text-end pe-3 min-w-100px sorting" tabindex="0" aria-controls="kt_table_widget_5_table" rowspan="1" colspan="1" aria-label="Price: activate to sort column ascending" style="width: 100.859px;">Price</th><th class="text-end pe-3 min-w-100px sorting" tabindex="0" aria-controls="kt_table_widget_5_table" rowspan="1" colspan="1" aria-label="Status: activate to sort column ascending" style="width: 101.258px;">Status</th><th class="text-end pe-0 min-w-75px sorting" tabindex="0" aria-controls="kt_table_widget_5_table" rowspan="1" colspan="1" aria-label="Qty: activate to sort column ascending" style="width: 75.6328px;">Qty</th></tr>
                                        <!--end::Table row-->
                                        </thead>
                                        <!--end::Table head-->
                                        <!--begin::Table body-->
                                        <tbody class="fw-bold text-gray-600">







                                        <tr class="odd">
                                            <!--begin::Item-->
                                            <td>
                                                <a href="../../demo1/dist/apps/ecommerce/catalog/edit-product.html" class="text-dark text-hover-primary">Macbook Air M1</a>
                                            </td>
                                            <!--end::Item-->
                                            <!--begin::Product ID-->
                                            <td class="text-end">#XGY-356</td>
                                            <!--end::Product ID-->
                                            <!--begin::Date added-->
                                            <td class="text-end" data-order="2023-04-20T00:00:00-04:00">02 Apr, 2023</td>
                                            <!--end::Date added-->
                                            <!--begin::Price-->
                                            <td class="text-end">$1,230</td>
                                            <!--end::Price-->
                                            <!--begin::Status-->
                                            <td class="text-end">
                                                <span class="badge py-3 px-4 fs-7 badge-light-primary">In Stock</span>
                                            </td>
                                            <!--end::Status-->
                                            <!--begin::Qty-->
                                            <td class="text-end" data-order="58">
                                                <span class="text-dark fw-bold">58 PCS</span>
                                            </td>
                                            <!--end::Qty-->
                                        </tr><tr class="even">
                                            <!--begin::Item-->
                                            <td>
                                                <a href="../../demo1/dist/apps/ecommerce/catalog/edit-product.html" class="text-dark text-hover-primary">Surface Laptop 4</a>
                                            </td>
                                            <!--end::Item-->
                                            <!--begin::Product ID-->
                                            <td class="text-end">#YHD-047</td>
                                            <!--end::Product ID-->
                                            <!--begin::Date added-->
                                            <td class="text-end" data-order="2023-04-20T00:00:00-04:00">01 Apr, 2023</td>
                                            <!--end::Date added-->
                                            <!--begin::Price-->
                                            <td class="text-end">$1,060</td>
                                            <!--end::Price-->
                                            <!--begin::Status-->
                                            <td class="text-end">
                                                <span class="badge py-3 px-4 fs-7 badge-light-danger">Out of Stock</span>
                                            </td>
                                            <!--end::Status-->
                                            <!--begin::Qty-->
                                            <td class="text-end" data-order="0">
                                                <span class="text-dark fw-bold">0 PCS</span>
                                            </td>
                                            <!--end::Qty-->
                                        </tr><tr class="odd">
                                            <!--begin::Item-->
                                            <td>
                                                <a href="../../demo1/dist/apps/ecommerce/catalog/edit-product.html" class="text-dark text-hover-primary">Logitech MX 250</a>
                                            </td>
                                            <!--end::Item-->
                                            <!--begin::Product ID-->
                                            <td class="text-end">#SRR-678</td>
                                            <!--end::Product ID-->
                                            <!--begin::Date added-->
                                            <td class="text-end" data-order="2023-03-20T00:00:00-04:00">24 Mar, 2023</td>
                                            <!--end::Date added-->
                                            <!--begin::Price-->
                                            <td class="text-end">$64</td>
                                            <!--end::Price-->
                                            <!--begin::Status-->
                                            <td class="text-end">
                                                <span class="badge py-3 px-4 fs-7 badge-light-primary">In Stock</span>
                                            </td>
                                            <!--end::Status-->
                                            <!--begin::Qty-->
                                            <td class="text-end" data-order="290">
                                                <span class="text-dark fw-bold">290 PCS</span>
                                            </td>
                                            <!--end::Qty-->
                                        </tr><tr class="even">
                                            <!--begin::Item-->
                                            <td>
                                                <a href="../../demo1/dist/apps/ecommerce/catalog/edit-product.html" class="text-dark text-hover-primary">AudioEngine HD3</a>
                                            </td>
                                            <!--end::Item-->
                                            <!--begin::Product ID-->
                                            <td class="text-end">#PXF-578</td>
                                            <!--end::Product ID-->
                                            <!--begin::Date added-->
                                            <td class="text-end" data-order="2023-03-20T00:00:00-04:00">24 Mar, 2023</td>
                                            <!--end::Date added-->
                                            <!--begin::Price-->
                                            <td class="text-end">$1,060</td>
                                            <!--end::Price-->
                                            <!--begin::Status-->
                                            <td class="text-end">
                                                <span class="badge py-3 px-4 fs-7 badge-light-danger">Out of Stock</span>
                                            </td>
                                            <!--end::Status-->
                                            <!--begin::Qty-->
                                            <td class="text-end" data-order="46">
                                                <span class="text-dark fw-bold">46 PCS</span>
                                            </td>
                                            <!--end::Qty-->
                                        </tr><tr class="odd">
                                            <!--begin::Item-->
                                            <td>
                                                <a href="../../demo1/dist/apps/ecommerce/catalog/edit-product.html" class="text-dark text-hover-primary">HP Hyper LTR</a>
                                            </td>
                                            <!--end::Item-->
                                            <!--begin::Product ID-->
                                            <td class="text-end">#PXF-778</td>
                                            <!--end::Product ID-->
                                            <!--begin::Date added-->
                                            <td class="text-end" data-order="2023-01-20T00:00:00-05:00">16 Jan, 2023</td>
                                            <!--end::Date added-->
                                            <!--begin::Price-->
                                            <td class="text-end">$4500</td>
                                            <!--end::Price-->
                                            <!--begin::Status-->
                                            <td class="text-end">
                                                <span class="badge py-3 px-4 fs-7 badge-light-primary">In Stock</span>
                                            </td>
                                            <!--end::Status-->
                                            <!--begin::Qty-->
                                            <td class="text-end" data-order="78">
                                                <span class="text-dark fw-bold">78 PCS</span>
                                            </td>
                                            <!--end::Qty-->
                                        </tr><tr class="even">
                                            <!--begin::Item-->
                                            <td>
                                                <a href="../../demo1/dist/apps/ecommerce/catalog/edit-product.html" class="text-dark text-hover-primary">Dell 32 UltraSharp</a>
                                            </td>
                                            <!--end::Item-->
                                            <!--begin::Product ID-->
                                            <td class="text-end">#XGY-356</td>
                                            <!--end::Product ID-->
                                            <!--begin::Date added-->
                                            <td class="text-end" data-order="2023-12-20T00:00:00-05:00">22 Dec, 2023</td>
                                            <!--end::Date added-->
                                            <!--begin::Price-->
                                            <td class="text-end">$1,060</td>
                                            <!--end::Price-->
                                            <!--begin::Status-->
                                            <td class="text-end">
                                                <span class="badge py-3 px-4 fs-7 badge-light-warning">Low Stock</span>
                                            </td>
                                            <!--end::Status-->
                                            <!--begin::Qty-->
                                            <td class="text-end" data-order="8">
                                                <span class="text-dark fw-bold">8 PCS</span>
                                            </td>
                                            <!--end::Qty-->
                                        </tr><tr class="odd">
                                            <!--begin::Item-->
                                            <td>
                                                <a href="../../demo1/dist/apps/ecommerce/catalog/edit-product.html" class="text-dark text-hover-primary">Google Pixel 6 Pro</a>
                                            </td>
                                            <!--end::Item-->
                                            <!--begin::Product ID-->
                                            <td class="text-end">#XVR-425</td>
                                            <!--end::Product ID-->
                                            <!--begin::Date added-->
                                            <td class="text-end" data-order="2023-12-20T00:00:00-05:00">27 Dec, 2023</td>
                                            <!--end::Date added-->
                                            <!--begin::Price-->
                                            <td class="text-end">$1,060</td>
                                            <!--end::Price-->
                                            <!--begin::Status-->
                                            <td class="text-end">
                                                <span class="badge py-3 px-4 fs-7 badge-light-primary">In Stock</span>
                                            </td>
                                            <!--end::Status-->
                                            <!--begin::Qty-->
                                            <td class="text-end" data-order="124">
                                                <span class="text-dark fw-bold">124 PCS</span>
                                            </td>
                                            <!--end::Qty-->
                                        </tr></tbody>
                                        <!--end::Table body-->
                                    </table></div><div class="row"><div class="col-sm-12 col-md-5 d-flex align-items-center justify-content-center justify-content-md-start"></div><div class="col-sm-12 col-md-7 d-flex align-items-center justify-content-center justify-content-md-end"></div></div></div>
                            <!--end::Table-->
                        </div>
                        <!--end::Card body-->
                    </div>
                    <!--end::Table Widget 5-->
                </div>
                <!--end::Col-->
            </div>
            <!--end::Row-->
        </div>
        <!--end::Content container-->
    </div>
    <!--end::Content-->
</div>

{tpl /footer}