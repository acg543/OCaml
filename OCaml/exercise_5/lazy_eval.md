1. `take 2 (squares 3)`
Normal Form
[9; 16]

2. `fold_right (&&) (map ((<) 0) (squares 2)) true`
Never
Squares 2 will never be evaluated

3. `fold_right (||)  (map (fun n -> n mod 3 = 0) (factorials ())) false`
Normal Form
true

4. `take (sum_list (squares 1)) (factorials ())`
Never
Can never sum_list since the two arguments go forever

5. `take 1 (reverse (squares 2))`
Never
reverse squares 2 will loop forever reversing back and forth

6. `fold_right (+) (take 1 (factorials ())) 0`
Normal Form
1

7. `(fun x -> if false then x else ()) (flip 0 0)`
Normal Form
This function will continuously flip