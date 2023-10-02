{$PAGE_TITLE = 'Oops!'}
{tpl :error/header}

<style type="text/css">
    html, body, wrapper {
        background-color: #fbf2e4;
    }
    .text-wrapper {
        color: #ff8501;
    }
    .text-wrapper > .content {
        color: red;
    }
</style>
<script type="text/javascript">
    function goBack() {
        window.history.back();
    }
</script>

<div class="wrapper">
    <div class="text-wrapper">
        <div class="big-title">Oops!</div>
        <div class="content center-align">
            {$message|raw}
        </div>
    </div>
    <div class="image-wrapper">
        <img src="{config.web.base}assets/pages/error/banner-coffe-car.png"/>
    </div>
    <div class="text-wrapper">
        <div class="content center-align">
            <a href="javascript:goBack()">Back</a>
        </div>
    </div>
</div>

{tpl :error/footer}