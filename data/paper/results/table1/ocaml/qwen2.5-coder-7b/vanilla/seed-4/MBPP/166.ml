let rec find_even_pair (a : int list) : int = 
  let rec countPairs li1 li2 count = 
    match li1 with 
      [] -> count
    | x::xs -> let n = countPairs xs li2 count in
             match li2 with
               [] -> n
             | y::ys -> if (x lxor y) land 1 = 0
                         then countPairs xs ys (n + 1)
                         else countPairs xs ys n
  in
  countPairs a a 0;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that counts the number of pairs of integers in a list that xor to an even number. *)
