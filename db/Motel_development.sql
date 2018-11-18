-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2018-10-05 12:49:46.97

-- tables
-- Table: Area
CREATE TABLE Area (
    idArea int NOT NULL AUTO_INCREMENT,
    nameArea varchar(255) NOT NULL,
    floor int NOT NULL,
    CONSTRAINT Area_pk PRIMARY KEY (idArea)
);

-- Table: Device
CREATE TABLE Device (
    idDevice int NOT NULL AUTO_INCREMENT,
    nameDevice varchar(255) NOT NULL,
    branchDevice varchar(255) NOT NULL,
    quantity int NOT NULL,
    statusDevice varchar(255) NOT NULL,
    dayPurchase date NOT NULL,
    costDevice int NOT NULL,
    idRoom int NOT NULL,
    CONSTRAINT Device_pk PRIMARY KEY (idDevice)
);

-- Table: Guest
CREATE TABLE Guest (
    idGuest int NOT NULL AUTO_INCREMENT,
    fullName varchar(255) NOT NULL,
    idCard int NOT NULL,
    sex char(10) NOT NULL,
    job varchar(255) NOT NULL,
    address varchar(255) NOT NULL,
    phoneNumber char(20) NOT NULL,
    image varchar(255) NOT NULL,
    statusGuest int NOT NULL,
    id int NOT NULL,
    idRoom int NOT NULL,
    CONSTRAINT Guest_pk PRIMARY KEY (idGuest)
);

-- Table: PaymentManagement
CREATE TABLE PaymentManagement (
    idPM int NOT NULL AUTO_INCREMENT,
    dayPM date NOT NULL,
    idGuest int NOT NULL,
    idService int NOT NULL,
    idRoom int NOT NULL,
    electricity int NOT NULL,
    internet int NOT NULL,
    water int NOT NULL,
    roomPrice int NOT NULL,
    debt int NOT NULL,
    CONSTRAINT PaymentManagement_pk PRIMARY KEY (idPM)
);

-- Table: PriceList
CREATE TABLE PriceList (
    idPL int NOT NULL AUTO_INCREMENT,
    price int NOT NULL,
    idArea int NOT NULL,
    CONSTRAINT PriceList_pk PRIMARY KEY (idPL)
);

-- Table: Room
CREATE TABLE Room (
    idRoom int NOT NULL AUTO_INCREMENT,
    nameRoom varchar(255) NOT NULL,
    maxSlot int NOT NULL,
    statusRoom varchar(255) NOT NULL,
    numOfPeople int NOT NULL,
    idArea int NOT NULL,
    CONSTRAINT Room_pk PRIMARY KEY (idRoom)
);

-- Table: RoomCheckOut
CREATE TABLE RoomCheckOut (
    idRco int NOT NULL AUTO_INCREMENT,
    dayRco date NOT NULL,
    note text NOT NULL,
    idGuest int NOT NULL,
    CONSTRAINT RoomCheckOut_pk PRIMARY KEY (idRco)
);

-- Table: RoomRentalManager
CREATE TABLE RoomRentalManager (
    idRRM int NOT NULL AUTO_INCREMENT,
    dayRent date NOT NULL,
    statusRent varchar(255) NOT NULL,
    deposit int NOT NULL,
    idGuest int NOT NULL,
    CONSTRAINT RoomRentalManager_pk PRIMARY KEY (idRRM)
);

-- Table: Service
CREATE TABLE Service (
    idService int NOT NULL AUTO_INCREMENT,
    nameService varchar(255) NOT NULL,
    unit varchar(255) NOT NULL,
    unitPrice int NOT NULL,
    CONSTRAINT Service_pk PRIMARY KEY (idService)
);

-- foreign keys
-- Reference: Device_Room (table: Device)
ALTER TABLE Device ADD CONSTRAINT Device_Room FOREIGN KEY Device_Room (idRoom)
    REFERENCES Room (idRoom);

-- Reference: Guest_Room (table: Guest)
ALTER TABLE Guest ADD CONSTRAINT Guest_Room FOREIGN KEY Guest_Room (idRoom)
    REFERENCES Room (idRoom);

-- Reference: PaymentManagement_Guest (table: PaymentManagement)
ALTER TABLE PaymentManagement ADD CONSTRAINT PaymentManagement_Guest FOREIGN KEY PaymentManagement_Guest (idGuest)
    REFERENCES Guest (idGuest);

-- Reference: PaymentManagement_Room (table: PaymentManagement)
ALTER TABLE PaymentManagement ADD CONSTRAINT PaymentManagement_Room FOREIGN KEY PaymentManagement_Room (idRoom)
    REFERENCES Room (idRoom);

-- Reference: PaymentManagement_Service (table: PaymentManagement)
ALTER TABLE PaymentManagement ADD CONSTRAINT PaymentManagement_Service FOREIGN KEY PaymentManagement_Service (idService)
    REFERENCES Service (idService);

-- Reference: PriceList_Area (table: PriceList)
ALTER TABLE PriceList ADD CONSTRAINT PriceList_Area FOREIGN KEY PriceList_Area (idArea)
    REFERENCES Area (idArea);

-- Reference: RoomCheckOut_Guest (table: RoomCheckOut)
ALTER TABLE RoomCheckOut ADD CONSTRAINT RoomCheckOut_Guest FOREIGN KEY RoomCheckOut_Guest (idGuest)
    REFERENCES Guest (idGuest);

-- Reference: RoomRentalManager_Guest (table: RoomRentalManager)
ALTER TABLE RoomRentalManager ADD CONSTRAINT RoomRentalManager_Guest FOREIGN KEY RoomRentalManager_Guest (idGuest)
    REFERENCES Guest (idGuest);

-- Reference: Room_Area (table: Room)
ALTER TABLE Room ADD CONSTRAINT Room_Area FOREIGN KEY Room_Area (idArea)
    REFERENCES Area (idArea);

-- End of file.

