public with sharing class ApexUseCaseTwo {
    public static Decimal calculateInterest(Decimal principal, Decimal interst, Integer timeInYears) {
        if(principal != null && interst != null && timeInYears != null) {
            Decimal simpleInterest = (principal * interst * timeInYears) / 100;
            return simpleInterest;
        }

        return 0;
    }
}