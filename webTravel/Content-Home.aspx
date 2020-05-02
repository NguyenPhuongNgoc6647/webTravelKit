<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Content-Home.aspx.cs" Inherits="webTravel.Content_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/content-home.css" rel="stylesheet" />
    <link href="js/font-awesome/CSS/font-awesome.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <div class="container-slide">
            <div class="wrapper--slide">
                <div class="slider">
                    <img src="image/home/slide/photo1.jpg" />
                    <img src="image/home/slide/photo2.jpg" />
                    <img src="image/home/slide/photo3.jpg" />
                    <img class="active" src="image/home/slide/photo6.jpg" />
                    <img src="image/home/slide/photo7.jpg" />
                </div>
                <div class="slider--switch-btn">
                    <i class="fa fa-chevron-circle-right" id="slider--btn-next" aria-hidden="true"></i>
                    <i class="fa fa-chevron-circle-left" id="slider--btn-prev" aria-hidden="true"></i>
                </div>
            </div>
            <div class="wrapper--search-form">
                <div class="search-form">
                    <div class="wrapper--search-form--title">
                        <ul class="search-form--title">
                            <li class="light-color">
                                <a id='search-form--title__search-tour' href="#"><i class="fa fa-umbrella" aria-hidden="true"></i>Tìm tour</a>
                            </li>
                            <li class="light-color">
                                <a id='search-form--title__search-hotel' href="#"><i class="fa fa-bed" aria-hidden="true"></i>Tìm khách sạn</a>
                            </li>
                            <li class="light-color">
                                <a id='search-form--title__search-ticket' href="#"><i class="fa fa-paper-plane" aria-hidden="true"></i>Tìm vé máy bay</a>
                            </li>
                            <li class="light-color">
                                <a id='search-form--title__search-car' href="#"><i class="fa fa-car" aria-hidden="true"></i>Xe du lịch</a>
                            </li>
                        </ul>
                    </div>
                    <div class="search-form--tab-content">
                        <div class="tab-content--search-tour">
                            <div class="check--choose-tour">
                                <div class="radio-tour-in">
                                    <input id="type-tour-in" type="radio" name="tour-type" value="Tour trong nước" />
                                    <label for="type-tour-in">Tour trong nước</label>
                                </div>
                                <div class="radio-tour-out">
                                    <input id="type-tour-out" type="radio" name="tour-type" value="Tour nước ngoài" />
                                    <label for="type-tour-out">Tour nước ngoài</label>
                                </div>
                            </div>

                            <div class="check--info-tour">
                                <div class="search-tour-item">
                                    <input type="text" name="address-start" placeholder="Nơi khởi hành" />
                                    <i class="fa fa-map-marker" aria-hidden="true"></i>
                                </div>
                                <div class="search-tour-item">
                                    <input type="text" name="address-start" placeholder="Chọn điểm đến" />
                                    <i class="fa fa-map-marker" aria-hidden="true"></i>
                                </div>
                                <div class="search-tour-item">
                                    <input type="text" name="date-start" placeholder="Ngày khởi hành" />
                                    <i class="fa fa-calendar" aria-hidden="true"></i>
                                </div>
                                <div class="search-tour-item">
                                    <input type="search" name="count" list="cost-tour" placeholder="Chọn giá tour" />
                                    <datalist id="cost-tour">
                                        <option>1000 000đ - 2000 000đ</option>
                                        <option>2000 000đ - 3000 000đ</option>
                                        <option>3000 000đ - 5000 000đ</option>
                                    </datalist>
                                </div>
                            </div>
                        </div>
                        <div class="tab-content--search-tour active-search">
                            <div class="search-tour-item">
                                <input type="text" name="address-start" placeholder="Chọn địa điểm" />
                                <i class="fa fa-map-marker" aria-hidden="true"></i>
                            </div>
                            <div class="search-tour-item">
                                <input type="text" name="date-start" placeholder="Ngày nhận phòng" />
                                <i class="fa fa-calendar" aria-hidden="true"></i>
                            </div>
                            <div class="search-tour-item">
                                <input type="text" name="date-end" placeholder="Ngày trả phòng" />
                                <i class="fa fa-calendar" aria-hidden="true"></i>
                            </div>
                            <div class="search-tour-item">
                                <input id="choose-cost-flane" type="search" name="count" list="cost-hotel" placeholder="Chọn giá phòng" />
                                <datalist id="cost-flane">
                                    <option>1000 000đ - 2000 000đ</option>
                                    <option>2000 000đ - 4000 000đ</option>
                                    <option>4000 000đ - 6000 000đ</option>
                                    <option>6000 000đ - 9000 000đ</option>
                                </datalist>
                            </div>
                        </div>
                         <div class="tab-content--search-tour">
                            <div class="search-tour-item">
                                <input type="text" name="address-start" placeholder="Chọn điểm đi" />
                                <i class="fa fa-map-marker" aria-hidden="true"></i>
                            </div>
                            <div class="search-tour-item">
                                <input type="text" name="address-end" placeholder="Chọn điểm đến" />
                                 <i class="fa fa-map-marker" aria-hidden="true"></i>
                            </div>
                            <div class="search-tour-item">
                                <input type="text" name="date-start" placeholder="Ngày đi" />
                                <i class="fa fa-calendar" aria-hidden="true"></i>
                            </div>
                            <div class="search-tour-item">
                                <input type="text" name="date-end" placeholder="Ngày về" />
                                <i class="fa fa-calendar" aria-hidden="true"></i>
                            </div>
                        </div>
                        <div class="tab-content--search-tour">
                            <div class="search-tour-item">
                                <input list="search-address" type="text" name="address-start" placeholder="Chọn địa điểm" />
                                <datalist id="search-address">
                                    <option>TP Hồ Chí Minh</option>
                                    <option>Đà Nẵng</option>
                                    <option>Nha Trang</option>
                                    <option>Sa Pa</option>
                                    <option>Hà Nội</option>
                                    <option>Phú Quốc</option>
                                    <option>Hạ Long</option>
                                </datalist>
                                <i class="fa fa-map-marker" aria-hidden="true"></i>
                            </div>
                            <div class="search-tour-item">
                                <input type="text" name="address-end" placeholder="Thời gian" />
                                 <i class="fa fa-clock-o" aria-hidden="true"></i>
                            </div>
                            <div class="search-tour-item">
                                <input type="number" name="date-start" min="4" max="50" placeholder="Số chỗ" />
                                <i class="fa fa-wheelchair" aria-hidden="true"></i>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="">

        </div>
    </div>
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/slide-banner.js"></script>
    <script src="js/search-form.js"></script>
</asp:Content>
