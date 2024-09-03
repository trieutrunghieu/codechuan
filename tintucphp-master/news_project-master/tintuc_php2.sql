-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 17, 2017 lúc 05:19 AM
-- Phiên bản máy phục vụ: 10.1.25-MariaDB
-- Phiên bản PHP: 7.0.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tintuc_php2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_url`) VALUES
(2, 'SPORT', 'sport\r\n'),
(3, 'TECH', 'tech'),
(4, 'EDUCATION', 'education'),
(5, 'TRAVEL', 'travel'),
(7, 'SPORT', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '1',
  `quest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `configs`
--

CREATE TABLE `configs` (
  `id` int(11) NOT NULL,
  `config_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `configs`
--

INSERT INTO `configs` (`id`, `config_name`, `config_value`) VALUES
(1, 'numofpost', '12'),
(2, 'title', 'Website tin tức'),
(4, 'description', 'Website tin tức'),
(5, 'favicon', 'favicon.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `forgot_password`
--

CREATE TABLE `forgot_password` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `created_date` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `forgot_password`
--

INSERT INTO `forgot_password` (`id`, `email`, `created_date`, `token`) VALUES
(0, 'wlongtran2@gmail.com', '1969-12-31 08:33:37', 'f0ae0de8b5e16892bd359080106cf04a');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_time` datetime NOT NULL,
  `post_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `detail`, `thumbnail`, `post_time`, `post_url`, `views`) VALUES
(42, 5, 3, '“Nhiều người Brazil cảm thấy mất kết nối khi X bị cấm', '<p>Nhiều người Brazil nói mình như không biết chuyện gì xảy ra trên thế giới sau khi nền tảng X của tỷ phú Elon Musk bị chặn tại đây.</p>\r\n\r\n<p>X bắt đầu bị chặn tại Brazil từ ngày 1/9, khiến nền tảng này không thể truy cập được cả trên web và các ứng dụng di động, sau khi Elon Musk từ chối chỉ định đại diện pháp lý tại quốc gia này. Theo 1news, động thái đánh dấu sự leo thang trong mối bất hòa kéo dài nhiều tháng giữa Musk và thẩm phán Tòa án Tối cao Brazil Alexandre de Morae về quyền tự do ngôn luận, các tài khoản cực hữu và thông tin sai lệch.
Brazil là một trong những thị trường lớn nhất của X, với hàng chục triệu người dùng.
"Tôi có cảm giác mình không biết chuyện gì xảy ra trên thế giới này. Thật kỳ lạ", nhà văn và cũng là người dùng X ở Brazil lâu năm Chico Barney viết trên Threads. Đây là nền tảng mạng xã hội do Instagram phát triển và được Barney sử dụng như giải pháp thay thế. "Thuật toán Threads giống như một nhà hàng có thể ăn thả ga, nơi người phục vụ liên tục đưa ra các món mà tôi không bao giờ gọi".
Bluesky, mạng xã hội ra mắt năm ngoái như một giải pháp thay thế cho X và các trang web lâu đời hơn khác, đã chứng kiến lượng lớn người Brazil sử dụng trong vài ngày qua. Công ty cho biết cuối tuần trước nền tảng đón 200.000 người dùng mới từ Brazil và con số này "tiếp tục tăng lên từng phút". Người dùng tại đây cũng lập kỷ lục về các hoạt động cá nhân như số lượt theo dõi và thích, Bluesky cho biết.        
Nhiều người trên các nền tảng khác tỏ ra hào hứng trước làn sóng mới. "Xin chào, theo nghĩa đen là tất cả mọi người ở Brazil", một tài khoản viết trên Threads. "Chúng tôi sẽ tử tế hơn nhiều so với Twitter (tên cũ của X) ở đây", một tài khoản khác bình luận.
Việc phải di chuyển nền tảng không phải điều mới mẻ với người Brazil. Đây từng là nơi sử dụng Orkut nhiều nhất nhưng khi Orkut ngừng hoạt động, họ vui vẻ chuyển sang các dịch vụ khác.
X không phổ biến ở Brazil bằng Facebook, Instagram, YouTube hay TikTok. Tuy nhiên, đây vẫn là nền tảng quan trọng để người dân tham gia vào các cuộc tranh luận chính trị và có ảnh hưởng lớn đến các chính trị gia, nhà báo và những người có sức ảnh hưởng khác.
Việc X bị chặn ở Brazil cũng khiến các ngôi sao nhạc pop và cộng đồng người hâm mộ bị ảnh hưởng lớn. "Khoan đã, rất nhiều fanpage của tôi là ở Brazil!!! Quay lại nào, dừng lại đi!!" Cardi B viết hôm 31/8 trên X. Một trang người hâm mộ Timothée Chalamet với tên TimotheeUpdates, cho biết họ sẽ tạm ngừng cập nhật vì tất cả quản trị viên đều là người Brazil.
Nhằm tránh tình trạng sử dụng mạng riêng ảo (VPN) để lách lệnh, thẩm phán Tòa án Tối cao Brazil Alexandre de Morae tuyên bố cá nhân hoặc công ty cố gắng truy cập mạng xã hội theo cách này có thể bị phạt tới 50.000 BRL (8.900 USD) một ngày. Tuy nhiên, Hiệp hội Luật sư Brazil cho biết sẽ yêu cầu Tòa án Tối cao xem xét lại quy định bởi lệnh trừng phạt thường không được áp dụng trước khi đảm bảo quy trình, quyền được bảo vệ toàn diện.
"Tôi đã sử dụng VPN ở rất nhiều nơi để tiếp tục truy cập các trang tin tức và mạng xã hội", Maurício Santoro, giáo sư khoa học chính trị tại Đại học bang Rio de Janeiro, cho biết. "Tôi chưa bao giờ nghĩ loại công cụ này sẽ bị cấm ở Brazil".
Một thống kê cho thấy hàng trăm người dùng Brazil đặt câu hỏi về việc sử dụng VPN để tiếp tục truy cập X trên nền tảng trong ngày cuối cùng trước khi nó bị đóng cửa.
Nhà lập pháp Bia Kicis nói "hậu quả của cuộc tấn công của Alexandre de Moraes vào Elon Musk, X và Starlink sẽ là điều đáng tiếc đối với người dân Brazil". Bà cũng thúc giục Rodrigo Pacheco, chủ tịch Thượng viện nước này, hành động. Kicis đã nhiều lần thúc giục Pacheco mở thủ tục luận tội thẩm phán Tòa án Tối cao.
Cựu tổng thống Jair Bolsonaro cho biết trên Instagram ngày 1/9 rằng việc X rời khỏi Brazil là "một đòn giáng nữa vào tự do và pháp lý". "Nó không chỉ ảnh hưởng đến quyền tự do ngôn luận của chúng tôi mà còn làm suy yếu niềm tin của các công ty quốc tế khi hoạt động trên lãnh thổ Brazil", Bolsonaro nói.
Trong khi đó, Tổng thống Brazil Luiz Inácio Lula da Silva lên tiếng ủng hộ quyết định của Alexandre de Morae và chỉ trích Musk tự cho mình là người đứng trên luật pháp trong một cuộc phỏng vấn với Radio MaisPB.
"Bất kỳ công dân nào, từ bất kỳ nơi nào trên thế giới, có khoản đầu tư vào Brazil, đều phải tuân theo hiến pháp và luật pháp Brazil. Do đó, nếu Tòa án Tối cao đã ra quyết định yêu cầu công dân tuân thủ một số điều nhất định, họ phải tuân thủ hoặc thực hiện một hành động khác", Lula nói. "Không phải vì anh ta có nhiều tiền mà anh ta có thể không tôn trọng điều đó".
Brazil là thị trường quan trọng đối với X, nhưng phải chật vật với tình trạng mất khách hàng quảng cáo kể từ khi Musk mua lại Twitter năm 2022. Theo thống kê của công ty nghiên cứu thị trường Emarketer, 40 triệu người Brazil, chiếm một phần năm dân số, truy cập X ít nhất một lần mỗi tháng.
Trước X, các thẩm phán Brazil từng đóng cửa WhatsApp, ứng dụng nhắn tin được sử dụng rộng rãi nhất tại đây, năm 2015 và 2016 do từ chối tuân thủ yêu cầu của cảnh sát về dữ liệu người dùng. Năm 2022, de Moraes đe dọa đóng cửa Telegram với lý do ứng dụng nhiều lần phớt lờ yêu cầu của chính quyền về việc chặn hồ sơ và cung cấp thông tin người dùng. Ông ra lệnh Telegram chỉ định một đại diện địa phương và nền tảng sau đó đã tuân thủ để tiếp tục hoạt động.</p>\r\n', 'brazil1.jpg', '2017-10-16 03:10:22', '', 1),
(43, 2, 3, 'MU có mới nới cũ: Mua Kane 170 triệu bảng, bán Lukaku sang Real', '<p><strong>Romelu Lukaku</strong>&nbsp;đang thể hiện phong độ ấn tượng ở m&ugrave;a giải năm nay sau khi chuyển từ Everton đến MU. Ch&acirc;n s&uacute;t người Bỉ dẫn đầu danh s&aacute;ch ghi b&agrave;n&nbsp;<a href=\"http://www.24h.com.vn/premier-league-2017-2018-c48e2367.html\">Premier League</a>&nbsp;với 7 b&agrave;n thắng. Tuy nhi&ecirc;n, trong trận gặp Liverpool, Lukaku lại g&acirc;y thất vọng khi kh&ocirc;ng thể ghi được b&agrave;n thắng n&agrave;o. M&agrave;n tr&igrave;nh diễn n&agrave;y khiến huyền thoại &ldquo;Quỷ đỏ&rdquo; Gary Neville b&agrave;y tỏ sự thất vọng v&agrave; cho rằng Lukaku chỉ l&agrave; cầu thủ của những trận đấu nhỏ.</p>\r\n\r\n<p><img alt=\"MU có mới nới cũ: Mua Kane 170 triệu bảng, bán Lukaku sang Real - 1\" src=\"http://image.24h.com.vn/upload/4-2017/images/2017-10-16/MU-co-moi-noi-cu-Mua-Kane-170-trieu-bang-ban-Lukaku-sang-Real-mu2-1508118547-width660height439.jpg\" /></p>\r\n\r\n<p>Nếu như MU c&oacute; được Harry Kane,&nbsp;<a href=\"http://www.24h.com.vn/real-madrid-c48e1522.html\">Real</a>&nbsp;sẽ tậu Lukaku</p>\r\n\r\n<p>Lo lắng về đẳng cấp thực sự của Lukaku, HLV Mourinho đ&atilde; đề nghị ban l&atilde;nh đạo MU mang về th&ecirc;m một ch&acirc;n s&uacute;t nữa nhằm n&acirc;ng cấp h&agrave;ng c&ocirc;ng trong tương lai.</p>\r\n\r\n<p>Cụ thể, tiền đạo m&agrave; &ldquo;Người đặc biệt&rdquo; đang nhắm đến hiện nay l&agrave; Harry Kane, người cũng đ&atilde; c&oacute; được 6 b&agrave;n cho Tottenham ở Premier League m&ugrave;a n&agrave;y. Dự kiến, MU sẽ phải trả cho đội b&oacute;ng London khoảng 170 triệu bảng cho thương vụ tr&ecirc;n v&agrave; phải trả lương cao hơn 200.000 bảng/tuần cho tiền đạo người Anh.</p>\r\n\r\n<p>Thuyền trưởng MU c&oacute; vẻ rất quyết t&acirc;m c&oacute; được Chiếc gi&agrave;y v&agrave;ng m&ugrave;a trước trong đội h&igrave;nh v&agrave; sẽ l&agrave;m tất cả để điều n&agrave;y th&agrave;nh hiện thực. Mục đ&iacute;ch của &quot;Người đặc biệt&quot;&nbsp;đưa Kane về nhằm tạo ra song s&aacute;t với Lukaku&nbsp;tr&ecirc;n h&agrave;ng c&ocirc;ng, ngo&agrave;i ra cũng để thay thế tiền đạo Ibrahimovic sẽ kết th&uacute;c hợp đồng với đội chủ s&acirc;n Old Trafford v&agrave;o cuối m&ugrave;a.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, theo El Gol Digital, việc tậu Harry Kane về c&oacute; thể khiến MU mất&nbsp;<em>Romelu Lukaku</em>&nbsp;v&agrave;o tay đội b&oacute;ng Ho&agrave;ng gia&nbsp;<a href=\"http://www.24h.com.vn/real-madrid-c48e1522.html\">Real Madrid</a>. Được biết, &ldquo;Kền kền trắng&rdquo; sẽ v&agrave;o cuộc để k&yacute; hợp đồng với ch&acirc;n s&uacute;t người Bỉ. Hiện tại, Chủ tịch Perez đang cần những gương mặt mới tr&ecirc;n h&agrave;ng tiền đạo&nbsp;sau khi Cristiano Ronaldo, Benzema, Bale đang ng&agrave;y một sa s&uacute;t trong thời gian qua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Trong những&nbsp;năm trước, Real lu&ocirc;n l&agrave; &ldquo;c&aacute;o gi&agrave;&rdquo; tr&ecirc;n thị trường mua sắm. Thế nhưng, việc &ldquo;&aacute;n binh bất động&rdquo; tr&ecirc;n thị trường chuyển nhượng m&ugrave;a h&egrave; năm nay đang b&aacute;o hại HLV Zidane, đội b&oacute;ng Ho&agrave;ng gia c&oacute; sự khởi đầu kh&ocirc;ng su&ocirc;n sẻ tại La Liga khi vẫn đang bị Barcelona bỏ xa 5 điểm tr&ecirc;n BXH.</p>\r\n\r\n<p><strong>Bị huyền thoại chỉ tr&iacute;ch, Lukaku đ&aacute;p trả đanh th&eacute;p</strong></p>\r\n\r\n<p>Theo thống k&ecirc;, Lukaku phải mất trung b&igrave;nh 289 ph&uacute;t để c&oacute; được 1 b&agrave;n thắng v&agrave;o lưới c&aacute;c đội nằm trong nh&oacute;m &ldquo;Big 6&rdquo;. Nhưng&nbsp;đối với phần c&ograve;n lại của giải đấu, Lukaku chỉ mất 136 ph&uacute;t.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"MU có mới nới cũ: Mua Kane 170 triệu bảng, bán Lukaku sang Real - 2\" src=\"http://image.24h.com.vn/upload/4-2017/images/2017-10-16/MU-co-moi-noi-cu-Mua-Kane-170-trieu-bang-ban-Lukaku-sang-Real-lu2-1508118594-width660height621.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lukaku tịt ng&ograve;i trong trận Liverpool</p>\r\n\r\n<p>Mới đ&acirc;y, huyền thoại Gary Neville đ&atilde;&nbsp;chỉ tr&iacute;ch ch&acirc;n s&uacute;t trị gi&aacute; 75 triệu bảng&nbsp;l&agrave; cầu thủ của những trận đấu nhỏ sau khi MU&nbsp;h&ograve;a 0-0 trước Liverpool tr&ecirc;n s&acirc;n Anfield. Ngay lập tức, tiền đạo người Bỉ đ&atilde; lớn tiếng khẳng định bản th&acirc;n vẫn đang chơi tốt.</p>\r\n\r\n<p>&ldquo;C&oacute; nhiều tiền đạo trong giải đấu bỏ lỡ nhiều cơ hội ngon ăn hơn t&ocirc;i&rdquo;,&nbsp;Lukaku&nbsp;chia sẻ. &ldquo;</p>\r\n', 'IMG_59e470ad464f810a30cfc7e0a9fe78b8d78d3b0bff4d0.jpg', '2017-10-16 03:10:17', '', 1),
(44, 2, 3, 'Sự trỗi dậy của nhẫn thông minh', '<p>Thị trường nhẫn thông minh được nhiều hãng công nghệ, nhà mạng lớn quan tâm và được dự báo đạt hơn một tỷ USD năm 2032." /></p>\r\n\r\n<p>Truyền thông nhắc nhiều đến Samsung gần đây nhưng theo Forbes, công ty đang dẫn đầu trong lĩnh vực nhẫn thông minh là Oura Ring. Bắt đầu từ một dự án thành công trên nền tảng gọi vốn Kickstarter năm 2015, Oura Ring đã ra ba thế thệ nhẫn thông minh và đến nay bán tổng cộng hơn 2,5 triệu chiếc, nhiều nhất thị trường.
Theo TomsGuide, Oura Ring 4 có thể được phát hành vào cuối năm 2024 và được nhiều chuyên gia dự báo tiếp tục là một trong những sản phẩm bán chạy nhất thị trường. Một cuộc khảo sát trên trang cho thấy nhẫn thông minh đang là thiết bị đeo được nhiều người dùng mong chờ nhất hiện tại.
Không chỉ Oura, một số thương hiệu khác cũng nhận được nhiều sự quan tâm. Biên tập viên Tim Bajarin của Forbes đã dùng Ultrahuman Ring AIR từ tháng 2 và ấn tượng với các tính năng theo dõi sức khỏe, đặc biệt là giấc ngủ. Chiếc nhẫn có kích thước nhỏ nhưng có cảm biến PPG, theo dõi các chỉ số quan trọng như nhịp tim, mức oxy trong máu, giấc ngủ và chuyển động.
Sản phẩm của Ultrahuman chứa cảm biến 6 trục để theo dõi chuyển động chính xác. Nó cũng được chế tạo từ vật liệu titan "cấp độ máy bay chiến đấu" và được gia cố bằng vonfram để tránh áp lực gây gãy. Tim Bajarin cho rằng nó đủ tốt để thay thế Apple Watch cho việc theo dõi sức khỏe trong một số trường hợp.
Các nhà mạng tại Mỹ cũng tham gia cuộc chạy đua phân phối nhẫn. Verizon tuần qua chính thức bán Ultrahuman Ring AIR bên cạnh Apple Watch trong danh mục thiết bị đeo cùng với hai nhà mạng khác là AT&T và T-Mobile. Trước đó vào tháng 7, AT&T cũng ký độc quyền bán Galaxy Ring của Samsung. Nhiều chuyên gia cho rằng việc các nhà mạng tỏ ra "háo hức" cho thấy nhẫn thông minh sẽ sớm được thị trường đón nhận rộng rãi.
Theo Global Market Insight, nhẫn thông minh mang lại doanh thu 210 triệu USD vào năm 2023. Thị trường này cũng được dự báo tốc độ tăng trưởng sẽ đạt 24,1% vào năm nay và dự kiến đạt một tỷ USD năm 2032.
Apple hiện được coi là "ông vua" của thiết bị đeo theo dõi sức khỏe với Apple Watch trong khi Fibit đứng thứ hai. Một số nguồn tin nhận định cả hai cùng với Google đang tìm cách tham gia thị trường nhẫn thông minh nhằm tránh bị bỏ lại khi không thiếu các startup tiềm năng. Samsung là tên tuổi lớn nhất gần đây "chào sân" với Galaxy Ring nhưng chưa được bán rộng rãi.
Tuy nhiên, nhẫn thông minh cũng nhận những hoài nghi về sự đa dạng và khó phát triển mạnh. Đa số model hiện tại khó đóng vai trò như một món đồ trang sức như đồng hồ thông minh. Một số có nhiều màu sắc nhưng kiểu dáng gần như giống hệt nhau và các hãng rất khó tạo sự khác biệt.
"Đây là một danh mục thiết bị đeo thú vị và nhận được nhiều sự chú ý nghiêm túc từ người dùng", Forbes nhận định nhưng cho rằng tốc độ tăng trưởng sẽ phụ thuộc nhiều vào các công nghệ đột phá trên nhẫn thông minh thời gian tới.</p>\r\n', 'nhan1.jpg', '2017-10-16 03:10:56', NULL, 0),
(45, 2, 3, ' Elon Musk hé lộ kế hoạch Internet vệ tinh cho smartphone', '<p>Elon Musk nói dịch vụ Starlink Cellular sẽ triển khai đầu tiên tại Mỹ và SpaceX đặt mục tiêu hợp tác với ít nhất một nhà mạng ở mỗi nước.</p>\r\n\r\n<p>Dịch vụ Internet kết nối trực tiếp giữa smartphone với Starlink sẽ vận hành độc quyền với T-Mobile ở Mỹ trong năm đầu, sau đó mở rộng sang các nhà mạng khác. Chúng tôi sẽ khởi đầu bằng cách làm việc với một nhà mạng nhất định ở mỗi nước, nhưng hy vọng hợp tác được với toàn bộ nhà mạng", tỷ phú Elon Muúk nói trên X hôm 1/9.
SpaceX, công ty do Musk sáng lập, đầu năm nay xin được giấy phép thử nghiệm Starlink có thể kết nối trực tiếp với smartphone, gọi là Starlink Cellular. Musk cho biết dịch vụ cho phép kết nối điện thoại di động ở mọi nơi trên Trái Đất.
"Đây là giải pháp tuyệt vời cho những địa điểm không có kết nối di động, nhưng không mang ý nghĩa cạnh tranh với tháp di động hiện có trên mặt đất", Musk cho hay.
SpaceX hôm 23/8 thông báo với chính phủ Mỹ về việc hợp tác với T-Mobile để phủ sóng bằng vệ tinh và nhấn mạnh sự sẵn sàng cho dịch vụ thương mại. Công ty cũng cho biết đã phóng gần 130 vệ tinh trong 8 tháng qua và đang có kế hoạch phóng thêm.
Theo thống kê của SpaceX tính đến giữa tháng 10/2023, Starlink có hơn 400.000 người dùng dịch vụ trên toàn cầu. Đang có 3.000 vệ tinh Starlink bao quanh Trái Đất, cung cấp kết nối băng thông rộng cho người dùng, đặc biệt ở vùng nông thôn và địa hình hiểm trở.
Trước đó, Musk tuyên bố mục tiêu của Starlink đến năm 2027 là có 42.000 vệ tinh tham gia vào mạng lưới Internet không gian. Đến nay, SpaceX đã sản xuất hơn một triệu thiết bị đầu cuối dành cho người dùng. Internet vệ tinh của hãng hiện đạt tốc độ 50-150 Mb/giây, thậm chí lên mức 175 Mb/giây ở một số khu vực.
Điệp Anh (theo Teslarati)</p>\r\n', 'elonmusk.jpg', '2024-09-02 03:10:19', NULL, 0),
(46, 2, 3, 'Samsung muốn mua mảng hạ tầng mạng di động của Nokia', '<p> Samsung được cho là sẵn sàng chi 10 tỷ USD để mua lại mảng kinh doanh quan trọng của Nokia về hạ tầng mạng di động.</p>\r\n\r\n<p>Phải vật lộn để cạnh tranh với Ericsson hay Huawei trong vài năm qua, Nokia vẫn là đối thủ lớn trong lĩnh vực cơ sở hạ tầng mạng di động. Samsung cũng có bộ phận riêng trong cùng mảng là Radio Access Network (RAN) nhưng khá nhỏ với thị phần khoảng 6,1% năm ngoái.
Theo Bloomberg, Samsung đang rất muốn mua lại bộ phận kinh doanh của Nokia để củng cố vị thế của mình. Công ty đã đưa ra con số 10 tỷ USD cho thương vụ và chỉ chờ hãng Phần Lan đồng ý. Nếu thành công, Samsung sẽ trở thành nhà cung cấp RAN lớn thứ hai thế giới với 25,6% thị phần,
Nokia được cho là đang cân nhắc một số kịch bản khác nhau, từ việc bán một phần hoặc toàn bộ bộ phận, đến việc tách riêng hoặc sáp nhập với đối thủ. Hãng bắt buộc phải tính các phương án khi đang gặp khó khăn trong việc cạnh tranh với Huawei. Lợi nhuận hoạt động trong quý II/2024 đã giảm 32% do nhu cầu về thiết bị viễn thông 5G yếu.
Samsung hiện đã sản xuất trạm gốc 4G và 5G, chipset, thiết bị, radio và các thành phần lõi mạng di động nên công ty không phải "tay mới" trong lĩnh vực. Hãng Hàn Quốc đang cung cấp cho một số nhà mạng trên thế giới, bao gồm Telusp ở Canada, O2 ở Đức, Reliance Jio ở Ấn Độ, KDDI và NTT DoCoMo ở Nhật Bản, Dish và Verizon ở Mỹ và Vodafone ở Anh.</p>\r\n', 'ss1.jpg', '2024-09-02 03:10:42', NULL, 0),
(47, 2, 3, 'ChatGPT đạt 200 triệu người dùng hàng tuần', '<p> OpenAI cho biết ChatGPT hiện thu hút hơn 200 triệu người dùng hoạt động hàng tuần, tăng từ 100 triệu năm 2023.ChatGPT tạo nên cơn sốt AI tạo sinh từ cuối 2022 và sức hút của chatbot này vẫn chưa có dấu hiệu đi xuống, khi số lượng người dùng hàng tuần tăng gấp đôi kể từ tháng 11/2023.
OpenAI cũng cho biết 92% công ty trong bảng xếp hạng Fortune 500 đang dùng sản phẩm của họ. Bên cạnh đó, hoạt động sử dụng API tự động của OpenAI cũng tăng gấp đôi kể từ khi mô hình GPT-4o mini được phát hành vào tháng 7.
Sam Altman, CEO OpenAI, nói: "Mọi người đang sử dụng công cụ của chúng tôi như một phần của cuộc sống hàng ngày, tạo ra sự khác biệt thực sự trong các lĩnh vực như chăm sóc sức khỏe và giáo dục, dù chỉ để hỗ trợ công việc, giải quyết vấn đề khó khăn, hay khai mở sự sáng tạo".
Cuộc chiến lôi kéo người dùng AI đang diễn ra gay gắt giữa Microsoft, Google, OpenAI và Meta. Các công ty đều muốn người dùng lựa chọn chatbot của họ. Meta cho biết quy mô sử dụng mô hình mã nguồn mở của họ đã tăng gấp đôi từ tháng 5 đến tháng 7 sau khi phát hành Llama 3.1.
Trong khi đó, phân tích của The Information dựa trên tài liệu tài chính nội bộ cho thấy OpenAI đang trên đà chi khoảng 7 tỷ USD cho riêng việc đào tạo mô hình AI và 1,5 tỷ USD cho nhân sự. Chi phí hoạt động cao vọt có thể khiến họ lỗ 5 tỷ USD năm nay.
Còn theo Reuters, công ty đứng sau ChatGPT cũng đang xây dựng một AI có khả năng suy luận nâng cao để tiến đến mô hình AI tổng quát (AGI). Dự án có tên nội bộ "Strawberry", là phần mở rộng của dự án bí ẩn Q*, hứa hẹn có thể thể hiện "phản ứng và suy luận giống người".</p>\r\n', 'chatgpt.jpg', '2017-10-16 03:10:00', NULL, 0),
(48, 2, 3, 'Deepfake ngày càng khó phân biệt ', '<p> Ngày 11/8, cựu tổng thống Mỹ Donald Trump đăng bài trên mạng xã hội Truth Social, tố Phó tổng thống Kamala Harris, dùng AI để chỉnh sửa ảnh. Chưa đầy 10 ngày sau, chính ông vướng vào rắc rối khi đăng ảnh deepfake của ngôi sao nhạc pop Taylor Swift. Trong chiến dịch tranh cử thổng thống Mỹ, một mối lo nhiều người quan tâm là deepfake ngày càng khó phân biệt.
Khác với việc chỉnh sửa ảnh bằng công cụ thông thường, deepfake được tạo ra bằng thuật toán chuyên biệt với sự hỗ trợ của AI. Cơn sốt AI tạo sinh (GenAI) càng thúc đẩy deepfake xuất hiện dưới nhiều định dạng từ ảnh, video, âm thanh, đến các cuộc gọi trực tiếp. Hai kiểu deepfake phổ biến nhất là ghép khuôn mặt và tạo nội dung giả mạo dựa trên nguồn ảnh, video, giọng nói thật.
Mối nguy hiểm lớn nhất deepfake gây ra là khả năng phát tán thông tin sai lệch, do người dùng khó phân biệt, hoặc do chúng xuất phát từ những nguồn đáng tin cậy. Trong trường hợp cựu tổng thống Trump tố bà Harris dùng ảnh deepfake, các chuyên gia kỹ thuật số đã phải dùng các mô hình thẩm định ảnh chuyên dụng mới có thể kết luận ảnh có chứa "vết tích" của AI.
Theo báo cáo về mối đe dọa của deepfake, do Bộ An ninh Nội địa Mỹ công bố, nhiều công cụ AI hiện cho phép tạo nội dung deepfake chỉ trong vài giây. Người dùng thậm chí không cần hệ thống tính toán cỡ lớn để chạy mô hình, họ chỉ cần một chiếc smartphone kết nối mạng là có thể tạo ảnh giả của bất kỳ ai với vô số ý tưởng.
Theo Cnet, nhờ sức mạnh của AI, tội phạm mạng và cả người dùng phổ thông có thể tạo âm thanh, video và ảnh giả có sức thuyết phục đáng kinh ngạc. Gần như không thể thống kê đang có bao nhiêu deepfake đang trôi nổi trên Internet vì có những nội dung chân thực đến mức khó xác định nếu không có công cụ phân tích chuyên sâu. Người dùng trên Facebook cũng có thể dễ dàng tìm thấy hàng trăm nghìn video quảng cáo dùng deepfake. Dù Facebook đã gỡ bỏ nhiều video theo tiêu chuẩn cộng đồng, chúng vẫn được đẩy lên và lẩn tránh công cụ kiểm duyệt. YouTube cũng tràn ngập video giả mạo, gắn nhãn "phát trực tiếp" để tạo lòng tin.
Công ty phân tích Sensity đã tập hợp 2.000 video deepfake lừa đảo và kết luận phần lớn nội dung này mạo danh các tỷ phú như Jeff Bezos, Warren Buffett, Elon Musk... và các nghệ sĩ nổi tiếng. Trong đó, Elon Musk là người xuất hiện nhiều nhất trong video deepfake để lừa mọi người đầu tư tiền số.
Theo Techtarget, lỗ hổng khiến deepfake ngày càng phát triển là luật pháp đang đi sau công nghệ. Dù gây ra nhiều đe dọa nghiêm trọng đến xã hội, deepfake chỉ bị xem là bất hợp pháp khi có nội dung về khiêu dâm trẻ em, phỉ báng hoặc kích động thù địch.
Tại Mỹ, theo dữ liệu của Bloomberg Law, đã có 5 bang cấm deepfake. Trong năm 2024 có 7 bang xem xét ra luật liên quan và ít nhất 10 bang coi việc sử dụng khuôn mặt người khác để làm video, ảnh chưa được phép là vi phạm. Một trong những lý do dẫn đến việc thiếu luật chống deepfake là nhiều người không hình dung hết về mối nguy của công nghệ này.
Trước mối những đe dọa ngày một nghiêm trọng của deepfake, các nền tảng như Facebook, YouTube, TikTok cố gắng phát hiện và dán nhãn cảnh báo nội dung có thể đã được AI can thiệp. Tuy nhiên, công nghệ làm giả đang tiến bộ quá nhanh, không phải lúc nào bộ lọc cũng nhận diện hiệu quả.
Tháng trước, Hội Thiên văn học Hoàng gia Anh dùng phương pháp trong nghiên cứu thiên hà để đo phản chiếu trong mắt và phát hiện deepfake. "Hình ảnh phản chiếu trong nhãn cầu nhất quán đối với người thật, nhưng ảnh giả thường không đúng quy tắc vật lý thông thường", Kevin Pimbblet, giáo sư vật lý thiên văn và Giám đốc Trung tâm dữ liệu, trí tuệ nhân tạo và mô hình hóa tại đại học Hull, giải thích. Ông cho biết đây cách này chưa hoàn hảo, vẫn có sai số, nhưng tin hướng đi này rất tiềm năng trong việc hỗ trợ công nghệ phát hiện deepfake tự động.
Trong khi chưa có một giải pháp hoàn thiện giúp người dùng tránh được nội dung deepfake, các chuyên gia cho rằng việc nâng cao hiểu biết là "thành trì" tốt nhất. Mỗi người có thể tự mình cập nhật xu hướng mới, cách phân biệt nội dung giả mạo và tỉnh táo tránh xa những lời mời gọi đầu tư, kiếm lời nhanh.</p>\r\n', 'deepfake.jpg', '2024-09-02 03:10:05', NULL, 0),
(49, 2, 3, ' Facebook nói logo đen xanh là lỗi kỹ thuật', '<p>Từ đầu tuần, logo Facebook và Messenger trên nhiều tài khoản tự chuyển từ nền xanh và trắng truyền thống sang đen. "Tôi thử cài lại nhiều lần vì tưởng lỗi nhưng không phải", thành viên Kennytesuya viết trên Reddit. Chủ đề nhận hàng trăm lượt bình luận, trong đó một số nói việc đổi nền đen là "thảm họa" vì "giống như đang tưởng nhớ một ai đó đã khuất".
Theo Bussiness Insider, Facebook xác nhận đây là "vấn đề kỹ thuật" thay vì chiến dịch đổi thương hiệu mới. "Sự cố đã được giải quyết. Bản sửa lỗi được triển khai cuối tuần này", Giám đốc truyền thông Meta Dave Arnold nói.
Tuy nhiên, đại diện Meta từ chối giải thích tại sao lỗi đơn giản liên quan đến biểu tượng của ứng dụng lại mất nhiều ngày mới có thể khắc phục.
Sự cố của Facebook khiến nhiều người liên tưởng đến tính năng mới trên hệ điều hành iOS 18. Khi chuyển hệ thống sang giao diện tối hoặc sáng, các biểu tượng ứng dụng cũng thay đổi phong cách theo. Tuy nhiên, logo đen xanh của Facebook xuất hiện cả trên iOS 17 cũng như không thay đổi khi người dùng chuyển qua lại chế độ trên iOS 18.
Trong hai năm gần đây, Facebook nhiều lần gặp lỗi nghiêm trọng trong khi quá trình cập nhật bản vá lâu hơn trước. Hồi tháng 4, nhiều bài viết trên trang cá nhân người dùng biến mất vì lỗi hiển thị. Vào tháng 3, hầu hết nền tảng của Meta gặp sự cố nghiêm trọng, không thể truy cập trong gần một ngày. Công ty sau đó đều lên tiếng thừa nhận nhưng không nói rõ nguyên nhân.</p>\r\n', 'fbxanh.jpg', '2024-09-02 03:10:08', NULL, 0),
(50, 2, 3, ' Đánh đổi an toàn khi lắp camera giám sát giá rẻ', '<p> Khi chuyển sang ngôi nhà mới xây, việc đầu tiên Huy Toàn (Nam Định) làm là lắp hệ thống giám sát. Anh được đại lý gần nhà tư vấn chọn ba camera, với giá 1,5 triệu cho camera ngoài trời và 1 triệu đồng trong nhà. Nhưng tham khảo trên mạng thấy thiết bị có chức năng tương tự chỉ vài trăm nghìn khiến anh thay đổi quyết định.
"Với cùng số tiền, tôi có thể mua cả chục chiếc, thậm chí nét và nhiều tính năng hơn", anh nói và đặt sáu camera, lắp cả ngoài sân và trong các phòng. "Thiết bị có thể không bền, nhưng nếu hỏng cũng dễ thay mới mà không tiếc". Dù được tư vấn không đặt trong phòng ngủ, anh vẫn lắp vì cần trông con nhỏ và không muốn có bất cứ "góc chết" nào trong nhà mà không theo dõi được.
"Mình tự lắp, tự đặt mật khẩu, không lo ai xem trộm cả", anh nói.
Với suy nghĩ tương tự, nhiều người chọn camera giá rẻ, bán trôi nổi trên mạng, thay vì sản phẩm của thương hiệu uy tín. Trên các sàn thương mại điện tử, nhiều camera có giá 200-300 nghìn đồng được quảng cáo hỗ trợ đầy đủ tính năng như xoay 360 độ, phát hiện chuyển động, xem ban đêm... và thu hút hàng chục nghìn lượt mua.
"Camera giám sát chỉ cần cung cấp hình ảnh là được. Về thông số, những camera này còn xịn hơn sản phẩm giá hàng triệu đồng", Quốc Dũng (TP HCM) cho hay. "Đôi lúc cũng được cảnh báo vấn đề an toàn, nhưng đã lắp rồi không muốn tháo, trừ khi nó hỏng".
Camera giá rẻ hút người dùng Việt
Tại nhiều cửa hàng và trên trang thương mại điện tử, camera giám sát có hàng trăm chủng loại, giá thường trên 500 nghìn đồng mỗi chiếc với các thương hiệu lớn như HikVision, Ezviz, iMou. Trong khi đó, camera không thương hiệu hoặc ít tên tuổi chỉ khoảng 200 nghìn đồng, nhưng được quảng cáo hỗ trợ độ phân giải 2K, kết nối Wi-Fi, có màn hình gọi điện...
Ông Nguyễn Trung Kiên, CEO Pavana - công ty chuyên sản xuất camera có nhà máy tại Vĩnh Phúc, cho biết khi tham dự các hội chợ điện tử quốc tế, có nhiều đơn vị Trung Quốc chào bán camera với giá hơn 6 USD (150 nghìn đồng) và đối tác có thể gắn logo mong muốn.
Dẫn một báo cáo toàn cầu, ông Kiên cho biết camera giám sát trên thế giới nói chung chủ yếu dành cho doanh nghiệp và chính phủ với thị phần trên 70%, còn camera phục vụ gia đình khoảng 15%. Trong khi đó, tại Việt Nam, khảo sát của Pavana cho thấy một nửa thị phần là thiết bị được sử dụng cho mục đích giám sát tại gia đình. Đa số là thiết bị giá rẻ từ 200.000 đến dưới 1.000.000 đồng, bán trôi nổi trực tuyến. 
"Đây không chỉ là thách thức với các nhà sản xuất camera trong nước, mà còn ẩn chứa nguy cơ lớn với an toàn thông tin của người dùng, cơ quan, tổ chức", ông Kiên nói.
Thực tế thời gian qua tại Việt Nam, camera giám sát qua Internet (IP Camera) đã gây ra nhiều vấn đề lớn về an toàn thông tin, như hình ảnh riêng tư bị chia sẻ công khai ở 800 nghìn camera, thiết bị dính mã độc trở thành một phần của mạng botnet...
Tự đặt mật khẩu vẫn có thể bị xâm nhập
Tại Việt Nam, nhiều người dùng giao phó việc thiết lập tài khoản cho kỹ thuật viên, không đổi mật khẩu mặc định, dẫn đến việc bị truy cập trái phép từ người lạ. Tuy nhiên, ngay cả khi tự cài mật khẩu, như trường hợp của Huy Toàn, người dùng vẫn có nguy cơ bị tấn công.      
Ông Vũ Ngọc Sơn, chuyên gia Hiệp hội An ninh mạng quốc gia, cho biết hacker không tấn công trực tiếp mà thông qua máy chủ quản lý camera. Sau khi tìm ra và khai thác các lỗ hổng, chúng có thể vượt qua lớp xác thực và chiếm quyền truy cập camera.</p>\r\n', 'camera.jpg', '2024-09-02 03:10:20', NULL, 0),
(51, 2, 3, ' Đà Nẵng cần 5.000 nhân lực cho ngành vi mạch bán dẫn', '<p>Ông Hồ Kỳ Minh, Phó chủ tịch thường trực UBND TP Đà Nẵng, nêu thông tin trên tại Ngày vi mạch bán dẫn Đà Nẵng 2024, diễn ra ngày 30/8. Sự kiện lần đầu được thành phố tổ chức và kỳ vọng là cột mốc quan trọng trong hành trình phát triển của Đà Nẵng.
Đến 2030, Đà Nẵng đặt mục tiêu trở thành một trong ba trung tâm vi mạch bán dẫn lớn của Việt Nam, hình thành mạng lưới đào tạo nguồn nhân lực chất lượng cao gắn với phát triển đồng bộ hệ sinh thái vi mạch bán dẫn.
Thành phố cho biết sẽ tận dụng nguồn lực để đào tạo, thu hút tối thiểu 5.000 nhân lực chất lượng cao cho ngành; thu hút đầu tư ít nhất 20 doanh nghiệp vi mạch bán dẫn, dịch vụ thiết kế, trong đó có 1-2 doanh nghiệp đóng gói, kiểm thử.
Theo Giám đốc Sở Thông tin và Truyền thông Đà Nẵng Nguyễn Quang Thanh, thành phố có khoảng 10 doanh nghiệp thiết kế vi mạch như Synopsys, Uniquify, Savarti, Renesas, Synapse, FPT Semiconductor, Viettel CNC... với khoảng 550 kỹ sư, chiếm 10% nguồn nhân lực vi mạch bán dẫn của Việt Nam.
Thời gian qua, Đà Nẵng đã thành lập liên minh các trường đại học đào tạo vi mạch bán dẫn kết hợp trí tuệ nhân tạo; tổ chức lớp đào tạo giảng viên nguồn; lớp đào tạo chuyển đổi sinh viên chuyên ngành gần sang thiết kế chip; tuyển sinh mới kỹ sư thiết kế vi mạch năm 2024.    
Dù số kỹ sư của Đà Nẵng còn khiêm tốn và nhân lực chất lượng cao là một thách thức của Việt Nam, PGS.TS Huỳnh Công Pháp, Hiệu trưởng Trường Đại học Công nghệ thông tin và truyền thông Việt - Hàn, đánh giá mục tiêu của Đà Nẵng hay 50.000 kỹ sư tại Việt Nam vào năm 2030 là khả thi.
Ông Pháp dẫn chứng, năm ngoái cả nước có khoảng 300 chỉ tiêu về vi mạch bán dẫn, nhưng năm nay đã có 25 cơ sở đào tạo đại học công bố tuyển sinh, tổng chỉ tiêu hơn 3.000, tăng gấp 10 lần. Chất lượng đầu vào ngành vi mạch và các ngành gần khá tốt khi điểm tuyển sinh rất cao. Ở miền Trung có 3 trường tuyển sinh vi mạch bán dẫn, trong đó điểm chuẩn 24-27 điểm, nhiều ngành gần có điểm tương đương.
Trong tháng 6, Quốc hội ban hành Nghị quyết 136 về tổ chức chính quyền đô thị và thí điểm cơ chế, chính sách đặc thù phát triển thành phố Đà Nẵng với các ưu đãi cho các nhà đầu tư, đối tác chiến lược trong lĩnh vực bán dẫn.
Tuy nhiên, điều lo ngại là nhiều sinh viên giỏi, đạt giải cao ở các cuộc thi lớn, được học bổng thường tìm đến những nước phát triển để lĩnh hội tri thức và ít trở về nước làm việc.
"Vì vậy Đà Nẵng cần có chính sách giữ chân người tài và tăng cường hợp tác nhà trường với doanh nghiệp. Doanh nghiệp cần chủ động tham gia đào tạo, đừng chờ đến khi sinh viên ra trường mới tìm kiếm tuyển dụng", ông Pháp nói và kiến nghị thành phố có chính sách hỗ trợ các trường đưa giảng viên nước ngoài về đào tạo cho sinh viên.
Bí thư Thành ủy Đà Nẵng Nguyễn Văn Quảng cho biết, hơn 10 tháng qua, thành phố đã có nhiều cuộc làm việc, hỗ trợ kêu gọi đầu tư về cơ sở hạ tầng và đào tạo nguồn nhân lực về bán dẫn, trí tuệ nhân tạo để đáp ứng sự phát triển của thành phố và nhu cầu nhân lực của chính các doanh nghiệp.
Theo Bộ Kế hoạch và Đầu tư, chuỗi cung ứng vi mạch bán dẫn trên thế giới có thể được chia thành bốn nhóm: thiết kế, sản xuất, đóng gói - kiểm tra và chế tạo thiết bị. Việt Nam có thể tham gia khâu thiết kế, với tổng doanh thu toàn cầu năm 2022 đạt khoảng 215 tỷ USD.</p>\r\n', 'danang.jpg', '2024-09-02 03:10:22', NULL, 0),
(52, 2, 3, ' Triệt phá đường dây phim lậu lớn nhất tại Việt Nam', '<p>Ngày 29/8, Liên minh Sáng tạo và Giải trí (ACE), với các thành viên quản lý bao gồm Netflix, Apple TV+, Amazon và Walt Disney Studios, cho biết đã phối hợp với Công an Hà Nội, đóng cửa Fmovies và các trang web liên kết.   
ACE cho biết hệ thống này gồm nhiều website khác nhau như Bflixz, Flixtorz, Movies7 và Myflixer, được cho là đã đã tạo nên "hoạt động phát trực tuyến vi phạm bản quyền lớn nhất thế giới", với hơn 6,7 tỷ lượt truy cập từ tháng 1/2023 đến tháng 6/2024.
"Chúng tôi đang chống lại hoạt động tội phạm, bảo vệ sự an toàn của khán giả, giảm thiểu rủi ro cho hàng chục triệu người tiêu dùng và bảo vệ quyền lợi, sinh kế của những người sáng tạo nội dung", Charles Rivkin, Chủ tịch của ACE, nói với Variety, nhấn mạnh việc đánh sập Fmovies là "truy tìm tận gốc nạn vi phạm bản quyền".
Fmovies được ACE mô tả là nền tảng chia sẻ nội dung về phim, chương trình truyền hình lậu lớn nhất. Hệ thống này được xây dựng từ 2016. Theo thống kê của SimilarWeb, vào thời kỳ đỉnh cao năm 2023, đây là trang web phổ biến thứ 11 trên toàn cầu trong danh mục TV, phim và phát trực tuyến. Mỹ là thị trường có lượng truy cập lớn nhất vào dịch vụ này.
Trên website của mình, Fmovies nhấn mạnh tính miễn phí, đồng thời tự tin họ "là mục tiêu rất khó khăn đối với các cơ quan thực thi pháp luật" vì không ai biết nguồn gốc cũng như nơi lưu trữ của dịch vụ.
Hệ thống có hơn 60 tên miền liên quan, theo thống kê của Cơ quan Đại diện Thương mại Hoa Kỳ (USTR). Rivkin cho biết nhiều người đã truy cập và sử dụng dịch vụ từ Fmovies mà không biết "vì nó được làm đẹp như Netflix".
Sáng 30/8, trang web có lượng truy cập lớn nhất trong hệ thống này là fmovies24 không còn hoạt động. Tuy nhiên, một số trang nhỏ hơn chưa bị đánh sập hoàn toàn.
Trang Hollywood Reporter cho biết cảnh sát đã bắt giữ hai người liên quan đến Fmovies, đồng thời chiến dịch cũng đóng cửa nhà cung cấp dịch vụ lưu trữ video Vidsrc.to và các trang web liên kết, cùng được điều hành bởi nhóm này.
Variety dẫn lời bà Ngô Phương Lan, Chủ tịch Hiệp hội Xúc tiến phát triển điện ảnh Việt Nam VFDA, khẳng định bảo vệ quyền sở hữu trí tuệ là yếu tố quan trọng cho sự thành công của ngành, đồng thời hoan nghênh nỗ lực của ACE, hợp tác với các cơ quan chức năng Việt Nam, trong việc đấu tranh chống lại các hoạt động vi phạm của nhóm điều hành Fmovies.</p>\r\n', 'phimlau.jpg', '2024-09-02 03:10:24', NULL, 0);
INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `detail`, `thumbnail`, `post_time`, `post_url`, `views`) VALUES
(53, 2, 3, 'Telegram thành ổ deepfake khiêu dâm, nhiều phụ nữ kêu cứu', '<p>Những ngày qua, hàng loạt phụ nữ Hàn Quốc đã lên mạng xã hội X nói về việc bị bạo hành thông qua việc dùng công nghệ deepfake và AI để gán ghép khuôn mặt. Những video nhạy cảm này sau đó được gửi lên các hội nhóm Telegram với hàng nghìn người, chủ yếu là đàn ông. Nền tảng này không có cơ chế kiểm duyệt khiến chúng càng lan xa mà không ai ngăn cản được.
Từ lời kêu cứu của một nữ sinh viên
"Chúng tôi không phải gái điếm, chúng tôi không tồn tại để thỏa mãn nhu cầu tình dục của ai đó. Chúng tôi là những con người có phẩm giá, mỗi người đều có sự nghiệp và ước mơ riêng" là một phần của bức thư mà nữ sinh viên có biệt danh Ruma dự định gửi lên tòa án Hàn Quốc và được đăng trên Hankyoreh tuần này.
Cô là một trong số nhiều sinh viên nữ vừa tốt nghiệp Đại học Quốc gia Seoul có khuôn mặt xuất hiện trong các video deepfake khiêu dâm tạo bằng AI, sau đó bị những nam sinh là bạn học cùng trường phát tán thông qua Telegram.
Vào tháng 7/2021, Ruma nhận được ảnh nhạy cảm có khuôn mặt của cô trên Telegram. Nhưng phải ba năm sau, vào tháng 5, cô mới biết kẻ đứng sau là hai bạn học nam, cũng vừa tốt nghiệp. Hai người đã bị bắt và sắp bị đưa ra xét xử.
Khi phát hiện, Ruma đã báo cáo sự việc tới bốn đồn cảnh sát khác nhau. Nhưng trong gần hai năm sau đó, cảnh sát không thể bắt được thủ phạm. Cô không bỏ cuộc, cố gắng cùng các nạn nhân khác thu thập chứng cứ.
"Sẽ là cơn ác mộng khi phải đối mặt với mọi người mỗi khi thức dậy buổi sáng. Lần đầu tiên kể từ khi sinh ra, tôi nghĩ mình không muốn sống trên thế giới này nữa. Nhưng có một lý do khiến tôi kiên trì: Không ai phải chịu đau khổ như tôi. Không ai phải bị coi là vật thể chỉ vì là phụ nữ. Và không ai phải bị đối xử như một công cụ để xoa dịu mặc cảm tự ti của kẻ bệnh hoạn", Ruma viết trong thư. "Tôi hy vọng không ai khác phải đối mặt nỗi đau này".
Thực tế, đã có một số báo cáo về việc các deepfake khiêu dâm lan truyền trong một số cộng đồng trường đại học thông qua ứng dụng nhắn tin, phổ biến nhất là Telegram. Hình thức điển hình là: kẻ xấu lấy hình ảnh của bạn bè hoặc người quen, sử dụng công cụ AI để tạo deepfake, đăng lên Telegram với mục đích mua vui, thậm chí gửi cho nạn nhân như một hình thức bắt nạt.
Theo Hankyoreh, trong một nhóm Telegram với hơn 1.300 thành viên được phân loại theo 70 trường đại học Hàn Quốc, các thành viên sẽ đăng ảnh những cô gái họ biết kèm thông tin cá nhân, chuyên ngành học. Những người khác nếu quen người trong ảnh sẽ cùng phản hồi. Cuối cùng, chúng tập hợp cùng nhau qua phòng chat riêng và tạo nội dung khiêu dâm.
Ngay cả khi phát hiện, nạn nhân không thể làm gì, bởi họ không biết ai đã tạo deepfake, cũng như mặc cảm và xấu hổ không thể chia sẻ với ai. Trước bức thư của Ruma, truyền thông Hàn Quốc hiếm khi phản ánh nạn khiêu dâm deepfake. Một số nạn nhân phải tự giải quyết vấn đề thông qua mạng xã hội. Dù vậy, khi thư của Ruma được đăng, họ mới được chú ý hơn. Đặc biệt, các hashtag như #2ndMeToo_SK giúp nhiều người biết tới. Truyền thông lúc này cũng vào cuộc.
Hành động của chính phủ
Hàn Quốc từng đấu tranh để xóa bỏ cái gọi là molka - video quay lén có nội dung khiêu dâm, còn hiện phải vật lộn với làn sóng deepfake. Dù vậy, trong thời gian dài, chính quyền nước này không đưa ra hành động quyết liệt, cho đến khi thư của Ruma xuất hiện.
"Video deepfake nhắm vào các cá nhân không xác định đã lan truyền nhanh chóng trên mạng xã hội", Tổng thống Hàn Quốc Yoon Suk Yeol phát biểu trong một cuộc họp nội các ngày 28/8. "Nhiều nạn nhân là trẻ vị thành niên. Hầu hết thủ phạm cũng được xác định là thanh thiếu niên".
Ông Yeol kêu gọi các nhà chức trách điều tra và giải quyết triệt để tội phạm tình dục kỹ thuật số. "Đây là hành vi khai thác công nghệ trong khi vẫn dựa vào sự bảo vệ ẩn danh. Nó rõ ràng là hành vi phạm tội", ông nhấn mạnh.
Cùng ngày, Yonhap dẫn nguồn tin chính phủ cho biết cảnh sát sẽ tích cực truy lùng những người tạo và phát tán deepfake khiêu dâm. Chiến dịch sẽ kéo dài bảy tháng, bắt đầu vào 28/8, tập trung vào những kẻ bóc lột trẻ em và thanh thiếu niên.
Theo Cơ quan Cảnh sát Hàn Quốc, 297 vụ phạm tội deepfake tình dục đã được báo cáo trong bảy tháng đầu năm, tăng từ 180 vụ vào năm ngoái và gần gấp đôi năm 2021 - năm đầu tiên dữ liệu được thu thập. Trong số 178 người bị buộc tội, 113 là thanh thiếu niên.
Tuy nhiên, vấn đề nghiêm trọng hơn so với số liệu chính thức. Theo Guardian, trong một phòng chat Telegram có 220.000 thành viên, rất nhiều hình ảnh deepfake được chia sẻ, chủ yếu là phụ nữ và trẻ em gái. Truyền thông Hàn Quốc cho biết nạn nhân gồm sinh viên đại học, giáo viên và quân nhân.
Liên đoàn Giáo viên và Nhân viên Giáo dục Hàn Quốc nói đã ghi nhận về video deepfake khiêu dâm liên quan đến học sinh. Đơn vị này cũng gửi yêu cầu Bộ Giáo dục Hàn Quốc điều tra.
Theo Reuters, vấn nạn deepfake lan truyền trên Telegram tiếp tục khiến nền tảng bị hoen ố về mặt hình ảnh. Trước đó, vào năm 2020, cảnh sát Hàn Quốc phát hiện một đường dây tống tiền tình dục trực tuyến hoạt động chủ yếu trong các phòng chat của ứng dụng này. Khi đó, thủ lĩnh đường dây Cho Ju-bin bị kết án 40 năm tù vì tống tiền ít nhất 74 phụ nữ, trong đó có 16 thiếu niên.
Theo Đạo luật Bảo vệ nạn nhân và Phòng ngừa bạo lực tình dục của Hàn Quốc, hành vi tạo video deepfake có nội dung khiêu dâm với mục đích phát tán có thể bị phạt tù 5 năm hoặc phạt tiền 50 triệu won (37.500 USD).
Deepfake là sự kết hợp giữa "deep learning" (học sâu) và "fake" (giả). Công nghệ này sử dụng AI phân tích cử chỉ, nét mặt và giọng nói của một người, từ đó tái tạo và chỉnh sửa để cho ra đời ảnh hoặc video trông như thật về người đó, thậm chí tạo được cả giọng nói.</p>\r\n', 'tele.jpg', '2024-09-02 03:10:27', '', 1),
(54, 2, 3, ' Luật sư CEO Telegram: Vô lý khi người đứng đầu nền tảng phải chịu trách nhiệm', '<p>Vụ bắt giữ Durov ngày 24/8 đã làm dấy lên cuộc tranh luận về việc các công ty công nghệ phải chịu trách nhiệm ở mức độ nào đối với nội dung do người dùng tạo ra. Theo Reuters, luật sư David-Olivier Kaminski, đại diện cho Pavel Durov tại Pháp, nói với báo chí địa phương: "Thật vô lý khi nghĩ người đứng đầu mạng xã hội có thể tham gia vào hành vi phạm tội không liên quan đến ông ta, dù trực tiếp hay gián tiếp. Telegram tuân thủ đầy đủ quy tắc của châu Âu về kỹ thuật số".
Trước đó, tài khoản X của Telegram ngày 26/8 cũng phát đi thông tin khẳng định nền tảng tuân thủ Đạo luật dịch vụ kỹ thuật số của châu Âu. "CEO Pavel Durov không có gì phải che giấu và thường xuyên đi công tác ở châu Âu. Thật vô lý khi tuyên bố một nền tảng hoặc chủ sở hữu của nó phải chịu trách nhiệm về việc nó bị lạm dụng", Telegram viết. "Gần một tỷ người dùng toàn cầu sử dụng Telegram như một phương tiện giao tiếp và là nguồn thông tin quan trọng. Chúng tôi đang chờ đợi một giải pháp nhanh chóng cho tình huống này".
Ngày 24/8, Pavel Durov bị bắt tại Pháp với lý do nền tảng nhắn tin này từ chối hợp tác với chính quyền nhằm ngăn chặn sự lan truyền của nội dung khiêu dâm trẻ em, ma túy và rửa tiền. Bốn ngày sau, ông được tại ngoại nhưng phải bảo lãnh 5,5 triệu USD, bị cấm xuất cảnh và đối mặt nhiều tội danh liên quan đến hoạt động bất hợp pháp trên ứng dụng.
Vụ bắt giữ gây phản ứng trên mạng xã hội khi nhiều người coi hành động này là sự can thiệp quá mức của chính phủ. Cựu điệp viên Edward Snowden gọi đây là "cuộc tấn công vào quyền cơ bản của con người về ngôn luận".
Giới chuyên gia lo ngại sự việc sẽ thúc đẩy các chính phủ truy tố chủ sở hữu nền tảng và CEO công nghệ nếu không đồng ý giao nộp dữ liệu người dùng. Họ thậm chí nghĩ đến "hiệu ứng lạnh", trong đó nền tảng kiểm duyệt nội dung quá mức vì sợ bị buộc tội hình sự.</p>\r\n', 'chutich.jpg', '2017-10-16 03:10:29', NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_id` int(1) DEFAULT '1',
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expired_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `fullname`, `avatar`, `password`, `about`, `group_id`, `remember_token`, `expired_time`) VALUES
(1, 'quest@quest.com', 'quest', 'quest', 'quest', 'quest', '', 1, '', '0000-00-00 00:00:00'),
(3, 'wlongtran2@gmail.com', 'admin', 'Thuận Anh', 'chutich.jpg', 'c4ca4238a0b923820dcc509a6f75849b', '', 1, '_token_92059e46daabc0c3e705d495bbb4ccaf4eb81b0b6f98b6aa', '2024-09-02 15:10:26');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_COMMETNS_POSTS` (`post_id`),
  ADD KEY `FK_COMMETNS_USERS` (`user_id`);

--
-- Chỉ mục cho bảng `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_POSTS_CATEGORIES` (`category_id`),
  ADD KEY `FK_POSTS_USERS` (`user_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `configs`
--
ALTER TABLE `configs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `FK_COMMETNS_POSTS` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_COMMETNS_USERS` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `FK_POSTS_CATEGORIES` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_POSTS_USERS` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
