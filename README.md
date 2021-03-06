# Ruby on Rails Ticket Booking Application

This is a simple Ruby on Rails app built to simulate the process of booking tickets in a typical ticket booking system. By default, the user that will be making the booking will be assigned to the first user in the database.

## The payment process

To simplify things, the payment process made use of a provided payment module.

![Payment Page](https://i.ibb.co/RcV7wTf/Screen-Shot-2019-08-25-at-23-07-03.png)

On the payment page, to stimulate payment errors:

- Enter 'card_error' to receive card decline message.

- Enter 'payment_error' to receive payment error message.

- Enter anything else to stimulate a successful transaction.

All reservations not paid within 15 minutes will expire and the user will have to start again. The unpaid reservations will be deleted from the database through a cronjob that runs every 16 minutes.

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```console
 bundle install --without production
```

Next, migrate the database:

```console
 rails db:migrate
```

Next, seed the database:

```console
 rails db:seed
```

Finally, run the test suite to verify that everything is working correctly:

```console
 rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```console
 rails server
```

##

The application can be viewed live at [Rails Ticket Booking App](https://stormy-reef-25660.herokuapp.com/)
