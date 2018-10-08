# Oystercard Challenge #

## Focus Goals ##

__*I write code that is easy to change*__
Writing easy to change software is highly prized amongst developers and employers. By developers because most of a developer's time is spent changing software. By employers because their teams can deliver value to customers faster.

__*I can test-drive my code*__
Tested software is easier to change because you can tell when it's broken just by running a command, even the tricky edge cases.

__*I can build with objects*__
Most code in the world is structured in small pieces called objects. This is done because it is easier to change than having everything in one place.

## User Stories ##

#### User Story ####
```
In order to use public transport
As a customer
I want money on my card
```

#### Feature Test ####
```
require './lib/oystercard'
card = Oystercard.new
card.balance
```

I am thinking that the balance should be kept as an attribute within the Oystercard. This can then have a default value that is set when creating a new card.

#### User Story ####
```
In order to keep using public transport
As a customer
I want to add money to my card
```

#### Feature Test ####
```
require './lib/oystercard'
card = Oystercard.new
card.top_up(10)
```

#### User Story ####
```
In order to protect my money
As a customer
I don't want to put too much money on my card
```

#### Feature Test ####
```
require './lib/oystercard'
card = Oystercard.new
card.top_up(100)
```

This should raise an error.

#### User Story ####
```
In order to pay for my journey
As a customer
I need my fare deducted from my card
```

#### Feature Test ####
```
require './lib/oystercard'
card = Oystercard.new
card.deduct(5)
```

#### User Story ####
```
In order to get through the barriers
As a customer
I need to touch in and out
```

#### Feature Test ####
```
require './lib/oystercard'
card = Oystercard.new
card.touch_in
card.in_journey?
card.touch_out
```

#### User Story ####
```
In order to pay for my journey
As a customer
I need to have the minimum amount for a single journey

In order to pay for my journey
As a customer
I need to pay for my journey when it's complete

In order to pay for my journey
As a customer
I need to know where I've travelled from

In order to know where I have been
As a customer
I want to see to all my previous trips

In order to know how far I have travelled
As a customer
I want to know what zone a station is in

In order to be charged correctly
As a customer
I need a penalty charge deducted if I fail to touch in or out

In order to be charged the correct amount
As a customer
I need to have the correct fare calculated
```
