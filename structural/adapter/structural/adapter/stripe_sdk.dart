class StripeSDK {
  void makeTransaction(int amountInCents, String currency) {
    print('💰 Stripe:  ${amountInCents / 100} $currency');
  }
}
