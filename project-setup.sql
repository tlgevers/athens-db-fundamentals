create table [if not exists] bill(
    clId,
    billNo,
    billDate,
    amountBilled
)

create table [if not exists] charge(
    jobNo,
    chargeDate,
    daysWorked,
    amountCharged,
    billNo
)

create table [if not exists] client(
    clId,
    clFname,
    clMinit,
    clLName,
    clStreet1,
    clStreet2,
    clCity,
    clZip,
    clPhone,
    contactPerson
)

