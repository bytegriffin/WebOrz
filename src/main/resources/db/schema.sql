/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2018/7/28 18:58:50                           */
/*==============================================================*/


drop table if exists sys_dict;

drop table if exists sys_group;

drop table if exists sys_group_role;

drop table if exists sys_group_user;

drop table if exists sys_job;

drop table if exists sys_message;

drop table if exists sys_permission;

drop table if exists sys_permission_role;

drop table if exists sys_post;

drop table if exists sys_role;

drop table if exists sys_user;

drop table if exists sys_user_log;

drop table if exists sys_user_message;

drop table if exists sys_user_post;

drop table if exists sys_user_role;

drop table if exists sys_user_session;

/*==============================================================*/
/* Table: sys_dict                                              */
/*==============================================================*/
create table sys_dict
(
   id                   int not null auto_increment comment '字典编号',
   parent_id            int comment '父级字典编号',
   dict_name            varchar(20) comment '字典名称',
   dict_value           varchar(20) comment '字典键值',
   dict_type            varchar(20) comment '字典类型',
   status               varchar(20) comment '字典状态 0: 正常   1: 禁用',
   priority             int comment '字典排序',
   description          varchar(100) comment '字典备注',
   code                 varchar(400) comment '字典编码',
   create_by            varchar(64) default '' comment '创建人',
   create_time          datetime comment '创建时间',
   update_by            varchar(64) default '' comment '更新人',
   update_time          datetime comment '更新时间',
   primary key (id)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

/*==============================================================*/
/* Table: sys_group                                             */
/*==============================================================*/
create table sys_group
(
   id                   int not null auto_increment comment '用户组编号',
   parent_id            int comment '父级用户组编号',
   name                 varchar(20) comment '用户组名称',
   description          varchar(100) comment '用户组描述',
   status               varchar(20) comment '角色状态 1：表示正常  0：表示禁用',
   code                 varchar(400) comment '用户组编码',
   create_by            varchar(64) default '' comment '创建人',
   create_time          datetime comment '创建时间',
   update_by            varchar(64) default '' comment '更新人',
   update_time          datetime comment '更新时间',
   primary key (id)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

/*==============================================================*/
/* Table: sys_group_role                                        */
/*==============================================================*/
create table sys_group_role
(
   id                   varchar(32) not null comment '关系编号',
   role_id              int comment '用户角色编号',
   group_id             int comment '用户组编号',
   primary key (id)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

/*==============================================================*/
/* Table: sys_group_user                                        */
/*==============================================================*/
create table sys_group_user
(
   id                   varchar(32) not null comment '关系编号',
   group_id             int comment '用户组编号',
   user_id              int comment '用户编号',
   primary key (id)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

/*==============================================================*/
/* Table: sys_job                                               */
/*==============================================================*/
create table sys_job
(
   id                   int not null auto_increment comment '任务编号',
   name                 varchar(20) comment '任务名称',
   class_name           varchar(100) comment '任务类名',
   method_name          varchar(30) comment '任务方法名',
   status               varchar(20) comment '任务状态 0：停止 1：开始',
   cron                 varchar(20) comment 'cron表达式',
   create_by            varchar(64) default '' comment '创建人',
   create_time          datetime comment '创建时间',
   update_by            varchar(64) default '' comment '更新人',
   update_time          datetime comment '更新时间',
   primary key (id)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

/*==============================================================*/
/* Table: sys_message                                           */
/*==============================================================*/
create table sys_message
(
   id                   int not null auto_increment comment '消息编号',
   title                varchar(100) comment '消息标题',
   content              text comment '消息内容',
   send_id              int comment '发送者id',
   rec_id               varchar(32) comment '接收者id',
   send_time            datetime comment '发送时间',
   save_time            datetime comment '保存时间',
   status               varchar(10) comment '消息状态 0：草稿箱  1：已发送',
   role_ids             text comment '角色组ids',
   group_ids            text comment '组织ids',
   attachment1          varchar(1024) comment '消息附件1',
   attachment2          varchar(1024) comment '消息附件2',
   attachment3          varchar(1024) comment '消息附件3',
   primary key (id)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

/*==============================================================*/
/* Table: sys_permission                                        */
/*==============================================================*/
create table sys_permission
(
   id                   int not null auto_increment comment '权限编号',
   parent_id            int comment '父级权限编号',
   name                 varchar(20) comment '权限名称',
   types                varchar(20) comment '权限类型 0：父菜单(无链接)  1：子菜单  2：按钮',
   url                  varchar(1024) comment '权限url',
   status               varchar(20) comment '权限状态 0: 未激活   1: 激活',
   priority             int comment '权限排序',
   levels               int comment '权限级别',
   icon                 varchar(1024) comment '权限图标',
   description          varchar(100) comment '权限描述',
   code                 varchar(400) comment '权限编码',
   create_by            varchar(64) default '' comment '创建人',
   create_time          datetime comment '创建时间',
   update_by            varchar(64) default '' comment '更新人',
   update_time          datetime comment '更新时间',
   primary key (id)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

/*==============================================================*/
/* Table: sys_permission_role                                   */
/*==============================================================*/
create table sys_permission_role
(
   id                   varchar(32) not null comment '关系编号',
   permission_id        int comment '权限编号',
   role_id              int comment '角色编号',
   primary key (id)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

/*==============================================================*/
/* Table: sys_post                                              */
/*==============================================================*/
create table sys_post
(
   id                   int not null auto_increment comment '职位编号',
   name                 varchar(20) comment '岗位名称',
   parent_id            int comment '父级岗位编号',
   status               varchar(20) comment '岗位状态 0: 未激活   1: 激活',
   code                 varchar(400) comment '岗位编码',
   description          varchar(100) comment '岗位描述',
   create_by            varchar(64) default '' comment '创建人',
   create_time          datetime comment '创建时间',
   update_by            varchar(64) default '' comment '更新人',
   update_time          datetime comment '更新时间',
   primary key (id)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

/*==============================================================*/
/* Table: sys_role                                              */
/*==============================================================*/
create table sys_role
(
   id                   int not null auto_increment comment '角色编号',
   name                 varchar(20) comment '角色名称',
   parent_id            int comment '父级角色编号',
   description          varchar(100) comment '角色描述',
   code                 varchar(400) comment '角色编码',
   status               varchar(20) comment '角色状态 1：表示正常  0：表示禁用',
   create_by            varchar(64) default '' comment '创建人',
   create_time          datetime comment '创建时间',
   update_by            varchar(64) default '' comment '更新人',
   update_time          datetime comment '更新时间',
   primary key (id)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

/*==============================================================*/
/* Table: sys_user                                              */
/*==============================================================*/
create table sys_user
(
   id                   int not null auto_increment comment '用户编号',
   name                 varchar(20) comment '用户姓名',
   login_name           varchar(20) comment '登陆名称',
   sex                  varchar(10) comment '用户性别',
   birthday             varchar(20) comment '出生日期',
   avatar               varchar(1024) comment '头像',
   phone                varchar(30) comment '手机号码',
   email                varchar(40) comment '邮箱',
   id_number            varchar(30) comment '身份证号',
   password             varchar(100) comment '登陆密码',
   salt                 varchar(100) comment '盐加密',
   status               varchar(20) comment '用户账号状态 1.正常  2.锁定 ',
   regist_time          datetime comment '注册时间',
   login_time           datetime comment '登陆时间',
   login_count          int comment '登陆次数',
   login_ip             varchar(30) comment '登陆IP',
   create_by            varchar(64) default '' comment '创建者',
   create_time          datetime comment '创建时间',
   update_by            varchar(64) default '' comment '更新者',
   update_time          datetime comment '更新时间',
   primary key (id)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

/*==============================================================*/
/* Table: sys_user_log                                          */
/*==============================================================*/
create table sys_user_log
(
   id                   varchar(32) not null comment '编号id',
   user_id              int comment '用户编号id',
   login_name           varchar(20) comment '用户登录名',
   user_name            varchar(20) comment '用户名称',
   oper_type            varchar(10) comment '操作类型',
   oper_content         varchar(1024) comment '操作内容',
   oper_time            datetime comment '操作时间',
   oper_ip              varchar(30) comment '操作ip',
   browser              varchar(30) comment '浏览器',
   os                   varchar(30) comment '操作系统',
   exceptions           text comment '操作异常',
   url                  varchar(1024) comment '访问url',
   method               varchar(10) comment '访问方法类型',
   controller           varchar(1024) comment '类名方法名',
   http_status          varchar(10) comment 'HTTP状态码',
   primary key (id)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

/*==============================================================*/
/* Table: sys_user_message                                      */
/*==============================================================*/
create table sys_user_message
(
   id                   int not null auto_increment comment '用户消息编号',
   send_id              int comment '发送者id',
   rec_id               int comment '接收者id',
   send_time            datetime comment '发送时间',
   status               varchar(10) comment '阅读状态 0：未读 1：已读',
   msg_id               int comment '消息id',
   read_time            datetime,
   primary key (id)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

/*==============================================================*/
/* Table: sys_user_post                                         */
/*==============================================================*/
create table sys_user_post
(
   id                   varchar(32) not null comment '关系编号',
   post_id              int comment '岗位编号',
   user_id              int comment '用户编号',
   primary key (id)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

/*==============================================================*/
/* Table: sys_user_role                                         */
/*==============================================================*/
create table sys_user_role
(
   id                   varchar(32) not null comment '关系编号',
   role_id              int comment '角色编号',
   user_id              int comment '用户编号',
   primary key (id)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

/*==============================================================*/
/* Table: sys_user_session                                      */
/*==============================================================*/
create table sys_user_session
(
   id                   varchar(32) not null comment '编号id',
   user_id              int comment '用户编号id',
   login_name           varchar(20) comment '用户登录名',
   user_name            varchar(20) comment '用户名称',
   oper_ip              varchar(30) comment '操作ip',
   browser              varchar(30) comment '浏览器',
   os                   varchar(30) comment '操作系统',
   status               varchar(20) comment '在线状态',
   session_id           varchar(20) comment '用户会话id',
   create_time          datetime comment '会话创建时间',
   last_time            datetime comment '最后会话时间',
   primary key (id)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

