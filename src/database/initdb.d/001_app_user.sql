-- ユーザー情報テーブル
-- ユーザーの認証情報を保存する。

CREATE TABLE `User` (

    -- カラム情報
    `UserID`      int(11)       NOT NULL  COMMENT 'ユーザーID',
    `UserName`    varchar(64)   NOT NULL  COMMENT 'ユーザー名',
    `Password`    varchar(64)   NOT NULL  COMMENT 'パスワード', -- これはサンプルのため平文保存になっている
    `Created_At`  datetime      NOT NULL  COMMENT '登録日時',
    `Updated_At`  datetime      NOT NULL  COMMENT '更新日時',

    -- インデックス
    PRIMARY KEY (`UserID`),
    UNIQUE KEY `Index_UserName` (`UserName`)

    -- 外部キー情報
    -- なし

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 初期データ
INSERT INTO `User` (`UserID`, `UserName`, `Password`, `Created_At`, `Updated_At`) VALUES
(1, 'admin', 'admin', NOW(), NOW());
