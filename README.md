# Oystercard Challenge

### Complete Project Domain Model
===============================
| class            | class                   |
|------------------|-------------------------|
| class            | Oystercard              |        
| variable         | maximum_amount: Integer |
| variable         | minimum_amount: Integer |
| variable         | balance: Integer        |
| variable         |        |
| class            |                         |
| methods          | touch_in()              |
| methods          | touch_out()             |
| methods          | add_money()             |
| methods          | deduct_fare()           |
-------------------
### User story 1-4 Domain Model
===============================

| class            | class                   |
|------------------|-------------------------|
| class            | Oystercard              |        
| variable         | maximum_amount: Integer |
| variable         | balance: Integer        |
| methods          | add_money()             |
| methods          | deduct_fare()           |


```
In order to use public transport
As a customer
I want money on my card
```
Nouns: money, card // Verbs:
"money on my card"

```
In order to keep using public transport
As a customer
I want to add money to my card
```
Nouns: money, card // Verbs:
"add money to my card"

```
In order to protect my money
As a customer
I don't want to put too much money on my card
```
Nouns: money, card // Verbs:
money restriction/maximum_amount

```
In order to pay for my journey
As a customer
I need my fare deducted from my card
```
Nouns: fare, card // Verbs:
"deducted from my card"

```
In order to get through the barriers
As a customer
I need to touch in and out
```
Verbs:
"touch in and out"

```
In order to pay for my journey
As a customer
I need to have the minimum amount for a single journey
```
Nouns: amount // Verbs:
"minimum amount for a single journey"

```
In order to pay for my journey
As a customer
I need to pay for my journey when it's complete
```
Verbs: 
"pay for my journey when it's complete"

```
In order to pay for my journey
As a customer
I need to know where I've travelled from
```
Verbs: 
"know where I've travelled from"

```
In order to know where I have been
As a customer
I want to see to all my previous trips
```
Nouns: trips // 
Verbs:
"see to all my previous trips"

```
In order to know how far I have travelled
As a customer
I want to know what zone a station is in
```
Nouns: zone, station
Verbs: 
"know what zone a station is in"
```
In order to be charged correctly
As a customer
I need a penalty charge deducted if I fail to touch in or out
```
Nouns: penalty, charge
Verbs: 
"charge deducted if I fail to touch in or out"

```
In order to be charged the correct amount
As a customer
I need to have the correct fare calculated
```
Nouns: fare
Verbs: 
"correct fare calculated"