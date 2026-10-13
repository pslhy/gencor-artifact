let rec check_K (test_tup : int list) (k : int) : bool = 
    (* base case: if the list is empty, return false *)
    match test_tup with 
      | [] -> false
      | head :: tail -> 
          (* If the first element of the list is equal to k, return true *)
          if head = k then 
              true
          else 
              check_K tail k 
          (* If the first element of the list is not equal to k, return false *)
          false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given tuples contain the k or not. *)
