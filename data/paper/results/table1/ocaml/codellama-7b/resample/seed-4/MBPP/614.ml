(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the cumulative sum of all the values that are present in the given list of lists. *)
let rec cummulative_sum (test_list : int list list) : int = 
    match test_list with
      head :: tail ->  cumulative_sum tail  + (List.fold_left (+) 0 head) 
      [] -> 0
 
(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:10: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec cummulative_sum (test_list : int list list) : int = 
    let list_sum = 0 in
    let rec loop (l : int list) : int = 
        match l with
        | [] -> list_sum
        | h :: t -> loop t
    in
    loop test_list

