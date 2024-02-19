Exercise_2:

The deposit function has the same issue as in Exercise_1.

The withdraw function has a re-entrancy bug. The balance is deducted after the transfer, which allows for recursive calls.

The addBalances and subtractBalances functions allow anyone to arbitrarily modify any account’s balance.

The destroyContract function can be called by anyone, potentially destroying the contract at any time.
