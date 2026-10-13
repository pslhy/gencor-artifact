(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the product of first even and odd number of a given list. *)
let rec mul_even_odd (list1 : int list) : int =
    match list1 with
    | [] -> 1
    | h::t -> if h mod 2 = 0 then
                 (if List.length t >= 1 && h mod 2 = 0 then
                      h * mul_even_odd (List.tl t)
                  else 1)
             else
                 if List.length t >= 1 && (List.hd t) mod 2 = 1 then
                     h * mul_even_odd (List.tl t)
                 else 1
;;

(* Multiplies the first even and odd number of a list. Returns 1 if no even and odd number is found in list *)

