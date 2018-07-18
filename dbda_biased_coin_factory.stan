data {
  int<lower = 1> T;
  int<lower = 0> y;
  real<lower = 0> beta_a;
  real<lower = 0> beta_b;
}
parameters {
  real<lower = 0, upper = 1> theta;
}
model {
  target += beta_lpdf(theta | beta_a, beta_b);  // prior
  target += binomial_lpmf(y | T, theta);  // likelihood
}
