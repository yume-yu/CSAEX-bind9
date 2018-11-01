#元になるイメージ
FROM centos:6

#作成者
MAINTAINER yume_yu <c0116248c3@edu.teu.ac.jp>

#ビルド時に実行されるコマンド
RUN yum install -y bind bind-util iproute
ADD ./named.conf /etc/named.conf
ADD ./local.teu.ac.jp.db /var/named/local.teu.ac.jp.db
RUN chown root:named /etc/named.conf
RUN chown root:named /var/named/local.teu.ac.jp.db
RUN chmod 640 /etc/named.conf
RUN chmod 640 /var/named/local.teu.ac.jp.db
#ポート開放
EXPOSE 53
#runした時にbind起動
CMD /sbin/service named start
#CMD /sbin/service named start && tail -f /dev/null

