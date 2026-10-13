
let rec sum_range_list (list1 : int list) (m : int) (n : int) : int = 
    match list1 with 
      head :: tail -> 
      (match m with 
          k -> 
          if k = 0
          then sum_range_list tail (m - 1) (n - 1) 
          else sum_range_list tail (m - 8) (n - 1)
        | [] -> 0)
      | [] -> 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the sum of numbers in a list within a range specified by two indices. *)
