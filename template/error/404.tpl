{$PAGE_TITLE = 'Oops!'}
{tpl :error/header}

<style type="text/css">
    html, body, wrapper {
        background-color: #219cca;
    }
    .text-wrapper {
        color: white;
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
        <div class="content center-align">We can't seem to find the page you are looking for.</div>
    </div>
    <div class="image-wrapper">
        <img src="{config.web.base}assets/pages/error/banner-coffe-cup.png"/>
    </div>
    <div class="text-wrapper">
        <div class="content center-align">
            <a href="javascript:goBack()">Back</a>
        </div>
    </div>
</div>

{tpl :error/footer}