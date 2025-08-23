module onchain_bio_addr::onchain_bio {
  use std::string::{String};
  use std::signer;

  struct Bio has key, store, drop {
      name: String,
      bio: String,
  }
  
  #[view]
  public fun signature(account: &signer) : address {
      signer::address_of(account)
  }

  public entry fun register(account: &signer, name: String, bio: String) acquires Bio {
    // Check if a Bio already exists for the account
    if (exists<Bio>(signer::address_of(account))) {
      // Remove the existing Bio
      let old_bio = move_from<Bio>(signer::address_of(account));
      // Optionally, you can log or handle the old bio
    };
    
    // Create the new Bio
    let new_bio = Bio {
      name,
      bio,
    };
    
    // Store the new Bio under the account
    move_to<Bio>(account, new_bio);
  }
}
