/*DELETE FROM computer_store.computers;
/*DELETE FROM computer_store.components;
  
  Do not delete here because cascade delete/update is on
 */

DELETE FROM computer_store.computer_types;
DELETE FROM computer_store.computer_vendors;
DELETE FROM computer_store.computer_providers;

/*Fill computer_types table*/
INSERT INTO computer_store.computer_types (typeid, typename)
VALUES (1,'desktop');

INSERT INTO computer_store.computer_types (typeid, typename)
VALUES (2,'laptop');

INSERT INTO computer_store.computer_types (typeid, typename)
VALUES (3,'tablet');

/*Fill computer_vendors table*/
INSERT INTO computer_store.computer_vendors (vendorid, vendorname, vendoraddress, vendorphone)
VALUES (
  '2714513601' -- vendorid - CHAR(10) NOT NULL
 ,'MSI' -- vendorname - VARCHAR(50)
 ,'No. 631, Zhongzheng Road Zhonghe District' -- vendoraddress - VARCHAR(50)
 ,'8-800-700-77-08' -- vendorphone - VARCHAR(50)
);

INSERT INTO computer_store.computer_vendors (vendorid, vendorname, vendoraddress, vendorphone)
VALUES (
  '2714513602' -- vendorid - CHAR(10) NOT NULL
 ,'Asus' -- vendorname - VARCHAR(50)
 ,'No. 631, Zhongzheng Road Zhonghe District' -- vendoraddress - VARCHAR(50)
 ,'8-800-700-88-08' -- vendorphone - VARCHAR(50)
);

INSERT INTO computer_store.computer_vendors (vendorid, vendorname, vendoraddress, vendorphone)
VALUES (
  '2714513603' -- vendorid - CHAR(10) NOT NULL
 ,'Gigabyte Technology' -- vendorname - VARCHAR(50)
 ,'No. 631, Zhongzheng Road Zhonghe District' -- vendoraddress - VARCHAR(50)
 ,'8-800-700-99-08' -- vendorphone - VARCHAR(50)
);

INSERT INTO computer_store.computer_vendors (vendorid, vendorname, vendoraddress, vendorphone)
VALUES (
  '2714513604' -- vendorid - CHAR(10) NOT NULL
 ,'Acer' -- vendorname - VARCHAR(50)
 ,'No. 631, Zhongzheng Road Zhonghe District' -- vendoraddress - VARCHAR(50)
 ,'8-800-700-00-08' -- vendorphone - VARCHAR(50)
);

/*Fill computer_providers table*/
INSERT INTO computer_store.computer_providers (providerid, providername, provideraddress, providerphone)
VALUES
(
  '2714513605' -- providerid - CHAR(10) NOT NULL
 ,'Telemart' -- providername - VARCHAR(50)
 ,'Киев, Довженко 3, 3057' -- provideraddress - VARCHAR(50)
 ,'8-800-700-00-08' -- providerphone - VARCHAR(50)
);

INSERT INTO computer_store.computer_providers (providerid, providername, provideraddress, providerphone)
VALUES
(
  '2714513606' -- providerid - CHAR(10) NOT NULL
 ,'Matrix.ua' -- providername - VARCHAR(50)
 ,'Вадима Гетьмана, 13, 3055 Киев, г. Киев, Ukraine' -- provideraddress - VARCHAR(50)
 ,'380442602609' -- providerphone - VARCHAR(50)
);

INSERT INTO computer_store.computer_providers (providerid, providername, provideraddress, providerphone)
VALUES
(
  '2714513607' -- providerid - CHAR(10) NOT NULL
 ,'ITBOX' -- providername - VARCHAR(50)
 ,'Машиностроительная 44, 3680 Киев, г. Киев, Ukraine' -- provideraddress - VARCHAR(50)
 ,'0 (800) 501-258' -- providerphone - VARCHAR(50)
);

/*Fill computers table*/
INSERT INTO computer_store.computers (computerid, typeid, computername, computerprice, balance, vendorid, providerid)
VALUES
(
  1 -- computerid - INT(11) NOT NULL
 ,1 -- typeid - INT(11)
 ,'Base game PC' -- computername - VARCHAR(50)
 ,70000 -- computerprice - INT(11)
 ,26 -- balance - INT(11)
 ,'2714513601' -- vendorid - CHAR(10)
 ,'2714513605' -- providerid - CHAR(10)
);

/*Fill components table*/
INSERT INTO computer_store.components (componentid, computerid, componentname, componentnum)
VALUES
(
  1 -- componentid - INT(11) NOT NULL
 ,1 -- computerid - INT(11)
 ,'Intel Core i3-6100' -- componentname - VARCHAR(50)
 ,1 -- componentnum - INT(11)
);

INSERT INTO computer_store.components (componentid, computerid, componentname, componentnum)
VALUES
(
  2 -- componentid - INT(11) NOT NULL
 ,1 -- computerid - INT(11)
 ,'DDR3-1600, 4Gb' -- componentname - VARCHAR(50)
 ,2 -- componentnum - INT(11)
);

INSERT INTO computer_store.components (componentid, computerid, componentname, componentnum)
VALUES
(
  3 -- componentid - INT(11) NOT NULL
 ,1 -- computerid - INT(11)
 ,'HDD 1000 Gb, 7200 rpm' -- componentname - VARCHAR(50)
 ,1 -- componentnum - INT(11)
);

INSERT INTO computer_store.components (componentid, computerid, componentname, componentnum)
VALUES
(
  4 -- componentid - INT(11) NOT NULL
 ,1 -- computerid - INT(11)
 ,'Intel H110/B150 (LGA1151)' -- componentname - VARCHAR(50)
 ,1 -- componentnum - INT(11)
);

INSERT INTO computer_store.components (componentid, computerid, componentname, componentnum)
VALUES
(
  5 -- componentid - INT(11) NOT NULL
 ,1 -- computerid - INT(11)
 ,'NVIDIA GeForce GTX 750 Ti' -- componentname - VARCHAR(50)
 ,1 -- componentnum - INT(11)
);

INSERT INTO computer_store.components (componentid, computerid, componentname, componentnum)
VALUES
(
  6 -- componentid - INT(11) NOT NULL
 ,1 -- computerid - INT(11)
 ,'Middle Tower ATX, 450 W' -- componentname - VARCHAR(50)
 ,1 -- componentnum - INT(11)
);

INSERT INTO computer_store.components (componentid, computerid, componentname, componentnum)
VALUES
(
  7 -- componentid - INT(11) NOT NULL
 ,1 -- computerid - INT(11)
 ,'Display 23″, IPS matrix, DVI/HDMI' -- componentname - VARCHAR(50)
 ,1 -- componentnum - INT(11)
);