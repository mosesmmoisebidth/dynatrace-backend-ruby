class CandidateEntity < ApplicationRecord
    enum qualification: { CERTIFICATE: 0, ASSOCIATE_DEGREE: 1, BACHELORS_DEGREE: 2, MASTERS_DEGREE: 3, DOCTORATE_DEGREE: 4 }
    enum experience: { FRESH: 0, ONE_YEAR: 1, TWO_YEARS: 2, THREE_YEARS: 3, FOUR_YEARS: 4, FIVE_YEARS: 5, FIVE_YEARS_PLUS: 6, TEN_YEARS_PLUS: 7 }
    enum salary: { YEARLY: 0, HOURLY: 1, MONTHLY: 2, DAILY: 3, WEEKLY: 4 }
    enum profile_show: { YES: 0, NO: 1 }
    enum gender: { FEMALE: 0, MALE: 1, BOTH: 2, NONE: 3 }