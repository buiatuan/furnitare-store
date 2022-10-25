

Phân tích database Web bán hàng Furniture - Store


1) Bảng `role`
	- id: int -> Khóa chính tự tăng
	- name: string (varchar) -> 20 ký tự
	- status: tinyint(1)
2) Bảng `user`
	- id: int -> Khóa chính tự tăng
	- name: string -> 50 ký tự
	- email: string -> 150 ký tự
	- phone_number: string -> 20 ký tự
	- address: string -> 200 ký tự
	- password: string 62 ký tự
	- role_id: int -> foreign key -> role(id)
	- created_at: datetime
	- updated_at: datetime
3) Bảng `category`
	- id: int -> Khóa chính tự tăng
	- name: string -> 100 ký tự
	- parent_id: int -> default (0) -> id của category cha.
	- status: tinyint(1) -> default(1 -> active)
	- created_at: datetime
	- updated_at: datetime
4) Bảng `designer`
	- id: int -> Khóa chính tự tăng
	- name: string -> 100 ký tự
	- image: string -> 500 ký tự
	- overview: string -> 200 ký tự
	- description: longtex
5) Bảng `tag`
	- id: int -> Khóa chính tự tăng
	- name: string -> 50 ký tự
	- description: string -> 300 ký tự
6) Bảng `product`
	- id: int -> Khóa chính tự tăng
	- name: string -> 200 ký tự
	- price: float
	- sale_price: float
	- image: string -> 500 ký tự
	- image_list: text
	- status: tinyint(1) default(1)
	- overview: string -> 200 ký tự
	- description: longtex
	- designer_id: int -> foreign key -> designer(id)
	- created_at: datetime -> default(now)
	- updated_at: datetime -> default(now)
7) Bảng `feedback`
	- id: int -> Khóa chính tự tăng
	- email: string -> 150 ký tự
	- name: string -> 50 ký tự
	- comment: string -> 500 ký tự
	- rate: int 
8) Phân tích quản lý đơn hàng
	- id:
	- fullname
	- email
	- address
	- note
	- order_date: thời điểm mua hàng
	- danh sách sảnh phẩm
		- sp1: 
			- tên
			- số lượng
			- giá tại thời điểm mua
		- sp2: 
			- tên
			- số lượng
			- giá tại thời điểm mua

	8.1) Bảng `order`
		- id: int -> Khóa chính tự tăng
		- email: string -> 150 ký tự
		- name: string -> 100 ký tự
		- address: string -> 200 ký tự
		- phone_number: string -> 20 ký tự
		- note: string -> 500 ký tự
		- user_id: int ->
		- status: tinyint(1) ->(1: pendding, 0: approved)
		- order_date: datetime -> default(now)
		- updated_at: datetime
	8.2)Bảng chi tiết đơn hàng (`order_detail`)
		- id: int -> Khóa chính tự tăng
		- order_id: int -> foreign key order(id)
		- product_id: int -> foreign key product(id)
		- quantity: int
		- price: int

9) Bảng `blog`
	- id: int -> Khóa chính tự tăng
	- title: string -> 100 ký tự
	- image: text,
	- author: string 50 ký tự
	- overview: string -> 500 ký tự
	- content: longtex
	- category_id: int -> foreign key -> category(id)
	- created_at: datetime default(now)
	- updated_at: datetime default(now)
10) Bảng `category_product`
	- id: int -> Khóa chính tự tăng
	- product_id: int -> foreign key product(id)
	- category_id: int -> foreign key category(id)
11) Bảng `tag_product`
	- id: int -> Khóa chính tự tăng
	- tag_id: int foreign key tag(id)
	- product_id: int -> foreign key producct(id)
12) Bảng `banner`
	- id: Khóa chính tự tăng
	- name: string -> 50 ký tự
	- link: string -> 500 ký tự
	- description: string -> 500 ký tự
	- status: tinyint(1)
	- created_at: datetime
	- updated_at: datetime