(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the sum of numbers in a list within a range specified by two indices. *)
let rec sum_range_list (list1 : int list) (m : int) (n : int) : int = 
    match list1 with 
      head :: tail -> 
      (match m with 
          k -> 
          if k = 0 ->
              if k = n -> 
                  head
              else
                  head + sum_range_list tail (k+ 1) n
          else ->
              sum_range_list tail m n)    
| [] -> 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:20: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sum_range_list (list1 : int list) (m : int) (n : int) : int =
    match list1 with
    | [] -> 0
    | head :: tail ->
        if m <= n then
            head + sum_range_list tail (m + 1) n
        else
            0

