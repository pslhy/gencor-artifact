let rec find_sum (arr : int list) : int =
  match arr with
  | [] -> 0
  | x :: xs -> 
        let rec count_occurrence (xs : int list) (x : int) : int =
          match xs with
          | [] -> 0
          | y :: ys -> if y = x then 1 + count_occurrence ys x else count_occurrence ys x
        in
        if count_occurrence arr x = 1 then x + find_sum xs
        else find_sum xs


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of non-repeated elements in a given list. *)
