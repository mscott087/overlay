<header class="tablet">
    <div class="row">
        <div class="col-sm-12">

        </div>
    </div>
</header>


<style>
	.overlay-loading {
		position: fixed;
		z-index: 9999;
		background: rgba(255, 255, 255, 1);
		top: 0;
		left: 0;
		right: 0;
		bottom: 0;
        transition: all .3s;
	}

    .overlay-loading.hide{
        opacity: 0;
        z-index: 0;
    }

	.spinner {
		margin: 0;
		width: 70px;
		height: 18px;
		margin: -35px 0 0 -9px;
		position: absolute;
		top: 50%;
		left: 50%;
		text-align: center
	}

	.spinner>div {
		width: 18px;
		height: 18px;
		background-color: #333;
		border-radius: 100%;
		display: inline-block;
		-webkit-animation: bouncedelay 1.4s infinite ease-in-out;
		animation: bouncedelay 1.4s infinite ease-in-out;
		-webkit-animation-fill-mode: both;
		animation-fill-mode: both
	}

	.spinner .bounce1 {
		-webkit-animation-delay: -.32s;
		animation-delay: -.32s
	}

	.spinner .bounce2 {
		-webkit-animation-delay: -.16s;
		animation-delay: -.16s
	}

	@-webkit-keyframes bouncedelay {
		0%,
		80%,
		100% {
		-webkit-transform: scale(0.0)
		}
		40% {
		-webkit-transform: scale(1.0)
		}
	}

	@keyframes bouncedelay {
		0%,
		80%,
		100% {
		transform: scale(0.0);
		-webkit-transform: scale(0.0)
		}
		40% {
		transform: scale(1.0);
		-webkit-transform: scale(1.0)
		}
	}

</style>

<div class="overlay-loading">
	<div class="spinner">
		<div class="bounce1"></div>
		<div class="bounce2"></div>
		<div class="bounce3"></div>
	</div>
</div>

<script>
	window.addEventListener("load",function(){
		var loading = document.querySelectorAll(".overlay-loading");
		for (var x = 0; x < loading.length; x++) {
			var element = loading[x];
			element.style.transition = "all .5s";
			element.style.opacity = 0;
			element.style.zIndex = -1;

		}
	});
</script>
