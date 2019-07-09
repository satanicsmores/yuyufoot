/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : yuyufoot

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 31/10/2018 00:09:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int(11) NOT NULL COMMENT '目录id',
  `menu_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '目录名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, '国产');
INSERT INTO `menu` VALUES (2, '日本');
INSERT INTO `menu` VALUES (3, '欧美');
INSERT INTO `menu` VALUES (4, '韩国');

-- ----------------------------
-- Table structure for picture
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture`  (
  `id` bigint(20) NOT NULL,
  `video_id` bigint(20) NULL DEFAULT NULL,
  `picture_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of picture
-- ----------------------------
INSERT INTO `picture` VALUES (1, 1, '/img/videoPic/201810152150-0.jpg');
INSERT INTO `picture` VALUES (2, 1, '/img/videoPic/201810152150-1.jpg');
INSERT INTO `picture` VALUES (3, 1, '/img/videoPic/201810152150-2.jpg');
INSERT INTO `picture` VALUES (4, 1, '/img/videoPic/201810152150-3.jpg');
INSERT INTO `picture` VALUES (5, 1, '/img/videoPic/201810152150-4.jpg');
INSERT INTO `picture` VALUES (6, 1, '/img/videoPic/201810152150-5.jpg');
INSERT INTO `picture` VALUES (7, 1, '/img/videoPic/201810152150-6.jpg');
INSERT INTO `picture` VALUES (8, 1, '/img/videoPic/201810152150-7.jpg');
INSERT INTO `picture` VALUES (9, 1, '/img/videoPic/201810152150-8.jpg');
INSERT INTO `picture` VALUES (10, 1, '/img/videoPic/201810152150-9.jpg');
INSERT INTO `picture` VALUES (11, 1, '/img/videoPic/201810152150-10.jpg');
INSERT INTO `picture` VALUES (12, 1, '/img/videoPic/201810152150-11.jpg');
INSERT INTO `picture` VALUES (13, 1, '/img/videoPic/201810152150-12.jpg');
INSERT INTO `picture` VALUES (14, 1, '/img/videoPic/201810152150-13.jpg');
INSERT INTO `picture` VALUES (15, 1, '/img/videoPic/201810152150-14.jpg');
INSERT INTO `picture` VALUES (16, 1, '/img/videoPic/201810152150-15.jpg');
INSERT INTO `picture` VALUES (17, 1, '/img/videoPic/201810152150-16.jpg');
INSERT INTO `picture` VALUES (18, 1, '/img/videoPic/201810152150-17.jpg');
INSERT INTO `picture` VALUES (19, 1, '/img/videoPic/201810152150-18.jpg');
INSERT INTO `picture` VALUES (20, 2, '/img/videoPic/201810152201-0.jpg');
INSERT INTO `picture` VALUES (21, 2, '/img/videoPic/201810152201-1.jpg');
INSERT INTO `picture` VALUES (22, 2, '/img/videoPic/201810152201-2.jpg');
INSERT INTO `picture` VALUES (23, 2, '/img/videoPic/201810152201-3.jpg');
INSERT INTO `picture` VALUES (24, 2, '/img/videoPic/201810152201-4.jpg');
INSERT INTO `picture` VALUES (25, 2, '/img/videoPic/201810152201-5.jpg');
INSERT INTO `picture` VALUES (26, 2, '/img/videoPic/201810152201-6.jpg');
INSERT INTO `picture` VALUES (27, 2, '/img/videoPic/201810152201-7.jpg');
INSERT INTO `picture` VALUES (28, 2, '/img/videoPic/201810152201-8.jpg');
INSERT INTO `picture` VALUES (29, 2, '/img/videoPic/201810152201-9.jpg');
INSERT INTO `picture` VALUES (30, 2, '/img/videoPic/201810152201-10.jpg');
INSERT INTO `picture` VALUES (31, 2, '/img/videoPic/201810152201-11.jpg');
INSERT INTO `picture` VALUES (32, 3, '/img/videoPic/2018102332213-0.jpg');
INSERT INTO `picture` VALUES (33, 3, '/img/videoPic/2018102332213-1.jpg');
INSERT INTO `picture` VALUES (34, 3, '/img/videoPic/2018102332213-2.jpg');
INSERT INTO `picture` VALUES (35, 3, '/img/videoPic/2018102332213-3.jpg');
INSERT INTO `picture` VALUES (36, 3, '/img/videoPic/2018102332213-4.jpg');
INSERT INTO `picture` VALUES (37, 3, '/img/videoPic/2018102332213-5.jpg');
INSERT INTO `picture` VALUES (38, 4, '/img/videoPic/201810232222-0.jpg');
INSERT INTO `picture` VALUES (39, 4, '/img/videoPic/201810232222-1.jpg');
INSERT INTO `picture` VALUES (40, 4, '/img/videoPic/201810232222-2.jpg');
INSERT INTO `picture` VALUES (41, 4, '/img/videoPic/201810232222-3.jpg');
INSERT INTO `picture` VALUES (42, 5, '/img/videoPic/201810241959-0.jpg');
INSERT INTO `picture` VALUES (43, 5, '/img/videoPic/201810241959-1.jpg');
INSERT INTO `picture` VALUES (44, 5, '/img/videoPic/201810241959-2.jpg');
INSERT INTO `picture` VALUES (45, 5, '/img/videoPic/201810241959-3.jpg');
INSERT INTO `picture` VALUES (46, 5, '/img/videoPic/201810241959-4.jpg');
INSERT INTO `picture` VALUES (47, 6, '/img/videoPic/201810242004-0.jpg');
INSERT INTO `picture` VALUES (48, 6, '/img/videoPic/201810242004-0.jpg');
INSERT INTO `picture` VALUES (49, 6, '/img/videoPic/201810242004-0.jpg');
INSERT INTO `picture` VALUES (50, 6, '/img/videoPic/201810242004-0.jpg');
INSERT INTO `picture` VALUES (51, 6, '/img/videoPic/201810242004-0.jpg');
INSERT INTO `picture` VALUES (52, 7, '/img/videoPic/201810302336-0.jpg');
INSERT INTO `picture` VALUES (53, 7, '/img/videoPic/201810302336-1.jpg');
INSERT INTO `picture` VALUES (54, 7, '/img/videoPic/201810302336-2.jpg');
INSERT INTO `picture` VALUES (55, 7, '/img/videoPic/201810302336-3.jpg');
INSERT INTO `picture` VALUES (56, 7, '/img/videoPic/201810302336-4.jpg');
INSERT INTO `picture` VALUES (57, 8, '/img/videoPic/201810302349-0.jpg');
INSERT INTO `picture` VALUES (58, 8, '/img/videoPic/201810302349-1.jpg');
INSERT INTO `picture` VALUES (59, 8, '/img/videoPic/201810302349-2.jpg');
INSERT INTO `picture` VALUES (60, 8, '/img/videoPic/201810302349-3.jpg');
INSERT INTO `picture` VALUES (61, 8, '/img/videoPic/201810302349-4.jpg');
INSERT INTO `picture` VALUES (62, 8, '/img/videoPic/201810302349-5.jpg');
INSERT INTO `picture` VALUES (63, 8, '/img/videoPic/201810302349-6.jpg');
INSERT INTO `picture` VALUES (64, 9, '/img/videoPic/201810302354-0.jpg');
INSERT INTO `picture` VALUES (65, 9, '/img/videoPic/201810302354-1.jpg');
INSERT INTO `picture` VALUES (66, 9, '/img/videoPic/201810302354-2.jpg');
INSERT INTO `picture` VALUES (67, 9, '/img/videoPic/201810302354-3.jpg');
INSERT INTO `picture` VALUES (68, 9, '/img/videoPic/201810302354-4.jpg');
INSERT INTO `picture` VALUES (69, 9, '/img/videoPic/201810302354-5.jpg');

-- ----------------------------
-- Table structure for power
-- ----------------------------
DROP TABLE IF EXISTS `power`;
CREATE TABLE `power`  (
  `id` bigint(20) NOT NULL COMMENT '权限id',
  `power` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of power
-- ----------------------------
INSERT INTO `power` VALUES (1, 'free_down');
INSERT INTO `power` VALUES (2, 'discount_dowm');

-- ----------------------------
-- Table structure for power_role
-- ----------------------------
DROP TABLE IF EXISTS `power_role`;
CREATE TABLE `power_role`  (
  `power_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of power_role
-- ----------------------------
INSERT INTO `power_role` VALUES (1, 4);
INSERT INTO `power_role` VALUES (2, 3);
INSERT INTO `power_role` VALUES (2, 3);
INSERT INTO `power_role` VALUES (1, 4);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` bigint(20) NOT NULL COMMENT '角色id',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'admin');
INSERT INTO `role` VALUES (2, 'guest');
INSERT INTO `role` VALUES (3, 'member');
INSERT INTO `role` VALUES (4, 'vip');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户密码',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'xuyu', '950407', '865750866@qq.com');
INSERT INTO `user` VALUES (2, 'husong', '123456', '123456@qq.com');
INSERT INTO `user` VALUES (3, 'yangdi', '950407', 'yangdi@qq.com');

-- ----------------------------
-- Table structure for user_group
-- ----------------------------
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group`  (
  `id` int(11) NOT NULL,
  `user_group_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_group_role
-- ----------------------------
DROP TABLE IF EXISTS `user_group_role`;
CREATE TABLE `user_group_role`  (
  `user_group_id` int(11) NOT NULL,
  `role_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`user_group_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_group_user
-- ----------------------------
DROP TABLE IF EXISTS `user_group_user`;
CREATE TABLE `user_group_user`  (
  `user_group_id` int(11) NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`user_group_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, 1);
INSERT INTO `user_role` VALUES (3, 4);
INSERT INTO `user_role` VALUES (2, 3);
INSERT INTO `user_role` VALUES (4, 1);

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `id` bigint(20) NOT NULL COMMENT '视频id',
  `menu_id` bigint(20) NULL DEFAULT NULL COMMENT '目录id',
  `video_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '视频名字',
  `video_describe` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '视频描述',
  `video_pic_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '视频主页显示图片地址',
  `video_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '视频价格',
  `video_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '百度云链接',
  `video_tiquma` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '百度云提取码',
  `video_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '解压密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES (1, 1, '丰满女S原味脏鞋调教', '一个长相十分甜美，身材丰满的女生，虐待她的奴隶，让她的奴隶给他舔鞋子，鞋底，鞋底是那么的脏，让狗狗舔干净，然后踩踏狗狗全身，舔鞋子，舔脚。女主人十分漂亮，丰满漂亮型的，希望大家喜欢', '/img/videoPic/201810152150-0.jpg', 2.00, 'https://pan.baidu.com/s/1rqEhQdOxwpbYeYS29MgHng', 'ztgk', '123456789');
INSERT INTO `video` VALUES (2, 1, '超级原味臭棉袜，脏鞋底调教贱狗', '同一双棉袜和高跟皮鞋连续穿着2个星期，鞋底和周边没擦过，全是脏泥和灰，袜子已经明显变色，味道相当重。小妮S进门后就开始调教贱狗，舔这双脏鞋子，舔到干净为止，贱狗很贱越是辱越是舔的兴奋，舌头完全舔成了黑的，之后被强迫吃掉脏东西，之后有再贱狗身上踩踏运动一阵，让袜子味道更佳重，之后坐在贱狗身上踩着贱狗的脸脱掉鞋子后，用这双超级原味折磨调教贱狗，臭袜子插嘴深喉，最后袜子全部塞进贱狗嘴里，裸足踩着嘴鼻玩弄，贱狗被玩弄的几乎快昏过去。', '/img/videoPic/201810152201-2.jpg', 3.00, 'https://pan.baidu.com/s/1uDr11089QXrlU7sVgbqptQ', '5xkw', '11223344');
INSERT INTO `video` VALUES (3, 1, '白布鞋虐待女奴', '十分美丽的女王虐待她的女奴，让女奴舔脚舔鞋，舔鞋底，踩踏，很舒服', '/img/videoPic/2018102332213-1.jpg', 2.00, 'https://pan.baidu.com/s/1rG2Ti90BGGZlf238qtmspw', 'isut', '865750866');
INSERT INTO `video` VALUES (4, 1, '原味白棉袜+万斯布鞋调教', '逛街游玩穿了最少1周的原味棉袜和穿的更久的万斯帆布鞋，用来调教。\r\n\r\n开始先清理鞋子，舔鞋子边缘，用牙啃掉脏东西，然后清理鞋底，用舌头把鞋底凹槽都清晰干净，清理好之后主人奖励\r\n闻原味白棉袜，只可以闻不让舔，味道是比较浓烈刺激香味混合着帆布鞋的味道，超级棒。之后踩踏，踢踩下体，虐乳\r\n，全体重踩脸头和脖子，还在脸上踏步上下颠，鞋子扣在脸上主人踩着鞋子让奴闻鞋里味道，口水，最后原味袜子脱掉\r\n，全部塞进奴的嘴里。', '/img/videoPic/201810232222-2.jpg', 3.00, 'https://pan.baidu.com/s/1E1NkrGLr4S9vRId9ZSO87w', '9lh1', '865750866');
INSERT INTO `video` VALUES (5, 2, '日本大叔舔美女脚', '日本大叔舔美女脚，十分好看，舔的十分卖力，特别舒服。', '/img/videoPic/201810241959-2.jpg', 2.00, 'https://pan.baidu.com/s/1_J8-i_T8h2epA3L9cJnBzA', '1tb6', '865750866');
INSERT INTO `video` VALUES (6, 3, '闻法国女生大脚', '闻法国女生大脚，十分的香，还被踩踏，女王十分的漂亮，特别漂亮', '/img/videoPic/201810242004-2.jpg', 2.00, 'https://pan.baidu.com/s/1zWNQF0CHPQk-b6-gho8Tig', 'yznx', '865750866');
INSERT INTO `video` VALUES (7, 1, '小黑屋闻媛主脚', '闻很漂亮的女生的脚，舔脚，踩踏，女生十分青涩，一言不发，很享受的样子，特别喜欢这样的片子哦！', '/img/videoPic/201810302336-2.jpg', 1.00, 'https://pan.baidu.com/s/1Kl_-q5SmDKnVeHC8hkcHGg', 'x0ug', '865750866');
INSERT INTO `video` VALUES (8, 1, '【婉慈Icon】居家人字拖裸足舔', '【婉慈Icon】居家人字拖裸足舔,超级大美女穿人字拖，踩踏，调教，舔脚，舔鞋，舔鞋底，狗狗舔的十分卖力，主人也十分享受，语言调教十分犀利，让狗狗欲罢不能。', '/img/videoPic/201810302349-2.jpg', 3.00, NULL, NULL, '865750866');
INSERT INTO `video` VALUES (9, 4, '韩国大叔舔黑丝', '韩国大叔路边遇见黑丝小萝莉，小萝莉特别漂亮，给其舔脚，舒服！', '/img/videoPic/201810302354-4.jpg', 2.00, NULL, NULL, '865750866');

SET FOREIGN_KEY_CHECKS = 1;
