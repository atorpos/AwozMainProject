


<tr class="odd">
    <!--begin::Item-->
    <td>
        <a href="#"
           class="text-dark text-hover-primary">{$_activities['created_date']|datetime}</a>
    </td>
    <!--end::Item-->
    <!--begin::Product ID-->
    <td class="text-end">{if $_activities['type'] == 46}Swimming{/if}</td>
    <!--end::Product ID-->
    <!--begin::Date added-->
    <td class="text-end" data-order="2023-04-20T00:00:00-04:00">{$_activities['active_durition']} seconds
    </td>
    <!--end::Date added-->
    <!--begin::Price-->
    <td class="text-end">{$_activities['active_result']} m</td>
    <!--end::Price-->
    <!--begin::Status-->
    <td class="text-end">
        <span class="badge py-3 px-4 fs-7 badge-light-primary">{$_activities['active_ave_hb']} BPM</span>
    </td>
    <!--end::Status-->
    <!--begin::Qty-->
    <td class="text-end" data-order="58">
        <span class="text-dark fw-bold">{$_activities['active_count']} kCal</span>
    </td>
    <!--end::Qty-->
</tr>

