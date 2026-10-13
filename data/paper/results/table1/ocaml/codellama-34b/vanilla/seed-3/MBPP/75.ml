let rec find_tuples (test_list :  (int * int * int) list) (k : int) :  (int * int * int) list =
  let rec helper (test_list :  (int * int * int) list) (acc :  (int * int * int) list) :  (int * int * int) list =
    match test_list with
    | [] -> acc
    | (a, b, c) :: tail ->
      if a mod k = 0 && b mod k = 0 && c mod k = 0 then
        helper tail ((a, b, c) :: acc)
      else
        helper tail acc
  in
  helper test_list []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find tuples which have all elements divisible by k from the given list of tuples. *)
