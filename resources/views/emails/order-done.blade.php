<h1 style="text-align: center;">Hotel Booking</h1>
<p style="text-align: center;">Cảm ơn bạn đã đăng kí đặt phòng tại website</p>
<div style="text-align: center;">
    <h3 style="color: blue;">Đơn đặt phòng mã số <b>#{{ $order->id }}</b> của bạn đã được xác nhận.</h3>
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
    </small>
</div>