module.exports = (sequelize, DataTypes) => {
  const Category = sequelize.define('Category', {
    id: {
      type:           DataTypes.INTEGER,
      allowNull:      false,
      primaryKey:     true,
      autoIncrement:  true
    },
    name: {
      type:           DataTypes.STRING,
      index:         true
    }
  })
  return Category
}


// CREATE TABLE IF NOT EXISTS `Categories` ( `id` INT NOT NULL AUTO_INCREMENT , 
// `name` VARCHAR(255) NOT NULL , 
// `createdAt` DATETIME NOT NULL , 
// `updatedAt` DATETIME NOT NULL , 
// PRIMARY KEY (`id`), 
// UNIQUE `name` (`name`(25))
// ) 
// ENGINE = InnoDB;