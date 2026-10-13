
let rec maximize_elements (test_tup1 : int list list) (test_tup2 : int list list) : int list list =
    let rec aux (acc : int list) (l1 : int list) (l2 : int list) : int list = 
        match l1, l2 with
          | [], _ -> acc
          | _, [] -> acc
          | x :: xs, y :: ys -> 
              let m = (aux xs l2) @ (x :: ys)
              in if m > acc = acc m
                then (aux xs l2)
                else (aux l1 ys)
    in if test_tup1 = test_tup2 
      then []
      else (aux [] test_tup1 test_tup2)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to maximize the given two lists. *)
