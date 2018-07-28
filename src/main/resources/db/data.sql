

INSERT INTO sys_permission (id,parent_id,code,name,types,url,priority,levels,icon,status,create_by,create_time) VALUES (1, 0, '0001', '控制台', '1', 'user/dashboard', 1, 1,'fa-dashboard','1','1',now());
INSERT INTO sys_permission (id,parent_id,code,name,types,url,priority,levels,icon,status,create_by,create_time) VALUES (2, 0, '0002', '系统管理', '0', null, 2,1,'fa-desktop','1','1',now());
INSERT INTO sys_permission (id,parent_id,code,name,types,url,priority,levels,icon,status,create_by,create_time) VALUES (3, 2, '00020001', '用户管理', '1', 'user/list', 1,2,'fa-user','1','1',now());
INSERT INTO sys_permission (id,parent_id,code,name,types,url,priority,levels,icon,status,create_by,create_time) VALUES (4, 2, '00020002', '组织管理', '1', 'group/list', 2,2,'fa-sitemap','1','1',now());
INSERT INTO sys_permission (id,parent_id,code,name,types,url,priority,levels,icon,status,create_by,create_time) VALUES (5, 2, '00020003', '菜单管理', '1', 'menu/list', 3,2,'fa-list-alt','1','1',now());
INSERT INTO sys_permission (id,parent_id,code,name,types,url,priority,levels,icon,status,create_by,create_time) VALUES (6, 2, '00020004', '角色管理', '1', 'role/list', 4,2,'fa-users','1','1',now());
INSERT INTO sys_permission (id,parent_id,code,name,types,url,priority,levels,icon,status,create_by,create_time) VALUES (7, 2, '00020005', '日志管理', '1', 'userlog/list', 5,2,'fa-file-text-o','1','1',now());
INSERT INTO sys_permission (id,parent_id,code,name,types,url,priority,levels,icon,status,create_by,create_time) VALUES (8, 2, '00020006', '系统公告', '1', 'message/list', 6,2,'fa-envelope-square','1','1',now());
INSERT INTO sys_permission (id,parent_id,code,name,types,url,priority,levels,icon,status,create_by,create_time) VALUES (9, 0, '0003', '报表管理', '0', null, 3,1,'fa-bar-chart-o','1','1',now());
INSERT INTO sys_permission (id,parent_id,code,name,types,url,priority,levels,icon,status,create_by,create_time) VALUES (10, 9, '00030001', 'ECharts', '1', 'chart/echarts', 1,2,'fa-line-chart','1','1',now());
INSERT INTO sys_permission (id,parent_id,code,name,types,url,priority,levels,icon,status,create_by,create_time) VALUES (11, 9, '00030002', 'Chartjs', '1', 'chart/chartjs', 1,2,'fa-bar-chart-o','1','1',now());
INSERT INTO sys_permission (id,parent_id,code,name,types,url,priority,levels,icon,status,create_by,create_time) VALUES (12, 9, '00030003', 'Sparkline', '1', 'chart/sparkline', 1,2,'fa-area-chart','1','1',now());


