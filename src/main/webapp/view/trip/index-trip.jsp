<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text-html; charset=UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>Home page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
            crossorigin="anonymous" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css"
            integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A=="
            crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="../../css/style.css" />
    </head>

    <body>
        <header>
            <nav class="navbar navbar-expand-lg bg-light">
                <div class="container-fluid row">
                    <a class="navbar-brand col-3" href="#">
                        <i class="fa-solid fa-plane"></i>
                        Trip
                    </a>

                    <div class="collapse navbar-collapse col-9" id="navbarScroll">
                        <ul class="navbar-nav ms-auto my-2 my-lg-0">
                            <li class="nav-item me-4">
                                <a class="nav-link" href="#">Welcome Pham Van Thanh</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    <i class="fa-solid fa-right-from-bracket"></i>
                                    Logout
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>

        <main class="h-100">
            <div class="container-fluids row h-100">
                <!-- sidebar -->
                <div class="col-3 bg-light" id="sidebar" style="padding: 0">
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item sidebar-dropdown">
                            <a href="#" class="d-flex align-items-center px-4 py-2">
                                <i class="fa-solid fa-plane"></i>
                                <span class="ms-1">Trip manager</span>
                                <i class="fa-solid fa-angle-left ms-auto"></i>
                                <i class="fa-solid fa-chevron-down ms-auto d-none"></i>
                            </a>

                            <ul class="list-group list-group-flush sidebar-submenu show" style="display: none;">
                                <li class="sidebar-submenu-item px-5 py-2" id="trip-list">
                                    <a href="#">
                                        <i class="fa-solid fa-list"></i>
                                        Trip list
                                    </a>
                                </li>
                                <li class="sidebar-submenu-item px-5 py-2" id="add-trip">
                                    <a href="#">
                                        <i class="fa-solid fa-plus"></i>
                                        Add Trip
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <li class="list-group-item sidebar-dropdown">
                            <a href="#" class="d-flex align-items-center px-4 py-2">
                                <i class="fa-solid fa-ticket"></i>
                                <span class="ms-1">Ticket manager</span>
                                <i class="fa-solid fa-angle-left ms-auto"></i>
                                <i class="fa-solid fa-chevron-down ms-auto d-none"></i>
                            </a>

                            <ul class="list-group list-group-flush sidebar-submenu show" style="display: none;">
                                <li class="sidebar-submenu-item px-5 py-2" id="ticket-list">
                                    <a href="#">
                                        <i class="fa-solid fa-list"></i>
                                        Ticket list
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>

                <!-- content -->
                <div class="col-9 p-4 border" id="content">
                </div>
            </div>
        </main>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
            crossorigin="anonymous"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
            integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js"
            integrity="sha512-rstIgDs0xPgmG6RX1Aba4KV5cWJbAMcvRCVmglpam9SoHZiUCyQVDdH2LPlxoHtrv17XWblE/V/PP+Tr04hbtA=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>

        <script>
            $(document).ready(function () {
                $('.list-group-item > a').click(function () {
                    $('.list-group-item').removeClass('list-group-item--active');
                    $(".sidebar-dropdown > a").removeClass('list-group-item--active');
                    $('.sidebar-submenu-item').removeClass("sidebar-submenu-item--active");

                    if ($(this).closest('.list-group-item').hasClass('sidebar-dropdown')) {
                        $(this).addClass('list-group-item--active');
                        $(this).children('i:not(:first-child)').toggleClass('d-none');

                        if ($(this).closest('.sidebar-dropdown').children('.sidebar-submenu').hasClass("show")) {
                            $(this).closest('.sidebar-dropdown').children('.sidebar-submenu').stop().css('display', 'none').hide().slideDown(200);
                            $(this).closest('.sidebar-dropdown').children('.sidebar-submenu').removeClass("show");
                        } else {
                            $(this).closest('.sidebar-dropdown').children('.sidebar-submenu').stop().css('display', 'none').show().slideUp(200);
                            $(this).closest('.sidebar-dropdown').children('.sidebar-submenu').addClass("show");
                        }
                    } else {
                        $(this).closest('.list-group-item').addClass('list-group-item--active');
                    }
                });

                $(".sidebar-submenu-item").click(function () {
                    $('.list-group-item > a').removeClass('list-group-item--active');
                    $(".sidebar-submenu-item").removeClass("sidebar-submenu-item--active");
                    $(this).addClass("sidebar-submenu-item--active");
                    $(this).closest('.sidebar-dropdown').children('a').addClass("list-group-item--active");

                    var link;
                    if ($(".sidebar-submenu-item--active").attr("id") == "trip-list") {
                        link = './trip-list.jsp';
                    } else if ($(".sidebar-submenu-item--active").attr("id") == "add-trip") {
                        link = './add-trip.jsp';
                    } else {
                        link = './ticket-list.jsp';
                    }

                    $.ajax({
                        url: link,
                        dataType: "html",
                        type: "GET",
                    })
                        .done(function (data) {
                            $("#content").html(data);
                        });
                });
            });
        </script>
    </body>

    </html>