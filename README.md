# Ruby on Rails Ticket Booking Application

This is a simple Ruby on Rails app built to simulate the process of booking tickets in a typical ticket booking system.

## The payment process

To simplify things, the payment process made use of a provided payment module.

![Payment Page](https://ibb.co/PgftHGK)

On the payment page, to stimulate payment errors:

- Enter 'card_error' to receive card decline message.

- Enter 'payment_error' to receive payment error message.

- Enter anything else to stimulate a successful transaction.

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```console
 bundle install --without production
```

Next, migrate the database:

```console
 rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```console
 rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```console
 rails server
```
