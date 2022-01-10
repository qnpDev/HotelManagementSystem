<h1 style="text-align: center;">Hotel Booking</h1>
<p style="text-align: center;">Cảm ơn bạn đã đăng kí đặt phòng tại website</p>
<div style="text-align: center;">
    <p style="color: blue;">Thông tin đơn đặt phòng của bạn:</p>
    <ul>
        <li>Mã đơn hàng: <b>#{{ $order->id }}</b></li>
        <li>Ngày đặt phòng: <b>{{ $order->ngaydat }}</b></li>
        <li>Ngày trả phòng: <b>{{ $order->ngaytra }}</b></li>
    </ul>
</div>
<div style="color: #6c757d; text-align: center;">
    <small>
        <p>***</p>
        <p>Vui lòng cung cấp <b>Mã đơn hàng</b> cho nhân viên khi đến nhận phòng.</p>
        <p>Để hủy phòng vui lòng liên hệ CSKH <b>0123456789</b>.</p>
    </small>
</div>