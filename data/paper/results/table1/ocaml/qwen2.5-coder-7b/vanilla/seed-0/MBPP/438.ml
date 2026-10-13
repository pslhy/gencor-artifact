let rec count_bidirectional (test_list :  (int * int) list) : int = 
  let is_reversed (a, b) (c, d) = a = d && b = c in
  let rec check_pairs pairs count = 
    match pairs with
    | [] -> count
    | (x, y) :: rest -> 
        if is_reversed x y then check_pairs rest (count + 1)
        else check_pairs rest count
  in
  check_pairs test_list 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count bidirectional tuple pairs. *)
