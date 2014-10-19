CREATE TABLE `users` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(100) NOT NULL DEFAULT '',
  `password` VARCHAR(255) DEFAULT NULL,
  `salt` VARCHAR(255) NOT NULL DEFAULT '',
  `roles` VARCHAR(255) NOT NULL DEFAULT '',
  `name` VARCHAR(100) NOT NULL DEFAULT '',
  `time_created` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

alter table users add username varchar(100) DEFAULT NULL;

CREATE TABLE `user_custom_fields` (
  user_id INT(11) UNSIGNED NOT NULL,
  attribute VARCHAR(50) NOT NULL DEFAULT '',
  value VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (user_id, attribute)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
