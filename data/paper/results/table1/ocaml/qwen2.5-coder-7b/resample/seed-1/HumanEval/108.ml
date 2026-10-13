(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function count_nums which takes a list of integers and returns *)
(*     the number of elements which has a sum of digits > 0. *)
(*     If a number is negative, then its first signed digit will be negative: *)
(*     e.g. -123 has signed digits -1, 2, and 3. *)
(*     >>> count_nums [] *)
(*     0 *)
(*     >>> count_nums [(-1); 11; (-11)] *)
(*     1 *)
(*     >>> count_nums [1; 1; 2] *)
(*     3 *)
let rec count_nums (arr : int list) : int = 
  let rec sum_digits n =
    if n = 0 then 0
    else n mod 10 + sum_digits (n / 10)
  in
  let count positive acc = function
    | [] -> acc
    | h::t -> 
        let digit_sum = if h < 0 then sum_digits (-h) else sum_digits h in
        if digit_sum > 0 then count true (if positive then acc + 1 else acc)
        else count true acc
  in
  count true 0 arr

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:31: Unbound value "count" *)
(*     Hint: If this is a recursive definition, *)
(*     you should add the "rec" keyword on line 6 *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_nums (arr : int list) : int = 
  let rec sum_digits n =
    if n = 0 then 0
    else n mod 10 + sum_digits (n / 10)
  in
  let rec count positive acc = function
    | [] -> acc
    | h::t -> 
        let digit_sum = if h < 0 then sum_digits (-h) else sum_digits h in
        if digit_sum > 0 then count positive (if positive then acc + 1 else acc)
        else count false acc
  in
  count true 0 arr