INSERT INTO sys_user (id,login_name,email,password,phone,status,create_by,create_time) VALUES (1, 'admin', 'admin@webmartini.com', 'E10ADC3949BA59ABBE56E057F20F883E', '13800138001','1','1',now());
INSERT INTO sys_user (id,login_name,email,password,phone,status,create_by,create_time) VALUES (2, 'admin1', 'admin1@webmartini.com', 'E10ADC3949BA59ABBE56E057F20F883E', '13900139002','1','1',now());
INSERT INTO sys_user (id,login_name,email,password,phone,status,create_by,create_time) VALUES (3, 'admin2', 'admin2@webmartini.com', 'E10ADC3949BA59ABBE56E057F20F883E', '13800138003','1','1',now());
INSERT INTO sys_user (id,login_name,email,password,phone,status,create_by,create_time) VALUES (4, 'zhangsan', 'zhangsan@webmartini.com', 'E10ADC3949BA59ABBE56E057F20F883E', '13800138004','2','1',now());
INSERT INTO sys_user (id,login_name,email,password,phone,status,create_by,create_time) VALUES (5, 'lisi', 'lisi@webmartini.com', 'E10ADC3949BA59ABBE56E057F20F883E', '13800138005','1','1',now());
INSERT INTO sys_user (id,login_name,email,password,phone,status,create_by,create_time) VALUES (6, 'wangwu', 'wangwu@webmartini.com', 'E10ADC3949BA59ABBE56E057F20F883E', '13800138006','2','1',now());
INSERT INTO sys_user (id,login_name,email,password,phone,status,create_by,create_time) VALUES (7, 'maliu', 'maliu@webmartini.com', 'E10ADC3949BA59ABBE56E057F20F883E', '13800138007','2','1',now());
INSERT INTO sys_user (id,login_name,email,password,phone,status,create_by,create_time) VALUES (8, 'liudehua', '8888@webmartini.com', 'E10ADC3949BA59ABBE56E057F20F883E', '13800138008','1','1',now());
INSERT INTO sys_user (id,login_name,email,password,phone,status,create_by,create_time) VALUES (9, 'guofucheng', '999@webmartini.com', 'E10ADC3949BA59ABBE56E057F20F883E', '13800138009','2','1',now());
INSERT INTO sys_user (id,login_name,email,password,phone,status,create_by,create_time) VALUES (10, 'zhangxueyou', '101010@webmartini.com', 'E10ADC3949BA59ABBE56E057F20F883E', '13800138010','1','1',now());
INSERT INTO sys_user (id,login_name,email,password,phone,status,create_by,create_time) VALUES (11, 'wanganshi', '111111@webmartini.com', 'E10ADC3949BA59ABBE56E057F20F883E', '13800138011','2','1',now());
INSERT INTO sys_user (id,login_name,email,password,phone,status,create_by,create_time) VALUES (12, 'wuming1', '121212@webmartini.com', 'E10ADC3949BA59ABBE56E057F20F883E', '13800138012','1','1',now());
INSERT INTO sys_user (id,login_name,email,password,phone,status,create_by,create_time) VALUES (13, 'wuming2', '131313@webmartini.com', 'E10ADC3949BA59ABBE56E057F20F883E', '13800138013','1','1',now());
INSERT INTO sys_user (id,login_name,email,password,phone,status,create_by,create_time) VALUES (14, 'lijiaxin', '141414@webmartini.com', 'E10ADC3949BA59ABBE56E057F20F883E', '13800138014','1','1',now());
INSERT INTO sys_user (id,login_name,email,password,phone,status,create_by,create_time) VALUES (15, 'test', 'test@webmartini.com', 'E10ADC3949BA59ABBE56E057F20F883E', '13800138015','1','1',now());


INSERT INTO sys_role (id,parent_id,code,name,status,create_by,create_time) VALUES (1, 0, '0001', '系统管理员' ,'1' ,'1', now());
INSERT INTO sys_role (id,parent_id,code,name,status,create_by,create_time) VALUES (2, 0, '0002', '普通用户' ,'1', '1', now());


INSERT INTO sys_post (id,parent_id,code,name,status,create_by,create_time) VALUES (1, 0, '0001', '董事长1' ,'1' ,'1', now());
INSERT INTO sys_post (id,parent_id,code,name,status,create_by,create_time) VALUES (2, 0, '0002', '董事长2' ,'1', '1', now());
INSERT INTO sys_post (id,parent_id,code,name,description,create_by,create_time) VALUES (3, 1, '00020001', '总经理一' , '主管产品/项目/研发/运维','1', now());
INSERT INTO sys_post (id,parent_id,code,name,description,create_by,create_time) VALUES (4, 2, '00020002', '总经理二' , '主管营销/行政','1', now());
INSERT INTO sys_post (id,parent_id,code,name,description,create_by,create_time) VALUES (5, 3, '000200010001', '副总经理一', '主要负责产品/项目的研发与运维' ,'1', now());
INSERT INTO sys_post (id,parent_id,code,name,description,create_by,create_time) VALUES (6, 3, '000200010002', '副总经理二', '主要负责财务' ,'1', now());
INSERT INTO sys_post (id,parent_id,code,name,create_by,create_time) VALUES (7, 5, '0002000100010001', '产品总监' ,'1', now());
INSERT INTO sys_post (id,parent_id,code,name,create_by,create_time) VALUES (8, 7, '00020001000100010001', '产品经理' ,'1', now());
INSERT INTO sys_post (id,parent_id,code,name,create_by,create_time) VALUES (9, 8, '000200010001000100010001', '产品运营专员','1', now() );
INSERT INTO sys_post (id,parent_id,code,name,create_by,create_time) VALUES (10, 5, '0002000100010002', '研发总监' ,'1', now());
INSERT INTO sys_post (id,parent_id,code,name,create_by,create_time) VALUES (11, 10, '00020001000100020001', '架构师' ,'1', now());
INSERT INTO sys_post (id,parent_id,code,name,create_by,create_time) VALUES (12, 10, '00020001000100020002', '产品技术经理' ,'1', now());
INSERT INTO sys_post (id,parent_id,code,name,create_by,create_time) VALUES (13, 12, '000200010001000200020001', '产品软件工程师' ,'1', now());
INSERT INTO sys_post (id,parent_id,code,name,create_by,create_time) VALUES (14, 12, '000200010001000200020002', '产品测试工程师' ,'1', now());
INSERT INTO sys_post (id,parent_id,code,name,create_by,create_time) VALUES (15, 10, '00020001000100020003', '项目经理' ,'1', now());
INSERT INTO sys_post (id,parent_id,code,name,create_by,create_time) VALUES (16, 15, '000200010001000200030001', '项目软件工程师' ,'1', now());
INSERT INTO sys_post (id,parent_id,code,name,create_by,create_time) VALUES (17, 15, '000200010001000200030002', '项目测试工程师' ,'1', now());
INSERT INTO sys_post (id,parent_id,code,name,create_by,create_time) VALUES (18, 5, '0002000100010003', '运维总监' ,'1', now());
INSERT INTO sys_post (id,parent_id,code,name,create_by,create_time) VALUES (19, 18, '00020001000100030001', '运维经理' ,'1', now());
INSERT INTO sys_post (id,parent_id,code,name,create_by,create_time) VALUES (20, 19, '000200010001000300010001', '运维专员' ,'1', now());
INSERT INTO sys_post (id,parent_id,code,name,create_by,create_time) VALUES (21, 6, '0002000100020001', '财务总监' ,'1', now());
INSERT INTO sys_post (id,parent_id,code,name,create_by,create_time) VALUES (22, 21, '00020001000200010001', '财务专员' ,'1', now());
INSERT INTO sys_post (id,parent_id,code,name,create_by,create_time) VALUES (23, 4, '000200020001', '营销总监' ,'1', now());
INSERT INTO sys_post (id,parent_id,code,name,create_by,create_time) VALUES (24, 23, '0002000200010001', '市场专员' ,'1', now());
INSERT INTO sys_post (id,parent_id,code,name,create_by,create_time) VALUES (25, 23, '0002000200010002', '售后服务专员' ,'1', now());
INSERT INTO sys_post (id,parent_id,code,name,create_by,create_time) VALUES (26, 4, '000200020002', '行政总监' ,'1', now());
INSERT INTO sys_post (id,parent_id,code,name,create_by,create_time) VALUES (27, 26, '0002000200020001', '行政专员' ,'1', now());
INSERT INTO sys_post (id,parent_id,code,name,create_by,create_time) VALUES (28, 26, '0002000200020002', 'HR' ,'1', now());


