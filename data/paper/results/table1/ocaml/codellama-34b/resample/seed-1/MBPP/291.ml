(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find out the number of ways of painting the fence such that at most 2 adjacent posts have the same color for the given fence with n posts and k colors. *)
let rec count_no_of_ways (n : int) (k : int) : int =
    (* base case: if n == 0 or k == 0, return 0 *)
    if n == 0 || k == 0 then 0
    (* base case: if n == 1, return k *)
    else if n == 1 then k
    (* recursive case: if n > 1 *)
    else 
        let current_color = k - 1 (* the current color to be painted on the current post *)
        let next_color = (current_color + 1) % k (* the next color to be painted on the next post *)
        (* the number of ways of painting the current post is k *)
        let no_of_ways = k
        (* the number of ways of painting the next post is k - 1, since the current color cannot be repeated on the next post *)
        let no_of_ways = no_of_ways + (k - 1)
        (* the number of ways of painting the rest of the posts is equal to the number of ways of painting the current post minus the number of ways of painting the next post *)
        let no_of_ways = no_of_ways + (count_no_of_ways (n - 2) k)
        no_of_ways

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_no_of_ways (n : int) (k : int) : int =
    if n = 0 then 0 else if n = 1 then k else
    let current_color = k - 1 in
    let next_color = (current_color + 1) % k in
    let no_of_ways = k + (k - 1) + (count_no_of_ways (n - 2) k) in
    no_of_ways

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:42: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_no_of_ways (n : int) (k : int) : int =
    if n = 0 then 0
    else if n = 1 then k
    else
        let current_color = k - 1 in
        let next_color = (current_color + 1) mod k in
        let no_of_ways = k + (k - 1) + (count_no_of_ways (n - 2) k) in
        no_of_ways

