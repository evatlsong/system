此配置将Context从Host中分离出来 放到Catalina/domain/ROOT.xml中 若有改动 无需重启tomcat
Context中的Docbase指向项目根目录 若是开发中指向工作目录 使之无需于eclipse中配置服务器 则注意要配置到WebRoot 此为项目根目录
Path的值为linux下有'/' windows下没有 '/'
ROOT.xml为主目录
项目名.xml为虚拟目录
webapps/ROOT 存在时此处不用配置
