import Stripe from "stripe";

const stripe = new Stripe(ENV.STRIPE_PRIVATE_KEY, {
  apiVersion: "2023-10-16",
});

export async function retrievePaymentIntent(paymentIntentId: string) {
  return await stripe.paymentIntents.retrieve(paymentIntentId);
}

export async function createPaymentIntent(amount: number) {
  return await stripe.paymentIntents.create({
    amount,
    currency: "usd",
    automatic_payment_methods: {
      enabled: true,
    },
  });
}