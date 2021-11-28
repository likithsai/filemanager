<div class="py-5 mt-5 text-center container">
    <div class="row">
        <div class="col-lg-6 col-md-8 mx-auto">
            <div class="fw-light">
                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-images" viewBox="0 0 16 16">
                    <path d="M6.002 5.5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z"></path>
                    <path d="M2.002 1a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V3a2 2 0 0 0-2-2h-12zm12 1a1 1 0 0 1 1 1v6.5l-3.777-1.947a.5.5 0 0 0-.577.093l-3.71 3.71-2.66-1.772a.5.5 0 0 0-.63.062L1.002 12V3a1 1 0 0 1 1-1h12z"></path>
                </svg>
                <h1 class="fw-light">Images</h1>
            </div>
            <p class="lead text-muted">There are <code>1000</code> images of <code>1.2GB</code> size</p>
        </div>
    </div>
</div>

<div class="row" id="result_data"></div>
<script>
    $(function() {
        $(document).paginationScroll(0, {
            url: 'getDataAjax.php?type=image',
            div: '#result_data',
            limit: '18'
        });
    });
</script>