let rec find_Odd_Pair (a : int list) (n : int) : int = 
    match a, n with 
    | [], _ | _, 0 -> 0
    | h1::t1, _ -> let rec find_Odd_Pair_in_list (a2 : int list) (count : int) : int =
                        match a2 with 
                        | [] -> count
                        | h2::t2 -> if (h1 lxor h2) land 1 = 1 then find_Odd_Pair_in_list t2 (count + 1) else find_Odd_Pair_in_list t2 count
                      in find_Odd_Pair_in_list t1 0 + find_Odd_Pair t1 (n - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of pairs whose xor value is odd. *)
