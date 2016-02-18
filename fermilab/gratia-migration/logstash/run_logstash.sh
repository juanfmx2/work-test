export $LOGSTASH_PATH = '~/logstash-2.2.1'
export $LOGSTASH_CONF = './master_summary.conf'
$LOGSTASH_PATH/bin/logstash -f $LOGSTASH_CONF