DROP TABLE IF EXISTS `test`;

CREATE TABLE IF NOT EXISTS `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ;

INSERT INTO `test` (`id`, `name`, `content_type_id`, `codename`) VALUES
           (1, 'Can add employee', 1, 'add_employee'),
           (2, 'Can change employee', 1, 'change_employee'),
           (3, 'Can delete employee', 1, 'delete_employee'),
           (4, 'Can view employee', 1, 'view_employee'),
           (5, 'Can add log entry', 2, 'add_logentry'),
           (6, 'Can change log entry', 2, 'change_logentry'),
           (7, 'Can delete log entry', 2, 'delete_logentry'),
           (8, 'Can view log entry', 2, 'view_logentry'),
           (9, 'Can add permission', 3, 'add_permission'),
           (10, 'Can change permission', 3, 'change_permission'),
           (11, 'Can delete permission', 3, 'delete_permission'),
           (12, 'Can view permission', 3, 'view_permission'),
           (13, 'Can add group', 4, 'add_group'),
           (14, 'Can change group', 4, 'change_group'),
           (15, 'Can delete group', 4, 'delete_group'),
           (16, 'Can view group', 4, 'view_group'),
           (17, 'Can add user', 5, 'add_user'),
           (18, 'Can change user', 5, 'change_user'),
           (19, 'Can delete user', 5, 'delete_user'),
           (20, 'Can view user', 5, 'view_user'),
           (21, 'Can add content type', 6, 'add_contenttype'),
           (23, 'Can delete content type', 6, 'delete_contenttype'),
           (24, 'Can view content type', 6, 'view_contenttype'),
           (25, 'Can add session', 7, 'add_session'),
           (26, 'Can change session', 7, 'change_session'),
           (27, 'Can delete session', 7, 'delete_session'),
           (28, 'Can view session', 7, 'view_session');
