/* Create a new counter, initialized to 0. Call counterDestrou to get rido of it. */
struct counter * counterCreate(void);

/* Free space used by a counter. */
void counterDestroy(struct counter *);

/* Increment a counter and return new value. */
int counterIncrement(struct counter *);

