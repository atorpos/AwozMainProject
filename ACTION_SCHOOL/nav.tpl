<div id="kt_app_sidebar" class="app-sidebar flex-column" data-kt-drawer="true" data-kt-drawer-name="app-sidebar"
     data-kt-drawer-activate="{default: true, lg: false}" data-kt-drawer-overlay="true" data-kt-drawer-width="225px"
     data-kt-drawer-direction="start" data-kt-drawer-toggle="#kt_app_sidebar_mobile_toggle">
    <!--begin::Logo-->
    <div class="app-sidebar-logo px-6" id="kt_app_sidebar_logo">
        <!--begin::Logo image-->
        <a href="index.html">
            <img alt="Logo" src="/assets/media/logos/default-dark.svg" class="h-25px app-sidebar-logo-default">
            <img alt="Logo" src="/assets/media/logos/default-small.svg" class="h-20px app-sidebar-logo-minimize">
        </a>
        <!--end::Logo image-->
        <!--begin::Sidebar toggle-->
        <!--begin::Minimized sidebar setup:
if (isset($_COOKIE["sidebar_minimize_state"]) && $_COOKIE["sidebar_minimize_state"] === "on") {
1. "src/js/layout/sidebar.js" adds "sidebar_minimize_state" cookie value to save the sidebar minimize state.
2. Set data-kt-app-sidebar-minimize="on" attribute for body tag.
3. Set data-kt-toggle-state="active" attribute to the toggle element with "kt_app_sidebar_toggle" id.
4. Add "active" class to to sidebar toggle element with "kt_app_sidebar_toggle" id.
}
-->
        <div id="kt_app_sidebar_toggle"
             class="app-sidebar-toggle btn btn-icon btn-shadow btn-sm btn-color-muted btn-active-color-primary h-30px w-30px position-absolute top-50 start-100 translate-middle rotate"
             data-kt-toggle="true" data-kt-toggle-state="active" data-kt-toggle-target="body"
             data-kt-toggle-name="app-sidebar-minimize">
            <i class="ki-duotone ki-black-left-line fs-3 rotate-180">
                <span class="path1"></span>
                <span class="path2"></span>
            </i>
        </div>
        <!--end::Sidebar toggle-->
    </div>
    <!--end::Logo-->
    <!--begin::sidebar menu-->
    <div class="app-sidebar-menu overflow-hidden flex-column-fluid">
        <!--begin::Menu wrapper-->
        <div id="kt_app_sidebar_menu_wrapper" class="app-sidebar-wrapper">
            <!--begin::Scroll wrapper-->
            <div id="kt_app_sidebar_menu_scroll" class="scroll-y my-5 mx-3" data-kt-scroll="true"
                 data-kt-scroll-activate="true" data-kt-scroll-height="auto"
                 data-kt-scroll-dependencies="#kt_app_sidebar_logo, #kt_app_sidebar_footer"
                 data-kt-scroll-wrappers="#kt_app_sidebar_menu" data-kt-scroll-offset="5px"
                 data-kt-scroll-save-state="true" style="height: 992px;">
                <!--begin::Menu-->
                <div class="menu menu-column menu-rounded menu-sub-indention fw-semibold fs-6" id="#kt_app_sidebar_menu"
                     data-kt-menu="true" data-kt-menu-expand="false">
                    <!--begin:Menu item-->
                    <div class="menu-item pt-5">
                        <!--begin:Menu content-->
                        <div class="menu-content">
                            <span class="menu-heading fw-bold text-uppercase fs-7">School Works</span>
                        </div>
                        <!--end:Menu content-->
                    </div>
                    <!--end:Menu item-->
                    <!--begin:Menu item-->
                    <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                        <!--begin:Menu link-->
                        <span class="menu-link">
												<span class="menu-icon">
													<i class="ki-duotone ki-address-book fs-2">
														<span class="path1"></span>
														<span class="path2"></span>
														<span class="path3"></span>
													</i>
												</span>
												<span class="menu-title">My Profile</span>
												<span class="menu-arrow"></span>
											</span>
                        <!--end:Menu link-->
                        <!--begin:Menu sub-->
                        <div class="menu-sub menu-sub-accordion">
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="../../demo1/dist/pages/user-profile/overview.html">
														<span class="menu-bullet">
															<span class="bullet bullet-dot"></span>
														</span>
                                    <span class="menu-title">Overview</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="../../demo1/dist/pages/user-profile/projects.html">
														<span class="menu-bullet">
															<span class="bullet bullet-dot"></span>
														</span>
                                    <span class="menu-title">Projects</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="../../demo1/dist/pages/user-profile/campaigns.html">
														<span class="menu-bullet">
															<span class="bullet bullet-dot"></span>
														</span>
                                    <span class="menu-title">Campaigns</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="../../demo1/dist/pages/user-profile/documents.html">
														<span class="menu-bullet">
															<span class="bullet bullet-dot"></span>
														</span>
                                    <span class="menu-title">Documents</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
{*                            <!--begin:Menu item-->*}
{*                            <div class="menu-item">*}
{*                                <!--begin:Menu link-->*}
{*                                <a class="menu-link" href="../../demo1/dist/pages/user-profile/followers.html">*}
{*														<span class="menu-bullet">*}
{*															<span class="bullet bullet-dot"></span>*}
{*														</span>*}
{*                                    <span class="menu-title">Followers</span>*}
{*                                </a>*}
{*                                <!--end:Menu link-->*}
{*                            </div>*}
{*                            <!--end:Menu item-->*}
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="../../demo1/dist/pages/user-profile/activity.html">
														<span class="menu-bullet">
															<span class="bullet bullet-dot"></span>
														</span>
                                    <span class="menu-title">Activity</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                        </div>
                        <!--end:Menu sub-->
                    </div>
                    <!--end:Menu item-->
                    <!--begin:Menu item-->
                    <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                        <!--begin:Menu link-->
                        <span class="menu-link">
												<span class="menu-icon">
													<i class="ki-duotone ki-element-plus fs-2">
														<span class="path1"></span>
														<span class="path2"></span>
														<span class="path3"></span>
														<span class="path4"></span>
														<span class="path5"></span>
													</i>
												</span>
												<span class="menu-title">Classes</span>
												<span class="menu-arrow"></span>
											</span>
                        <!--end:Menu link-->
                        <!--begin:Menu sub-->
                        <div class="menu-sub menu-sub-accordion">
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="../../demo1/dist/account/overview.html">
														<span class="menu-bullet">
															<span class="bullet bullet-dot"></span>
														</span>
                                    <span class="menu-title">Overview</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="../../demo1/dist/account/settings.html">
														<span class="menu-bullet">
															<span class="bullet bullet-dot"></span>
														</span>
                                    <span class="menu-title">2023 Summer</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                                <!--begin:Menu link-->
                                <span class="menu-link">
{*                                <a class="menu-link" href="../../demo1/dist/account/security.html">*}
														<span class="menu-bullet">
															<span class="bullet bullet-dot"></span>
														</span>
                                    <span class="menu-title">2023 Fall</span>
                                    <span class="menu-arrow"></span>
{*                                </a>*}
                                </span>
                                <div class="menu-sub menu-sub-accordion menu-active-bg">
                                    <!--begin:Menu item-->
                                    <div class="menu-item">
                                        <!--begin:Menu link-->
                                        <a class="menu-link"
                                           href="/comp1006/">
																<span class="menu-bullet">
																	<span class="bullet bullet-dot"></span>
																</span>
                                            <span class="menu-title">COMP1006</span>
                                        </a>
                                        <!--end:Menu link-->
                                    </div>
                                    <!--end:Menu item-->
                                    <!--begin:Menu item-->
                                    <div class="menu-item">
                                        <!--begin:Menu link-->
                                        <a class="menu-link"
                                           href="/comp1008/">
																<span class="menu-bullet">
																	<span class="bullet bullet-dot"></span>
																</span>
                                            <span class="menu-title">COMP1008</span>
                                        </a>
                                        <!--end:Menu link-->
                                    </div>
                                    <!--end:Menu item-->
                                    <!--begin:Menu item-->
                                    <div class="menu-item">
                                        <!--begin:Menu link-->
                                        <a class="menu-link"
                                           href="/comp1054/">
																<span class="menu-bullet">
																	<span class="bullet bullet-dot"></span>
																</span>
                                            <span class="menu-title">COMP1054</span>
                                        </a>
                                        <!--end:Menu link-->
                                    </div>
                                    <!--end:Menu item-->
                                    <!--begin:Menu item-->
                                    <div class="menu-item">
                                        <!--begin:Menu link-->
                                        <a class="menu-link"
                                           href="/comp1112/">
																<span class="menu-bullet">
																	<span class="bullet bullet-dot"></span>
																</span>
                                            <span class="menu-title">COMP1112</span>
                                        </a>
                                        <!--end:Menu link-->
                                        <!--begin:Menu item-->
                                        <div class="menu-item">
                                            <!--begin:Menu link-->
                                            <a class="menu-link"
                                               href="/comp2003/">
																<span class="menu-bullet">
																	<span class="bullet bullet-dot"></span>
																</span>
                                                <span class="menu-title">COMP2003</span>
                                            </a>
                                            <!--end:Menu link-->
                                        </div>
                                        <!--end:Menu item-->
                                        <!--begin:Menu item-->
                                        <div class="menu-item">
                                            <!--begin:Menu link-->
                                            <a class="menu-link"
                                               href="/comm2017/">
																<span class="menu-bullet">
																	<span class="bullet bullet-dot"></span>
																</span>
                                                <span class="menu-title">COMM2017</span>
                                            </a>
                                            <!--end:Menu link-->
                                        </div>
                                        <!--end:Menu item-->
                                    </div>
                                    <!--end:Menu item-->
                                </div>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="../../demo1/dist/account/api-keys.html">
														<span class="menu-bullet">
															<span class="bullet bullet-dot"></span>
														</span>
                                    <span class="menu-title">API Keys</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="../../demo1/dist/account/logs.html">
														<span class="menu-bullet">
															<span class="bullet bullet-dot"></span>
														</span>
                                    <span class="menu-title">Logs</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                        </div>
                        <!--end:Menu sub-->
                    </div>
                    <!--end:Menu item-->
                    <!--begin:Menu item-->
                    <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                        <!--begin:Menu link-->
                        <span class="menu-link">
												<span class="menu-icon">
													<i class="ki-duotone ki-user fs-2">
														<span class="path1"></span>
														<span class="path2"></span>
													</i>
												</span>
												<span class="menu-title">Samples</span>
												<span class="menu-arrow"></span>
											</span>
                        <!--end:Menu link-->
                        <!--begin:Menu sub-->
                        <div class="menu-sub menu-sub-accordion">
                            <!--begin:Menu item-->
                            <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                                <!--begin:Menu link-->
                                <span class="menu-link">
														<span class="menu-bullet">
															<span class="bullet bullet-dot"></span>
														</span>
														<span class="menu-title">Corporate Layout</span>
														<span class="menu-arrow"></span>
													</span>
                                <!--end:Menu link-->
                                <!--begin:Menu sub-->
                                <div class="menu-sub menu-sub-accordion menu-active-bg">
                                    <!--begin:Menu item-->
                                    <div class="menu-item">
                                        <!--begin:Menu link-->
                                        <a class="menu-link"
                                           href="../../demo1/dist/authentication/layouts/corporate/sign-in.html">
																<span class="menu-bullet">
																	<span class="bullet bullet-dot"></span>
																</span>
                                            <span class="menu-title">Sign-in</span>
                                        </a>
                                        <!--end:Menu link-->
                                    </div>
                                    <!--end:Menu item-->
                                    <!--begin:Menu item-->
                                    <div class="menu-item">
                                        <!--begin:Menu link-->
                                        <a class="menu-link"
                                           href="../../demo1/dist/authentication/layouts/corporate/sign-up.html">
																<span class="menu-bullet">
																	<span class="bullet bullet-dot"></span>
																</span>
                                            <span class="menu-title">Sign-up</span>
                                        </a>
                                        <!--end:Menu link-->
                                    </div>
                                    <!--end:Menu item-->
                                    <!--begin:Menu item-->
                                    <div class="menu-item">
                                        <!--begin:Menu link-->
                                        <a class="menu-link"
                                           href="../../demo1/dist/authentication/layouts/corporate/two-factor.html">
																<span class="menu-bullet">
																	<span class="bullet bullet-dot"></span>
																</span>
                                            <span class="menu-title">Two-Factor</span>
                                        </a>
                                        <!--end:Menu link-->
                                    </div>
                                    <!--end:Menu item-->
                                    <!--begin:Menu item-->
                                    <div class="menu-item">
                                        <!--begin:Menu link-->
                                        <a class="menu-link"
                                           href="../../demo1/dist/authentication/layouts/corporate/reset-password.html">
																<span class="menu-bullet">
																	<span class="bullet bullet-dot"></span>
																</span>
                                            <span class="menu-title">Reset Password</span>
                                        </a>
                                        <!--end:Menu link-->
                                    </div>
                                    <!--end:Menu item-->
                                    <!--begin:Menu item-->
                                    <div class="menu-item">
                                        <!--begin:Menu link-->
                                        <a class="menu-link"
                                           href="../../demo1/dist/authentication/layouts/corporate/new-password.html">
																<span class="menu-bullet">
																	<span class="bullet bullet-dot"></span>
																</span>
                                            <span class="menu-title">New Password</span>
                                        </a>
                                        <!--end:Menu link-->
                                    </div>
                                    <!--end:Menu item-->
                                </div>
                                <!--end:Menu sub-->
                            </div>
                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                                <!--begin:Menu link-->
                                <span class="menu-link">
														<span class="menu-bullet">
															<span class="bullet bullet-dot"></span>
														</span>
														<span class="menu-title">Overlay Layout</span>
														<span class="menu-arrow"></span>
													</span>
                                <!--end:Menu link-->
                                <!--begin:Menu sub-->
                                <div class="menu-sub menu-sub-accordion menu-active-bg">
                                    <!--begin:Menu item-->
                                    <div class="menu-item">
                                        <!--begin:Menu link-->
                                        <a class="menu-link"
                                           href="../../demo1/dist/authentication/layouts/overlay/sign-in.html">
																<span class="menu-bullet">
																	<span class="bullet bullet-dot"></span>
																</span>
                                            <span class="menu-title">Sign-in</span>
                                        </a>
                                        <!--end:Menu link-->
                                    </div>
                                    <!--end:Menu item-->
                                    <!--begin:Menu item-->
                                    <div class="menu-item">
                                        <!--begin:Menu link-->
                                        <a class="menu-link"
                                           href="../../demo1/dist/authentication/layouts/overlay/sign-up.html">
																<span class="menu-bullet">
																	<span class="bullet bullet-dot"></span>
																</span>
                                            <span class="menu-title">Sign-up</span>
                                        </a>
                                        <!--end:Menu link-->
                                    </div>
                                    <!--end:Menu item-->
                                    <!--begin:Menu item-->
                                    <div class="menu-item">
                                        <!--begin:Menu link-->
                                        <a class="menu-link"
                                           href="../../demo1/dist/authentication/layouts/overlay/two-factor.html">
																<span class="menu-bullet">
																	<span class="bullet bullet-dot"></span>
																</span>
                                            <span class="menu-title">Two-Factor</span>
                                        </a>
                                        <!--end:Menu link-->
                                    </div>
                                    <!--end:Menu item-->
                                    <!--begin:Menu item-->
                                    <div class="menu-item">
                                        <!--begin:Menu link-->
                                        <a class="menu-link"
                                           href="../../demo1/dist/authentication/layouts/overlay/reset-password.html">
																<span class="menu-bullet">
																	<span class="bullet bullet-dot"></span>
																</span>
                                            <span class="menu-title">Reset Password</span>
                                        </a>
                                        <!--end:Menu link-->
                                    </div>
                                    <!--end:Menu item-->
                                    <!--begin:Menu item-->
                                    <div class="menu-item">
                                        <!--begin:Menu link-->
                                        <a class="menu-link"
                                           href="../../demo1/dist/authentication/layouts/overlay/new-password.html">
																<span class="menu-bullet">
																	<span class="bullet bullet-dot"></span>
																</span>
                                            <span class="menu-title">New Password</span>
                                        </a>
                                        <!--end:Menu link-->
                                    </div>
                                    <!--end:Menu item-->
                                </div>
                                <!--end:Menu sub-->
                            </div>
                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                                <!--begin:Menu link-->
                                <span class="menu-link">
														<span class="menu-bullet">
															<span class="bullet bullet-dot"></span>
														</span>
														<span class="menu-title">Creative Layout</span>
														<span class="menu-arrow"></span>
													</span>
                                <!--end:Menu link-->
                                <!--begin:Menu sub-->
                                <div class="menu-sub menu-sub-accordion menu-active-bg">
                                    <!--begin:Menu item-->
                                    <div class="menu-item">
                                        <!--begin:Menu link-->
                                        <a class="menu-link"
                                           href="../../demo1/dist/authentication/layouts/creative/sign-in.html">
																<span class="menu-bullet">
																	<span class="bullet bullet-dot"></span>
																</span>
                                            <span class="menu-title">Sign-in</span>
                                        </a>
                                        <!--end:Menu link-->
                                    </div>
                                    <!--end:Menu item-->
                                    <!--begin:Menu item-->
                                    <div class="menu-item">
                                        <!--begin:Menu link-->
                                        <a class="menu-link"
                                           href="../../demo1/dist/authentication/layouts/creative/sign-up.html">
																<span class="menu-bullet">
																	<span class="bullet bullet-dot"></span>
																</span>
                                            <span class="menu-title">Sign-up</span>
                                        </a>
                                        <!--end:Menu link-->
                                    </div>
                                    <!--end:Menu item-->
                                    <!--begin:Menu item-->
                                    <div class="menu-item">
                                        <!--begin:Menu link-->
                                        <a class="menu-link"
                                           href="../../demo1/dist/authentication/layouts/creative/two-factor.html">
																<span class="menu-bullet">
																	<span class="bullet bullet-dot"></span>
																</span>
                                            <span class="menu-title">Two-Factor</span>
                                        </a>
                                        <!--end:Menu link-->
                                    </div>
                                    <!--end:Menu item-->
                                    <!--begin:Menu item-->
                                    <div class="menu-item">
                                        <!--begin:Menu link-->
                                        <a class="menu-link"
                                           href="../../demo1/dist/authentication/layouts/creative/reset-password.html">
																<span class="menu-bullet">
																	<span class="bullet bullet-dot"></span>
																</span>
                                            <span class="menu-title">Reset Password</span>
                                        </a>
                                        <!--end:Menu link-->
                                    </div>
                                    <!--end:Menu item-->
                                    <!--begin:Menu item-->
                                    <div class="menu-item">
                                        <!--begin:Menu link-->
                                        <a class="menu-link"
                                           href="../../demo1/dist/authentication/layouts/creative/new-password.html">
																<span class="menu-bullet">
																	<span class="bullet bullet-dot"></span>
																</span>
                                            <span class="menu-title">New Password</span>
                                        </a>
                                        <!--end:Menu link-->
                                    </div>
                                    <!--end:Menu item-->
                                </div>
                                <!--end:Menu sub-->
                            </div>
                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                                <!--begin:Menu link-->
                                <span class="menu-link">
														<span class="menu-bullet">
															<span class="bullet bullet-dot"></span>
														</span>
														<span class="menu-title">Fancy Layout</span>
														<span class="menu-arrow"></span>
													</span>
                                <!--end:Menu link-->
                                <!--begin:Menu sub-->
                                <div class="menu-sub menu-sub-accordion menu-active-bg">
                                    <!--begin:Menu item-->
                                    <div class="menu-item">
                                        <!--begin:Menu link-->
                                        <a class="menu-link"
                                           href="../../demo1/dist/authentication/layouts/fancy/sign-in.html">
																<span class="menu-bullet">
																	<span class="bullet bullet-dot"></span>
																</span>
                                            <span class="menu-title">Sign-in</span>
                                        </a>
                                        <!--end:Menu link-->
                                    </div>
                                    <!--end:Menu item-->
                                    <!--begin:Menu item-->
                                    <div class="menu-item">
                                        <!--begin:Menu link-->
                                        <a class="menu-link"
                                           href="../../demo1/dist/authentication/layouts/fancy/sign-up.html">
																<span class="menu-bullet">
																	<span class="bullet bullet-dot"></span>
																</span>
                                            <span class="menu-title">Sign-up</span>
                                        </a>
                                        <!--end:Menu link-->
                                    </div>
                                    <!--end:Menu item-->
                                    <!--begin:Menu item-->
                                    <div class="menu-item">
                                        <!--begin:Menu link-->
                                        <a class="menu-link"
                                           href="../../demo1/dist/authentication/layouts/fancy/two-factor.html">
																<span class="menu-bullet">
																	<span class="bullet bullet-dot"></span>
																</span>
                                            <span class="menu-title">Two-Factor</span>
                                        </a>
                                        <!--end:Menu link-->
                                    </div>
                                    <!--end:Menu item-->
                                    <!--begin:Menu item-->
                                    <div class="menu-item">
                                        <!--begin:Menu link-->
                                        <a class="menu-link"
                                           href="../../demo1/dist/authentication/layouts/fancy/reset-password.html">
																<span class="menu-bullet">
																	<span class="bullet bullet-dot"></span>
																</span>
                                            <span class="menu-title">Reset Password</span>
                                        </a>
                                        <!--end:Menu link-->
                                    </div>
                                    <!--end:Menu item-->
                                    <!--begin:Menu item-->
                                    <div class="menu-item">
                                        <!--begin:Menu link-->
                                        <a class="menu-link"
                                           href="../../demo1/dist/authentication/layouts/fancy/new-password.html">
																<span class="menu-bullet">
																	<span class="bullet bullet-dot"></span>
																</span>
                                            <span class="menu-title">New Password</span>
                                        </a>
                                        <!--end:Menu link-->
                                    </div>
                                    <!--end:Menu item-->
                                </div>
                                <!--end:Menu sub-->
                            </div>
                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                                <!--begin:Menu link-->
                                <span class="menu-link">
														<span class="menu-bullet">
															<span class="bullet bullet-dot"></span>
														</span>
														<span class="menu-title">Email Templates</span>
														<span class="menu-arrow"></span>
													</span>
                                <!--end:Menu link-->
                                <!--begin:Menu sub-->
                                <div class="menu-sub menu-sub-accordion menu-active-bg">
                                    <!--begin:Menu item-->
                                    <div class="menu-item">
                                        <!--begin:Menu link-->
                                        <a class="menu-link"
                                           href="../../demo1/dist/authentication/email/welcome-message.html">
																<span class="menu-bullet">
																	<span class="bullet bullet-dot"></span>
																</span>
                                            <span class="menu-title">Welcome Message</span>
                                        </a>
                                        <!--end:Menu link-->
                                    </div>
                                    <!--end:Menu item-->
                                    <!--begin:Menu item-->
                                    <div class="menu-item">
                                        <!--begin:Menu link-->
                                        <a class="menu-link"
                                           href="../../demo1/dist/authentication/email/reset-password.html">
																<span class="menu-bullet">
																	<span class="bullet bullet-dot"></span>
																</span>
                                            <span class="menu-title">Reset Password</span>
                                        </a>
                                        <!--end:Menu link-->
                                    </div>
                                    <!--end:Menu item-->
                                    <!--begin:Menu item-->
                                    <div class="menu-item">
                                        <!--begin:Menu link-->
                                        <a class="menu-link"
                                           href="../../demo1/dist/authentication/email/subscription-confirmed.html">
																<span class="menu-bullet">
																	<span class="bullet bullet-dot"></span>
																</span>
                                            <span class="menu-title">Subscription Confirmed</span>
                                        </a>
                                        <!--end:Menu link-->
                                    </div>
                                    <!--end:Menu item-->
                                    <!--begin:Menu item-->
                                    <div class="menu-item">
                                        <!--begin:Menu link-->
                                        <a class="menu-link"
                                           href="../../demo1/dist/authentication/email/card-declined.html">
																<span class="menu-bullet">
																	<span class="bullet bullet-dot"></span>
																</span>
                                            <span class="menu-title">Credit Card Declined</span>
                                        </a>
                                        <!--end:Menu link-->
                                    </div>
                                    <!--end:Menu item-->
                                    <!--begin:Menu item-->
                                    <div class="menu-item">
                                        <!--begin:Menu link-->
                                        <a class="menu-link" href="../../demo1/dist/authentication/email/promo-1.html">
																<span class="menu-bullet">
																	<span class="bullet bullet-dot"></span>
																</span>
                                            <span class="menu-title">Promo 1</span>
                                        </a>
                                        <!--end:Menu link-->
                                    </div>
                                    <!--end:Menu item-->
                                    <!--begin:Menu item-->
                                    <div class="menu-item">
                                        <!--begin:Menu link-->
                                        <a class="menu-link" href="../../demo1/dist/authentication/email/promo-2.html">
																<span class="menu-bullet">
																	<span class="bullet bullet-dot"></span>
																</span>
                                            <span class="menu-title">Promo 2</span>
                                        </a>
                                        <!--end:Menu link-->
                                    </div>
                                    <!--end:Menu item-->
                                    <!--begin:Menu item-->
                                    <div class="menu-item">
                                        <!--begin:Menu link-->
                                        <a class="menu-link" href="../../demo1/dist/authentication/email/promo-3.html">
																<span class="menu-bullet">
																	<span class="bullet bullet-dot"></span>
																</span>
                                            <span class="menu-title">Promo 3</span>
                                        </a>
                                        <!--end:Menu link-->
                                    </div>
                                    <!--end:Menu item-->
                                </div>
                                <!--end:Menu sub-->
                            </div>
                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link"
                                   href="../../demo1/dist/authentication/extended/multi-steps-sign-up.html">
														<span class="menu-bullet">
															<span class="bullet bullet-dot"></span>
														</span>
                                    <span class="menu-title">Multi-steps Sign-up</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="../../demo1/dist/authentication/general/welcome.html">
														<span class="menu-bullet">
															<span class="bullet bullet-dot"></span>
														</span>
                                    <span class="menu-title">Welcome Message</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="../../demo1/dist/authentication/general/verify-email.html">
														<span class="menu-bullet">
															<span class="bullet bullet-dot"></span>
														</span>
                                    <span class="menu-title">Verify Email</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="../../demo1/dist/authentication/general/coming-soon.html">
														<span class="menu-bullet">
															<span class="bullet bullet-dot"></span>
														</span>
                                    <span class="menu-title">Coming Soon</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link"
                                   href="../../demo1/dist/authentication/general/password-confirmation.html">
														<span class="menu-bullet">
															<span class="bullet bullet-dot"></span>
														</span>
                                    <span class="menu-title">Password Confirmation</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link"
                                   href="../../demo1/dist/authentication/general/account-deactivated.html">
														<span class="menu-bullet">
															<span class="bullet bullet-dot"></span>
														</span>
                                    <span class="menu-title">Account Deactivation</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="../../demo1/dist/authentication/general/error-404.html">
														<span class="menu-bullet">
															<span class="bullet bullet-dot"></span>
														</span>
                                    <span class="menu-title">Error 404</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="../../demo1/dist/authentication/general/error-500.html">
														<span class="menu-bullet">
															<span class="bullet bullet-dot"></span>
														</span>
                                    <span class="menu-title">Error 500</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                        </div>
                        <!--end:Menu sub-->
                    </div>
                    <!--end:Menu item-->
                    <!--begin:Menu item-->
                    <div data-kt-menu-trigger="{default: 'click', lg: 'hover'}" data-kt-menu-placement="right-start"
                         class="menu-item menu-lg-down-accordion menu-sub-lg-down-indention">
                        <!--begin:Menu link-->
                        <span class="menu-link">
												<span class="menu-icon">
													<i class="ki-duotone ki-file fs-2">
														<span class="path1"></span>
														<span class="path2"></span>
													</i>
												</span>
												<span class="menu-title">Projects</span>
												<span class="menu-arrow"></span>
											</span>
                        <!--end:Menu link-->
                        <!--begin:Menu sub-->
                        <div class="menu-sub menu-sub-lg-down-accordion menu-sub-lg-dropdown px-2 py-4 w-200px mh-75 overflow-auto"
                             style="">
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="../../demo1/dist/pages/about.html">
														<span class="menu-bullet">
															<span class="bullet bullet-dot"></span>
														</span>
                                    <span class="menu-title">About</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="../../demo1/dist/pages/team.html">
														<span class="menu-bullet">
															<span class="bullet bullet-dot"></span>
														</span>
                                    <span class="menu-title">Our Team</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="../../demo1/dist/pages/contact.html">
														<span class="menu-bullet">
															<span class="bullet bullet-dot"></span>
														</span>
                                    <span class="menu-title">Contact Us</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="../../demo1/dist/pages/licenses.html">
														<span class="menu-bullet">
															<span class="bullet bullet-dot"></span>
														</span>
                                    <span class="menu-title">Licenses</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="../../demo1/dist/pages/sitemap.html">
														<span class="menu-bullet">
															<span class="bullet bullet-dot"></span>
														</span>
                                    <span class="menu-title">Sitemap</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                        </div>
                        <!--end:Menu sub-->
                    </div>
                    <!--end:Menu item-->
                    <!--begin:Menu item-->
                    <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                        <!--begin:Menu link-->
                        <span class="menu-link">
												<span class="menu-icon">
													<i class="ki-duotone ki-bank fs-2">
														<span class="path1"></span>
														<span class="path2"></span>
													</i>
												</span>
												<span class="menu-title">Blog</span>
												<span class="menu-arrow"></span>
											</span>
                        <!--end:Menu link-->
                        <!--begin:Menu sub-->
                        <div class="menu-sub menu-sub-accordion menu-active-bg">
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="../../demo1/dist/pages/blog/home.html">
														<span class="menu-bullet">
															<span class="bullet bullet-dot"></span>
														</span>
                                    <span class="menu-title">Blog Home</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="../../demo1/dist/pages/blog/post.html">
														<span class="menu-bullet">
															<span class="bullet bullet-dot"></span>
														</span>
                                    <span class="menu-title">Blog Post</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                        </div>
                        <!--end:Menu sub-->
                    </div>
                    <!--end:Menu item-->
                    <!--begin:Menu item-->
                    <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                        <!--begin:Menu link-->
                        <span class="menu-link">
												<span class="menu-icon">
													<i class="ki-duotone ki-chart-pie-3 fs-2">
														<span class="path1"></span>
														<span class="path2"></span>
														<span class="path3"></span>
													</i>
												</span>
												<span class="menu-title">FAQ</span>
												<span class="menu-arrow"></span>
											</span>
                        <!--end:Menu link-->
                        <!--begin:Menu sub-->
                        <div class="menu-sub menu-sub-accordion menu-active-bg">
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="../../demo1/dist/pages/faq/classic.html">
														<span class="menu-bullet">
															<span class="bullet bullet-dot"></span>
														</span>
                                    <span class="menu-title">FAQ Classic</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link" href="../../demo1/dist/pages/faq/extended.html">
														<span class="menu-bullet">
															<span class="bullet bullet-dot"></span>
														</span>
                                    <span class="menu-title">FAQ Extended</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            <!--end:Menu item-->
                        </div>
                        <!--end:Menu sub-->
                    </div>
                    <!--end:Menu item-->
                    <!--begin:Menu item-->
                    <div class="menu-item pt-5">
                        <!--begin:Menu content-->
                        <div class="menu-content">
                            <span class="menu-heading fw-bold text-uppercase fs-7">Apps</span>
                        </div>
                        <!--end:Menu content-->
                    </div>
                    <!--end:Menu item-->
                    <!--begin:Menu item-->
                    <div class="menu-item">
                        <!--begin:Menu link-->
                        <a class="menu-link" href="../../demo1/dist/apps/calendar.html">
												<span class="menu-icon">
													<i class="ki-duotone ki-calendar-8 fs-2">
														<span class="path1"></span>
														<span class="path2"></span>
														<span class="path3"></span>
														<span class="path4"></span>
														<span class="path5"></span>
														<span class="path6"></span>
													</i>
												</span>
                            <span class="menu-title">Calendar</span>
                        </a>
                        <!--end:Menu link-->
                    </div>
                    <!--end:Menu item-->
                    <!--begin:Menu item-->
                    <div class="menu-item pt-5">
                        <!--begin:Menu content-->
                        <div class="menu-content">
                            <span class="menu-heading fw-bold text-uppercase fs-7">Help</span>
                        </div>
                        <!--end:Menu content-->
                    </div>
                    <!--end:Menu item-->
                    <!--begin:Menu item-->
                    <div class="menu-item">
                        <!--begin:Menu link-->
                        <a class="menu-link" href="https://preview.keenthemes.com/html/metronic/docs/base/utilities"
                           target="_blank">
												<span class="menu-icon">
													<i class="ki-duotone ki-rocket fs-2">
														<span class="path1"></span>
														<span class="path2"></span>
													</i>
												</span>
                            <span class="menu-title">Components</span>
                        </a>
                        <!--end:Menu link-->
                    </div>
                    <!--end:Menu item-->
                    <!--begin:Menu item-->
                    <div class="menu-item">
                        <!--begin:Menu link-->
                        <a class="menu-link" href="https://preview.keenthemes.com/html/metronic/docs" target="_blank">
												<span class="menu-icon">
													<i class="ki-duotone ki-abstract-26 fs-2">
														<span class="path1"></span>
														<span class="path2"></span>
													</i>
												</span>
                            <span class="menu-title">Documentation</span>
                        </a>
                        <!--end:Menu link-->
                    </div>
                    <!--end:Menu item-->
                    <!--begin:Menu item-->
                    <div class="menu-item">
                        <!--begin:Menu link-->
                        <a class="menu-link"
                           href="https://preview.keenthemes.com/html/metronic/docs/getting-started/changelog"
                           target="_blank">
												<span class="menu-icon">
													<i class="ki-duotone ki-code fs-2">
														<span class="path1"></span>
														<span class="path2"></span>
														<span class="path3"></span>
														<span class="path4"></span>
													</i>
												</span>
                            <span class="menu-title">Changelog v8.2.0</span>
                        </a>
                        <!--end:Menu link-->
                    </div>
                    <!--end:Menu item-->
                </div>
                <!--end::Menu-->
            </div>
            <!--end::Scroll wrapper-->
        </div>
        <!--end::Menu wrapper-->
    </div>
    <!--end::sidebar menu-->
    <!--begin::Footer-->
    <div class="app-sidebar-footer flex-column-auto pt-2 pb-6 px-6" id="kt_app_sidebar_footer">
        <a href="https://preview.keenthemes.com/html/metronic/docs"
           class="btn btn-flex flex-center btn-custom btn-primary overflow-hidden text-nowrap px-0 h-40px w-100"
           data-bs-toggle="tooltip" data-bs-trigger="hover" data-bs-dismiss-="click"
           data-bs-original-title="200+ in-house components and 3rd-party plugins" data-kt-initialized="1">
            <span class="btn-label">Docs &amp; Components</span>
            <i class="ki-duotone ki-document btn-icon fs-2 m-0">
                <span class="path1"></span>
                <span class="path2"></span>
            </i>
        </a>
    </div>
    <!--end::Footer-->
</div>