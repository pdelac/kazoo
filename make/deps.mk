DEPS = lager eiconv gen_smtp amqp_client cowboy jesse jiffy certifi couchbeam wsock zucchini \
       erlsom erlydtl exml escalus folsom detergent erlang_localtime \
       nklib gproc poolboy reloader syslog lager_syslog eflame hep ecsv \
       proper recon getopt fs_event fs_sync eunit inet_cidr trie \
       plists

BUILD_DEPS = parse_trans
IGNORE_DEPS = hamcrest

ifeq ($(USER),travis)
    DEPS += coveralls
    dep_coveralls = git https://github.com/markusn/coveralls-erl 1.4.0
endif

dep_escalus = git https://github.com/esl/escalus 0de0463c345a1ade6fccfb9aadad719b58a1cef5
dep_exml = git https://github.com/paulgray/exml 2.2.1
dep_eiconv = git https://github.com/zotonic/eiconv
dep_certifi = hex 0.3.0
dep_amqp_client_commit = rabbitmq_v3_6_0
dep_eflame = git https://github.com/slfritchie/eflame 7b0bb1a7e8c8482a59421a3a50ae69d49af59d52
dep_detergent = git https://github.com/pap/detergent e86dfeded3e4f9f3f9278c6a1aea802079d38b54
dep_jiffy = hex 0.14.7
dep_nklib = git https://github.com/NetComposer/nklib
dep_plists = git https://github.com/essen/plists

dep_couchbeam = git https://github.com/2600hz/couchbeam 1.4.1a
###dep_couchbeam = git https://github.com/benoitc/couchbeam 1.4.1
### waiting for pull requests
### https://github.com/benoitc/couchbeam/pull/158
### https://github.com/benoitc/couchbeam/pull/164
### https://github.com/benoitc/couchbeam/pull/165

##dep_jesse = git https://github.com/for-GET/jesse 1.4.0
## pull request pending
## https://github.com/for-GET/jesse/pull/42
dep_jesse = git https://github.com/2600hz/jesse 1.5-rc3

dep_lager = git https://github.com/erlang-lager/lager 3.2.1
dep_trie = git https://github.com/okeuday/trie v1.5.4
dep_fs_event = git https://github.com/jamhed/fs_event 783400da08c2b55c295dbec81df0d926960c0346
dep_fs_sync = git https://github.com/jamhed/fs_sync 2cf85cf5861221128f020c453604d509fd37cd53
dep_inet_cidr = git https://github.com/benoitc/inet_cidr.git
### PR opened upstream ###
dep_erlang_localtime = git https://github.com/lazedo/erlang_localtime 0bb26016380cd7df5d30aa0ef284ae252b5bae31

### need to update upstream ###
dep_hep = git https://github.com/lazedo/hep 1.5.4
dep_ecsv = git https://github.com/lazedo/ecsv ecsv-1

### for scripts/dev-start-*.sh
dep_reloader = git https://github.com/oinksoft/reloader 1c981b933db81fcbbd68f62f380ebc9725b6cb0f

### build
dep_parse_trans = git https://github.com/lazedo/parse_trans
