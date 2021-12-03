<div class="py-5 mt-5 text-center container">
    <div class="row">
        <div class="col-lg-6 col-md-8 mx-auto">
            <div class="fw-light">
                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-images" viewBox="0 0 16 16">
                    <path d="M0 1a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V1zm4 0v6h8V1H4zm8 8H4v6h8V9zM1 1v2h2V1H1zm2 3H1v2h2V4zM1 7v2h2V7H1zm2 3H1v2h2v-2zm-2 3v2h2v-2H1zM15 1h-2v2h2V1zm-2 3v2h2V4h-2zm2 3h-2v2h2V7zm-2 3v2h2v-2h-2zm2 3h-2v2h2v-2z"/>
                </svg>
                <h1 class="fw-light">Videos</h1>
            </div>
            <p class="lead text-muted">There are <code>1000</code> images of <code>1.2GB</code> size</p>
        </div>
    </div>
</div>
<div class="row" id="result_data"></div>
<script>
    $(function() {
        $(document).paginationScroll(0, {
            url: 'getDataAjax.php?type=video',
            div: '#result_data',
            limit: '20'
        });
    });
</script>