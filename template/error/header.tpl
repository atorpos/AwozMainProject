<!DOCTYPE html>
<html>
    <head>
        {if $PAGE_TITLE}
            <title>{{$PAGE_TITLE}}</title>
        {else}
            <title>{{Oops!}}</title>
        {/if}
        <meta charset="UTF-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=1"/>
		<link href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&amp;subset=all" rel="stylesheet" type="text/css">
    </head>
    <style type="text/css">
        html, body, wrapper {
            margin: 0;
            padding: 0;
            /*font-family: "Comic Sans MS", cursive, sans-serif;*/
            font-family: "Open Sans",sans-serif;
            font-size: 16px;
        }

        img {
            width: 100%;
        }

        ul {
            list-style-type: none;
        }

        a {
            text-decoration: none;
            color: #533a29;
            -webkit-transition: all 0.5s; /* Safari */
            transition: all 0.5s;
        }
        a:hover {
            color: #ffffff;
        }

        div {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        .center-align {
            text-align: center;
        }

        .left-align {
            text-align: left;
        }

        /* Extra small devices (phones, less than 768px) */
        /* No media query since this is the default in Bootstrap */
        .wrapper {
            padding: 50px 10% 0 10%;
        }

        .image-wrapper {
            margin-bottom: 10px;
            padding: 30px 5%;
            width: 100%;
            height: 100%;
        }

        .text-wrapper {
            margin-bottom: 10px;
        }

        .big-title {
            font-size: 380%;
            margin-bottom: 20px;
            text-align: center;
            width: 100%;
            padding: 0 5%;
        }

        .content {
            font-size: 130%;
            padding: 0 5%;
            width: 100%;
            line-height: 1.6;
            margin-bottom: 10px;
        }

        /* Small devices (tablets, 768px and up) */
        @media (min-width: 768px) {
            .image-wrapper {
                padding: 35px 22%;
            }

            .big-title {
                margin-bottom: 15px;
            }
        }

        /* Medium devices (desktops, 992px and up) */
        @media (min-width: 992px) {

            .wrapper {
                padding: 20% 10% 0 10%;
            }

            .text-wrapper {
                position: relative;
                width: 50%;
                display: inline-block;
                margin-left: 50%;
            }

            .image-wrapper {
                position: absolute;
                display: inline-block;
                top: 7%;
                left: 4%;
                width: 53%;
                padding: 0;
                height: auto;
            }

            .big-title {
                font-size: 400%;
            }

            .content {
                font-size: 140%;
                margin: 0;
            }

        }

        /* Large devices (large desktops, 1200px and up) */
        @media (min-width: 1200px) {
            .wrapper {
                padding: 21% 10% 0 10%;
            }

            .text-wrapper {
                margin-left: 44%;
                width: 55%;
            }

            .image-wrapper {
                top: 12%;
                left: 11%;
                width: 40%;
            }
        }

    </style>
    <body>
