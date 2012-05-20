-- Lua Source:
--     [[ WebQQ 协议定义 ]]
-- by Zyxwvu in Jan, 2011

-- [ XP Firefox User-Agent ]
UAM = [[Mozilla/5.0 (Windows NT 5.1)]]
-- [ 用途未知 ]
RefererS = [[http://s.web2.qq.com/proxy.html?v=20110412001&callback=1&id=1]]
-- [ 状态定义 ]
STATUS = {
 ["Q我吧"]="callme", ["在线"]="online",
 ["离开"]="away", ["忙碌"]="busy",
 ["静音"]="silent", ["隐身"]="hidden"
}

-- [ WebQQ 协议定义 ]
WQPD = {} -- 初始化表
WQPD["验证码KEY"] = {
 u=[[http://ptlogin2.qq.com/check?uin=%s&appid=1003903&r=0.2664082343145449]],
 r=[[ptui_checkVC%('%d','(.+)'%)]] }
WQPD["下线"] = {
 u=[[http://d.web2.qq.com/channel/logout2?clientid=%s&psessionid=%s&t=%s]] }
WQPD["改变自己"] = {
 u=[[http://d.web2.qq.com/channel/change_status2?newstatus=%s&clientid=%s&psessionid=%s&t=%s]] }
WQPD["登录"] = {
 u=[[http://ptlogin2.qq.com/login?u=%s&p=%s&verifycode=%s&webqq_type=10&remember_uin=1&login2qq=1&aid=1003903&u1=http%%3A%%2F%%2Fweb.qq.com%%2Floginproxy.html%%3Flogin2qq%%3D1%%26webqq_type%%3D10&h=1&ptredirect=0&ptlang=2052&from_ui=1&pttype=1&dumy=&fp=loginerroralert&mibao_css=m_webqq]],
 r=[[ptuiCB%('(%d+)','0','(.+)','0','(.+)'%)]] }
WQPD["登录2"] = { u=[[http://d.web2.qq.com/channel/login2]],
 f=[[r=%%7B%%22status%%22%%3A%%22%s%%22%%2C%%22ptwebqq%%22%%3A%%22%s%%22%%2C%%22passwd_sig%%22%%3A%%22%%22%%2C%%22clientid%%22%%3A%%22%s%%22%%2C%%22psessionid%%22%%3Anull%%7D&clientid=%s&psessionid=null]] }
WQPD["改签名"] = { u=[[http://s.web2.qq.com/api/set_long_nick2]],
 f=[[r=%%7B%%22nlk%%22%%3A%%22%s%%22%%2C%%22vfwebqq%%22%%3A%%22%s%%22%%7D]] }
WQPD["取昵称"] = { u=[[http://s.web2.qq.com/api/get_friend_info2?tuin=%s&verifysession=&code=&vfwebqq=%s&t=%s]]}
WQPD["取签名"] = { u=[[http://s.web2.qq.com/api/get_single_long_nick2?tuin=%s&vfwebqq=%s&t=%s]]}
WQPD["取在线好友"] = { u=[[http://d.web2.qq.com/channel/get_online_buddies2?clientid=%s&psessionid=%s&t=%s]]}
WQPD["取好友"] = { u=[[http://s.web2.qq.com/api/get_user_friends2]],
 f=[[r=%%7B%%22h%%22%%3A%%22hello%%22%%2C%%22vfwebqq%%22%%3A%%22%s%%22%%7D]] }
WQPD["取群"] = { u=[[http://s.web2.qq.com/api/get_group_name_list_mask2]],
 f=[[r=%%7B%%22vfwebqq%%22%%3A%%22%s%%22%%7D]] }
WQPD["POLL"] = { u=[[http://d.web2.qq.com/channel/poll2]],
 f=[[r=%%7B%%22clientid%%22%%3A%%22%s%%22%%2C%%22psessionid%%22%%3A%%22%s%%22%%2C%%22key%%22%%3A0%%2C%%22ids%%22%%3A%%5B%%5D%%7D&clientid=%s&psessionid=%s]] }
WQPD["好友消息"] = { u=[[http://d.web2.qq.com/channel/send_buddy_msg2]],
 f=[[r=%s&clientid=%s&psessionid=%s]] }
WQPD["临时消息"] = { u=[[http://d.web2.qq.com/channel/send_sess_msg2]],
 f=[[r=%s&clientid=%s&psessionid=%s]] }
WQPD["群消息"] = { u=[[http://d.web2.qq.com/channel/send_qun_msg2]],
 f=[[r=%s&clientid=%s&psessionid=%s]] }
WQPD["同意加好友"] = { u=[[http://s.web2.qq.com/api/allow_and_add2]],
 f=[[r=%s]] }
WQPD["验证码"] = {
 u=[[http://captcha.qq.com/getimage?aid=1003903&r=0.%s&uin=%s&vc_type=%s]] }
WQPD["取QQ"] = {
 u=[[http://s.web2.qq.com/api/get_friend_uin2?tuin=%s&verifysession=&type=1&code=&vfwebqq=%s&t=%s]] }
WQPD["取群Sign"] = {
 u=[[http://d.web2.qq.com/channel/get_c2cmsg_sig2?id=%s&to_uin=%s&service_type=0&clientid=%s&&psessionid=%s&t=%s]] }


