let rec find_Odd_Pair (a : int list) (n : int) : int = 
    let rec helper a b count =
    match a with
      | [] -> count
      | h1::t1 -> 
         (match b with
            | [] -> helper t1 a count
            | h2::t2 -> helper t1 (h2::t2) (count + if (h1 lxor h2) land 1 = 1 then 1 else 0)
         )
    in helper a a 0

let countOddPairs (arr : int array) : int =
  let n = Array.length arr in
  find_Odd_Pair (Array.to_list arr) n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of pairs whose xor value is odd. *)
