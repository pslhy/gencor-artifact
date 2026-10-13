let rec count_bidirectional (test_list :  (int * int) list) : int = 
  let rec check_pairs acc pairs_to_check = 
    match pairs_to_check with
    | [] -> acc
    | (x, y) :: rest -> 
      if List.mem (y, x) rest then 
        check_pairs (acc + 1) (List.filter ((<>) (x, y)) rest)
      else 
        check_pairs acc (List.filter ((<>) (x, y)) rest)
  in
  check_pairs 0 test_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count bidirectional tuple pairs. *)
