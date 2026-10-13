let rec index_minimum (test_list :  (string * int) list) : string =
  match test_list with
  | [] -> raise (Invalid_argument "Empty list")
  | [(x,_)] -> x
  | (x,y)::rest ->
      let (rest_min, _) = index_minimum rest in
      if y < rest_min then x else rest_min


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list of tuples, write a function that returns the first value of the tuple with the smallest second value. *)
