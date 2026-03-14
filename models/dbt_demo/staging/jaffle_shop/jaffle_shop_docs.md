{% docs order_status %}
One of the following values:

| status         | definition                                              |
|----------------|---------------------------------------------------------|
| placed         | Order placed, but not shipped yet.                      |
| shipped        | Order shipped, but not delivered.                       |
| completed      | Order received by customers.                            |
| return_pending | Customer indicated they would like to return this item. |
| returned       | Item returned.                                          |

{% enddocs %}