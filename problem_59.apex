/* 

A financial institution needs an automated fraud detection system to analyze transactions and identify possible fraud attempts. This is crucial because fraud can lead to huge financial losses and damage customer trust.

    📌 Rules for Fraud Detection:
    1️⃣ High-Value Transactions:

    If a single transaction exceeds $10,000, it is considered suspicious and should be flagged as fraudulent.

    This is based on banking regulations that often require manual review for large transactions.

    2️⃣ Multiple Transactions in a Short Timeframe:

    If a customer makes multiple transactions within a minute, it could indicate suspicious behavior (e.g., trying to bypass limits by splitting transactions).

    The system should flag this pattern and alert bank officials.

    3️⃣ Transactions from Blacklisted Countries:

    If a transaction originates from blacklisted countries (e.g., North Korea, Iran, Syria), it should be immediately flagged.

    This is based on global anti-money laundering (AML) regulations that restrict transactions from certain high-risk countries.

    4️⃣ Negative Transaction Amount:

    If a transaction amount is negative, it means something is wrong with the input data (e.g., an error in processing or a fraud attempt).

Instead of flagging it as fraud, the system should immediately throw an error to prevent processing.



 */

public class FraudDetectionSystem {

    // List of blacklisted countries
    private static final Set<String> BLACKLISTED_COUNTRIES = new Set<String>{'North Korea', 'Iran', 'Syria'};

    // Store recent transactions (to check multiple transactions in a minute)
    private static Map<Id, List<Datetime>> userTransactionHistory = new Map<Id, List<Datetime>>();

    // Method to check for fraudulent transactions
    public static void checkFraudulentTransaction(Id userId, Decimal amount, String country, Datetime transactionTime) {
        
        // ✅ Rule 1: Negative Amount Check
        if (amount < 0) {
            throw new IllegalArgumentException('❌ Invalid transaction! Amount cannot be negative.');
        }

        // ✅ Rule 2: High-Value Transaction Check
        if (amount > 10000) {
            System.debug('🚨 Fraudulent Transaction Detected! Reason: High-Value Transaction ($' + amount + ').');
            return;
        }

        // ✅ Rule 3: Blacklisted Country Check
        if (BLACKLISTED_COUNTRIES.contains(country)) {
            System.debug('🚨 Fraudulent Transaction Detected! Reason: Transaction from Blacklisted Country (' + country + ').');
            return;
        }

        // ✅ Rule 4: Multiple Transactions in One Minute Check
        if (!userTransactionHistory.containsKey(userId)) {
            userTransactionHistory.put(userId, new List<Datetime>());
        }
        
        List<Datetime> transactionTimes = userTransactionHistory.get(userId);
        
        // Remove transactions older than 1 minute
        transactionTimes.removeIf(t -> t.addMinutes(1) < transactionTime);

        // If 2 or more transactions happened within 1 minute, flag as fraud
        if (transactionTimes.size() >= 2) {
            System.debug('🚨 Fraudulent Transaction Detected! Reason: Multiple transactions within 1 minute.');
            return;
        }

        // Add current transaction time to history
        transactionTimes.add(transactionTime);
        
        // ✅ If no fraud detected
        System.debug('✅ Transaction Approved: $' + amount + ' from ' + country);
    }
}
