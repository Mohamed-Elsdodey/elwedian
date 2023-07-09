<style>
    .lds-grid {
        display: inline-block;
        position: relative;
        width: 80px;
        height: 80px;
    }
    .lds-grid div {
        position: absolute;
        width: 16px;
        height: 16px;
        border-radius: 50%;
        background: #fff;
        animation: lds-grid 1.2s linear infinite;
    }
    .lds-grid div:nth-child(1) {
        top: 8px;
        left: 8px;
        animation-delay: 0s;
    }
    .lds-grid div:nth-child(2) {
        top: 8px;
        left: 32px;
        animation-delay: -0.4s;
    }
    .lds-grid div:nth-child(3) {
        top: 8px;
        left: 56px;
        animation-delay: -0.8s;
    }
    .lds-grid div:nth-child(4) {
        top: 32px;
        left: 8px;
        animation-delay: -0.4s;
    }
    .lds-grid div:nth-child(5) {
        top: 32px;
        left: 32px;
        animation-delay: -0.8s;
    }
    .lds-grid div:nth-child(6) {
        top: 32px;
        left: 56px;
        animation-delay: -1.2s;
    }
    .lds-grid div:nth-child(7) {
        top: 56px;
        left: 8px;
        animation-delay: -0.8s;
    }
    .lds-grid div:nth-child(8) {
        top: 56px;
        left: 32px;
        animation-delay: -1.2s;
    }
    .lds-grid div:nth-child(9) {
        top: 56px;
        left: 56px;
        animation-delay: -1.6s;
    }
    @keyframes lds-grid {
        0%, 100% {
            opacity: 1;
        }
        50% {
            opacity: 0.5;
        }
    }

    .loader-ajax{
        width: 100vw;
        height: 100%;
        top: 0;
        left: 0;
        background: #555656e6;
        position: fixed;
        display: flex;
        align-items: center;
        z-index: 1112;
        justify-content: center;
    }


</style>
<style>
    .lds-hourglass {
        width: 100vw;
        height: 100%;
        top: 0;
        left: 0;
        background: #555656e6;
        position: fixed;
        display: flex;
        align-items: center;
        z-index: 1112;
        justify-content: center;
    }
    .lds-hourglass:after {
        content: " ";
        display: block;
        border-radius: 50%;
        width: 0;
        height: 0;
        margin: 8px;
        box-sizing: border-box;
        border: 32px solid #fff;
        border-color: #fff transparent #fff transparent;
        animation: lds-hourglass 1.2s infinite;
    }
    @keyframes lds-hourglass {
        0% {
            transform: rotate(0);
            animation-timing-function: cubic-bezier(0.55, 0.055, 0.675, 0.19);
        }
        50% {
            transform: rotate(900deg);
            animation-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1);
        }
        100% {
            transform: rotate(1800deg);
        }
    }

</style>

<style>
    @keyframes placeHolderShimmer{
        0%{
            background-position: -468px 0
        }
        100%{
            background-position: 468px 0
        }
    }

    .linear-background {
        animation-duration: 1s;
        animation-fill-mode: forwards;
        animation-iteration-count: infinite;
        animation-name: placeHolderShimmer;
        animation-timing-function: linear;
        background: #f6f7f8;
        background: linear-gradient(to right, #eeeeee 8%, #dddddd 18%, #eeeeee 33%);
        background-size: 1000px 104px;
        height: 200px;
        position: relative;
        overflow: hidden;
    }
    .inter-draw{
        background: #FFF;
        width: 100%;
        height: 100px;
        position: absolute;
        top: 100px;
    }
    .inter-right--top{
        background: #FFF;
        width: 100%;
        height: 20px;
        position: absolute;
        top: 20px;
        left: 100px;
    }
    .inter-right--bottom{
        background: #FFF;
        width: 100%;
        height: 50px;
        position: absolute;
        top: 60px;
        left: 100px;
    }
    .inter-crop{
        background: #FFF;
        width: 20px;
        height: 100%;
        position: absolute;
        top: 0;
        left: 100px;
    }
</style>
