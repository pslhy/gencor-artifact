let rec find_even_pair (a : int list) : int = 
  let rec check_pairs acc = function
    | [] -> acc
    | h::t ->
        let even_count = List.fold_left (fun c x -> if (h lxor x) land 1 = 0 then c + 1 else c) 0 t in
        check_pairs (acc + even_count) t
  in
  check_pairs 0 a


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that counts the number of pairs of integers in a list that xor to an even number. *)
