# ajax-chat
<strong>基于ajax轮询的聊天</strong><br>
<ul><li>利用ajax定期向servlet发送request，servlet判断是否有新信息从而返回response</li>
<li>servlet将信息存储到属性中，多个请求公用一个servlet对象，故可利用servlet的属性实现信息的共享，后期可加入数据库实现数据的分发共享</li>
<li>此为短轮询，可在servlet中加入循环实现长轮询的方式</li></ul>
