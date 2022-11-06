module.exports = (sequelize, DataTypes) => {
  const User = sequelize.define('User', {
    id: {
      type:             DataTypes.INTEGER,
      allowNull:        false,
      primaryKey:       true,
      autoIncrement:    true
    },
    username: {
      type:             DataTypes.STRING,
      // unique:           true
    },                  
    firstName:          DataTypes.STRING,
    lastName:           DataTypes.STRING,
    profileImage:       DataTypes.STRING,
    registerToken:      DataTypes.STRING,
    email: {
      type:             DataTypes.STRING,
      index:           true
    },
    phoneNo:            DataTypes.STRING,
    password:           DataTypes.STRING,
    resetPasswordToken: DataTypes.STRING,
    userType:           DataTypes.STRING,
    variant:            DataTypes.STRING,
    priority:           DataTypes.INTEGER,
  })
  User.associate = function (models) {
    User.belongsTo(models.Company)
  }
  return User
}



// CREATE TABLE IF NOT EXISTS `Users` (`id` INTEGER NOT NULL auto_increment , 
//                                     `username` VARCHAR(255) NOT NULL, 
//                                     `firstName` VARCHAR(255), 
//                                     `lastName` VARCHAR(255), 
//                                     `profileImage` VARCHAR(255), 
//                                     `registerToken` VARCHAR(255), 
//                                     `email` VARCHAR(255) NOT NULL, 
//                                     `phoneNo` VARCHAR(255), 
//                                     `password` VARCHAR(255), 
//                                     `resetPasswordToken` VARCHAR(255), 
//                                     `userType` VARCHAR(255), 
//                                     `variant` VARCHAR(255), 
//                                     `priority` INTEGER, 
//                                     `createdAt` DATETIME NOT NULL, 
//                                     `updatedAt` DATETIME NOT NULL, 
//                                     `CompanyId` INTEGER, PRIMARY KEY (`id`),
//                                     UNIQUE `username` (`username`(25)),
//                                     UNIQUE `email` (`email`(25)),
//                                     FOREIGN KEY (`CompanyId`) REFERENCES `Companies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE) ENGINE=InnoDB;