import CryptoPoops from 0x06
import NonFungibleToken from 0x05

transaction {

  prepare(acct: AuthAccount) {
    acct.save( <- CryptoPoops.createEmptyCollection(), to: /storage/Collection)
    acct.link<&CryptoPoops.Collection{NonFungibleToken.CollectionPublic, CryptoPoops.MyPublicCollection}>(/public/Collection, target: /storage/Collection)
    }

    execute {
    log("Created a Collection")
    }
    }