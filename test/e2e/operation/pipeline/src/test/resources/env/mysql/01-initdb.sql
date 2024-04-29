--
-- Licensed to the Apache Software Foundation (ASF) under one or more
-- contributor license agreements.  See the NOTICE file distributed with
-- this work for additional information regarding copyright ownership.
-- The ASF licenses this file to You under the Apache License, Version 2.0
-- (the "License"); you may not use this file except in compliance with
-- the License.  You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--

REVOKE ALL PRIVILEGES ON *.* FROM 'test_user'@'%';

DROP DATABASE IF EXISTS pipeline_it_0;
DROP DATABASE IF EXISTS pipeline_it_1;
DROP DATABASE IF EXISTS pipeline_it_2;
DROP DATABASE IF EXISTS pipeline_it_3;
DROP DATABASE IF EXISTS pipeline_it_4;
CREATE DATABASE pipeline_it_0;
CREATE DATABASE pipeline_it_1;
CREATE DATABASE pipeline_it_2;
CREATE DATABASE pipeline_it_3;
CREATE DATABASE pipeline_it_4;

GRANT REPLICATION CLIENT, REPLICATION SLAVE ON *.* TO `test_user`@`%`;
-- TODO remove unnecessary permissions
GRANT CREATE, DROP, SELECT, INSERT, UPDATE, DELETE, INDEX ON pipeline_it_0.* TO `test_user`@`%`;
GRANT CREATE, DROP, SELECT, INSERT, UPDATE, DELETE, INDEX ON pipeline_it_1.* TO `test_user`@`%`;
GRANT CREATE, DROP, SELECT, INSERT, UPDATE, DELETE, INDEX ON pipeline_it_2.* TO `test_user`@`%`;
GRANT CREATE, DROP, SELECT, INSERT, UPDATE, DELETE, INDEX ON pipeline_it_3.* TO `test_user`@`%`;
GRANT CREATE, DROP, SELECT, INSERT, UPDATE, DELETE, INDEX ON pipeline_it_4.* TO `test_user`@`%`;
