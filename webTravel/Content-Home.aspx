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
                            <li class="btn-color">
                                <button class="btn_submit--search" type="submit">Tìm</button>
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
                                    <input type="text" placeholder="Ngày khởi hành" name="date-start" onfocus="(this.type='date')"/>
                                    <i class="fa fa-calendar calendar" aria-hidden="true"></i>
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
                                <input type="text" name="date-start" placeholder="Ngày nhận phòng" onfocus="(this.type='date')"/>
                                <%--<i class="fa fa-calendar calendar" aria-hidden="true"></i>--%>
                            </div>
                            <div class="search-tour-item">
                                <input type="text" name="date-end" placeholder="Ngày trả phòng" onfocus="(this.type='date')" />
                                <%--<i class="fa fa-calendar calendar" aria-hidden="true"></i>--%>
                            </div>
                            <div class="search-tour-item">
                                <input id="choose-cost-flane" type="search" name="count" list="cost-hotel" placeholder="Chọn giá phòng" />
                                <datalist id="cost-hotel">
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
                                <input type="text" name="date-start" placeholder="Ngày đi" onfocus="(this.type='date')"/>
                                <%--<i class="fa fa-calendar calendar" aria-hidden="true"></i>--%>
                            </div>
                            <div class="search-tour-item">
                                <input type="text" name="date-end" placeholder="Ngày về" onfocus="(this.type='date')"/>
                                <%--<i class="fa fa-calendar calendar" aria-hidden="true"></i>--%>
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
        <div class="container-panel__content">
            <div class="container-panel__content1">
                <div class="container-panel__content1--title">
                    <h3>Điểm đến phổ biến Việt Nam</h3>
                    <hr />
                </div>
                <div class="container-panel__content1--box">
                    <div class="container-panel__content1--box--item">
                        <div class="panel__content1--box--item1">
                            <div class="box-item--img">
                                <a href="#"> 
                                    <img src="image/home/Location/LocationVN/country1552989374.jpg" alt="Đà Nẵng" title="Đà Nẵng" />
                                    <h3>Đà Nẵng</h3>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="container-panel__content1--box--item">
                        <div class="panel__content1--box--item1">
                            <div class="box-item--img">
                                <a href="#">
                                     <img src="image/home/Location/LocationVN/country1552989338%20(11).jpg" alt="Bà Rịa-Vũng Tàu" title="Bà Rịa-Vũng Tàu" />
                                    <h3>Bà Rịa-Vũng Tàu</h3>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="container-panel__content1--box--item">
                        <div class="panel__content1--box--item1">
                            <div class="box-item--img">
                                <a href="#">
                                    <img src="image/home/Location/LocationVN/country1552989338%20(8).jpg" alt="Đà Lạt" title="Đà Lạt"/>
                                    <h3>Đà Lạt</h3>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="container-panel__content1--box--item">
                        <div class="panel__content1--box--item1">
                            <div class="box-item--img">
                                <a href="#">
                                    <img src="image/home/Location/LocationVN/country1552989338%20(6).jpg" alt="Hồ Chí Minh" title="Hồ Chí Minh"/>
                                    <h3>Hồ Chí Minh</h3>
                                    
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="container-panel__content1--box--item">
                        <div class="panel__content1--box--item1">
                            <div class="box-item--img">
                                <a href="#">
                                    <img src="image/home/Location/LocationVN/country1552989338%20(7).jpg" alt="Nha Trang" title="Nha Trang"/>
                                    <h3>Nha Trang</h3>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="container-panel__content1--box--item">
                        <div class="panel__content1--box--item1">
                            <div class="box-item--img">
                                <a href="#">
                                    <img src="image/home/Location/LocationVN/country1552989338%20(2).jpg" alt="Phan Thiết" title="Phan Thiết"/>
                                    <h3>Phan Thiết</h3>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="container-panel__content1--box--item">
                        <div class="panel__content1--box--item1">
                            <div class="box-item--img">
                                <a href="#">
                                    <img src="image/home/Location/LocationVN/country1552989338%20(5).jpg" alt="Hà Nội" title="Hà Nội"/>
                                    <h3>Hà Nội</h3>
                                </a>
                            </div>
                        </div>
                    </div>
                      <div class="container-panel__content1--box--item">
                        <div class="panel__content1--box--item1">
                            <div class="box-item--img">
                                <a href="#">
                                    <img src="image/home/Location/LocationVN/country1552989338%20(10).jpg" alt="Phú Quốc" title="Phú Quốc"/>
                                    <h3>Phú Quốc</h3>
                                </a>
                            </div>
                        </div>
                    </div>
                      <div class="container-panel__content1--box--item">
                        <div class="panel__content1--box--item1">
                            <div class="box-item--img">
                                <a href="#">
                                    <img src="image/home/Location/LocationVN/country1552989338%20(3).jpg" alt="Sa Pa" title="Sa Pa"/>
                                    <h3>Sa Pa</h3>
                                </a>
                            </div>
                        </div>
                    </div>
                      <div class="container-panel__content1--box--item">
                        <div class="panel__content1--box--item1">
                            <div class="box-item--img">
                                <a href="#">
                                    <img src="image/home/Location/LocationVN/country1552989338%20(9).jpg" alt="Hội An" title="Hội An"/>
                                    <h3>Hội An</h3>
                                </a>
                            </div>
                        </div>
                    </div>
                      <div class="container-panel__content1--box--item">
                        <div class="panel__content1--box--item1">
                            <div class="box-item--img">
                                <a href="#">
                                    <img src="image/home/Location/LocationVN/country1552989338%20(4).jpg" alt="Hạ Long" title="Hạ Long"/>
                                    <h3>Hạ Long</h3>
                                </a>
                            </div>
                        </div>
                    </div>
                      <div class="container-panel__content1--box--item">
                        <div class="panel__content1--box--item1">
                            <div class="box-item--img">
                                <a href="#">
                                    <img src="image/home/Location/LocationVN/country1541584938.jpg" alt="Huế" title="Huế"/>
                                    <h3>Huế</h3>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
         <div class="container-panel__content">
            <div class="container-panel__content1">
                <div class="container-panel__content1--title">
                    <h3>Điểm đến phổ biến Nước Ngoài</h3>
                    <hr />
                </div>
                <div class="container-panel__content1--box">
                    <div class="container-panel__content1--box--item">
                        <div class="panel__content1--box--item1">
                            <div class="box-item--img">
                                <a href="#"> <img src="image/home/Location/LocationNN/bangkok.jpg" />
                                    <h3>BangKok</h3>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="container-panel__content1--box--item">
                        <div class="panel__content1--box--item1">
                            <div class="box-item--img">
                                <a href="#">
                                    <img src="image/home/Location/LocationNN/singapore.jpg" />
                                    <h3>Singapore</h3>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="container-panel__content1--box--item">
                        <div class="panel__content1--box--item1">
                            <div class="box-item--img">
                                <a href="#">
                                    <img src="image/home/Location/LocationNN/guang-zhou.jpg" />
                                    <h3>Guangzhou</h3>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="container-panel__content1--box--item">
                        <div class="panel__content1--box--item1">
                            <div class="box-item--img">
                                <a href="#">
                                    <img src="image/home/Location/LocationNN/kuala-lumpur.jpg" />
                                    <h3>Kuala Lumpur</h3>
                                    
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="container-panel__content1--box--item">
                        <div class="panel__content1--box--item1">
                            <div class="box-item--img">
                                <a href="#">
                                    <img src="image/home/Location/LocationNN/seoul.jpg" />
                                    <h3>Seoul</h3>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="container-panel__content1--box--item">
                        <div class="panel__content1--box--item1">
                            <div class="box-item--img">
                                <a href="#">
                                    <img src="image/home/Location/LocationNN/siem-reap.jpg" />
                                    <h3>Siem Reap</h3>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="container-panel__content1--box--item">
                        <div class="panel__content1--box--item1">
                            <div class="box-item--img">
                                <a href="#">
                                    <img src="image/home/Location/LocationNN/taipei.jpg" />
                                    <h3>Taipei</h3>
                                </a>
                            </div>
                        </div>
                    </div>
                      <div class="container-panel__content1--box--item">
                        <div class="panel__content1--box--item1">
                            <div class="box-item--img">
                                <a href="#">
                                    <img src="image/home/Location/LocationNN/hong-kong.jpg" />
                                    <h3>Hong Kong</h3>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-panel__ks-theo-tinh">
            <div class="container-panel__ks-theo-tinh1">
                <h3>Khách sạn theo các tỉnh thành</h3>
                <hr />
                <p class="list-dd">
                            <a href="#">An Giang,</a>
                            <a href="#"><b>Bà Rịa-Vũng Tàu,</b></a>
                            <a href="#">Bắc Giang,</a>
                            <a href="#">Bắc Kan,</a>
                            <a href="#">Bạc Liêu,</a>
                            <a href="#">Bắc Ninh,</a>
                            <a href="#">Bến Tre,</a>
                            <a href="#">Bình Định,</a>
                            <a href="#">Bình Dương,</a>
                            <a href="#">Bình Phước,</a>
                            <a href="#">Bình Thuận,</a>
                            <a href="#">Cà Mau,</a>
                            <a href="#">Cần Thơ,</a>
                            <a href="#">Cao Bằng,</a>
                            <a href="#"><b>Đà Nẵng,</b></a>
                            <a href="#">Đắk Nông,</a>
                            <a href="#">Đắk Lắk,</a>
                            <a href="#">Điện Biên,</a>
                            <a href="#">Đồng Tháp,</a>
                            <a href="#">Gia Lai,</a>
                            <a href="#">Hà Nam,</a>
                            <a href="#">Hà Giang,</a>
                            <a href="#"><b>Hà Nội,</b></a>
                            <a href="#">Hải Dương,</a>
                            <a href="#">Hải Phòng,</a>
                            <a href="#">Hậu Giang,</a>
                            <a href="#"><b>Hồ Chí Minh,</b></a>
                            <a href="#">Hòa Bình,</a>
                            <a href="#">Hưng Yên,</a>
                            <a href="#">Khánh Hòa,</a>
                            <a href="#">Kiên Giang,</a>
                            <a href="#">Đồng Tháp,</a>
                            <a href="#">Kon Tum,</a>
                            <a href="#">Lai Châu,</a>
                            <a href="#">Lâm Đồng,</a>
                            <a href="#">Lạng Sơn,</a>
                            <a href="#">Lào Cai,</a>
                            <a href="#">Long An,</a>
                            <a href="#">Nam Định,</a>
                            <a href="#">Nghệ An,</a>
                            <a href="#">Ninh Bình,</a>
                            <a href="#">Ninh Thuận,</a>
                            <a href="#">Phú Thọ,</a>
                            <a href="#">Phú Yên,</a>
                            <a href="#">Quảng Bình,</a>
                            <a href="#">Quảng Nam,</a>
                            <a href="#">Quảng Ngãi,</a>
                            <a href="#">Quảng Ninh,</a>
                            <a href="#">Quảng Trị,</a>
                            <a href="#">Sóc Trăng,</a>
                            <a href="#">Sơn La,</a>
                            <a href="#">Tây Ninh,</a>
                            <a href="#">Thái Bình,</a>
                            <a href="#">Thái Nguyên,</a>
                            <a href="#">Thanh Hóa,</a>
                            <a href="#">Thừa Thiên Huế,</a>
                            <a href="#">Tiền Giang,</a>
                            <a href="#">Trà Vinh,</a>
                            <a href="#">Tuyên Quang,</a>
                            <a href="#">Vĩnh Long,</a>
                            <a href="#">Vĩnh Phúc,</a>
                            <a href="#">Yên Bái</a>
                        </p>
            </div>
        </div>
    </div>
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/slide-banner.js"></script>
    <script src="js/search-form.js"></script>
</asp:Content>
