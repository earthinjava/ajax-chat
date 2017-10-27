# ajax-chat
基于ajax轮询的聊天<br>
利用ajax的定期向servlet发送request，获得信息请求<br>
servlet将信息存储到属性中，多个请求公用一个servlet对象，故可利用servlet的属性实现信息的共享，后期可加入数据库实现数据的分发共享<br>
