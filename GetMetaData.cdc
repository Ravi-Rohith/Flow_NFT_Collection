import CryptoPoops from 0x06
import NonFungibleToken from 0x05

pub fun main(account: Address, id: UInt64): String{
    let ref = getAccount(account).getCapability(/public/Collection)
                .borrow<&CryptoPoops.Collection{CryptoPoops.MyPublicCollection}>()
                ??panic("This account does not have Collection")

    return ref.borrowAuthNFT(id: id).name
}