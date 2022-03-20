{% docs payment_method %}
	
One of the following values: 

| status         | definition                                       |
|----------------|--------------------------------------------------|
| bank_transfer  | Bank transfer                                    |
| coupon         | Store coupon                                     |
| credit_card    | Credit or debit card                             |
| gift_card      | Gift card                                        |

{% enddocs %}


{% docs payment_status %}
	
One of the following values: 

| status         | definition                                       |
|----------------|--------------------------------------------------|
| success        | Payment went through successfully.               |
| fail           | Payment declined or another error occurred.      |

{% enddocs %}