let rec find_even_pair (a : int list) : int = 
  let rec helper a b count =
    match a with
      | [] -> count
      | h1::t1 -> 
         (match b with
            | [] -> helper t1 a count
            | h2::t2 -> helper t2 b (if (h1 lxor h2) land 1 = 0 then count + 1 else count))
  in 
  helper a [] 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that counts the number of pairs of integers in a list that xor to an even number. *)
