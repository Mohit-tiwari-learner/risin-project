module MyModule::PredictionMarket {
    use aptos_framework::signer;
    use aptos_framework::coin;
    use aptos_framework::aptos_coin::AptosCoin;

    struct Prediction has store, key {
        description: vector<u8>, // Description of the prediction
        total_funds: u64,        // Total funds in the prediction
        outcome: u8,             // Outcome of the prediction (0 for false, 1 for true)
        finalized: bool,         // Indicates if the prediction is finalized
    }

    // Function to create a new prediction market
    public fun create_prediction(owner: &signer, description: vector<u8>) {
        let prediction = Prediction {
            description,
            total_funds: 0,
            outcome: 0,
            finalized: false,
        };
        move_to(owner, prediction);
    }


}
