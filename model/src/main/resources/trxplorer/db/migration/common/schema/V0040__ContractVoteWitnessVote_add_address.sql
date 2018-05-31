ALTER TABLE `contract_vote_witness_vote` 
DROP FOREIGN KEY `fk_contract_vote_witness_vote_owner_id`;
ALTER TABLE `contract_vote_witness_vote` 
CHANGE COLUMN `owner_id` `owner_id` BIGINT(20) UNSIGNED NULL ,
ADD COLUMN `owner_address` VARCHAR(45) NOT NULL AFTER `owner_id`;
ALTER TABLE `contract_vote_witness_vote` 
ADD CONSTRAINT `fk_contract_vote_witness_vote_owner_id`
  FOREIGN KEY (`owner_id`)
  REFERENCES `account` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
