For the explanation, write the step-by-step lazy evaluation of each of the following _`lazyCaml`_ expressions; or if the expression does not terminate with a normal form, state why:

1. `treefind (crazytree 1 "?") "abuffalo?"`
Normal Form
true

2. `treefind (crazytree 1 "!") "buffalobuffalo!"`
Never
Never terminates

3. `let rec it1 = Node (it1, Leaf 4) in let rec it2 = Node (Leaf 3, it2) in eqtree it1 it2`
Normal Form
false

4. `let rec it4 = Node (it4, Leaf 4) in let rec it3 = Node(it3, Leaf 4) in eqtree it3 it4`
Never
never evaluates to true (* ask ab this and 3 *)