INSERT INTO sys_group (id,parent_id,code,name,create_by,create_time) VALUES (1, 0, '0001', '系统管理组' ,'1', now());
INSERT INTO sys_group (id,parent_id,code,name,create_by,create_time) VALUES (2, 0, '0002', '集团' ,'1', now());
INSERT INTO sys_group (id,parent_id,code,name,create_by,create_time) VALUES (3, 2, '00020001', '北京分公司' ,'1', now());
INSERT INTO sys_group (id,parent_id,code,name,create_by,create_time) VALUES (4, 3, '000200010001', '产品部' ,'1', now());
INSERT INTO sys_group (id,parent_id,code,name,create_by,create_time) VALUES (5, 3, '000200010002', '研发部' ,'1', now());
INSERT INTO sys_group (id,parent_id,code,name,create_by,create_time) VALUES (6, 3, '000200010003', '项目组' ,'1', now());
INSERT INTO sys_group (id,parent_id,code,name,create_by,create_time) VALUES (7, 3, '000200010004', '运营部' ,'1', now());
INSERT INTO sys_group (id,parent_id,code,name,create_by,create_time) VALUES (8, 2, '00020002', '上海分公司' ,'1', now());
INSERT INTO sys_group (id,parent_id,code,name,create_by,create_time) VALUES (9, 8, '000200020001', '营销部' ,'1', now());
INSERT INTO sys_group (id,parent_id,code,name,create_by,create_time) VALUES (10, 8, '000200020002', '行政办公室' ,'1', now());


INSERT INTO sys_user_role (id,user_id,role_id) VALUES ('1', '1', '1' );

INSERT INTO sys_user_post (id,user_id,post_id) VALUES ('1', '1', '10' );

INSERT INTO sys_permission_role (id,permission_id,role_id) VALUES ('1', '1', '1' );
INSERT INTO sys_permission_role (id,permission_id,role_id) VALUES ('2', '2', '1' );
INSERT INTO sys_permission_role (id,permission_id,role_id) VALUES ('3', '3', '1' );
INSERT INTO sys_permission_role (id,permission_id,role_id) VALUES ('4', '4', '1' );
INSERT INTO sys_permission_role (id,permission_id,role_id) VALUES ('5', '5', '1' );
INSERT INTO sys_permission_role (id,permission_id,role_id) VALUES ('6', '6', '1' );
INSERT INTO sys_permission_role (id,permission_id,role_id) VALUES ('7', '7', '1' );
INSERT INTO sys_permission_role (id,permission_id,role_id) VALUES ('8', '8', '1' );
INSERT INTO sys_permission_role (id,permission_id,role_id) VALUES ('9', '9', '1' );
INSERT INTO sys_permission_role (id,permission_id,role_id) VALUES ('10','10','1' );
INSERT INTO sys_permission_role (id,permission_id,role_id) VALUES ('11','11','1' );
INSERT INTO sys_permission_role (id,permission_id,role_id) VALUES ('12','12','1' );







