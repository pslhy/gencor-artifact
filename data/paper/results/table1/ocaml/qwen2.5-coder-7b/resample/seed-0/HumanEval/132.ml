(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Create a function that takes a string as input which contains only square brackets. *)
(*     The function should return true if and only if there is a valid subsequence of brackets *)
(*     where at least one bracket in the subsequence is nested. *)
(*     >>> is_nested "[[]]" *)
(*     true *)
(*     >>> is_nested "[]]]]]]][[[[[]" *)
(*     false *)
(*     >>> is_nested "[][]" *)
(*     false *)
(*     >>> is_nested "[]" *)
(*     false *)
(*     >>> is_nested "[[][]]" *)
(*     true *)
(*     >>> is_nested "[[]][[" *)
(*     true *)
let rec is_nested (string : string) : bool = 
  let rec helper (stack : char list) (count : int) (chars : char list) : bool = 
    match chars with
    | [] -> count > 1
    | x::xs -> 
      if x = '[' then helper (x::stack) count xs 
      else if x = ']' then (match stack with
                             | [] -> helper stack count xs
                             | _::ys -> helper ys (count + 1) xs)
      else helper stack count xs
  in helper [] 0 (List.of_string string)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:19: Unbound value "List.of_string" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_nested (string : string) : bool = 
  let rec helper (stack : char list) (count : int) (chars : char list) : bool = 
    match chars with
    | [] -> count > 1
    | x::xs -> 
      if x = '[' then helper (x::stack) count xs 
      else if x = ']' then (match stack with
                             | [] -> helper stack count xs
                             | _::ys -> helper ys (count + 1) xs)
      else helper stack count xs
  in helper [] 0 (String.to_list string)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:19: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_nested (string : string) : bool = 
  let rec helper (stack : char list) (count : int) (chars : char list) : bool = 
    match chars with
    | [] -> count > 1
    | x::xs -> 
      if x = '[' then helper (x::stack) count xs 
      else if x = ']' then (match stack with
                             | [] -> helper stack count xs
                             | _::ys -> helper ys (count + 1) xs)
      else helper stack count xs
  in helper [] 0 (Array.to_list (String.to_array string))

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:34: Unbound value "String.to_array" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_nested (string : string) : bool = 
  let rec helper (stack : char list) (count : int) (chars : char list) : bool = 
    match chars with
    | [] -> count > 1
    | x::xs -> 
      if x = '[' then helper (x::stack) count xs 
      else if x = ']' then (match stack with
                             | [] -> helper stack count xs
                             | _::ys -> helper ys (count + 1) xs)
      else helper stack count xs
  in helper [] 0 (String.to_seq string |> List.of_seq)

