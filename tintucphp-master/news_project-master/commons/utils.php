<?php 
date_default_timezone_set('Asia/Ho_Chi_Minh');
function dd($var){
	echo "<pre>";
	var_dump($var);
	die;
}
function getUrl($path = "") {
    // Sử dụng HTTPS nếu trang đang được truy cập qua HTTPS
    $protocol = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off') ? "https://" : "http://";
    
    // Lấy URL hiện tại
    $currentUrlpath = $GLOBALS['url'];
    
    // Tạo URL tuyệt đối với giao thức đã xác định
    $absoluteUrl = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
    
    // Nếu đường dẫn hiện tại không phải là trang chính, loại bỏ nó khỏi URL tuyệt đối
    if ($currentUrlpath != "/") {
        $absoluteUrl = str_replace("$currentUrlpath", "", $absoluteUrl);
    }
    
    // Cắt URL để lấy phần thư mục
    $absoluteUrl = substr($absoluteUrl, 0, strrpos($absoluteUrl, '/'));
    
    // Trả về URL mới với đường dẫn được thêm vào
    return $absoluteUrl . '/' . ltrim($path, '/');
}
function convertTime($str){
$date = new \DateTime($str);
return $date->format('d F Y');
}
function description($desc, $length)
{
	$desc = strip_tags ($desc) ;
	if (strlen($desc)>$length) {
	  $desc = substr($desc, 0, $length);
	}
	echo $desc;
	}
 ?>

