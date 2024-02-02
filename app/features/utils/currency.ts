import Dinero from "dinero.js";

export function formatCurrency(amount: number): string {
  return Dinero({amount}).toFormat("$0,0.00")
}